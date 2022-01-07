; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryProcess.c_doMultiMeterSupplementaryScan.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryProcess.c_doMultiMeterSupplementaryScan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_21__, %struct.TYPE_23__* }
%struct.TYPE_21__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_23__ = type { i32, i32, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }

@.str = private unnamed_addr constant [59 x i8] c"QInfo:%p no need to do supplementary scan, query completed\00", align 1
@TSKEY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"QInfo:%p supplementary scan completed, elapsed time: %lldms\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*)* @doMultiMeterSupplementaryScan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @doMultiMeterSupplementaryScan(%struct.TYPE_22__* %0) #0 {
  %2 = alloca %struct.TYPE_22__*, align 8
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %2, align 8
  %8 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  store %struct.TYPE_23__* %10, %struct.TYPE_23__** %3, align 8
  %11 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 2
  store %struct.TYPE_20__* %12, %struct.TYPE_20__** %4, align 8
  %13 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  store %struct.TYPE_21__* %14, %struct.TYPE_21__** %5, align 8
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %16 = call i32 @needSupplementaryScan(%struct.TYPE_21__* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %20 = call i32 (i8*, %struct.TYPE_22__*, ...) @dTrace(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), %struct.TYPE_22__* %19)
  br label %101

21:                                               ; preds = %1
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %23 = call i32 @SET_SUPPLEMENT_SCAN_FLAG(%struct.TYPE_20__* %22)
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @disableFunctForSuppleScan(%struct.TYPE_20__* %24, i32 %28)
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %31, align 8
  %33 = icmp ne %struct.TYPE_19__* %32, null
  br i1 %33, label %34, label %47

34:                                               ; preds = %21
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = xor i32 %40, 1
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 0
  store i32 %41, i32* %46, align 4
  br label %47

47:                                               ; preds = %34, %21
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @TSKEY, align 4
  %55 = call i32 @SWAP(i32 %50, i32 %53, i32 %54)
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %57 = call i32 @setupMeterQueryInfoForSupplementQuery(%struct.TYPE_23__* %56)
  %58 = call i64 (...) @taosGetTimestampMs()
  store i64 %58, i64* %6, align 8
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %60 = call i32 @doOrderedScan(%struct.TYPE_22__* %59)
  %61 = call i64 (...) @taosGetTimestampMs()
  store i64 %61, i64* %7, align 8
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* %6, align 8
  %65 = sub nsw i64 %63, %64
  %66 = call i32 (i8*, %struct.TYPE_22__*, ...) @dTrace(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_22__* %62, i64 %65)
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @TSKEY, align 4
  %74 = call i32 @SWAP(i32 %69, i32 %72, i32 %73)
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @enableFunctForMasterScan(%struct.TYPE_20__* %75, i32 %79)
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %82, align 8
  %84 = icmp ne %struct.TYPE_19__* %83, null
  br i1 %84, label %85, label %98

85:                                               ; preds = %47
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = xor i32 %91, 1
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 0
  store i32 %92, i32* %97, align 4
  br label %98

98:                                               ; preds = %85, %47
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %100 = call i32 @SET_MASTER_SCAN_FLAG(%struct.TYPE_20__* %99)
  br label %101

101:                                              ; preds = %98, %18
  ret void
}

declare dso_local i32 @needSupplementaryScan(%struct.TYPE_21__*) #1

declare dso_local i32 @dTrace(i8*, %struct.TYPE_22__*, ...) #1

declare dso_local i32 @SET_SUPPLEMENT_SCAN_FLAG(%struct.TYPE_20__*) #1

declare dso_local i32 @disableFunctForSuppleScan(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @SWAP(i32, i32, i32) #1

declare dso_local i32 @setupMeterQueryInfoForSupplementQuery(%struct.TYPE_23__*) #1

declare dso_local i64 @taosGetTimestampMs(...) #1

declare dso_local i32 @doOrderedScan(%struct.TYPE_22__*) #1

declare dso_local i32 @enableFunctForMasterScan(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @SET_MASTER_SCAN_FLAG(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
