; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpdec.c_ff_rtp_send_rtcp_feedback.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpdec.c_ff_rtp_send_rtcp_feedback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i32)* }

@MIN_FEEDBACK_INTERVAL = common dso_local global i64 0, align 8
@RTP_VERSION = common dso_local global i32 0, align 4
@RTCP_PSFB = common dso_local global i32 0, align 4
@RTCP_RTPFB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_rtp_send_rtcp_feedback(%struct.TYPE_6__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load i32*, i32** %7, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  store i32 -1, i32* %4, align 4
  br label %162

22:                                               ; preds = %18, %3
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = icmp ne %struct.TYPE_5__* %25, null
  br i1 %26, label %27, label %45

27:                                               ; preds = %22
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32 (i32)*, i32 (i32)** %31, align 8
  %33 = icmp ne i32 (i32)* %32, null
  br i1 %33, label %34, label %45

34:                                               ; preds = %27
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32 (i32)*, i32 (i32)** %38, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 %39(i32 %42)
  %44 = icmp ne i32 %43, 0
  br label %45

45:                                               ; preds = %34, %27, %22
  %46 = phi i1 [ false, %27 ], [ false, %22 ], [ %44, %34 ]
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %9, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %49 = call i32 @find_missing_packets(%struct.TYPE_6__* %48, i32* %14, i32* %15)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %45
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %162

56:                                               ; preds = %52, %45
  %57 = call i64 (...) @av_gettime_relative()
  store i64 %57, i64* %13, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %56
  %63 = load i64, i64* %13, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = sub nsw i64 %63, %66
  %68 = load i64, i64* @MIN_FEEDBACK_INTERVAL, align 8
  %69 = icmp slt i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  store i32 0, i32* %4, align 4
  br label %162

71:                                               ; preds = %62, %56
  %72 = load i64, i64* %13, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  %75 = load i32*, i32** %6, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %71
  %78 = load i32*, i32** %7, align 8
  store i32* %78, i32** %11, align 8
  br label %84

79:                                               ; preds = %71
  %80 = call i64 @avio_open_dyn_buf(i32** %11)
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  store i32 -1, i32* %4, align 4
  br label %162

83:                                               ; preds = %79
  br label %84

84:                                               ; preds = %83, %77
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %109

87:                                               ; preds = %84
  %88 = load i32*, i32** %11, align 8
  %89 = load i32, i32* @RTP_VERSION, align 4
  %90 = shl i32 %89, 6
  %91 = or i32 %90, 1
  %92 = call i32 @avio_w8(i32* %88, i32 %91)
  %93 = load i32*, i32** %11, align 8
  %94 = load i32, i32* @RTCP_PSFB, align 4
  %95 = call i32 @avio_w8(i32* %93, i32 %94)
  %96 = load i32*, i32** %11, align 8
  %97 = call i32 @avio_wb16(i32* %96, i32 2)
  %98 = load i32*, i32** %11, align 8
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %101, 1
  %103 = call i32 @avio_wb32(i32* %98, i64 %102)
  %104 = load i32*, i32** %11, align 8
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @avio_wb32(i32* %104, i64 %107)
  br label %109

109:                                              ; preds = %87, %84
  %110 = load i32, i32* %10, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %140

112:                                              ; preds = %109
  %113 = load i32*, i32** %11, align 8
  %114 = load i32, i32* @RTP_VERSION, align 4
  %115 = shl i32 %114, 6
  %116 = or i32 %115, 1
  %117 = call i32 @avio_w8(i32* %113, i32 %116)
  %118 = load i32*, i32** %11, align 8
  %119 = load i32, i32* @RTCP_RTPFB, align 4
  %120 = call i32 @avio_w8(i32* %118, i32 %119)
  %121 = load i32*, i32** %11, align 8
  %122 = call i32 @avio_wb16(i32* %121, i32 3)
  %123 = load i32*, i32** %11, align 8
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %126, 1
  %128 = call i32 @avio_wb32(i32* %123, i64 %127)
  %129 = load i32*, i32** %11, align 8
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @avio_wb32(i32* %129, i64 %132)
  %134 = load i32*, i32** %11, align 8
  %135 = load i32, i32* %14, align 4
  %136 = call i32 @avio_wb16(i32* %134, i32 %135)
  %137 = load i32*, i32** %11, align 8
  %138 = load i32, i32* %15, align 4
  %139 = call i32 @avio_wb16(i32* %137, i32 %138)
  br label %140

140:                                              ; preds = %112, %109
  %141 = load i32*, i32** %11, align 8
  %142 = call i32 @avio_flush(i32* %141)
  %143 = load i32*, i32** %6, align 8
  %144 = icmp ne i32* %143, null
  br i1 %144, label %146, label %145

145:                                              ; preds = %140
  store i32 0, i32* %4, align 4
  br label %162

146:                                              ; preds = %140
  %147 = load i32*, i32** %11, align 8
  %148 = call i32 @avio_close_dyn_buf(i32* %147, i32** %12)
  store i32 %148, i32* %8, align 4
  %149 = load i32, i32* %8, align 4
  %150 = icmp sgt i32 %149, 0
  br i1 %150, label %151, label %161

151:                                              ; preds = %146
  %152 = load i32*, i32** %12, align 8
  %153 = icmp ne i32* %152, null
  br i1 %153, label %154, label %161

154:                                              ; preds = %151
  %155 = load i32*, i32** %6, align 8
  %156 = load i32*, i32** %12, align 8
  %157 = load i32, i32* %8, align 4
  %158 = call i32 @ffurl_write(i32* %155, i32* %156, i32 %157)
  %159 = load i32*, i32** %12, align 8
  %160 = call i32 @av_free(i32* %159)
  br label %161

161:                                              ; preds = %154, %151, %146
  store i32 0, i32* %4, align 4
  br label %162

162:                                              ; preds = %161, %145, %82, %70, %55, %21
  %163 = load i32, i32* %4, align 4
  ret i32 %163
}

declare dso_local i32 @find_missing_packets(%struct.TYPE_6__*, i32*, i32*) #1

declare dso_local i64 @av_gettime_relative(...) #1

declare dso_local i64 @avio_open_dyn_buf(i32**) #1

declare dso_local i32 @avio_w8(i32*, i32) #1

declare dso_local i32 @avio_wb16(i32*, i32) #1

declare dso_local i32 @avio_wb32(i32*, i64) #1

declare dso_local i32 @avio_flush(i32*) #1

declare dso_local i32 @avio_close_dyn_buf(i32*, i32**) #1

declare dso_local i32 @ffurl_write(i32*, i32*, i32) #1

declare dso_local i32 @av_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
