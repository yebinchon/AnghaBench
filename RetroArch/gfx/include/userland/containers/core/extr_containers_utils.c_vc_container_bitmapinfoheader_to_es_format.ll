; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/core/extr_containers_utils.c_vc_container_bitmapinfoheader_to_es_format.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/core/extr_containers_utils.c_vc_container_bitmapinfoheader_to_es_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@BITMAPINFOHEADER_SIZE_MAX = common dso_local global i32 0, align 4
@VC_CONTAINER_ERROR_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@VC_CONTAINER_ES_TYPE_VIDEO = common dso_local global i32 0, align 4
@VC_CONTAINER_CODEC_UNKNOWN = common dso_local global i64 0, align 8
@VC_CONTAINER_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vc_container_bitmapinfoheader_to_es_format(i32* %0, i32 %1, i32* %2, i32* %3, %struct.TYPE_7__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %11, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %5
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @BITMAPINFOHEADER_SIZE_MAX, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15, %5
  %20 = load i32, i32* @VC_CONTAINER_ERROR_INVALID_ARGUMENT, align 4
  store i32 %20, i32* %6, align 4
  br label %115

21:                                               ; preds = %15
  %22 = load i32*, i32** %7, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 7
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 %24, 24
  %26 = load i32*, i32** %7, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 6
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 16
  %30 = or i32 %25, %29
  %31 = load i32*, i32** %7, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 5
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 8
  %35 = or i32 %30, %34
  %36 = load i32*, i32** %7, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 4
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %35, %38
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store i32 %39, i32* %44, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 11
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 24
  %49 = load i32*, i32** %7, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 10
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 %51, 16
  %53 = or i32 %48, %52
  %54 = load i32*, i32** %7, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 9
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %56, 8
  %58 = or i32 %53, %57
  %59 = load i32*, i32** %7, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 8
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %58, %61
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  store i32 %62, i32* %67, align 4
  %68 = load i32*, i32** %7, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 16
  %70 = call i32 @memcpy(i64* %12, i32* %69, i32 4)
  %71 = load i32, i32* @VC_CONTAINER_ES_TYPE_VIDEO, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 8
  %74 = load i64, i64* %12, align 8
  %75 = call i64 @vfw_fourcc_to_codec(i64 %74)
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %12, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %92

83:                                               ; preds = %21
  %84 = load i64, i64* %12, align 8
  %85 = call i64 @fourcc_to_codec(i64 %84)
  store i64 %85, i64* %12, align 8
  %86 = load i64, i64* @VC_CONTAINER_CODEC_UNKNOWN, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = load i64, i64* %12, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  br label %92

92:                                               ; preds = %88, %83, %21
  %93 = load i32*, i32** %9, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i32, i32* @BITMAPINFOHEADER_SIZE_MAX, align 4
  %97 = load i32*, i32** %9, align 8
  store i32 %96, i32* %97, align 4
  br label %98

98:                                               ; preds = %95, %92
  %99 = load i32*, i32** %10, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %113

101:                                              ; preds = %98
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* @BITMAPINFOHEADER_SIZE_MAX, align 4
  %104 = icmp ugt i32 %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %101
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* @BITMAPINFOHEADER_SIZE_MAX, align 4
  %108 = sub i32 %106, %107
  %109 = load i32*, i32** %10, align 8
  store i32 %108, i32* %109, align 4
  br label %112

110:                                              ; preds = %101
  %111 = load i32*, i32** %10, align 8
  store i32 0, i32* %111, align 4
  br label %112

112:                                              ; preds = %110, %105
  br label %113

113:                                              ; preds = %112, %98
  %114 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  store i32 %114, i32* %6, align 4
  br label %115

115:                                              ; preds = %113, %19
  %116 = load i32, i32* %6, align 4
  ret i32 %116
}

declare dso_local i32 @memcpy(i64*, i32*, i32) #1

declare dso_local i64 @vfw_fourcc_to_codec(i64) #1

declare dso_local i64 @fourcc_to_codec(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
