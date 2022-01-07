; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_rtr.c_find_pfxlist_reachable_router.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_rtr.c_find_pfxlist_reachable_router.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_pfxrouter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.in6_addr, %struct.in6_addr, %struct.ifnet* }
%struct.in6_addr = type { i32 }
%struct.ifnet = type { i32 }
%struct.nd_prefix = type { i32, i32 }
%struct.rtentry = type { %struct.llinfo_nd6* }
%struct.llinfo_nd6 = type { i32 }

@nd6_mutex = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@NDDRF_MAPPED = common dso_local global i32 0, align 4
@pfr_entry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nd_pfxrouter* (%struct.nd_prefix*)* @find_pfxlist_reachable_router to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nd_pfxrouter* @find_pfxlist_reachable_router(%struct.nd_prefix* %0) #0 {
  %2 = alloca %struct.nd_prefix*, align 8
  %3 = alloca %struct.nd_pfxrouter*, align 8
  %4 = alloca %struct.rtentry*, align 8
  %5 = alloca %struct.llinfo_nd6*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.in6_addr, align 4
  %8 = alloca i32, align 4
  store %struct.nd_prefix* %0, %struct.nd_prefix** %2, align 8
  %9 = load i32, i32* @nd6_mutex, align 4
  %10 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %11 = call i32 @LCK_MTX_ASSERT(i32 %9, i32 %10)
  %12 = load %struct.nd_prefix*, %struct.nd_prefix** %2, align 8
  %13 = call i32 @NDPR_LOCK_ASSERT_HELD(%struct.nd_prefix* %12)
  %14 = load %struct.nd_prefix*, %struct.nd_prefix** %2, align 8
  %15 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  %17 = load %struct.nd_prefix*, %struct.nd_prefix** %2, align 8
  %18 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %17, i32 0, i32 1
  %19 = call %struct.nd_pfxrouter* @LIST_FIRST(i32* %18)
  store %struct.nd_pfxrouter* %19, %struct.nd_pfxrouter** %3, align 8
  br label %20

20:                                               ; preds = %105, %1
  %21 = load %struct.nd_pfxrouter*, %struct.nd_pfxrouter** %3, align 8
  %22 = icmp ne %struct.nd_pfxrouter* %21, null
  br i1 %22, label %23, label %106

23:                                               ; preds = %20
  %24 = load %struct.nd_pfxrouter*, %struct.nd_pfxrouter** %3, align 8
  %25 = getelementptr inbounds %struct.nd_pfxrouter, %struct.nd_pfxrouter* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  %28 = load %struct.ifnet*, %struct.ifnet** %27, align 8
  store %struct.ifnet* %28, %struct.ifnet** %6, align 8
  %29 = load %struct.nd_pfxrouter*, %struct.nd_pfxrouter** %3, align 8
  %30 = getelementptr inbounds %struct.nd_pfxrouter, %struct.nd_pfxrouter* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @NDDRF_MAPPED, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %23
  %38 = load %struct.nd_pfxrouter*, %struct.nd_pfxrouter** %3, align 8
  %39 = getelementptr inbounds %struct.nd_pfxrouter, %struct.nd_pfxrouter* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = bitcast %struct.in6_addr* %7 to i8*
  %43 = bitcast %struct.in6_addr* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 8 %43, i64 4, i1 false)
  br label %51

44:                                               ; preds = %23
  %45 = load %struct.nd_pfxrouter*, %struct.nd_pfxrouter** %3, align 8
  %46 = getelementptr inbounds %struct.nd_pfxrouter, %struct.nd_pfxrouter* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = bitcast %struct.in6_addr* %7 to i8*
  %50 = bitcast %struct.in6_addr* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %49, i8* align 4 %50, i64 4, i1 false)
  br label %51

51:                                               ; preds = %44, %37
  %52 = load %struct.nd_prefix*, %struct.nd_prefix** %2, align 8
  %53 = call i32 @NDPR_UNLOCK(%struct.nd_prefix* %52)
  %54 = load i32, i32* @nd6_mutex, align 4
  %55 = call i32 @lck_mtx_unlock(i32 %54)
  %56 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %57 = call %struct.rtentry* @nd6_lookup(%struct.in6_addr* %7, i32 0, %struct.ifnet* %56, i32 0)
  store %struct.rtentry* %57, %struct.rtentry** %4, align 8
  %58 = icmp ne %struct.rtentry* %57, null
  br i1 %58, label %59, label %84

