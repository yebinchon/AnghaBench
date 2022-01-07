; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryProcess.c_doCheckMetersInGroup.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryProcess.c_doCheckMetersInGroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_24__*, %struct.TYPE_21__ }
%struct.TYPE_24__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64, i32* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_23__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, i64, i64)* @doCheckMetersInGroup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @doCheckMetersInGroup(%struct.TYPE_22__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_23__, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 1
  store %struct.TYPE_21__* %17, %struct.TYPE_21__** %8, align 8
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  store %struct.TYPE_24__* %20, %struct.TYPE_24__** %9, align 8
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 0
  store %struct.TYPE_20__* %22, %struct.TYPE_20__** %10, align 8
  store i32 1, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @multimeterMultioutputHelper(%struct.TYPE_22__* %23, i32* %11, i32* %12, i64 %24, i64 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %94

29:                                               ; preds = %3
  store i64 0, i64* %13, align 8
  br label %30

30:                                               ; preds = %43, %29
  %31 = load i64, i64* %13, align 8
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ult i64 %31, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %30
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %13, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = call i32 @resetMMapWindow(i32* %41)
  br label %43

43:                                               ; preds = %36
  %44 = load i64, i64* %13, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %13, align 8
  br label %30

46:                                               ; preds = %30
  %47 = bitcast %struct.TYPE_23__* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %47, i8 0, i64 4, i1 false)
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %49 = call i32 @pointInterpSupporterInit(%struct.TYPE_21__* %48, %struct.TYPE_23__* %14)
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %53 = call i32 @normalizedFirstQueryRange(i32 %50, i32 %51, %struct.TYPE_24__* %52, %struct.TYPE_23__* %14)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %46
  %56 = call i32 @pointInterpSupporterDestroy(%struct.TYPE_23__* %14)
  store i32 0, i32* %4, align 4
  br label %94

57:                                               ; preds = %46
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %59 = call i32 @pointInterpSupporterSetData(%struct.TYPE_22__* %58, %struct.TYPE_23__* %14)
  %60 = call i32 @pointInterpSupporterDestroy(%struct.TYPE_23__* %14)
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %62 = call i32 @vnodeScanAllData(%struct.TYPE_20__* %61)
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %64 = call i32 @isFirstLastRowQuery(%struct.TYPE_21__* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %57
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %68 = call i32 @doFinalizeResult(%struct.TYPE_20__* %67)
  br label %69

69:                                               ; preds = %66, %57
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %71 = call i32 @getNumOfResult(%struct.TYPE_20__* %70)
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* %15, align 4
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %77, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* %15, align 4
  %76 = icmp eq i32 %75, 0
  br label %77

77:                                               ; preds = %74, %69
  %78 = phi i1 [ true, %69 ], [ %76, %74 ]
  %79 = zext i1 %78 to i32
  %80 = call i32 @assert(i32 %79)
  %81 = load i32, i32* %15, align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %77
  %84 = load i32, i32* %15, align 4
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, %84
  store i32 %88, i32* %86, align 4
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %90 = load i32, i32* %15, align 4
  %91 = call i32 @forwardCtxOutputBuf(%struct.TYPE_20__* %89, i32 %90)
  br label %92

92:                                               ; preds = %83, %77
  %93 = load i32, i32* %15, align 4
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %92, %55, %28
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @multimeterMultioutputHelper(%struct.TYPE_22__*, i32*, i32*, i64, i64) #1

declare dso_local i32 @resetMMapWindow(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @pointInterpSupporterInit(%struct.TYPE_21__*, %struct.TYPE_23__*) #1

declare dso_local i32 @normalizedFirstQueryRange(i32, i32, %struct.TYPE_24__*, %struct.TYPE_23__*) #1

declare dso_local i32 @pointInterpSupporterDestroy(%struct.TYPE_23__*) #1

declare dso_local i32 @pointInterpSupporterSetData(%struct.TYPE_22__*, %struct.TYPE_23__*) #1

declare dso_local i32 @vnodeScanAllData(%struct.TYPE_20__*) #1

declare dso_local i32 @isFirstLastRowQuery(%struct.TYPE_21__*) #1

declare dso_local i32 @doFinalizeResult(%struct.TYPE_20__*) #1

declare dso_local i32 @getNumOfResult(%struct.TYPE_20__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @forwardCtxOutputBuf(%struct.TYPE_20__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
