; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kpi_mbuf.c_mbuf_set_timestamp_requested.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kpi_mbuf.c_mbuf_set_timestamp_requested.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i64 }

@M_PKTHDR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@PKTF_TX_COMPL_TS_REQ = common dso_local global i32 0, align 4
@mbuf_tx_compl_index = common dso_local global i32 0, align 4
@mbuf_tx_compl_debug = common dso_local global i64 0, align 8
@mbuf_tx_compl_outstanding = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbuf_set_timestamp_requested(%struct.TYPE_5__* %0, i64* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %10 = icmp eq %struct.TYPE_5__* %9, null
  br i1 %10, label %24, label %11

11:                                               ; preds = %3
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @M_PKTHDR, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %11
  %19 = load i32*, i32** %7, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i64*, i64** %6, align 8
  %23 = icmp eq i64* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %21, %18, %11, %3
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %4, align 4
  br label %70

26:                                               ; preds = %21
  %27 = load i32*, i32** %7, align 8
  %28 = call i64 @get_tx_compl_callback_index(i32* %27)
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* @UINT32_MAX, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @ENOENT, align 4
  store i32 %33, i32* %4, align 4
  br label %70

34:                                               ; preds = %26
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @PKTF_TX_COMPL_TS_REQ, align 4
  %40 = and i32 %38, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %34
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  store i32 0, i32* %45, align 4
  %46 = load i32, i32* @PKTF_TX_COMPL_TS_REQ, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %46
  store i32 %51, i32* %49, align 8
  %52 = call i64 @atomic_add_32_ov(i32* @mbuf_tx_compl_index, i32 1)
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  store i64 %52, i64* %55, align 8
  br label %56

56:                                               ; preds = %42, %34
  %57 = load i64, i64* %8, align 8
  %58 = trunc i64 %57 to i32
  %59 = shl i32 1, %58
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %59
  store i32 %64, i32* %62, align 4
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load i64*, i64** %6, align 8
  store i64 %68, i64* %69, align 8
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %56, %32, %24
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i64 @get_tx_compl_callback_index(i32*) #1

declare dso_local i64 @atomic_add_32_ov(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
