; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_rtr.c_rt6_flush.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_rtr.c_rt6_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_node_head = type { i32 (%struct.radix_node_head*, i32, i8*)* }
%struct.in6_addr = type { i32* }
%struct.ifnet = type { i32 }

@rt_tables = common dso_local global %struct.radix_node_head** null, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@rnh_lock = common dso_local global i32 0, align 4
@rt6_deleteroute = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt6_flush(%struct.in6_addr* %0, %struct.ifnet* %1) #0 {
  %3 = alloca %struct.in6_addr*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.radix_node_head*, align 8
  store %struct.in6_addr* %0, %struct.in6_addr** %3, align 8
  store %struct.ifnet* %1, %struct.ifnet** %4, align 8
  %6 = load %struct.radix_node_head**, %struct.radix_node_head*** @rt_tables, align 8
  %7 = load i64, i64* @AF_INET6, align 8
  %8 = getelementptr inbounds %struct.radix_node_head*, %struct.radix_node_head** %6, i64 %7
  %9 = load %struct.radix_node_head*, %struct.radix_node_head** %8, align 8
  store %struct.radix_node_head* %9, %struct.radix_node_head** %5, align 8
  %10 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8
  %11 = call i32 @IN6_IS_ADDR_LINKLOCAL(%struct.in6_addr* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %35

14:                                               ; preds = %2
  %15 = load i32, i32* @rnh_lock, align 4
  %16 = call i32 @lck_mtx_lock(i32 %15)
  %17 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %18 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @htons(i32 %19)
  %21 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8
  %22 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  store i32 %20, i32* %24, align 4
  %25 = load %struct.radix_node_head*, %struct.radix_node_head** %5, align 8
  %26 = getelementptr inbounds %struct.radix_node_head, %struct.radix_node_head* %25, i32 0, i32 0
  %27 = load i32 (%struct.radix_node_head*, i32, i8*)*, i32 (%struct.radix_node_head*, i32, i8*)** %26, align 8
  %28 = load %struct.radix_node_head*, %struct.radix_node_head** %5, align 8
  %29 = load i32, i32* @rt6_deleteroute, align 4
  %30 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8
  %31 = bitcast %struct.in6_addr* %30 to i8*
  %32 = call i32 %27(%struct.radix_node_head* %28, i32 %29, i8* %31)
  %33 = load i32, i32* @rnh_lock, align 4
  %34 = call i32 @lck_mtx_unlock(i32 %33)
  br label %35

35:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @IN6_IS_ADDR_LINKLOCAL(%struct.in6_addr*) #1

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
