; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_m_mclget.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_m_mclget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.ext_ref = type { i32 }

@ref_cache = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbuf* @m_mclget(%struct.mbuf* %0, i32 %1) #0 {
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ext_ref*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @ref_cache, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @MSLEEPF(i32 %8)
  %10 = call %struct.ext_ref* @mcache_alloc(i32 %7, i32 %9)
  store %struct.ext_ref* %10, %struct.ext_ref** %6, align 8
  %11 = icmp eq %struct.ext_ref* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  store %struct.mbuf* %13, %struct.mbuf** %3, align 8
  br label %39

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = call i32* @m_mclalloc(i32 %15)
  %17 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %18 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32* %16, i32** %19, align 8
  %20 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %21 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %14
  %26 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %27 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %28 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.ext_ref*, %struct.ext_ref** %6, align 8
  %32 = call i32 @MBUF_CL_INIT(%struct.mbuf* %26, i32* %30, %struct.ext_ref* %31, i32 1, i32 0)
  br label %37

33:                                               ; preds = %14
  %34 = load i32, i32* @ref_cache, align 4
  %35 = load %struct.ext_ref*, %struct.ext_ref** %6, align 8
  %36 = call i32 @mcache_free(i32 %34, %struct.ext_ref* %35)
  br label %37

37:                                               ; preds = %33, %25
  %38 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  store %struct.mbuf* %38, %struct.mbuf** %3, align 8
  br label %39

39:                                               ; preds = %37, %12
  %40 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  ret %struct.mbuf* %40
}

declare dso_local %struct.ext_ref* @mcache_alloc(i32, i32) #1

declare dso_local i32 @MSLEEPF(i32) #1

declare dso_local i32* @m_mclalloc(i32) #1

declare dso_local i32 @MBUF_CL_INIT(%struct.mbuf*, i32*, %struct.ext_ref*, i32, i32) #1

declare dso_local i32 @mcache_free(i32, %struct.ext_ref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
