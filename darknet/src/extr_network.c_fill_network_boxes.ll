; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_network.c_fill_network_boxes.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_network.c_fill_network_boxes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i32, i32, i32 }

@YOLO = common dso_local global i64 0, align 8
@REGION = common dso_local global i64 0, align 8
@DETECTION = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fill_network_boxes(%struct.TYPE_7__* %0, i32 %1, i32 %2, float %3, float %4, i32* %5, i32 %6, i32* %7) #0 {
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_8__, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store float %3, float* %12, align 4
  store float %4, float* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32* %7, i32** %16, align 8
  store i32 0, i32* %17, align 4
  br label %20

20:                                               ; preds = %111, %8
  %21 = load i32, i32* %17, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %114

26:                                               ; preds = %20
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 3
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = load i32, i32* %17, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i64 %31
  %33 = bitcast %struct.TYPE_8__* %18 to i8*
  %34 = bitcast %struct.TYPE_8__* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %34, i64 24, i1 false)
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @YOLO, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %57

39:                                               ; preds = %26
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load float, float* %12, align 4
  %49 = load i32*, i32** %14, align 8
  %50 = load i32, i32* %15, align 4
  %51 = load i32*, i32** %16, align 8
  %52 = call i32 @get_yolo_detections(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %18, i32 %40, i32 %41, i32 %44, i32 %47, float %48, i32* %49, i32 %50, i32* %51)
  store i32 %52, i32* %19, align 4
  %53 = load i32, i32* %19, align 4
  %54 = load i32*, i32** %16, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  store i32* %56, i32** %16, align 8
  br label %57

57:                                               ; preds = %39, %26
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @REGION, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %88

62:                                               ; preds = %57
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load float, float* %12, align 4
  %72 = load i32*, i32** %14, align 8
  %73 = load float, float* %13, align 4
  %74 = load i32, i32* %15, align 4
  %75 = load i32*, i32** %16, align 8
  %76 = call i32 @get_region_detections(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %18, i32 %63, i32 %64, i32 %67, i32 %70, float %71, i32* %72, float %73, i32 %74, i32* %75)
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = mul nsw i32 %78, %80
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = mul nsw i32 %81, %83
  %85 = load i32*, i32** %16, align 8
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  store i32* %87, i32** %16, align 8
  br label %88

88:                                               ; preds = %62, %57
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @DETECTION, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %110

93:                                               ; preds = %88
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %11, align 4
  %96 = load float, float* %12, align 4
  %97 = load i32*, i32** %16, align 8
  %98 = call i32 @get_detection_detections(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %18, i32 %94, i32 %95, float %96, i32* %97)
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = mul nsw i32 %100, %102
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = mul nsw i32 %103, %105
  %107 = load i32*, i32** %16, align 8
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  store i32* %109, i32** %16, align 8
  br label %110

110:                                              ; preds = %93, %88
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %17, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %17, align 4
  br label %20

114:                                              ; preds = %20
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @get_yolo_detections(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8, i32, i32, i32, i32, float, i32*, i32, i32*) #2

declare dso_local i32 @get_region_detections(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8, i32, i32, i32, i32, float, i32*, float, i32, i32*) #2

declare dso_local i32 @get_detection_detections(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8, i32, i32, float, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
