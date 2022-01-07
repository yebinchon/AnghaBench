; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_doSingleMeterSupplementScan.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_doSingleMeterSupplementScan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64, i64, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*)* @doSingleMeterSupplementScan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @doSingleMeterSupplementScan(%struct.TYPE_20__* %0) #0 {
  %2 = alloca %struct.TYPE_20__*, align 8
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_19__, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %2, align 8
  %7 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  store %struct.TYPE_21__* %9, %struct.TYPE_21__** %3, align 8
  %10 = bitcast %struct.TYPE_19__* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 4, i1 false)
  %11 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %12 = call i32 @needSupplementaryScan(%struct.TYPE_21__* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %96

15:                                               ; preds = %1
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %17 = call i32 @SET_SUPPLEMENT_SCAN_FLAG(%struct.TYPE_20__* %16)
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 1
  %21 = call i64 @loadRequiredBlockIntoMem(%struct.TYPE_20__* %18, i32* %20)
  store i64 %21, i64* %5, align 8
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %23 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_21__* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %15
  %26 = load i64, i64* %5, align 8
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sle i64 %26, %29
  br i1 %30, label %43, label %31

31:                                               ; preds = %25, %15
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %33 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_21__* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %31
  %36 = load i64, i64* %5, align 8
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sge i64 %36, %39
  br label %41

41:                                               ; preds = %35, %31
  %42 = phi i1 [ false, %31 ], [ %40, %35 ]
  br label %43

43:                                               ; preds = %41, %25
  %44 = phi i1 [ true, %25 ], [ %42, %41 ]
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @disableFunctForSuppleScan(%struct.TYPE_20__* %47, i32 %51)
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %54 = call i32 @queryStatusSave(%struct.TYPE_20__* %53, %struct.TYPE_19__* %4)
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %56 = call i32 @doScanAllDataBlocks(%struct.TYPE_20__* %55)
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 0
  %60 = call i64 @loadRequiredBlockIntoMem(%struct.TYPE_20__* %57, i32* %59)
  store i64 %60, i64* %6, align 8
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %62 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_21__* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %43
  %65 = load i64, i64* %6, align 8
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp sge i64 %65, %68
  br i1 %69, label %82, label %70

70:                                               ; preds = %64, %43
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %72 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_21__* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %70
  %75 = load i64, i64* %6, align 8
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp sle i64 %75, %78
  br label %80

80:                                               ; preds = %74, %70
  %81 = phi i1 [ false, %70 ], [ %79, %74 ]
  br label %82

82:                                               ; preds = %80, %64
  %83 = phi i1 [ true, %64 ], [ %81, %80 ]
  %84 = zext i1 %83 to i32
  %85 = call i32 @assert(i32 %84)
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %87 = call i32 @queryStatusRestore(%struct.TYPE_20__* %86, %struct.TYPE_19__* %4)
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @enableFunctForMasterScan(%struct.TYPE_20__* %88, i32 %92)
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %95 = call i32 @SET_MASTER_SCAN_FLAG(%struct.TYPE_20__* %94)
  br label %96

96:                                               ; preds = %82, %14
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @needSupplementaryScan(%struct.TYPE_21__*) #2

declare dso_local i32 @SET_SUPPLEMENT_SCAN_FLAG(%struct.TYPE_20__*) #2

declare dso_local i64 @loadRequiredBlockIntoMem(%struct.TYPE_20__*, i32*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_21__*) #2

declare dso_local i32 @disableFunctForSuppleScan(%struct.TYPE_20__*, i32) #2

declare dso_local i32 @queryStatusSave(%struct.TYPE_20__*, %struct.TYPE_19__*) #2

declare dso_local i32 @doScanAllDataBlocks(%struct.TYPE_20__*) #2

declare dso_local i32 @queryStatusRestore(%struct.TYPE_20__*, %struct.TYPE_19__*) #2

declare dso_local i32 @enableFunctForMasterScan(%struct.TYPE_20__*, i32) #2

declare dso_local i32 @SET_MASTER_SCAN_FLAG(%struct.TYPE_20__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
