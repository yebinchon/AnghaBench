; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_disk_mount_conditioner.c_system_legal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_disk_mount_conditioner.c_system_legal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_PATH_BSHELL = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @system_legal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @system_legal(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [4 x i8*], align 16
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 -1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = getelementptr inbounds [4 x i8*], [4 x i8*]* %6, i64 0, i64 0
  %9 = load i8*, i8** @_PATH_BSHELL, align 8
  store i8* %9, i8** %8, align 8
  %10 = getelementptr inbounds i8*, i8** %8, i64 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 1
  %12 = load i8*, i8** %3, align 8
  store i8* %12, i8** %11, align 8
  %13 = getelementptr inbounds i8*, i8** %11, i64 1
  store i8* null, i8** %13, align 8
  %14 = getelementptr inbounds [4 x i8*], [4 x i8*]* %6, i64 0, i64 0
  %15 = bitcast i8** %14 to i8*
  %16 = bitcast i8* %15 to i8**
  %17 = call i32 @dt_launch_tool(i32* %4, i8** %16, i32 0, i32* null, i32* null)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %33

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @dt_waitpid(i32 %22, i32* %5, i32* null, i32 30)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %33

30:                                               ; preds = %25
  store i32 -1, i32* %2, align 4
  br label %33

31:                                               ; preds = %21
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %31, %30, %28, %20
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @dt_launch_tool(i32*, i8**, i32, i32*, i32*) #1

declare dso_local i32 @dt_waitpid(i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
