; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_policy_route_rule_is_valid.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_policy_route_rule_is_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@necp_debug = common dso_local global i64 0, align 8
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Policy route rule type %d, valid %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @necp_policy_route_rule_is_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @necp_policy_route_rule_is_valid(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @FALSE, align 4
  store i32 %7, i32* %5, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @necp_policy_condition_get_type_from_buffer(i32* %8, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %20 [
    i32 131, label %12
    i32 130, label %14
    i32 128, label %16
    i32 129, label %18
  ]

12:                                               ; preds = %2
  %13 = load i32, i32* @TRUE, align 4
  store i32 %13, i32* %5, align 4
  br label %22

14:                                               ; preds = %2
  %15 = load i32, i32* @TRUE, align 4
  store i32 %15, i32* %5, align 4
  br label %22

16:                                               ; preds = %2
  %17 = load i32, i32* @TRUE, align 4
  store i32 %17, i32* %5, align 4
  br label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @TRUE, align 4
  store i32 %19, i32* %5, align 4
  br label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %20, %18, %16, %14, %12
  %23 = load i64, i64* @necp_debug, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load i32, i32* @LOG_DEBUG, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @NECPLOG(i32 %26, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %25, %22
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @necp_policy_condition_get_type_from_buffer(i32*, i32) #1

declare dso_local i32 @NECPLOG(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
