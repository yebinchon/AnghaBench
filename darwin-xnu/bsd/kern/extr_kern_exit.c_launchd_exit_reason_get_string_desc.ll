; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_exit.c_launchd_exit_reason_get_string_desc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_exit.c_launchd_exit_reason_get_string_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32* }

@OS_REASON_NULL = common dso_local global %struct.TYPE_4__* null, align 8
@KCDATA_BUFFER_BEGIN_OS_REASON = common dso_local global i64 0, align 8
@EXIT_REASON_USER_DESC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @launchd_exit_reason_get_string_desc(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @OS_REASON_NULL, align 8
  %7 = icmp eq %struct.TYPE_4__* %5, %6
  br i1 %7, label %18, label %8

8:                                                ; preds = %1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %8, %1
  store i8* null, i8** %2, align 8
  br label %50

19:                                               ; preds = %13
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @kcdata_iter(i32* %22, i64 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @kcdata_iter_valid(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %19
  store i8* null, i8** %2, align 8
  br label %50

31:                                               ; preds = %19
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @kcdata_iter_type(i32 %32)
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* @KCDATA_BUFFER_BEGIN_OS_REASON, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i8* null, i8** %2, align 8
  br label %50

38:                                               ; preds = %31
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @EXIT_REASON_USER_DESC, align 4
  %41 = call i32 @kcdata_iter_find_type(i32 %39, i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @kcdata_iter_valid(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %38
  store i8* null, i8** %2, align 8
  br label %50

46:                                               ; preds = %38
  %47 = load i32, i32* %4, align 4
  %48 = call i64 @kcdata_iter_payload(i32 %47)
  %49 = inttoptr i64 %48 to i8*
  store i8* %49, i8** %2, align 8
  br label %50

50:                                               ; preds = %46, %45, %37, %30, %18
  %51 = load i8*, i8** %2, align 8
  ret i8* %51
}

declare dso_local i32 @kcdata_iter(i32*, i64) #1

declare dso_local i32 @kcdata_iter_valid(i32) #1

declare dso_local i32 @kcdata_iter_type(i32) #1

declare dso_local i32 @kcdata_iter_find_type(i32, i32) #1

declare dso_local i64 @kcdata_iter_payload(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
