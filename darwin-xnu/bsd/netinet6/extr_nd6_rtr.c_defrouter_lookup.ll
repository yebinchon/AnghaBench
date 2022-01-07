; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_rtr.c_defrouter_lookup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_rtr.c_defrouter_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_defrouter = type { i32, %struct.ifnet* }
%struct.in6_addr = type { i32 }
%struct.ifnet = type { i32 }

@nd6_mutex = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@nd_defrouter = common dso_local global i32 0, align 4
@dr_entry = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nd_defrouter* @defrouter_lookup(%struct.in6_addr* %0, %struct.ifnet* %1) #0 {
  %3 = alloca %struct.nd_defrouter*, align 8
  %4 = alloca %struct.in6_addr*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca %struct.nd_defrouter*, align 8
  store %struct.in6_addr* %0, %struct.in6_addr** %4, align 8
  store %struct.ifnet* %1, %struct.ifnet** %5, align 8
  %7 = load i32, i32* @nd6_mutex, align 4
  %8 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %9 = call i32 @LCK_MTX_ASSERT(i32 %7, i32 %8)
  %10 = call %struct.nd_defrouter* @TAILQ_FIRST(i32* @nd_defrouter)
  store %struct.nd_defrouter* %10, %struct.nd_defrouter** %6, align 8
  br label %11

11:                                               ; preds = %37, %2
  %12 = load %struct.nd_defrouter*, %struct.nd_defrouter** %6, align 8
  %13 = icmp ne %struct.nd_defrouter* %12, null
  br i1 %13, label %14, label %41

14:                                               ; preds = %11
  %15 = load %struct.nd_defrouter*, %struct.nd_defrouter** %6, align 8
  %16 = call i32 @NDDR_LOCK(%struct.nd_defrouter* %15)
  %17 = load %struct.nd_defrouter*, %struct.nd_defrouter** %6, align 8
  %18 = getelementptr inbounds %struct.nd_defrouter, %struct.nd_defrouter* %17, i32 0, i32 1
  %19 = load %struct.ifnet*, %struct.ifnet** %18, align 8
  %20 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %21 = icmp eq %struct.ifnet* %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %14
  %23 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %24 = load %struct.nd_defrouter*, %struct.nd_defrouter** %6, align 8
  %25 = getelementptr inbounds %struct.nd_defrouter, %struct.nd_defrouter* %24, i32 0, i32 0
  %26 = call i64 @IN6_ARE_ADDR_EQUAL(%struct.in6_addr* %23, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load %struct.nd_defrouter*, %struct.nd_defrouter** %6, align 8
  %30 = call i32 @NDDR_ADDREF_LOCKED(%struct.nd_defrouter* %29)
  %31 = load %struct.nd_defrouter*, %struct.nd_defrouter** %6, align 8
  %32 = call i32 @NDDR_UNLOCK(%struct.nd_defrouter* %31)
  %33 = load %struct.nd_defrouter*, %struct.nd_defrouter** %6, align 8
  store %struct.nd_defrouter* %33, %struct.nd_defrouter** %3, align 8
  br label %42

34:                                               ; preds = %22, %14
  %35 = load %struct.nd_defrouter*, %struct.nd_defrouter** %6, align 8
  %36 = call i32 @NDDR_UNLOCK(%struct.nd_defrouter* %35)
  br label %37

37:                                               ; preds = %34
  %38 = load %struct.nd_defrouter*, %struct.nd_defrouter** %6, align 8
  %39 = load i32, i32* @dr_entry, align 4
  %40 = call %struct.nd_defrouter* @TAILQ_NEXT(%struct.nd_defrouter* %38, i32 %39)
  store %struct.nd_defrouter* %40, %struct.nd_defrouter** %6, align 8
  br label %11

41:                                               ; preds = %11
  store %struct.nd_defrouter* null, %struct.nd_defrouter** %3, align 8
  br label %42

42:                                               ; preds = %41, %28
  %43 = load %struct.nd_defrouter*, %struct.nd_defrouter** %3, align 8
  ret %struct.nd_defrouter* %43
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local %struct.nd_defrouter* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @NDDR_LOCK(%struct.nd_defrouter*) #1

declare dso_local i64 @IN6_ARE_ADDR_EQUAL(%struct.in6_addr*, i32*) #1

declare dso_local i32 @NDDR_ADDREF_LOCKED(%struct.nd_defrouter*) #1

declare dso_local i32 @NDDR_UNLOCK(%struct.nd_defrouter*) #1

declare dso_local %struct.nd_defrouter* @TAILQ_NEXT(%struct.nd_defrouter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
