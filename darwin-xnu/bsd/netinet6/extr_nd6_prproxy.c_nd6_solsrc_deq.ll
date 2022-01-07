; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_prproxy.c_nd6_solsrc_deq.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_prproxy.c_nd6_solsrc_deq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_prefix = type { i32, i32 }
%struct.in6_addr = type { i32 }
%struct.ifnet = type { i32 }
%struct.nd6_prproxy_soltgt = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.in6_addr }
%struct.nd6_prproxy_solsrc = type { %struct.ifnet*, %struct.in6_addr }

@NDPRF_IFSCOPE = common dso_local global i32 0, align 4
@NDPRF_ONLINK = common dso_local global i32 0, align 4
@NDPRF_PRPROXY = common dso_local global i32 0, align 4
@prproxy_sols_tree = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@solsrc_tqe = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nd_prefix*, %struct.in6_addr*, %struct.in6_addr*, %struct.ifnet**)* @nd6_solsrc_deq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nd6_solsrc_deq(%struct.nd_prefix* %0, %struct.in6_addr* %1, %struct.in6_addr* %2, %struct.ifnet** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nd_prefix*, align 8
  %7 = alloca %struct.in6_addr*, align 8
  %8 = alloca %struct.in6_addr*, align 8
  %9 = alloca %struct.ifnet**, align 8
  %10 = alloca %struct.nd6_prproxy_soltgt, align 8
  %11 = alloca %struct.nd6_prproxy_soltgt*, align 8
  %12 = alloca %struct.nd6_prproxy_solsrc*, align 8
  store %struct.nd_prefix* %0, %struct.nd_prefix** %6, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %7, align 8
  store %struct.in6_addr* %2, %struct.in6_addr** %8, align 8
  store %struct.ifnet** %3, %struct.ifnet*** %9, align 8
  %13 = load %struct.nd_prefix*, %struct.nd_prefix** %6, align 8
  %14 = call i32 @NDPR_LOCK_ASSERT_HELD(%struct.nd_prefix* %13)
  %15 = load %struct.nd_prefix*, %struct.nd_prefix** %6, align 8
  %16 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @NDPRF_IFSCOPE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @VERIFY(i32 %22)
  %24 = load %struct.nd_prefix*, %struct.nd_prefix** %6, align 8
  %25 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @NDPRF_ONLINK, align 4
  %28 = load i32, i32* @NDPRF_PRPROXY, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %26, %29
  %31 = load i32, i32* @NDPRF_ONLINK, align 4
  %32 = load i32, i32* @NDPRF_PRPROXY, align 4
  %33 = or i32 %31, %32
  %34 = icmp eq i32 %30, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @VERIFY(i32 %35)
  %37 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %38 = call i32 @bzero(%struct.in6_addr* %37, i32 4)
  %39 = load %struct.ifnet**, %struct.ifnet*** %9, align 8
  store %struct.ifnet* null, %struct.ifnet** %39, align 8
  %40 = getelementptr inbounds %struct.nd6_prproxy_soltgt, %struct.nd6_prproxy_soltgt* %10, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %43 = bitcast %struct.in6_addr* %41 to i8*
  %44 = bitcast %struct.in6_addr* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %43, i8* align 4 %44, i64 4, i1 false)
  %45 = load i32, i32* @prproxy_sols_tree, align 4
  %46 = load %struct.nd_prefix*, %struct.nd_prefix** %6, align 8
  %47 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %46, i32 0, i32 1
  %48 = call %struct.nd6_prproxy_soltgt* @RB_FIND(i32 %45, i32* %47, %struct.nd6_prproxy_soltgt* %10)
  store %struct.nd6_prproxy_soltgt* %48, %struct.nd6_prproxy_soltgt** %11, align 8
  %49 = load %struct.nd6_prproxy_soltgt*, %struct.nd6_prproxy_soltgt** %11, align 8
  %50 = icmp eq %struct.nd6_prproxy_soltgt* %49, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %4
  %52 = load %struct.nd6_prproxy_soltgt*, %struct.nd6_prproxy_soltgt** %11, align 8
  %53 = getelementptr inbounds %struct.nd6_prproxy_soltgt, %struct.nd6_prproxy_soltgt* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %51, %4
  %57 = load %struct.nd6_prproxy_soltgt*, %struct.nd6_prproxy_soltgt** %11, align 8
  %58 = icmp eq %struct.nd6_prproxy_soltgt* %57, null
  br i1 %58, label %64, label %59

