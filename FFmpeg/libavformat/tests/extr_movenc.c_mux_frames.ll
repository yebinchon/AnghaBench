; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/tests/extr_movenc.c_mux_frames.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/tests/extr_movenc.c_mux_frames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i64, i64, i32*, i32 }

@frames = common dso_local global i32 0, align 4
@audio_dts = common dso_local global i64 0, align 8
@audio_st = common dso_local global %struct.TYPE_9__* null, align 8
@video_dts = common dso_local global i64 0, align 8
@video_st = common dso_local global %struct.TYPE_8__* null, align 8
@audio_duration = common dso_local global i32 0, align 4
@duration = common dso_local global i32 0, align 4
@gop_size = common dso_local global i32 0, align 4
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_I = common dso_local global i64 0, align 8
@last_picture = common dso_local global i64 0, align 8
@AV_PICTURE_TYPE_P = common dso_local global i64 0, align 8
@AV_PICTURE_TYPE_B = common dso_local global i64 0, align 8
@next_p_pts = common dso_local global i64 0, align 8
@bframes = common dso_local global i32 0, align 4
@fake_pkt_duration = common dso_local global i32 0, align 4
@clear_duration = common dso_local global i64 0, align 8
@skip_write = common dso_local global i64 0, align 8
@skip_write_audio = common dso_local global i64 0, align 8
@do_interleave = common dso_local global i64 0, align 8
@ctx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @mux_frames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mux_frames(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__, align 8
  %7 = alloca [8 x i32], align 16
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @frames, align 4
  %9 = load i32, i32* %3, align 4
  %10 = add nsw i32 %8, %9
  store i32 %10, i32* %5, align 4
  br label %11

11:                                               ; preds = %2, %136, %144, %164
  %12 = bitcast [8 x i32]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 32, i1 false)
  %13 = call i32 @av_init_packet(%struct.TYPE_7__* %6)
  %14 = load i64, i64* @audio_dts, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** @audio_st, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i64, i64* @video_dts, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** @video_st, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @av_compare_ts(i64 %14, i32 %17, i64 %18, i32 %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %11
  %25 = load i64, i64* @audio_dts, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 4
  store i64 %25, i64* %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 3
  store i64 %25, i64* %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load i32, i32* @audio_duration, align 4
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @audio_duration, align 4
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* @audio_dts, align 8
  %34 = add nsw i64 %33, %32
  store i64 %34, i64* @audio_dts, align 8
  br label %120

35:                                               ; preds = %11
  %36 = load i32, i32* @frames, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %165

40:                                               ; preds = %35
  %41 = load i64, i64* @video_dts, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 3
  store i64 %41, i64* %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  store i32 0, i32* %43, align 8
  %44 = load i32, i32* @duration, align 4
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* @frames, align 4
  %47 = load i32, i32* @gop_size, align 4
  %48 = srem i32 %46, %47
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %40
  %51 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 6
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %51
  store i32 %54, i32* %52, align 8
  %55 = load i64, i64* @AV_PICTURE_TYPE_I, align 8
  store i64 %55, i64* @last_picture, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* @duration, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %57, %59
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 4
  store i64 %60, i64* %61, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* @video_dts, align 8
  br label %104

64:                                               ; preds = %40
  %65 = load i64, i64* @last_picture, align 8
  %66 = load i64, i64* @AV_PICTURE_TYPE_P, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = load i64, i64* @AV_PICTURE_TYPE_B, align 8
  store i64 %69, i64* @last_picture, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 4
  store i64 %71, i64* %72, align 8
  %73 = load i64, i64* @next_p_pts, align 8
  store i64 %73, i64* @video_dts, align 8
  br label %103

74:                                               ; preds = %64
  %75 = load i64, i64* @AV_PICTURE_TYPE_P, align 8
  store i64 %75, i64* @last_picture, align 8
  %76 = load i32, i32* @frames, align 4
  %77 = add nsw i32 %76, 1
  %78 = load i32, i32* @gop_size, align 4
  %79 = srem i32 %77, %78
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %74
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* @duration, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %83, %85
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 4
  store i64 %86, i64* %87, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 4
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* @video_dts, align 8
  br label %102

90:                                               ; preds = %74
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = load i32, i32* @duration, align 4
  %94 = mul nsw i32 2, %93
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %92, %95
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 4
  store i64 %96, i64* %97, align 8
  store i64 %96, i64* @next_p_pts, align 8
  %98 = load i32, i32* @duration, align 4
  %99 = sext i32 %98 to i64
  %100 = load i64, i64* @video_dts, align 8
  %101 = add nsw i64 %100, %99
  store i64 %101, i64* @video_dts, align 8
  br label %102

102:                                              ; preds = %90, %81
  br label %103

103:                                              ; preds = %102, %68
  br label %104

104:                                              ; preds = %103, %50
  %105 = load i32, i32* @bframes, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 4
  store i64 %109, i64* %110, align 8
  br label %111

111:                                              ; preds = %107, %104
  %112 = load i32, i32* @fake_pkt_duration, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load i32, i32* @fake_pkt_duration, align 4
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  store i32 %115, i32* %116, align 4
  br label %117

117:                                              ; preds = %114, %111
  %118 = load i32, i32* @frames, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* @frames, align 4
  br label %120

120:                                              ; preds = %117, %24
  %121 = load i64, i64* @clear_duration, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %120
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  store i32 0, i32* %124, align 4
  br label %125

125:                                              ; preds = %123, %120
  %126 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %127 = getelementptr inbounds i32, i32* %126, i64 4
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 4
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @AV_WB32(i32* %127, i64 %129)
  %131 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 5
  store i32* %131, i32** %132, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  store i32 8, i32* %133, align 8
  %134 = load i64, i64* @skip_write, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %125
  br label %11

137:                                              ; preds = %125
  %138 = load i64, i64* @skip_write_audio, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %137
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp eq i32 %142, 1
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  br label %11

145:                                              ; preds = %140, %137
  %146 = load i32, i32* %4, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %145
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 4
  %150 = load i64, i64* %149, align 8
  %151 = add nsw i64 %150, 4294967296
  store i64 %151, i64* %149, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = add nsw i64 %153, 4294967296
  store i64 %154, i64* %152, align 8
  br label %155

155:                                              ; preds = %148, %145
  %156 = load i64, i64* @do_interleave, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = load i32, i32* @ctx, align 4
  %160 = call i32 @av_interleaved_write_frame(i32 %159, %struct.TYPE_7__* %6)
  br label %164

161:                                              ; preds = %155
  %162 = load i32, i32* @ctx, align 4
  %163 = call i32 @av_write_frame(i32 %162, %struct.TYPE_7__* %6)
  br label %164

164:                                              ; preds = %161, %158
  br label %11

165:                                              ; preds = %39
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @av_init_packet(%struct.TYPE_7__*) #2

declare dso_local i64 @av_compare_ts(i64, i32, i64, i32) #2

declare dso_local i32 @AV_WB32(i32*, i64) #2

declare dso_local i32 @av_interleaved_write_frame(i32, %struct.TYPE_7__*) #2

declare dso_local i32 @av_write_frame(i32, %struct.TYPE_7__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
