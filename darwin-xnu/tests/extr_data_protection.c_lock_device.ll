; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_data_protection.c_lock_device.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_data_protection.c_lock_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KEYBAGDTEST_PATH = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"lock\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"/private/var/foo_test_file\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@PROTECTION_CLASS_A = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lock_device() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [3 x i8*], align 16
  %4 = alloca i32, align 4
  store i32 -1, i32* %2, align 4
  %5 = getelementptr inbounds [3 x i8*], [3 x i8*]* %3, i64 0, i64 0
  %6 = load i8*, i8** @KEYBAGDTEST_PATH, align 8
  store i8* %6, i8** %5, align 8
  %7 = getelementptr inbounds i8*, i8** %5, i64 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %8 = getelementptr inbounds i8*, i8** %7, i64 1
  store i8* null, i8** %8, align 8
  %9 = getelementptr inbounds [3 x i8*], [3 x i8*]* %3, i64 0, i64 0
  %10 = call i32 @spawn_proc(i8** %9)
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %0
  %14 = load i32, i32* %2, align 4
  store i32 %14, i32* %1, align 4
  br label %39

15:                                               ; preds = %0
  %16 = call i32 @unlink(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %37
  %18 = load i32, i32* @O_RDWR, align 4
  %19 = load i32, i32* @O_CREAT, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @PROTECTION_CLASS_A, align 4
  %22 = call i32 @open_dprotected_np(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %20, i32 %21, i32 0)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %17
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @close(i32 %26)
  %28 = call i32 @unlink(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 %28, i32* %2, align 4
  %29 = load i32, i32* %2, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %2, align 4
  store i32 %32, i32* %1, align 4
  br label %39

33:                                               ; preds = %25
  %34 = call i32 (...) @sync()
  %35 = call i32 @sleep(i32 1)
  br label %37

36:                                               ; preds = %17
  br label %38

37:                                               ; preds = %33
  br label %17

38:                                               ; preds = %36
  store i32 0, i32* %1, align 4
  br label %39

39:                                               ; preds = %38, %31, %13
  %40 = load i32, i32* %1, align 4
  ret i32 %40
}

declare dso_local i32 @spawn_proc(i8**) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @open_dprotected_np(i8*, i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @sync(...) #1

declare dso_local i32 @sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
