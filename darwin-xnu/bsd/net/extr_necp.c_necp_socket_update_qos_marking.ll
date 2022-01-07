; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_socket_update_qos_marking.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_socket_update_qos_marking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.rtentry = type { %struct.ifnet* }
%struct.ifnet = type { i32 }
%struct.necp_aggregate_route_rule = type { i64* }

@FALSE = common dso_local global i32 0, align 4
@net_qos_policy_restricted = common dso_local global i64 0, align 8
@SOF1_QOSMARKING_POLICY_OVERRIDE = common dso_local global i32 0, align 4
@necp_kernel_socket_policies_gencount = common dso_local global i64 0, align 8
@necp_kernel_policy_lock = common dso_local global i32 0, align 4
@MAX_AGGREGATE_ROUTE_RULES = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SOF1_QOSMARKING_ALLOWED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @necp_socket_update_qos_marking(%struct.inpcb* %0, %struct.rtentry* %1, %struct.ifnet* %2, i64 %3) #0 {
  %5 = alloca %struct.inpcb*, align 8
  %6 = alloca %struct.rtentry*, align 8
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ifnet*, align 8
  %11 = alloca %struct.necp_aggregate_route_rule*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.inpcb* %0, %struct.inpcb** %5, align 8
  store %struct.rtentry* %1, %struct.rtentry** %6, align 8
  store %struct.ifnet* %2, %struct.ifnet** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %9, align 4
  store %struct.ifnet* null, %struct.ifnet** %7, align 8
  store %struct.ifnet* null, %struct.ifnet** %10, align 8
  %15 = load i64, i64* @net_qos_policy_restricted, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %133

18:                                               ; preds = %4
  %19 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %20 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = icmp eq %struct.TYPE_6__* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %133

24:                                               ; preds = %18
  %25 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %26 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @SOF1_QOSMARKING_POLICY_OVERRIDE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %133

34:                                               ; preds = %24
  %35 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %36 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @necp_kernel_socket_policies_gencount, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %133

43:                                               ; preds = %34
  %44 = call i32 @lck_rw_lock_shared(i32* @necp_kernel_policy_lock)
  %45 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %46 = icmp eq %struct.ifnet* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %49 = icmp ne %struct.rtentry* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %52 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %51, i32 0, i32 0
  %53 = load %struct.ifnet*, %struct.ifnet** %52, align 8
  store %struct.ifnet* %53, %struct.ifnet** %10, align 8
  br label %54

54:                                               ; preds = %50, %47, %43
  %55 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %56 = icmp eq %struct.ifnet* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load i64, i64* %8, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57, %54
  %61 = load i32, i32* @FALSE, align 4
  store i32 %61, i32* %9, align 4
  br label %111

62:                                               ; preds = %57
  %63 = load i64, i64* %8, align 8
  %64 = call i64 @ROUTE_RULE_IS_AGGREGATE(i64 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %101

66:                                               ; preds = %62
  %67 = load i64, i64* %8, align 8
  %68 = call %struct.necp_aggregate_route_rule* @necp_lookup_aggregate_route_rule_locked(i64 %67)
  store %struct.necp_aggregate_route_rule* %68, %struct.necp_aggregate_route_rule** %11, align 8
  %69 = load %struct.necp_aggregate_route_rule*, %struct.necp_aggregate_route_rule** %11, align 8
  %70 = icmp ne %struct.necp_aggregate_route_rule* %69, null
  br i1 %70, label %71, label %100

71:                                               ; preds = %66
  store i32 0, i32* %12, align 4
  store i32 0, i32* %12, align 4
  br label %72

72:                                               ; preds = %96, %71
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* @MAX_AGGREGATE_ROUTE_RULES, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %99

76:                                               ; preds = %72
  %77 = load %struct.necp_aggregate_route_rule*, %struct.necp_aggregate_route_rule** %11, align 8
  %78 = getelementptr inbounds %struct.necp_aggregate_route_rule, %struct.necp_aggregate_route_rule* %77, i32 0, i32 0
  %79 = load i64*, i64** %78, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %13, align 8
  %84 = load i64, i64* %13, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %76
  br label %99

87:                                               ; preds = %76
  %88 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %89 = load i64, i64* %13, align 8
  %90 = call i32 @necp_update_qos_marking(%struct.ifnet* %88, i64 %89)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @TRUE, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  br label %99

95:                                               ; preds = %87
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %12, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %12, align 4
  br label %72

99:                                               ; preds = %94, %86, %72
  br label %100

100:                                              ; preds = %99, %66
  br label %105

101:                                              ; preds = %62
  %102 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %103 = load i64, i64* %8, align 8
  %104 = call i32 @necp_update_qos_marking(%struct.ifnet* %102, i64 %103)
  store i32 %104, i32* %9, align 4
  br label %105

105:                                              ; preds = %101, %100
  %106 = load i64, i64* @necp_kernel_socket_policies_gencount, align 8
  %107 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %108 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  store i64 %106, i64* %110, align 8
  br label %111

111:                                              ; preds = %105, %60
  %112 = call i32 @lck_rw_done(i32* @necp_kernel_policy_lock)
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* @TRUE, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %124

116:                                              ; preds = %111
  %117 = load i32, i32* @SOF1_QOSMARKING_ALLOWED, align 4
  %118 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %119 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %118, i32 0, i32 0
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %117
  store i32 %123, i32* %121, align 4
  br label %133

124:                                              ; preds = %111
  %125 = load i32, i32* @SOF1_QOSMARKING_ALLOWED, align 4
  %126 = xor i32 %125, -1
  %127 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %128 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %127, i32 0, i32 0
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = and i32 %131, %126
  store i32 %132, i32* %130, align 4
  br label %133

133:                                              ; preds = %17, %23, %33, %42, %124, %116
  ret void
}

declare dso_local i32 @lck_rw_lock_shared(i32*) #1

declare dso_local i64 @ROUTE_RULE_IS_AGGREGATE(i64) #1

declare dso_local %struct.necp_aggregate_route_rule* @necp_lookup_aggregate_route_rule_locked(i64) #1

declare dso_local i32 @necp_update_qos_marking(%struct.ifnet*, i64) #1

declare dso_local i32 @lck_rw_done(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
