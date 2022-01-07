; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpenc_h264_hevc.c_ff_rtp_send_h264_hevc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpenc_h264_hevc.c_ff_rtp_send_h264_hevc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_rtp_send_h264_hevc(%struct.TYPE_7__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  store i32* %14, i32** %8, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %9, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %3
  %33 = load i32*, i32** %5, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32* @ff_avc_mp4_find_startcode(i32* %33, i32* %34, i64 %37)
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32*, i32** %5, align 8
  br label %44

42:                                               ; preds = %32
  %43 = load i32*, i32** %8, align 8
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32* [ %41, %40 ], [ %43, %42 ]
  store i32* %45, i32** %7, align 8
  br label %50

46:                                               ; preds = %3
  %47 = load i32*, i32** %5, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = call i32* @ff_avc_find_startcode(i32* %47, i32* %48)
  store i32* %49, i32** %7, align 8
  br label %50

50:                                               ; preds = %46, %44
  br label %51

51:                                               ; preds = %89, %50
  %52 = load i32*, i32** %7, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = icmp ult i32* %52, %53
  br i1 %54, label %55, label %105

55:                                               ; preds = %51
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %77

60:                                               ; preds = %55
  %61 = load i32*, i32** %7, align 8
  %62 = load i32*, i32** %8, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32* @ff_avc_mp4_find_startcode(i32* %61, i32* %62, i64 %65)
  store i32* %66, i32** %10, align 8
  %67 = load i32*, i32** %10, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %60
  %70 = load i32*, i32** %8, align 8
  store i32* %70, i32** %10, align 8
  br label %71

71:                                               ; preds = %69, %60
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i32*, i32** %7, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 %74
  store i32* %76, i32** %7, align 8
  br label %89

77:                                               ; preds = %55
  br label %78

78:                                               ; preds = %84, %77
  %79 = load i32*, i32** %7, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %7, align 8
  %81 = load i32, i32* %79, align 4
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  br label %78

85:                                               ; preds = %78
  %86 = load i32*, i32** %7, align 8
  %87 = load i32*, i32** %8, align 8
  %88 = call i32* @ff_avc_find_startcode(i32* %86, i32* %87)
  store i32* %88, i32** %10, align 8
  br label %89

89:                                               ; preds = %85, %71
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %91 = load i32*, i32** %7, align 8
  %92 = load i32*, i32** %10, align 8
  %93 = load i32*, i32** %7, align 8
  %94 = ptrtoint i32* %92 to i64
  %95 = ptrtoint i32* %93 to i64
  %96 = sub i64 %94, %95
  %97 = sdiv exact i64 %96, 4
  %98 = trunc i64 %97 to i32
  %99 = load i32*, i32** %10, align 8
  %100 = load i32*, i32** %8, align 8
  %101 = icmp eq i32* %99, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @nal_send(%struct.TYPE_7__* %90, i32* %91, i32 %98, i32 %102)
  %104 = load i32*, i32** %10, align 8
  store i32* %104, i32** %7, align 8
  br label %51

105:                                              ; preds = %51
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %107 = call i32 @flush_buffered(%struct.TYPE_7__* %106, i32 1)
  ret void
}

declare dso_local i32* @ff_avc_mp4_find_startcode(i32*, i32*, i64) #1

declare dso_local i32* @ff_avc_find_startcode(i32*, i32*) #1

declare dso_local i32 @nal_send(%struct.TYPE_7__*, i32*, i32, i32) #1

declare dso_local i32 @flush_buffered(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
