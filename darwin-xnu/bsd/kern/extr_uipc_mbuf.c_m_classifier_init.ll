; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_m_classifier_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_m_classifier_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64, i64, i64, i64 }

@M_PKTHDR = common dso_local global i32 0, align 4
@PKTF_LOOP = common dso_local global i32 0, align 4
@MBUF_SC_BE = common dso_local global i32 0, align 4
@PKTF_IFAINFO = common dso_local global i32 0, align 4
@PKTF_TS_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m_classifier_init(%struct.mbuf* %0, i32 %1) #0 {
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca i32, align 4
  store %struct.mbuf* %0, %struct.mbuf** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %6 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @M_PKTHDR, align 4
  %9 = and i32 %7, %8
  %10 = call i32 @VERIFY(i32 %9)
  %11 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %12 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 5
  store i64 0, i64* %13, align 8
  %14 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %15 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 4
  store i64 0, i64* %16, align 8
  %17 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %18 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 3
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %22 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, %20
  store i32 %25, i32* %23, align 8
  %26 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %27 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @PKTF_LOOP, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %2
  %34 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %35 = load i32, i32* @MBUF_SC_BE, align 4
  %36 = call i32 @m_set_service_class(%struct.mbuf* %34, i32 %35)
  br label %37

37:                                               ; preds = %33, %2
  %38 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %39 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @PKTF_IFAINFO, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %37
  %46 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %47 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  store i64 0, i64* %48, align 8
  br label %49

49:                                               ; preds = %45, %37
  %50 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %51 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @PKTF_TS_VALID, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %49
  %58 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %59 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  store i64 0, i64* %60, align 8
  br label %61

61:                                               ; preds = %57, %49
  ret void
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @m_set_service_class(%struct.mbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