59:                                               ; preds = %51
  %60 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %61 = call i32 @RT_LOCK_ASSERT_HELD(%struct.rtentry* %60)
  %62 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %63 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %62, i32 0, i32 0
  %64 = load %struct.llinfo_nd6*, %struct.llinfo_nd6** %63, align 8
  store %struct.llinfo_nd6* %64, %struct.llinfo_nd6** %5, align 8
  %65 = icmp ne %struct.llinfo_nd6* %64, null
  br i1 %65, label %66, label %79

66:                                               ; preds = %59
  %67 = load %struct.llinfo_nd6*, %struct.llinfo_nd6** %5, align 8
  %68 = call i64 @ND6_IS_LLINFO_PROBREACH(%struct.llinfo_nd6* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %66
  %71 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %72 = call i32 @RT_REMREF_LOCKED(%struct.rtentry* %71)
  %73 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %74 = call i32 @RT_UNLOCK(%struct.rtentry* %73)
  %75 = load i32, i32* @nd6_mutex, align 4
  %76 = call i32 @lck_mtx_lock(i32 %75)
  %77 = load %struct.nd_prefix*, %struct.nd_prefix** %2, align 8
  %78 = call i32 @NDPR_LOCK(%struct.nd_prefix* %77)
  br label %106

79:                                               ; preds = %66, %59
  %80 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %81 = call i32 @RT_REMREF_LOCKED(%struct.rtentry* %80)
  %82 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %83 = call i32 @RT_UNLOCK(%struct.rtentry* %82)
  br label %84

84:                                               ; preds = %79, %51
  %85 = load i32, i32* @nd6_mutex, align 4
  %86 = call i32 @lck_mtx_lock(i32 %85)
  %87 = load %struct.nd_prefix*, %struct.nd_prefix** %2, align 8
  %88 = call i32 @NDPR_LOCK(%struct.nd_prefix* %87)
  %89 = load %struct.nd_prefix*, %struct.nd_prefix** %2, align 8
  %90 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %84
  %95 = load %struct.nd_prefix*, %struct.nd_prefix** %2, align 8
  %96 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %95, i32 0, i32 1
  %97 = call %struct.nd_pfxrouter* @LIST_FIRST(i32* %96)
  store %struct.nd_pfxrouter* %97, %struct.nd_pfxrouter** %3, align 8
  %98 = load %struct.nd_prefix*, %struct.nd_prefix** %2, align 8
  %99 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %8, align 4
  br label %105

101:                                              ; preds = %84
  %102 = load %struct.nd_pfxrouter*, %struct.nd_pfxrouter** %3, align 8
  %103 = load i32, i32* @pfr_entry, align 4
  %104 = call %struct.nd_pfxrouter* @LIST_NEXT(%struct.nd_pfxrouter* %102, i32 %103)
  store %struct.nd_pfxrouter* %104, %struct.nd_pfxrouter** %3, align 8
  br label %105

105:                                              ; preds = %101, %94
  br label %20

106:                                              ; preds = %70, %20
  %107 = load %struct.nd_prefix*, %struct.nd_prefix** %2, align 8
  %108 = call i32 @NDPR_LOCK_ASSERT_HELD(%struct.nd_prefix* %107)
  %109 = load %struct.nd_pfxrouter*, %struct.nd_pfxrouter** %3, align 8
  ret %struct.nd_pfxrouter* %109
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i32 @NDPR_LOCK_ASSERT_HELD(%struct.nd_prefix*) #1

declare dso_local %struct.nd_pfxrouter* @LIST_FIRST(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @NDPR_UNLOCK(%struct.nd_prefix*) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

declare dso_local %struct.rtentry* @nd6_lookup(%struct.in6_addr*, i32, %struct.ifnet*, i32) #1

declare dso_local i32 @RT_LOCK_ASSERT_HELD(%struct.rtentry*) #1

declare dso_local i64 @ND6_IS_LLINFO_PROBREACH(%struct.llinfo_nd6*) #1

declare dso_local i32 @RT_REMREF_LOCKED(%struct.rtentry*) #1

declare dso_local i32 @RT_UNLOCK(%struct.rtentry*) #1

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @NDPR_LOCK(%struct.nd_prefix*) #1

declare dso_local %struct.nd_pfxrouter* @LIST_NEXT(%struct.nd_pfxrouter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
