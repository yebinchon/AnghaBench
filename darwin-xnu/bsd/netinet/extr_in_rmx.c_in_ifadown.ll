; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_rmx.c_in_ifadown.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_rmx.c_in_ifadown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_node_head = type { i32 (%struct.radix_node_head*, i32, %struct.in_ifadown_arg.0*)* }
%struct.in_ifadown_arg.0 = type opaque
%struct.ifaddr = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.in_ifadown_arg = type { i32, %struct.ifaddr*, %struct.radix_node_head* }

@rnh_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@rt_tables = common dso_local global %struct.radix_node_head** null, align 8
@in_ifadownkill = common dso_local global i32 0, align 4
@IFA_ROUTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in_ifadown(%struct.ifaddr* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifaddr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.in_ifadown_arg, align 8
  %7 = alloca %struct.radix_node_head*, align 8
  store %struct.ifaddr* %0, %struct.ifaddr** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @rnh_lock, align 4
  %9 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %10 = call i32 @LCK_MTX_ASSERT(i32 %8, i32 %9)
  %11 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  %12 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @AF_INET, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %47

19:                                               ; preds = %2
  %20 = call i32 (...) @routegenid_inet_update()
  %21 = load %struct.radix_node_head**, %struct.radix_node_head*** @rt_tables, align 8
  %22 = load i64, i64* @AF_INET, align 8
  %23 = getelementptr inbounds %struct.radix_node_head*, %struct.radix_node_head** %21, i64 %22
  %24 = load %struct.radix_node_head*, %struct.radix_node_head** %23, align 8
  store %struct.radix_node_head* %24, %struct.radix_node_head** %7, align 8
  %25 = getelementptr inbounds %struct.in_ifadown_arg, %struct.in_ifadown_arg* %6, i32 0, i32 2
  store %struct.radix_node_head* %24, %struct.radix_node_head** %25, align 8
  %26 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  %27 = getelementptr inbounds %struct.in_ifadown_arg, %struct.in_ifadown_arg* %6, i32 0, i32 1
  store %struct.ifaddr* %26, %struct.ifaddr** %27, align 8
  %28 = load i32, i32* %5, align 4
  %29 = getelementptr inbounds %struct.in_ifadown_arg, %struct.in_ifadown_arg* %6, i32 0, i32 0
  store i32 %28, i32* %29, align 8
  %30 = load %struct.radix_node_head*, %struct.radix_node_head** %7, align 8
  %31 = getelementptr inbounds %struct.radix_node_head, %struct.radix_node_head* %30, i32 0, i32 0
  %32 = load i32 (%struct.radix_node_head*, i32, %struct.in_ifadown_arg.0*)*, i32 (%struct.radix_node_head*, i32, %struct.in_ifadown_arg.0*)** %31, align 8
  %33 = load %struct.radix_node_head*, %struct.radix_node_head** %7, align 8
  %34 = load i32, i32* @in_ifadownkill, align 4
  %35 = bitcast %struct.in_ifadown_arg* %6 to %struct.in_ifadown_arg.0*
  %36 = call i32 %32(%struct.radix_node_head* %33, i32 %34, %struct.in_ifadown_arg.0* %35)
  %37 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  %38 = call i32 @IFA_LOCK_SPIN(%struct.ifaddr* %37)
  %39 = load i32, i32* @IFA_ROUTE, align 4
  %40 = xor i32 %39, -1
  %41 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  %42 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  %46 = call i32 @IFA_UNLOCK(%struct.ifaddr* %45)
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %19, %18
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i32 @routegenid_inet_update(...) #1

declare dso_local i32 @IFA_LOCK_SPIN(%struct.ifaddr*) #1

declare dso_local i32 @IFA_UNLOCK(%struct.ifaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
