; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_m_getcl.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_m_getcl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }
%struct.ext_ref = type { i32 }

@M_PKTHDR = common dso_local global i32 0, align 4
@MCR_NOSLEEP = common dso_local global i32 0, align 4
@MCR_TRYHARD = common dso_local global i32 0, align 4
@MC_MBUF_CL = common dso_local global i32 0, align 4
@MT_FREE = common dso_local global i64 0, align 8
@M_EXT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbuf* @m_getcl(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ext_ref*, align 8
  %12 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @MSLEEPF(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @M_PKTHDR, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @MCR_NOSLEEP, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load i32, i32* @MCR_TRYHARD, align 4
  %24 = load i32, i32* %8, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %22, %3
  %27 = load i32, i32* @MC_MBUF_CL, align 4
  %28 = call i32 @m_cache(i32 %27)
  %29 = load i32, i32* %8, align 4
  %30 = call %struct.mbuf* @mcache_alloc(i32 %28, i32 %29)
  store %struct.mbuf* %30, %struct.mbuf** %7, align 8
  %31 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %32 = icmp ne %struct.mbuf* %31, null
  br i1 %32, label %33, label %90

33:                                               ; preds = %26
  %34 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %35 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @MT_FREE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %41 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @M_EXT, align 8
  %44 = icmp eq i64 %42, %43
  br label %45

45:                                               ; preds = %39, %33
  %46 = phi i1 [ false, %33 ], [ %44, %39 ]
  %47 = zext i1 %46 to i32
  %48 = call i32 @VERIFY(i32 %47)
  %49 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %50 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %12, align 8
  %53 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %54 = call %struct.ext_ref* @m_get_rfa(%struct.mbuf* %53)
  store %struct.ext_ref* %54, %struct.ext_ref** %11, align 8
  %55 = load i8*, i8** %12, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %45
  %58 = load %struct.ext_ref*, %struct.ext_ref** %11, align 8
  %59 = icmp ne %struct.ext_ref* %58, null
  br label %60

60:                                               ; preds = %57, %45
  %61 = phi i1 [ false, %45 ], [ %59, %57 ]
  %62 = zext i1 %61 to i32
  %63 = call i32 @ASSERT(i32 %62)
  %64 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %65 = call i64 @MBUF_IS_COMPOSITE(%struct.mbuf* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %60
  %68 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %69 = call i32* @m_get_ext_free(%struct.mbuf* %68)
  %70 = icmp eq i32* %69, null
  br label %71

71:                                               ; preds = %67, %60
  %72 = phi i1 [ false, %60 ], [ %70, %67 ]
  %73 = zext i1 %72 to i32
  %74 = call i32 @VERIFY(i32 %73)
  %75 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %76 = call i32 @MEXT_FLAGS(%struct.mbuf* %75)
  store i32 %76, i32* %10, align 4
  %77 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @MBUF_INIT(%struct.mbuf* %77, i32 %78, i32 %79)
  %81 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %82 = load i8*, i8** %12, align 8
  %83 = load %struct.ext_ref*, %struct.ext_ref** %11, align 8
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @MBUF_CL_INIT(%struct.mbuf* %81, i8* %82, %struct.ext_ref* %83, i32 1, i32 %84)
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @mtype_stat_inc(i32 %86)
  %88 = load i64, i64* @MT_FREE, align 8
  %89 = call i32 @mtype_stat_dec(i64 %88)
  br label %90

90:                                               ; preds = %71, %26
  %91 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  ret %struct.mbuf* %91
}

declare dso_local i32 @MSLEEPF(i32) #1

declare dso_local %struct.mbuf* @mcache_alloc(i32, i32) #1

declare dso_local i32 @m_cache(i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local %struct.ext_ref* @m_get_rfa(%struct.mbuf*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @MBUF_IS_COMPOSITE(%struct.mbuf*) #1

declare dso_local i32* @m_get_ext_free(%struct.mbuf*) #1

declare dso_local i32 @MEXT_FLAGS(%struct.mbuf*) #1

declare dso_local i32 @MBUF_INIT(%struct.mbuf*, i32, i32) #1

declare dso_local i32 @MBUF_CL_INIT(%struct.mbuf*, i8*, %struct.ext_ref*, i32, i32) #1

declare dso_local i32 @mtype_stat_inc(i32) #1

declare dso_local i32 @mtype_stat_dec(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
