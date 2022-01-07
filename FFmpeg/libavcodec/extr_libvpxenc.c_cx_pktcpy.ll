; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libvpxenc.c_cx_pktcpy.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libvpxenc.c_cx_pktcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FrameListData = type { i32, i32, i64, i32*, i32, i64, i32*, i64, i32, i32 }
%struct.vpx_codec_cx_pkt = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64, i32*, i32, i32 }
%struct.TYPE_7__ = type { i32, i64, i32 }

@VPX_FRAME_IS_INVISIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FrameListData*, %struct.vpx_codec_cx_pkt*, %struct.vpx_codec_cx_pkt*, %struct.TYPE_7__*)* @cx_pktcpy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx_pktcpy(%struct.FrameListData* %0, %struct.vpx_codec_cx_pkt* %1, %struct.vpx_codec_cx_pkt* %2, %struct.TYPE_7__* %3) #0 {
  %5 = alloca %struct.FrameListData*, align 8
  %6 = alloca %struct.vpx_codec_cx_pkt*, align 8
  %7 = alloca %struct.vpx_codec_cx_pkt*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  store %struct.FrameListData* %0, %struct.FrameListData** %5, align 8
  store %struct.vpx_codec_cx_pkt* %1, %struct.vpx_codec_cx_pkt** %6, align 8
  store %struct.vpx_codec_cx_pkt* %2, %struct.vpx_codec_cx_pkt** %7, align 8
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %8, align 8
  %9 = load %struct.vpx_codec_cx_pkt*, %struct.vpx_codec_cx_pkt** %6, align 8
  %10 = getelementptr inbounds %struct.vpx_codec_cx_pkt, %struct.vpx_codec_cx_pkt* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.FrameListData*, %struct.FrameListData** %5, align 8
  %15 = getelementptr inbounds %struct.FrameListData, %struct.FrameListData* %14, i32 0, i32 9
  store i32 %13, i32* %15, align 4
  %16 = load %struct.vpx_codec_cx_pkt*, %struct.vpx_codec_cx_pkt** %6, align 8
  %17 = getelementptr inbounds %struct.vpx_codec_cx_pkt, %struct.vpx_codec_cx_pkt* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.FrameListData*, %struct.FrameListData** %5, align 8
  %22 = getelementptr inbounds %struct.FrameListData, %struct.FrameListData* %21, i32 0, i32 8
  store i32 %20, i32* %22, align 8
  %23 = load %struct.vpx_codec_cx_pkt*, %struct.vpx_codec_cx_pkt** %6, align 8
  %24 = getelementptr inbounds %struct.vpx_codec_cx_pkt, %struct.vpx_codec_cx_pkt* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.FrameListData*, %struct.FrameListData** %5, align 8
  %29 = getelementptr inbounds %struct.FrameListData, %struct.FrameListData* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.vpx_codec_cx_pkt*, %struct.vpx_codec_cx_pkt** %6, align 8
  %31 = getelementptr inbounds %struct.vpx_codec_cx_pkt, %struct.vpx_codec_cx_pkt* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.FrameListData*, %struct.FrameListData** %5, align 8
  %36 = getelementptr inbounds %struct.FrameListData, %struct.FrameListData* %35, i32 0, i32 7
  store i64 %34, i64* %36, align 8
  %37 = load %struct.vpx_codec_cx_pkt*, %struct.vpx_codec_cx_pkt** %6, align 8
  %38 = getelementptr inbounds %struct.vpx_codec_cx_pkt, %struct.vpx_codec_cx_pkt* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.FrameListData*, %struct.FrameListData** %5, align 8
  %43 = getelementptr inbounds %struct.FrameListData, %struct.FrameListData* %42, i32 0, i32 6
  store i32* %41, i32** %43, align 8
  %44 = load %struct.FrameListData*, %struct.FrameListData** %5, align 8
  %45 = getelementptr inbounds %struct.FrameListData, %struct.FrameListData* %44, i32 0, i32 5
  store i64 0, i64* %45, align 8
  %46 = load %struct.FrameListData*, %struct.FrameListData** %5, align 8
  %47 = getelementptr inbounds %struct.FrameListData, %struct.FrameListData* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @VPX_FRAME_IS_INVISIBLE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %79, label %52

52:                                               ; preds = %4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 8
  %57 = load %struct.FrameListData*, %struct.FrameListData** %5, align 8
  %58 = getelementptr inbounds %struct.FrameListData, %struct.FrameListData* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.FrameListData*, %struct.FrameListData** %5, align 8
  %63 = getelementptr inbounds %struct.FrameListData, %struct.FrameListData* %62, i32 0, i32 5
  store i64 %61, i64* %63, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %52
  %69 = load %struct.FrameListData*, %struct.FrameListData** %5, align 8
  %70 = getelementptr inbounds %struct.FrameListData, %struct.FrameListData* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @memcpy(i32 %71, i32 %74, i32 4)
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  store i64 0, i64* %77, align 8
  br label %78

78:                                               ; preds = %68, %52
  br label %82

79:                                               ; preds = %4
  %80 = load %struct.FrameListData*, %struct.FrameListData** %5, align 8
  %81 = getelementptr inbounds %struct.FrameListData, %struct.FrameListData* %80, i32 0, i32 1
  store i32 -1, i32* %81, align 4
  br label %82

82:                                               ; preds = %79, %78
  %83 = load %struct.vpx_codec_cx_pkt*, %struct.vpx_codec_cx_pkt** %7, align 8
  %84 = icmp ne %struct.vpx_codec_cx_pkt* %83, null
  br i1 %84, label %85, label %100

85:                                               ; preds = %82
  %86 = load %struct.vpx_codec_cx_pkt*, %struct.vpx_codec_cx_pkt** %7, align 8
  %87 = getelementptr inbounds %struct.vpx_codec_cx_pkt, %struct.vpx_codec_cx_pkt* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = load %struct.FrameListData*, %struct.FrameListData** %5, align 8
  %92 = getelementptr inbounds %struct.FrameListData, %struct.FrameListData* %91, i32 0, i32 3
  store i32* %90, i32** %92, align 8
  %93 = load %struct.vpx_codec_cx_pkt*, %struct.vpx_codec_cx_pkt** %7, align 8
  %94 = getelementptr inbounds %struct.vpx_codec_cx_pkt, %struct.vpx_codec_cx_pkt* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.FrameListData*, %struct.FrameListData** %5, align 8
  %99 = getelementptr inbounds %struct.FrameListData, %struct.FrameListData* %98, i32 0, i32 2
  store i64 %97, i64* %99, align 8
  br label %105

100:                                              ; preds = %82
  %101 = load %struct.FrameListData*, %struct.FrameListData** %5, align 8
  %102 = getelementptr inbounds %struct.FrameListData, %struct.FrameListData* %101, i32 0, i32 3
  store i32* null, i32** %102, align 8
  %103 = load %struct.FrameListData*, %struct.FrameListData** %5, align 8
  %104 = getelementptr inbounds %struct.FrameListData, %struct.FrameListData* %103, i32 0, i32 2
  store i64 0, i64* %104, align 8
  br label %105

105:                                              ; preds = %100, %85
  ret void
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
