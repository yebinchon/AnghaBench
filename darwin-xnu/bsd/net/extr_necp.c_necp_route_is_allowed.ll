; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_route_is_allowed.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_route_is_allowed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtentry = type { i32 }
%struct.ifnet = type { i32 }
%struct.necp_aggregate_route_rule = type { i64* }

@necp_debug = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Route Allowed: no route or interface, Rule %d Allowed %d\00", align 1
@TRUE = common dso_local global i32 0, align 4
@MAX_AGGREGATE_ROUTE_RULES = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtentry*, %struct.ifnet*, i64, i64*)* @necp_route_is_allowed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @necp_route_is_allowed(%struct.rtentry* %0, %struct.ifnet* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtentry*, align 8
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.necp_aggregate_route_rule*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.rtentry* %0, %struct.rtentry** %6, align 8
  store %struct.ifnet* %1, %struct.ifnet** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %14 = icmp eq %struct.rtentry* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %17 = icmp eq %struct.ifnet* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15, %4
  %19 = load i64, i64* %8, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %18, %15
  %22 = load i32, i32* @necp_debug, align 4
  %23 = icmp sgt i32 %22, 1
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i32, i32* @LOG_DEBUG, align 4
  %26 = load i64, i64* %8, align 8
  %27 = load i32, i32* @TRUE, align 4
  %28 = call i32 @NECPLOG(i32 %25, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %26, i32 %27)
  br label %29

29:                                               ; preds = %24, %21
  %30 = load i32, i32* @TRUE, align 4
  store i32 %30, i32* %5, align 4
  br label %79

31:                                               ; preds = %18
  %32 = load i64, i64* %8, align 8
  %33 = call i64 @ROUTE_RULE_IS_AGGREGATE(i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %71

35:                                               ; preds = %31
  %36 = load i64, i64* %8, align 8
  %37 = call %struct.necp_aggregate_route_rule* @necp_lookup_aggregate_route_rule_locked(i64 %36)
  store %struct.necp_aggregate_route_rule* %37, %struct.necp_aggregate_route_rule** %10, align 8
  %38 = load %struct.necp_aggregate_route_rule*, %struct.necp_aggregate_route_rule** %10, align 8
  %39 = icmp ne %struct.necp_aggregate_route_rule* %38, null
  br i1 %39, label %40, label %70

40:                                               ; preds = %35
  store i32 0, i32* %11, align 4
  store i32 0, i32* %11, align 4
  br label %41

41:                                               ; preds = %66, %40
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @MAX_AGGREGATE_ROUTE_RULES, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %69

45:                                               ; preds = %41
  %46 = load %struct.necp_aggregate_route_rule*, %struct.necp_aggregate_route_rule** %10, align 8
  %47 = getelementptr inbounds %struct.necp_aggregate_route_rule, %struct.necp_aggregate_route_rule* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %12, align 8
  %53 = load i64, i64* %12, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  br label %69

56:                                               ; preds = %45
  %57 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %58 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %59 = load i64, i64* %12, align 8
  %60 = load i64*, i64** %9, align 8
  %61 = call i32 @necp_route_is_allowed_inner(%struct.rtentry* %57, %struct.ifnet* %58, i64 %59, i64* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %56
  %64 = load i32, i32* @FALSE, align 4
  store i32 %64, i32* %5, align 4
  br label %79

65:                                               ; preds = %56
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %11, align 4
  br label %41

69:                                               ; preds = %55, %41
  br label %70

70:                                               ; preds = %69, %35
  br label %77

71:                                               ; preds = %31
  %72 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %73 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %74 = load i64, i64* %8, align 8
  %75 = load i64*, i64** %9, align 8
  %76 = call i32 @necp_route_is_allowed_inner(%struct.rtentry* %72, %struct.ifnet* %73, i64 %74, i64* %75)
  store i32 %76, i32* %5, align 4
  br label %79

77:                                               ; preds = %70
  %78 = load i32, i32* @TRUE, align 4
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %77, %71, %63, %29
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @NECPLOG(i32, i8*, i64, i32) #1

declare dso_local i64 @ROUTE_RULE_IS_AGGREGATE(i64) #1

declare dso_local %struct.necp_aggregate_route_rule* @necp_lookup_aggregate_route_rule_locked(i64) #1

declare dso_local i32 @necp_route_is_allowed_inner(%struct.rtentry*, %struct.ifnet*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
