; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiDebugProcGetCurrentGetIPThreadCount.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiDebugProcGetCurrentGetIPThreadCount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Current threads = %s\0AQuota           = %s\0A\00", align 1
@ERR_NO_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SiDebugProcGetCurrentGetIPThreadCount(i32* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [64 x i8], align 16
  %11 = alloca [64 x i8], align 16
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %4
  %15 = load i8*, i8** %7, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i8*, i8** %8, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %17, %14, %4
  %21 = load i32, i32* @ERR_INVALID_PARAMETER, align 4
  store i32 %21, i32* %5, align 4
  br label %34

22:                                               ; preds = %17
  %23 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %24 = call i32 (...) @GetCurrentGetIpThreadNum()
  %25 = call i32 @ToStr3(i8* %23, i32 0, i32 %24)
  %26 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %27 = call i32 (...) @GetGetIpThreadMaxNum()
  %28 = call i32 @ToStr3(i8* %26, i32 0, i32 %27)
  %29 = load i8*, i8** %8, align 8
  %30 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %31 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %32 = call i32 @Format(i8* %29, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %30, i8* %31)
  %33 = load i32, i32* @ERR_NO_ERROR, align 4
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %22, %20
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i32 @ToStr3(i8*, i32, i32) #1

declare dso_local i32 @GetCurrentGetIpThreadNum(...) #1

declare dso_local i32 @GetGetIpThreadMaxNum(...) #1

declare dso_local i32 @Format(i8*, i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
