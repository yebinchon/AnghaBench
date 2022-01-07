; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_iff.c_iff_read_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_iff.c_iff_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__**, i32*, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i64, i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i64, i32, i32, i32, i32 }

@AVERROR_EOF = common dso_local global i32 0, align 4
@ID_ANIM = common dso_local global i64 0, align 8
@AVMEDIA_TYPE_AUDIO = common dso_local global i64 0, align 8
@ID_DSD = common dso_local global i64 0, align 8
@ID_MAUD = common dso_local global i64 0, align 8
@ID_DST = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_VIDEO = common dso_local global i64 0, align 8
@ID_FORM = common dso_local global i64 0, align 8
@ID_ILBM = common dso_local global i64 0, align 8
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_14__*)* @iff_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iff_read_packet(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %6, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %7, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %23, i64 0
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  store %struct.TYPE_13__* %25, %struct.TYPE_13__** %8, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @avio_tell(i32* %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32*, i32** %7, align 8
  %29 = call i64 @avio_feof(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %32, i32* %3, align 4
  br label %257

33:                                               ; preds = %2
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ID_ANIM, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %33
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp sge i32 %42, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %48, i32* %3, align 4
  br label %257

49:                                               ; preds = %41, %33
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @AVMEDIA_TYPE_AUDIO, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %118

57:                                               ; preds = %49
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @ID_DSD, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %73, label %65

65:                                               ; preds = %57
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @ID_MAUD, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %89

73:                                               ; preds = %65, %57
  %74 = load i32*, i32** %7, align 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %10, align 4
  %80 = sub nsw i32 %78, %79
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = mul nsw i32 1024, %85
  %87 = call i32 @FFMIN(i32 %80, i32 %86)
  %88 = call i32 @av_get_packet(i32* %74, %struct.TYPE_14__* %75, i32 %87)
  store i32 %88, i32* %9, align 4
  br label %117

89:                                               ; preds = %65
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @ID_DST, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %89
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %100 = call i32 @read_dst_frame(%struct.TYPE_15__* %98, %struct.TYPE_14__* %99)
  store i32 %100, i32* %3, align 4
  br label %257

101:                                              ; preds = %89
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @INT_MAX, align 4
  %106 = icmp sgt i32 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %108, i32* %3, align 4
  br label %257

109:                                              ; preds = %101
  %110 = load i32*, i32** %7, align 8
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @av_get_packet(i32* %110, %struct.TYPE_14__* %111, i32 %114)
  store i32 %115, i32* %9, align 4
  br label %116

116:                                              ; preds = %109
  br label %117

117:                                              ; preds = %116, %73
  br label %248

118:                                              ; preds = %49
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %206

126:                                              ; preds = %118
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @ID_ANIM, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %206

134:                                              ; preds = %126
  br label %135

135:                                              ; preds = %179, %173, %134
  %136 = load i32*, i32** %7, align 8
  %137 = call i64 @avio_feof(i32* %136)
  %138 = icmp ne i64 %137, 0
  %139 = xor i1 %138, true
  br i1 %139, label %140, label %180

140:                                              ; preds = %135
  %141 = load i32*, i32** %7, align 8
  %142 = call i64 @avio_feof(i32* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %140
  %145 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %145, i32* %3, align 4
  br label %257

146:                                              ; preds = %140
  %147 = load i32*, i32** %7, align 8
  %148 = call i32 @avio_tell(i32* %147)
  store i32 %148, i32* %12, align 4
  %149 = load i32*, i32** %7, align 8
  %150 = call i64 @avio_rl32(i32* %149)
  store i64 %150, i64* %13, align 8
  %151 = load i32*, i32** %7, align 8
  %152 = call i32 @avio_rb32(i32* %151)
  store i32 %152, i32* %11, align 4
  %153 = load i32*, i32** %7, align 8
  %154 = call i64 @avio_rl32(i32* %153)
  store i64 %154, i64* %14, align 8
  %155 = load i64, i64* %13, align 8
  %156 = load i64, i64* @ID_FORM, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %165

158:                                              ; preds = %146
  %159 = load i64, i64* %14, align 8
  %160 = load i64, i64* @ID_ILBM, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %165

162:                                              ; preds = %158
  %163 = load i32*, i32** %7, align 8
  %164 = call i32 @avio_skip(i32* %163, i32 -4)
  br label %180

165:                                              ; preds = %158, %146
  %166 = load i64, i64* %13, align 8
  %167 = load i64, i64* @ID_FORM, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %174

169:                                              ; preds = %165
  %170 = load i64, i64* %14, align 8
  %171 = load i64, i64* @ID_ANIM, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %169
  br label %135

174:                                              ; preds = %169, %165
  %175 = load i32*, i32** %7, align 8
  %176 = load i32, i32* %11, align 4
  %177 = call i32 @avio_skip(i32* %175, i32 %176)
  br label %178

178:                                              ; preds = %174
  br label %179

179:                                              ; preds = %178
  br label %135

180:                                              ; preds = %162, %135
  %181 = load i32*, i32** %7, align 8
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %183 = load i32, i32* %11, align 4
  %184 = call i32 @av_get_packet(i32* %181, %struct.TYPE_14__* %182, i32 %183)
  store i32 %184, i32* %9, align 4
  %185 = load i32, i32* %12, align 4
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 0
  store i32 %185, i32* %187, align 8
  %188 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 4
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @get_anim_duration(i32 %190, i32 %193)
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 5
  store i32 %194, i32* %196, align 4
  %197 = load i32, i32* %10, align 4
  %198 = icmp eq i32 %197, 12
  br i1 %198, label %199, label %205

199:                                              ; preds = %180
  %200 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = or i32 %203, %200
  store i32 %204, i32* %202, align 8
  br label %205

205:                                              ; preds = %199, %180
  br label %247

206:                                              ; preds = %126, %118
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 0
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %244

214:                                              ; preds = %206
  %215 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i32 0, i32 0
  %217 = load %struct.TYPE_11__*, %struct.TYPE_11__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @ID_ANIM, align 8
  %221 = icmp ne i64 %219, %220
  br i1 %221, label %222, label %244

222:                                              ; preds = %214
  %223 = load i32*, i32** %7, align 8
  %224 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @av_get_packet(i32* %223, %struct.TYPE_14__* %224, i32 %227)
  store i32 %228, i32* %9, align 4
  %229 = load i32, i32* %10, align 4
  %230 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %230, i32 0, i32 0
  store i32 %229, i32* %231, align 8
  %232 = load i32, i32* %10, align 4
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 4
  %236 = icmp eq i32 %232, %235
  br i1 %236, label %237, label %243

237:                                              ; preds = %222
  %238 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %239 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = or i32 %241, %238
  store i32 %242, i32* %240, align 8
  br label %243

243:                                              ; preds = %237, %222
  br label %246

244:                                              ; preds = %214, %206
  %245 = call i32 @av_assert0(i32 0)
  br label %246

246:                                              ; preds = %244, %243
  br label %247

247:                                              ; preds = %246, %205
  br label %248

248:                                              ; preds = %247, %117
  %249 = load i32, i32* %9, align 4
  %250 = icmp slt i32 %249, 0
  br i1 %250, label %251, label %253

251:                                              ; preds = %248
  %252 = load i32, i32* %9, align 4
  store i32 %252, i32* %3, align 4
  br label %257

253:                                              ; preds = %248
  %254 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %255 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %254, i32 0, i32 1
  store i64 0, i64* %255, align 8
  %256 = load i32, i32* %9, align 4
  store i32 %256, i32* %3, align 4
  br label %257

257:                                              ; preds = %253, %251, %144, %107, %97, %47, %31
  %258 = load i32, i32* %3, align 4
  ret i32 %258
}

declare dso_local i32 @avio_tell(i32*) #1

declare dso_local i64 @avio_feof(i32*) #1

declare dso_local i32 @av_get_packet(i32*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @read_dst_frame(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

declare dso_local i64 @avio_rl32(i32*) #1

declare dso_local i32 @avio_rb32(i32*) #1

declare dso_local i32 @avio_skip(i32*, i32) #1

declare dso_local i32 @get_anim_duration(i32, i32) #1

declare dso_local i32 @av_assert0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
