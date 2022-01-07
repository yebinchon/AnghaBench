; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_host_statistics_rate_limiting.c_remove_platform_binary.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_host_statistics_rate_limiting.c_remove_platform_binary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@T_QUIET = common dso_local global i32 0, align 4
@CS_OPS_STATUS = common dso_local global i32 0, align 4
@CS_PLATFORM_BINARY = common dso_local global i32 0, align 4
@CS_OPS_CLEARPLATFORM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"clearing platform binary not supported, skipping test\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"csops failed with flag CS_OPS_CLEARPLATFORM\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"platform binary flag still set\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @remove_platform_binary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remove_platform_binary() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @T_QUIET, align 4
  %5 = call i32 (...) @getpid()
  %6 = load i32, i32* @CS_OPS_STATUS, align 4
  %7 = call i32 @csops(i32 %5, i32 %6, i32* %3, i32 4)
  %8 = call i32 @T_ASSERT_POSIX_ZERO(i32 %7, i32* null)
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @CS_PLATFORM_BINARY, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %39

14:                                               ; preds = %0
  %15 = call i32 (...) @getpid()
  %16 = load i32, i32* @CS_OPS_CLEARPLATFORM, align 4
  %17 = call i32 @csops(i32 %15, i32 %16, i32* null, i32 0)
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* %2, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load i32, i32* @errno, align 4
  switch i32 %21, label %24 [
    i32 128, label %22
  ]

22:                                               ; preds = %20
  %23 = call i32 @T_LOG(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %39

24:                                               ; preds = %20
  %25 = call i32 @T_LOG(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %39

26:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  %27 = load i32, i32* @T_QUIET, align 4
  %28 = call i32 (...) @getpid()
  %29 = load i32, i32* @CS_OPS_STATUS, align 4
  %30 = call i32 @csops(i32 %28, i32 %29, i32* %3, i32 4)
  %31 = call i32 @T_ASSERT_POSIX_ZERO(i32 %30, i32* null)
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @CS_PLATFORM_BINARY, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = call i32 @T_LOG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %39

38:                                               ; preds = %26
  store i32 0, i32* %1, align 4
  br label %39

39:                                               ; preds = %38, %36, %24, %22, %13
  %40 = load i32, i32* %1, align 4
  ret i32 %40
}

declare dso_local i32 @T_ASSERT_POSIX_ZERO(i32, i32*) #1

declare dso_local i32 @csops(i32, i32, i32*, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @T_LOG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
