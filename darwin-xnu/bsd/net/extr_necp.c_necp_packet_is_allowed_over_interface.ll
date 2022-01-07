; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_packet_is_allowed_over_interface.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_packet_is_allowed_over_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.ifnet = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@necp_kernel_policy_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @necp_packet_is_allowed_over_interface(%struct.mbuf* %0, %struct.ifnet* %1) #0 {
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.mbuf* %0, %struct.mbuf** %3, align 8
  store %struct.ifnet* %1, %struct.ifnet** %4, align 8
  %7 = load i32, i32* @TRUE, align 4
  store i32 %7, i32* %5, align 4
  %8 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %9 = call i64 @necp_get_route_rule_id_from_packet(%struct.mbuf* %8)
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %14 = icmp ne %struct.ifnet* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = call i32 @lck_rw_lock_shared(i32* @necp_kernel_policy_lock)
  %17 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %18 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %19 = call i64 @necp_get_route_rule_id_from_packet(%struct.mbuf* %18)
  %20 = call i32 @necp_route_is_allowed(i32* null, %struct.ifnet* %17, i64 %19, i32* null)
  store i32 %20, i32* %5, align 4
  %21 = call i32 @lck_rw_done(i32* @necp_kernel_policy_lock)
  br label %22

22:                                               ; preds = %15, %12, %2
  %23 = load i32, i32* %5, align 4
  ret i32 %23
}

declare dso_local i64 @necp_get_route_rule_id_from_packet(%struct.mbuf*) #1

declare dso_local i32 @lck_rw_lock_shared(i32*) #1

declare dso_local i32 @necp_route_is_allowed(i32*, %struct.ifnet*, i64, i32*) #1

declare dso_local i32 @lck_rw_done(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