59:                                               ; preds = %56
  %60 = load %struct.nd6_prproxy_soltgt*, %struct.nd6_prproxy_soltgt** %11, align 8
  %61 = getelementptr inbounds %struct.nd6_prproxy_soltgt, %struct.nd6_prproxy_soltgt* %60, i32 0, i32 1
  %62 = call i64 @TAILQ_EMPTY(i32* %61)
  %63 = icmp ne i64 %62, 0
  br label %64

64:                                               ; preds = %59, %56
  %65 = phi i1 [ true, %56 ], [ %63, %59 ]
  %66 = zext i1 %65 to i32
  %67 = call i32 @VERIFY(i32 %66)
  %68 = load i32, i32* @FALSE, align 4
  store i32 %68, i32* %5, align 4
  br label %104

69:                                               ; preds = %51
  %70 = load %struct.nd6_prproxy_soltgt*, %struct.nd6_prproxy_soltgt** %11, align 8
  %71 = getelementptr inbounds %struct.nd6_prproxy_soltgt, %struct.nd6_prproxy_soltgt* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  %74 = zext i1 %73 to i32
  %75 = call i32 @VERIFY(i32 %74)
  %76 = load %struct.nd6_prproxy_soltgt*, %struct.nd6_prproxy_soltgt** %11, align 8
  %77 = getelementptr inbounds %struct.nd6_prproxy_soltgt, %struct.nd6_prproxy_soltgt* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, -1
  store i64 %79, i64* %77, align 8
  %80 = load %struct.nd6_prproxy_soltgt*, %struct.nd6_prproxy_soltgt** %11, align 8
  %81 = getelementptr inbounds %struct.nd6_prproxy_soltgt, %struct.nd6_prproxy_soltgt* %80, i32 0, i32 1
  %82 = call %struct.nd6_prproxy_solsrc* @TAILQ_FIRST(i32* %81)
  store %struct.nd6_prproxy_solsrc* %82, %struct.nd6_prproxy_solsrc** %12, align 8
  %83 = load %struct.nd6_prproxy_solsrc*, %struct.nd6_prproxy_solsrc** %12, align 8
  %84 = icmp ne %struct.nd6_prproxy_solsrc* %83, null
  %85 = zext i1 %84 to i32
  %86 = call i32 @VERIFY(i32 %85)
  %87 = load %struct.nd6_prproxy_soltgt*, %struct.nd6_prproxy_soltgt** %11, align 8
  %88 = getelementptr inbounds %struct.nd6_prproxy_soltgt, %struct.nd6_prproxy_soltgt* %87, i32 0, i32 1
  %89 = load %struct.nd6_prproxy_solsrc*, %struct.nd6_prproxy_solsrc** %12, align 8
  %90 = load i32, i32* @solsrc_tqe, align 4
  %91 = call i32 @TAILQ_REMOVE(i32* %88, %struct.nd6_prproxy_solsrc* %89, i32 %90)
  %92 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %93 = load %struct.nd6_prproxy_solsrc*, %struct.nd6_prproxy_solsrc** %12, align 8
  %94 = getelementptr inbounds %struct.nd6_prproxy_solsrc, %struct.nd6_prproxy_solsrc* %93, i32 0, i32 1
  %95 = bitcast %struct.in6_addr* %92 to i8*
  %96 = bitcast %struct.in6_addr* %94 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %95, i8* align 8 %96, i64 4, i1 false)
  %97 = load %struct.nd6_prproxy_solsrc*, %struct.nd6_prproxy_solsrc** %12, align 8
  %98 = getelementptr inbounds %struct.nd6_prproxy_solsrc, %struct.nd6_prproxy_solsrc* %97, i32 0, i32 0
  %99 = load %struct.ifnet*, %struct.ifnet** %98, align 8
  %100 = load %struct.ifnet**, %struct.ifnet*** %9, align 8
  store %struct.ifnet* %99, %struct.ifnet** %100, align 8
  %101 = load %struct.nd6_prproxy_solsrc*, %struct.nd6_prproxy_solsrc** %12, align 8
  %102 = call i32 @nd6_solsrc_free(%struct.nd6_prproxy_solsrc* %101)
  %103 = load i32, i32* @TRUE, align 4
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %69, %64
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local i32 @NDPR_LOCK_ASSERT_HELD(%struct.nd_prefix*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @bzero(%struct.in6_addr*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.nd6_prproxy_soltgt* @RB_FIND(i32, i32*, %struct.nd6_prproxy_soltgt*) #1

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local %struct.nd6_prproxy_solsrc* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.nd6_prproxy_solsrc*, i32) #1

declare dso_local i32 @nd6_solsrc_free(%struct.nd6_prproxy_solsrc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
