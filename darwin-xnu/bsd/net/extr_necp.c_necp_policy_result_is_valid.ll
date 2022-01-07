; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_policy_result_is_valid.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_policy_result_is_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@necp_debug = common dso_local global i64 0, align 8
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Policy result type %d, valid %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @necp_policy_result_is_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @necp_policy_result_is_valid(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @FALSE, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @necp_policy_result_get_type_from_buffer(i32* %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @necp_policy_result_get_parameter_length_from_buffer(i32* %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %45 [
    i32 138, label %16
    i32 142, label %16
    i32 137, label %16
    i32 136, label %16
    i32 135, label %18
    i32 134, label %18
    i32 133, label %18
    i32 141, label %25
    i32 132, label %32
    i32 131, label %38
    i32 130, label %38
    i32 129, label %38
    i32 139, label %38
    i32 128, label %38
    i32 140, label %38
  ]

16:                                               ; preds = %2, %2, %2, %2
  %17 = load i32, i32* @TRUE, align 4
  store i32 %17, i32* %5, align 4
  br label %47

18:                                               ; preds = %2, %2, %2
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp uge i64 %20, 4
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @TRUE, align 4
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %22, %18
  br label %47

25:                                               ; preds = %2
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp ugt i64 %27, 4
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @TRUE, align 4
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %29, %25
  br label %47

32:                                               ; preds = %2
  %33 = load i32, i32* %7, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* @TRUE, align 4
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %35, %32
  br label %47

38:                                               ; preds = %2, %2, %2, %2, %2, %2
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = icmp uge i64 %40, 4
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @TRUE, align 4
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %42, %38
  br label %47

45:                                               ; preds = %2
  %46 = load i32, i32* @FALSE, align 4
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %45, %44, %37, %31, %24, %16
  %48 = load i64, i64* @necp_debug, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load i32, i32* @LOG_DEBUG, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @NECPLOG(i32 %51, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %50, %47
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @necp_policy_result_get_type_from_buffer(i32*, i32) #1

declare dso_local i32 @necp_policy_result_get_parameter_length_from_buffer(i32*, i32) #1

declare dso_local i32 @NECPLOG(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
