; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_m_ext_paired_activate.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_m_ext_paired_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }
%struct.ext_ref = type { i32 }

@M_PKTHDR = common dso_local global i32 0, align 4
@EXTF_PAIRED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m_ext_paired_activate(%struct.mbuf* %0) #0 {
  %2 = alloca %struct.mbuf*, align 8
  %3 = alloca %struct.ext_ref*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mbuf* %0, %struct.mbuf** %2, align 8
  %9 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %10 = call i32 @MBUF_IS_PAIRED(%struct.mbuf* %9)
  %11 = call i32 @VERIFY(i32 %10)
  %12 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %13 = call i64 @MEXT_REF(%struct.mbuf* %12)
  %14 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %15 = call i64 @MEXT_MINREF(%struct.mbuf* %14)
  %16 = icmp eq i64 %13, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @VERIFY(i32 %17)
  %19 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %20 = call i64 @MEXT_PREF(%struct.mbuf* %19)
  %21 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %22 = call i64 @MEXT_MINREF(%struct.mbuf* %21)
  %23 = icmp eq i64 %20, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @VERIFY(i32 %24)
  %26 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %27 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @M_PKTHDR, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %4, align 4
  %31 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %32 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %5, align 4
  %34 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %35 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %6, align 8
  %38 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %39 = call i32 @m_get_ext_free(%struct.mbuf* %38)
  store i32 %39, i32* %7, align 4
  %40 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %41 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %8, align 4
  %44 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %45 = call %struct.ext_ref* @m_get_rfa(%struct.mbuf* %44)
  store %struct.ext_ref* %45, %struct.ext_ref** %3, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %1
  %49 = load %struct.ext_ref*, %struct.ext_ref** %3, align 8
  %50 = icmp ne %struct.ext_ref* %49, null
  br label %51

51:                                               ; preds = %48, %1
  %52 = phi i1 [ false, %1 ], [ %50, %48 ]
  %53 = zext i1 %52 to i32
  %54 = call i32 @VERIFY(i32 %53)
  %55 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @MBUF_INIT(%struct.mbuf* %55, i32 %56, i32 %57)
  %59 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %64 = bitcast %struct.mbuf* %63 to i32*
  %65 = load %struct.ext_ref*, %struct.ext_ref** %3, align 8
  %66 = load i32, i32* @EXTF_PAIRED, align 4
  %67 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %68 = call i32 @MEXT_PRIV(%struct.mbuf* %67)
  %69 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %70 = call i32 @MEXT_INIT(%struct.mbuf* %59, i32* %60, i32 %61, i32 %62, i32* %64, %struct.ext_ref* %65, i32 1, i32 1, i32 2, i32 %66, i32 %68, %struct.mbuf* %69)
  ret void
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @MBUF_IS_PAIRED(%struct.mbuf*) #1

declare dso_local i64 @MEXT_REF(%struct.mbuf*) #1

declare dso_local i64 @MEXT_MINREF(%struct.mbuf*) #1

declare dso_local i64 @MEXT_PREF(%struct.mbuf*) #1

declare dso_local i32 @m_get_ext_free(%struct.mbuf*) #1

declare dso_local %struct.ext_ref* @m_get_rfa(%struct.mbuf*) #1

declare dso_local i32 @MBUF_INIT(%struct.mbuf*, i32, i32) #1

declare dso_local i32 @MEXT_INIT(%struct.mbuf*, i32*, i32, i32, i32*, %struct.ext_ref*, i32, i32, i32, i32, i32, %struct.mbuf*) #1

declare dso_local i32 @MEXT_PRIV(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
