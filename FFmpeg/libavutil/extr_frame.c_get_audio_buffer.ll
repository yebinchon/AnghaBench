; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_frame.c_get_audio_buffer.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_frame.c_get_audio_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_9__**, %struct.TYPE_9__**, i32*, %struct.TYPE_7__**, %struct.TYPE_9__**, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_9__* }

@AV_NUM_DATA_POINTERS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32)* @get_audio_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_audio_buffer(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @av_sample_fmt_is_planar(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %2
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 9
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @av_get_channel_layout_nb_channels(i32 %22)
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  br label %26

26:                                               ; preds = %19, %2
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %6, align 4
  br label %35

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34, %32
  %36 = phi i32 [ %33, %32 ], [ 1, %34 ]
  store i32 %36, i32* %8, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = call i32 @CHECK_CHANNELS_CONSISTENCY(%struct.TYPE_8__* %37)
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 4
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %64, label %45

45:                                               ; preds = %35
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 4
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 8
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @av_samples_get_buffer_size(i32* %49, i32 %50, i32 %53, i32 %56, i32 %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %45
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %3, align 4
  br label %226

63:                                               ; preds = %45
  br label %64

64:                                               ; preds = %63, %35
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @AV_NUM_DATA_POINTERS, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %105

68:                                               ; preds = %64
  %69 = load i32, i32* %8, align 4
  %70 = call i8* @av_mallocz_array(i32 %69, i32 8)
  %71 = bitcast i8* %70 to %struct.TYPE_9__**
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 3
  store %struct.TYPE_9__** %71, %struct.TYPE_9__*** %73, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @AV_NUM_DATA_POINTERS, align 4
  %76 = sub nsw i32 %74, %75
  %77 = call i8* @av_mallocz_array(i32 %76, i32 8)
  %78 = bitcast i8* %77 to %struct.TYPE_9__**
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 2
  store %struct.TYPE_9__** %78, %struct.TYPE_9__*** %80, align 8
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 3
  %83 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %82, align 8
  %84 = icmp ne %struct.TYPE_9__** %83, null
  br i1 %84, label %85, label %90

85:                                               ; preds = %68
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %87, align 8
  %89 = icmp ne %struct.TYPE_9__** %88, null
  br i1 %89, label %99, label %90

90:                                               ; preds = %85, %68
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 3
  %93 = call i32 @av_freep(%struct.TYPE_9__*** %92)
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 2
  %96 = call i32 @av_freep(%struct.TYPE_9__*** %95)
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = call i32 @AVERROR(i32 %97)
  store i32 %98, i32* %3, align 4
  br label %226

99:                                               ; preds = %85
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* @AV_NUM_DATA_POINTERS, align 4
  %102 = sub nsw i32 %100, %101
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  br label %111

105:                                              ; preds = %64
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 6
  %108 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %107, align 8
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 3
  store %struct.TYPE_9__** %108, %struct.TYPE_9__*** %110, align 8
  br label %111

111:                                              ; preds = %105, %99
  store i32 0, i32* %10, align 4
  br label %112

112:                                              ; preds = %167, %111
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* @AV_NUM_DATA_POINTERS, align 4
  %116 = call i32 @FFMIN(i32 %114, i32 %115)
  %117 = icmp slt i32 %113, %116
  br i1 %117, label %118, label %170

118:                                              ; preds = %112
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 4
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 0
  %123 = load i32, i32* %122, align 4
  %124 = call i8* @av_buffer_alloc(i32 %123)
  %125 = bitcast i8* %124 to %struct.TYPE_7__*
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 5
  %128 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %127, align 8
  %129 = load i32, i32* %10, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %128, i64 %130
  store %struct.TYPE_7__* %125, %struct.TYPE_7__** %131, align 8
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 5
  %134 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %133, align 8
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %134, i64 %136
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %137, align 8
  %139 = icmp ne %struct.TYPE_7__* %138, null
  br i1 %139, label %145, label %140

140:                                              ; preds = %118
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %142 = call i32 @av_frame_unref(%struct.TYPE_8__* %141)
  %143 = load i32, i32* @ENOMEM, align 4
  %144 = call i32 @AVERROR(i32 %143)
  store i32 %144, i32* %3, align 4
  br label %226

145:                                              ; preds = %118
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 5
  %148 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %147, align 8
  %149 = load i32, i32* %10, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %148, i64 %150
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %153, align 8
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 6
  %157 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %156, align 8
  %158 = load i32, i32* %10, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %157, i64 %159
  store %struct.TYPE_9__* %154, %struct.TYPE_9__** %160, align 8
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 3
  %163 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %162, align 8
  %164 = load i32, i32* %10, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %163, i64 %165
  store %struct.TYPE_9__* %154, %struct.TYPE_9__** %166, align 8
  br label %167

167:                                              ; preds = %145
  %168 = load i32, i32* %10, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %10, align 4
  br label %112

170:                                              ; preds = %112
  store i32 0, i32* %10, align 4
  br label %171

171:                                              ; preds = %222, %170
  %172 = load i32, i32* %10, align 4
  %173 = load i32, i32* %8, align 4
  %174 = load i32, i32* @AV_NUM_DATA_POINTERS, align 4
  %175 = sub nsw i32 %173, %174
  %176 = icmp slt i32 %172, %175
  br i1 %176, label %177, label %225

177:                                              ; preds = %171
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 4
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 0
  %182 = load i32, i32* %181, align 4
  %183 = call i8* @av_buffer_alloc(i32 %182)
  %184 = bitcast i8* %183 to %struct.TYPE_9__*
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 2
  %187 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %186, align 8
  %188 = load i32, i32* %10, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %187, i64 %189
  store %struct.TYPE_9__* %184, %struct.TYPE_9__** %190, align 8
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 2
  %193 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %192, align 8
  %194 = load i32, i32* %10, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %193, i64 %195
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %196, align 8
  %198 = icmp ne %struct.TYPE_9__* %197, null
  br i1 %198, label %204, label %199

199:                                              ; preds = %177
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %201 = call i32 @av_frame_unref(%struct.TYPE_8__* %200)
  %202 = load i32, i32* @ENOMEM, align 4
  %203 = call i32 @AVERROR(i32 %202)
  store i32 %203, i32* %3, align 4
  br label %226

204:                                              ; preds = %177
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 2
  %207 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %206, align 8
  %208 = load i32, i32* %10, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %207, i64 %209
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 0
  %213 = load %struct.TYPE_9__*, %struct.TYPE_9__** %212, align 8
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 3
  %216 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %215, align 8
  %217 = load i32, i32* %10, align 4
  %218 = load i32, i32* @AV_NUM_DATA_POINTERS, align 4
  %219 = add nsw i32 %217, %218
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %216, i64 %220
  store %struct.TYPE_9__* %213, %struct.TYPE_9__** %221, align 8
  br label %222

222:                                              ; preds = %204
  %223 = load i32, i32* %10, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %10, align 4
  br label %171

225:                                              ; preds = %171
  store i32 0, i32* %3, align 4
  br label %226

226:                                              ; preds = %225, %199, %140, %90, %61
  %227 = load i32, i32* %3, align 4
  ret i32 %227
}

declare dso_local i32 @av_sample_fmt_is_planar(i32) #1

declare dso_local i32 @av_get_channel_layout_nb_channels(i32) #1

declare dso_local i32 @CHECK_CHANNELS_CONSISTENCY(%struct.TYPE_8__*) #1

declare dso_local i32 @av_samples_get_buffer_size(i32*, i32, i32, i32, i32) #1

declare dso_local i8* @av_mallocz_array(i32, i32) #1

declare dso_local i32 @av_freep(%struct.TYPE_9__***) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i8* @av_buffer_alloc(i32) #1

declare dso_local i32 @av_frame_unref(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
