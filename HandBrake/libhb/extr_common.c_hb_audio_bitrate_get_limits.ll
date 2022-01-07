; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_common.c_hb_audio_bitrate_get_limits.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_common.c_hb_audio_bitrate_get_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@hb_audio_rates_first_item = common dso_local global %struct.TYPE_6__* null, align 8
@hb_audio_rates_last_item = common dso_local global %struct.TYPE_5__* null, align 8
@hb_audio_bitrates_first_item = common dso_local global %struct.TYPE_8__* null, align 8
@hb_audio_bitrates_last_item = common dso_local global %struct.TYPE_7__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hb_audio_bitrate_get_limits(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %5
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hb_audio_rates_first_item, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32*, i32** %9, align 8
  call void @hb_audio_bitrate_get_limits(i32 %18, i32 %21, i32 %22, i32* %23, i32* %11)
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** @hb_audio_rates_last_item, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32*, i32** %10, align 8
  call void @hb_audio_bitrate_get_limits(i32 %24, i32 %27, i32 %28, i32* %11, i32* %29)
  br label %276

30:                                               ; preds = %5
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @hb_audio_samplerate_find_closest(i32 %31, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @hb_audio_samplerate_get_sr_shift(i32 %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @hb_mixdown_get_low_freq_channel_count(i32 %36)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @hb_mixdown_get_discrete_channel_count(i32 %38)
  %40 = load i32, i32* %13, align 4
  %41 = sub nsw i32 %39, %40
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %6, align 4
  switch i32 %42, label %243 [
    i32 132, label %43
    i32 131, label %43
    i32 139, label %46
    i32 133, label %52
    i32 138, label %61
    i32 137, label %112
    i32 136, label %124
    i32 135, label %137
    i32 134, label %158
    i32 130, label %178
    i32 128, label %196
    i32 129, label %232
  ]

43:                                               ; preds = %30, %30
  %44 = load i32*, i32** %10, align 8
  store i32 -1, i32* %44, align 4
  %45 = load i32*, i32** %9, align 8
  store i32 -1, i32* %45, align 4
  br label %276

46:                                               ; preds = %30
  %47 = load i32, i32* %14, align 4
  %48 = mul nsw i32 224, %47
  %49 = sdiv i32 %48, 5
  %50 = load i32*, i32** %9, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32*, i32** %10, align 8
  store i32 640, i32* %51, align 4
  br label %252

52:                                               ; preds = %30
  %53 = load i32, i32* %14, align 4
  %54 = mul nsw i32 224, %53
  %55 = sdiv i32 %54, 5
  %56 = load i32*, i32** %9, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* %7, align 4
  %58 = mul nsw i32 128, %57
  %59 = sdiv i32 %58, 1000
  %60 = load i32*, i32** %10, align 8
  store i32 %59, i32* %60, align 4
  br label %252

61:                                               ; preds = %30
  %62 = load i32, i32* %7, align 4
  switch i32 %62, label %99 [
    i32 8000, label %63
    i32 11025, label %70
    i32 12000, label %70
    i32 16000, label %77
    i32 22050, label %84
    i32 24000, label %84
    i32 32000, label %91
    i32 44100, label %98
    i32 48000, label %98
  ]

63:                                               ; preds = %61
  %64 = load i32, i32* %14, align 4
  %65 = mul nsw i32 %64, 8
  %66 = load i32*, i32** %9, align 8
  store i32 %65, i32* %66, align 4
  %67 = load i32, i32* %14, align 4
  %68 = mul nsw i32 %67, 24
  %69 = load i32*, i32** %10, align 8
  store i32 %68, i32* %69, align 4
  br label %111

70:                                               ; preds = %61, %61
  %71 = load i32, i32* %14, align 4
  %72 = mul nsw i32 %71, 12
  %73 = load i32*, i32** %9, align 8
  store i32 %72, i32* %73, align 4
  %74 = load i32, i32* %14, align 4
  %75 = mul nsw i32 %74, 32
  %76 = load i32*, i32** %10, align 8
  store i32 %75, i32* %76, align 4
  br label %111

77:                                               ; preds = %61
  %78 = load i32, i32* %14, align 4
  %79 = mul nsw i32 %78, 12
  %80 = load i32*, i32** %9, align 8
  store i32 %79, i32* %80, align 4
  %81 = load i32, i32* %14, align 4
  %82 = mul nsw i32 %81, 48
  %83 = load i32*, i32** %10, align 8
  store i32 %82, i32* %83, align 4
  br label %111

84:                                               ; preds = %61, %61
  %85 = load i32, i32* %14, align 4
  %86 = mul nsw i32 %85, 16
  %87 = load i32*, i32** %9, align 8
  store i32 %86, i32* %87, align 4
  %88 = load i32, i32* %14, align 4
  %89 = mul nsw i32 %88, 64
  %90 = load i32*, i32** %10, align 8
  store i32 %89, i32* %90, align 4
  br label %111

91:                                               ; preds = %61
  %92 = load i32, i32* %14, align 4
  %93 = mul nsw i32 %92, 24
  %94 = load i32*, i32** %9, align 8
  store i32 %93, i32* %94, align 4
  %95 = load i32, i32* %14, align 4
  %96 = mul nsw i32 %95, 96
  %97 = load i32*, i32** %10, align 8
  store i32 %96, i32* %97, align 4
  br label %111

98:                                               ; preds = %61, %61
  br label %99

99:                                               ; preds = %61, %98
  %100 = load i32, i32* %14, align 4
  %101 = mul nsw i32 %100, 32
  %102 = load i32*, i32** %9, align 8
  store i32 %101, i32* %102, align 4
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* %14, align 4
  %105 = icmp eq i32 %104, 1
  %106 = zext i1 %105 to i32
  %107 = mul nsw i32 96, %106
  %108 = add nsw i32 160, %107
  %109 = mul nsw i32 %103, %108
  %110 = load i32*, i32** %10, align 8
  store i32 %109, i32* %110, align 4
  br label %111

111:                                              ; preds = %99, %91, %84, %77, %70, %63
  br label %252

112:                                              ; preds = %30
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* %7, align 4
  %115 = icmp sge i32 %114, 44100
  %116 = zext i1 %115 to i32
  %117 = mul nsw i32 4, %116
  %118 = add nsw i32 12, %117
  %119 = mul nsw i32 %113, %118
  %120 = load i32*, i32** %9, align 8
  store i32 %119, i32* %120, align 4
  %121 = load i32, i32* %14, align 4
  %122 = mul nsw i32 %121, 40
  %123 = load i32*, i32** %10, align 8
  store i32 %122, i32* %123, align 4
  br label %252

124:                                              ; preds = %30
  %125 = load i32, i32* %14, align 4
  %126 = load i32, i32* %7, align 4
  %127 = mul nsw i32 %125, %126
  %128 = mul nsw i32 %127, 2
  %129 = sdiv i32 %128, 3000
  %130 = load i32*, i32** %9, align 8
  store i32 %129, i32* %130, align 4
  %131 = load i32, i32* %14, align 4
  %132 = load i32, i32* %7, align 4
  %133 = mul nsw i32 %131, %132
  %134 = mul nsw i32 %133, 6
  %135 = sdiv i32 %134, 1000
  %136 = load i32*, i32** %10, align 8
  store i32 %135, i32* %136, align 4
  br label %252

137:                                              ; preds = %30
  %138 = load i32, i32* %14, align 4
  %139 = load i32, i32* %7, align 4
  %140 = icmp sge i32 %139, 44100
  %141 = zext i1 %140 to i32
  %142 = mul nsw i32 4, %141
  %143 = add nsw i32 12, %142
  %144 = mul nsw i32 %138, %143
  %145 = load i32*, i32** %9, align 8
  store i32 %144, i32* %145, align 4
  %146 = load i32, i32* %14, align 4
  %147 = load i32, i32* %14, align 4
  %148 = icmp sgt i32 %147, 2
  %149 = zext i1 %148 to i32
  %150 = sub nsw i32 %146, %149
  %151 = load i32, i32* %7, align 4
  %152 = icmp sge i32 %151, 22050
  %153 = zext i1 %152 to i32
  %154 = mul nsw i32 16, %153
  %155 = add nsw i32 48, %154
  %156 = mul nsw i32 %150, %155
  %157 = load i32*, i32** %10, align 8
  store i32 %156, i32* %157, align 4
  br label %252

158:                                              ; preds = %30
  %159 = load i32, i32* %14, align 4
  %160 = load i32, i32* %13, align 4
  %161 = add nsw i32 %159, %160
  %162 = mul nsw i32 %161, 32
  %163 = load i32*, i32** %9, align 8
  store i32 %162, i32* %163, align 4
  %164 = load i32, i32* %14, align 4
  %165 = load i32, i32* %13, align 4
  %166 = add nsw i32 %164, %165
  %167 = load i32, i32* %7, align 4
  %168 = load i32, i32* %12, align 4
  %169 = shl i32 %167, %168
  %170 = icmp sge i32 %169, 44100
  %171 = zext i1 %170 to i32
  %172 = mul nsw i32 64, %171
  %173 = add nsw i32 192, %172
  %174 = load i32, i32* %12, align 4
  %175 = ashr i32 %173, %174
  %176 = mul nsw i32 %166, %175
  %177 = load i32*, i32** %10, align 8
  store i32 %176, i32* %177, align 4
  br label %252

178:                                              ; preds = %30
  %179 = load i32, i32* %12, align 4
  %180 = icmp slt i32 %179, 1
  %181 = zext i1 %180 to i32
  %182 = mul nsw i32 24, %181
  %183 = add nsw i32 8, %182
  %184 = load i32*, i32** %9, align 8
  store i32 %183, i32* %184, align 4
  %185 = load i32, i32* %12, align 4
  %186 = icmp slt i32 %185, 2
  %187 = zext i1 %186 to i32
  %188 = mul nsw i32 96, %187
  %189 = add nsw i32 64, %188
  %190 = load i32, i32* %12, align 4
  %191 = icmp slt i32 %190, 1
  %192 = zext i1 %191 to i32
  %193 = mul nsw i32 160, %192
  %194 = add nsw i32 %189, %193
  %195 = load i32*, i32** %10, align 8
  store i32 %194, i32* %195, align 4
  br label %252

196:                                              ; preds = %30
  %197 = load i32, i32* %14, align 4
  %198 = load i32, i32* %13, align 4
  %199 = add nsw i32 %197, %198
  %200 = load i32, i32* %12, align 4
  %201 = icmp slt i32 %200, 2
  %202 = zext i1 %201 to i32
  %203 = mul nsw i32 8, %202
  %204 = add nsw i32 14, %203
  %205 = load i32, i32* %12, align 4
  %206 = icmp slt i32 %205, 1
  %207 = zext i1 %206 to i32
  %208 = mul nsw i32 6, %207
  %209 = add nsw i32 %204, %208
  %210 = mul nsw i32 %199, %209
  %211 = load i32*, i32** %9, align 8
  store i32 %210, i32* %211, align 4
  %212 = load i32, i32* %14, align 4
  %213 = load i32, i32* %13, align 4
  %214 = add nsw i32 %212, %213
  %215 = load i32, i32* %12, align 4
  %216 = icmp slt i32 %215, 2
  %217 = zext i1 %216 to i32
  %218 = mul nsw i32 54, %217
  %219 = add nsw i32 32, %218
  %220 = load i32, i32* %12, align 4
  %221 = icmp slt i32 %220, 1
  %222 = zext i1 %221 to i32
  %223 = mul nsw i32 104, %222
  %224 = add nsw i32 %219, %223
  %225 = load i32, i32* %7, align 4
  %226 = icmp sge i32 %225, 44100
  %227 = zext i1 %226 to i32
  %228 = mul nsw i32 50, %227
  %229 = add nsw i32 %224, %228
  %230 = mul nsw i32 %214, %229
  %231 = load i32*, i32** %10, align 8
  store i32 %230, i32* %231, align 4
  br label %252

232:                                              ; preds = %30
  %233 = load i32, i32* %14, align 4
  %234 = load i32, i32* %13, align 4
  %235 = add nsw i32 %233, %234
  %236 = mul nsw i32 %235, 6
  %237 = load i32*, i32** %9, align 8
  store i32 %236, i32* %237, align 4
  %238 = load i32, i32* %14, align 4
  %239 = load i32, i32* %13, align 4
  %240 = add nsw i32 %238, %239
  %241 = mul nsw i32 %240, 256
  %242 = load i32*, i32** %10, align 8
  store i32 %241, i32* %242, align 4
  br label %252

243:                                              ; preds = %30
  %244 = load %struct.TYPE_8__*, %struct.TYPE_8__** @hb_audio_bitrates_first_item, align 8
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = load i32*, i32** %9, align 8
  store i32 %246, i32* %247, align 4
  %248 = load %struct.TYPE_7__*, %struct.TYPE_7__** @hb_audio_bitrates_last_item, align 8
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = load i32*, i32** %10, align 8
  store i32 %250, i32* %251, align 4
  br label %252

252:                                              ; preds = %243, %232, %196, %178, %158, %137, %124, %112, %111, %52, %46
  %253 = load i32*, i32** %10, align 8
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.TYPE_8__*, %struct.TYPE_8__** @hb_audio_bitrates_first_item, align 8
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = icmp slt i32 %254, %257
  br i1 %258, label %259, label %264

259:                                              ; preds = %252
  %260 = load %struct.TYPE_8__*, %struct.TYPE_8__** @hb_audio_bitrates_first_item, align 8
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = load i32*, i32** %10, align 8
  store i32 %262, i32* %263, align 4
  br label %264

264:                                              ; preds = %259, %252
  %265 = load i32*, i32** %10, align 8
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.TYPE_7__*, %struct.TYPE_7__** @hb_audio_bitrates_last_item, align 8
  %268 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = icmp sgt i32 %266, %269
  br i1 %270, label %271, label %276

271:                                              ; preds = %264
  %272 = load %struct.TYPE_7__*, %struct.TYPE_7__** @hb_audio_bitrates_last_item, align 8
  %273 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = load i32*, i32** %10, align 8
  store i32 %274, i32* %275, align 4
  br label %276

276:                                              ; preds = %17, %43, %271, %264
  ret void
}

declare dso_local i32 @hb_audio_samplerate_find_closest(i32, i32) #1

declare dso_local i32 @hb_audio_samplerate_get_sr_shift(i32) #1

declare dso_local i32 @hb_mixdown_get_low_freq_channel_count(i32) #1

declare dso_local i32 @hb_mixdown_get_discrete_channel_count(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
