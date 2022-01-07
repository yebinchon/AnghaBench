; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg4audio.c_ff_mpeg4audio_get_config_gb.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg4audio.c_ff_mpeg4audio_get_config_gb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, i32, i32, i64, i32, i8*, i8*, i32, i32 }

@ff_mpeg4audio_channels = common dso_local global i32* null, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Invalid chan_config %d\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AOT_SBR = common dso_local global i64 0, align 8
@AOT_PS = common dso_local global i64 0, align 8
@AOT_ER_BSAC = common dso_local global i64 0, align 8
@AOT_NULL = common dso_local global i64 0, align 8
@AOT_ALS = common dso_local global i64 0, align 8
@AOT_AAC_LC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_mpeg4audio_get_config_gb(%struct.TYPE_4__* %0, i32* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call i32 @get_bits_count(i32* %13)
  store i32 %14, i32* %12, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = call i8* @get_object_type(i32* %15)
  %17 = ptrtoint i8* %16 to i64
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 10
  %23 = call i8* @get_sample_rate(i32* %20, i32* %22)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 7
  store i8* %23, i8** %25, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @get_bits(i32* %26, i32 4)
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32*, i32** @ff_mpeg4audio_channels, align 8
  %34 = call i32 @FF_ARRAY_ELEMS(i32* %33)
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %4
  %37 = load i32*, i32** @ff_mpeg4audio_channels, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %37, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  br label %55

46:                                               ; preds = %4
  %47 = load i8*, i8** %9, align 8
  %48 = load i32, i32* @AV_LOG_ERROR, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = call i32 @av_log(i8* %47, i32 %48, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %52)
  %54 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %54, i32* %5, align 4
  br label %261

55:                                               ; preds = %36
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 3
  store i32 -1, i32* %57, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 4
  store i32 -1, i32* %59, align 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @AOT_SBR, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %81, label %65

65:                                               ; preds = %55
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @AOT_PS, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %118

71:                                               ; preds = %65
  %72 = load i32*, i32** %7, align 8
  %73 = call i32 @show_bits(i32* %72, i32 3)
  %74 = and i32 %73, 3
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load i32*, i32** %7, align 8
  %78 = call i32 @show_bits(i32* %77, i32 9)
  %79 = and i32 %78, 63
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %118

81:                                               ; preds = %76, %71, %55
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @AOT_PS, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 4
  store i32 1, i32* %89, align 4
  br label %90

90:                                               ; preds = %87, %81
  %91 = load i64, i64* @AOT_SBR, align 8
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 5
  store i64 %91, i64* %93, align 8
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 3
  store i32 1, i32* %95, align 8
  %96 = load i32*, i32** %7, align 8
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 9
  %99 = call i8* @get_sample_rate(i32* %96, i32* %98)
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 8
  store i8* %99, i8** %101, align 8
  %102 = load i32*, i32** %7, align 8
  %103 = call i8* @get_object_type(i32* %102)
  %104 = ptrtoint i8* %103 to i64
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  store i64 %104, i64* %106, align 8
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @AOT_ER_BSAC, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %90
  %113 = load i32*, i32** %7, align 8
  %114 = call i32 @get_bits(i32* %113, i32 4)
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 6
  store i32 %114, i32* %116, align 8
  br label %117

117:                                              ; preds = %112, %90
  br label %124

118:                                              ; preds = %76, %65
  %119 = load i64, i64* @AOT_NULL, align 8
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 5
  store i64 %119, i64* %121, align 8
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 8
  store i8* null, i8** %123, align 8
  br label %124

124:                                              ; preds = %118, %117
  %125 = load i32*, i32** %7, align 8
  %126 = call i32 @get_bits_count(i32* %125)
  store i32 %126, i32* %10, align 4
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @AOT_ALS, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %153

132:                                              ; preds = %124
  %133 = load i32*, i32** %7, align 8
  %134 = call i32 @skip_bits(i32* %133, i32 5)
  %135 = load i32*, i32** %7, align 8
  %136 = call i64 @show_bits_long(i32* %135, i32 24)
  %137 = call i64 @MKBETAG(i8 signext 0, i8 signext 65, i8 signext 76, i8 signext 83)
  %138 = icmp ne i64 %136, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %132
  %140 = load i32*, i32** %7, align 8
  %141 = call i32 @skip_bits_long(i32* %140, i32 24)
  br label %142

142:                                              ; preds = %139, %132
  %143 = load i32*, i32** %7, align 8
  %144 = call i32 @get_bits_count(i32* %143)
  store i32 %144, i32* %10, align 4
  %145 = load i32*, i32** %7, align 8
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %147 = call i32 @parse_config_ALS(i32* %145, %struct.TYPE_4__* %146)
  store i32 %147, i32* %11, align 4
  %148 = load i32, i32* %11, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %142
  %151 = load i32, i32* %11, align 4
  store i32 %151, i32* %5, align 4
  br label %261

152:                                              ; preds = %142
  br label %153

153:                                              ; preds = %152, %124
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 5
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @AOT_SBR, align 8
  %158 = icmp ne i64 %156, %157
  br i1 %158, label %159, label %229

159:                                              ; preds = %153
  %160 = load i32, i32* %8, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %229

162:                                              ; preds = %159
  br label %163

163:                                              ; preds = %227, %162
  %164 = load i32*, i32** %7, align 8
  %165 = call i32 @get_bits_left(i32* %164)
  %166 = icmp sgt i32 %165, 15
  br i1 %166, label %167, label %228

167:                                              ; preds = %163
  %168 = load i32*, i32** %7, align 8
  %169 = call i32 @show_bits(i32* %168, i32 11)
  %170 = icmp eq i32 %169, 695
  br i1 %170, label %171, label %224

171:                                              ; preds = %167
  %172 = load i32*, i32** %7, align 8
  %173 = call i32 @get_bits(i32* %172, i32 11)
  %174 = load i32*, i32** %7, align 8
  %175 = call i8* @get_object_type(i32* %174)
  %176 = ptrtoint i8* %175 to i64
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 5
  store i64 %176, i64* %178, align 8
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 5
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @AOT_SBR, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %209

184:                                              ; preds = %171
  %185 = load i32*, i32** %7, align 8
  %186 = call i8* @get_bits1(i32* %185)
  %187 = ptrtoint i8* %186 to i32
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 3
  store i32 %187, i32* %189, align 8
  %190 = icmp eq i32 %187, 1
  br i1 %190, label %191, label %209

191:                                              ; preds = %184
  %192 = load i32*, i32** %7, align 8
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 9
  %195 = call i8* @get_sample_rate(i32* %192, i32* %194)
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 8
  store i8* %195, i8** %197, align 8
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 8
  %200 = load i8*, i8** %199, align 8
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 7
  %203 = load i8*, i8** %202, align 8
  %204 = icmp eq i8* %200, %203
  br i1 %204, label %205, label %208

205:                                              ; preds = %191
  %206 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 3
  store i32 -1, i32* %207, align 8
  br label %208

208:                                              ; preds = %205, %191
  br label %209

209:                                              ; preds = %208, %184, %171
  %210 = load i32*, i32** %7, align 8
  %211 = call i32 @get_bits_left(i32* %210)
  %212 = icmp sgt i32 %211, 11
  br i1 %212, label %213, label %223

213:                                              ; preds = %209
  %214 = load i32*, i32** %7, align 8
  %215 = call i32 @get_bits(i32* %214, i32 11)
  %216 = icmp eq i32 %215, 1352
  br i1 %216, label %217, label %223

217:                                              ; preds = %213
  %218 = load i32*, i32** %7, align 8
  %219 = call i8* @get_bits1(i32* %218)
  %220 = ptrtoint i8* %219 to i32
  %221 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 4
  store i32 %220, i32* %222, align 4
  br label %223

223:                                              ; preds = %217, %213, %209
  br label %228

224:                                              ; preds = %167
  %225 = load i32*, i32** %7, align 8
  %226 = call i8* @get_bits1(i32* %225)
  br label %227

227:                                              ; preds = %224
  br label %163

228:                                              ; preds = %223, %163
  br label %229

229:                                              ; preds = %228, %159, %153
  %230 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 8
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %237, label %234

234:                                              ; preds = %229
  %235 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 4
  store i32 0, i32* %236, align 4
  br label %237

237:                                              ; preds = %234, %229
  %238 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 4
  %240 = load i32, i32* %239, align 4
  %241 = icmp eq i32 %240, -1
  br i1 %241, label %242, label %248

242:                                              ; preds = %237
  %243 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = load i64, i64* @AOT_AAC_LC, align 8
  %247 = icmp ne i64 %245, %246
  br i1 %247, label %254, label %248

248:                                              ; preds = %242, %237
  %249 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 4
  %252 = and i32 %251, -2
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %257

254:                                              ; preds = %248, %242
  %255 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i32 0, i32 4
  store i32 0, i32* %256, align 4
  br label %257

257:                                              ; preds = %254, %248
  %258 = load i32, i32* %10, align 4
  %259 = load i32, i32* %12, align 4
  %260 = sub nsw i32 %258, %259
  store i32 %260, i32* %5, align 4
  br label %261

261:                                              ; preds = %257, %150, %46
  %262 = load i32, i32* %5, align 4
  ret i32 %262
}

declare dso_local i32 @get_bits_count(i32*) #1

declare dso_local i8* @get_object_type(i32*) #1

declare dso_local i8* @get_sample_rate(i32*, i32*) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @FF_ARRAY_ELEMS(i32*) #1

declare dso_local i32 @av_log(i8*, i32, i8*, i64) #1

declare dso_local i32 @show_bits(i32*, i32) #1

declare dso_local i32 @skip_bits(i32*, i32) #1

declare dso_local i64 @show_bits_long(i32*, i32) #1

declare dso_local i64 @MKBETAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @skip_bits_long(i32*, i32) #1

declare dso_local i32 @parse_config_ALS(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @get_bits_left(i32*) #1

declare dso_local i8* @get_bits1(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
