; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacdec_template.c_decode_cce.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacdec_template.c_decode_cce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_11__, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { i32, i64, i64*, i64*, i64*, i8*** }
%struct.TYPE_9__ = type { i64*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

@TYPE_CPE = common dso_local global i64 0, align 8
@TYPE_SCE = common dso_local global i64 0, align 8
@cce_scale = common dso_local global i8** null, align 8
@AFTER_IMDCT = common dso_local global i32 0, align 4
@vlc_scalefactors = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@ZERO_BT = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_10__*)* @decode_cce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_cce(i32* %0, i32* %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca %struct.TYPE_11__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  store i32 0, i32* %8, align 4
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i64 0
  store %struct.TYPE_9__* %26, %struct.TYPE_9__** %15, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  store %struct.TYPE_11__* %28, %struct.TYPE_11__** %16, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @get_bits1(i32* %29)
  %31 = mul nsw i32 2, %30
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = call i64 @get_bits(i32* %34, i32 3)
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %109, %3
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ule i64 %40, %43
  br i1 %44, label %45, label %112

45:                                               ; preds = %38
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @get_bits1(i32* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i64, i64* @TYPE_CPE, align 8
  br label %55

53:                                               ; preds = %45
  %54 = load i64, i64* @TYPE_SCE, align 8
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i64 [ %52, %51 ], [ %54, %53 ]
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 2
  %59 = load i64*, i64** %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  store i64 %56, i64* %62, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = call i64 @get_bits(i32* %63, i32 4)
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 3
  %67 = load i64*, i64** %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  store i64 %64, i64* %70, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 2
  %73 = load i64*, i64** %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @TYPE_CPE, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %101

80:                                               ; preds = %55
  %81 = load i32*, i32** %6, align 8
  %82 = call i64 @get_bits(i32* %81, i32 2)
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 4
  %85 = load i64*, i64** %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  store i64 %82, i64* %88, align 8
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 4
  %91 = load i64*, i64** %90, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %95, 3
  br i1 %96, label %97, label %100

97:                                               ; preds = %80
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %8, align 4
  br label %100

100:                                              ; preds = %97, %80
  br label %108

101:                                              ; preds = %55
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 4
  %104 = load i64*, i64** %103, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %104, i64 %106
  store i64 2, i64* %107, align 8
  br label %108

108:                                              ; preds = %101, %100
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %9, align 4
  br label %38

112:                                              ; preds = %38
  %113 = load i32*, i32** %6, align 8
  %114 = call i32 @get_bits1(i32* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %122, label %116

116:                                              ; preds = %112
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = ashr i32 %119, 1
  %121 = icmp ne i32 %120, 0
  br label %122

122:                                              ; preds = %116, %112
  %123 = phi i1 [ true, %112 ], [ %121, %116 ]
  %124 = zext i1 %123 to i32
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = add nsw i32 %127, %124
  store i32 %128, i32* %126, align 8
  %129 = load i32*, i32** %6, align 8
  %130 = call i64 @get_bits(i32* %129, i32 1)
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %13, align 4
  %132 = load i8**, i8*** @cce_scale, align 8
  %133 = load i32*, i32** %6, align 8
  %134 = call i64 @get_bits(i32* %133, i32 2)
  %135 = getelementptr inbounds i8*, i8** %132, i64 %134
  %136 = load i8*, i8** %135, align 8
  store i8* %136, i8** %14, align 8
  %137 = load i32*, i32** %5, align 8
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %139 = load i32*, i32** %6, align 8
  %140 = call i32 @decode_ics(i32* %137, %struct.TYPE_9__* %138, i32* %139, i32 0, i32 0)
  store i32 %140, i32* %12, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %122
  %143 = load i32, i32* %12, align 4
  store i32 %143, i32* %4, align 4
  br label %283

144:                                              ; preds = %122
  store i32 0, i32* %9, align 4
  br label %145

145:                                              ; preds = %279, %144
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* %8, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %282

149:                                              ; preds = %145
  store i32 0, i32* %17, align 4
  store i32 1, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %150 = call i8* @FIXR10(i32 1)
  store i8* %150, i8** %20, align 8
  %151 = load i32, i32* %9, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %180

153:                                              ; preds = %149
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @AFTER_IMDCT, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %153
  br label %163

160:                                              ; preds = %153
  %161 = load i32*, i32** %6, align 8
  %162 = call i32 @get_bits1(i32* %161)
  br label %163

163:                                              ; preds = %160, %159
  %164 = phi i32 [ 1, %159 ], [ %162, %160 ]
  store i32 %164, i32* %18, align 4
  %165 = load i32, i32* %18, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %163
  %168 = load i32*, i32** %6, align 8
  %169 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @vlc_scalefactors, i32 0, i32 0), align 4
  %170 = call i32 @get_vlc2(i32* %168, i32 %169, i32 7, i32 3)
  %171 = sub nsw i32 %170, 60
  br label %173

172:                                              ; preds = %163
  br label %173

173:                                              ; preds = %172, %167
  %174 = phi i32 [ %171, %167 ], [ 0, %172 ]
  store i32 %174, i32* %19, align 4
  %175 = load i8*, i8** %14, align 8
  %176 = load i32, i32* %19, align 4
  %177 = call i32 @GET_GAIN(i8* %175, i32 %176)
  %178 = sext i32 %177 to i64
  %179 = inttoptr i64 %178 to i8*
  store i8* %179, i8** %20, align 8
  br label %180

180:                                              ; preds = %173, %149
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @AFTER_IMDCT, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %196

186:                                              ; preds = %180
  %187 = load i8*, i8** %20, align 8
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 5
  %190 = load i8***, i8**** %189, align 8
  %191 = load i32, i32* %9, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i8**, i8*** %190, i64 %192
  %194 = load i8**, i8*** %193, align 8
  %195 = getelementptr inbounds i8*, i8** %194, i64 0
  store i8* %187, i8** %195, align 8
  br label %278

196:                                              ; preds = %180
  store i32 0, i32* %10, align 4
  br label %197

197:                                              ; preds = %274, %196
  %198 = load i32, i32* %10, align 4
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = icmp slt i32 %198, %202
  br i1 %203, label %204, label %277

204:                                              ; preds = %197
  store i32 0, i32* %11, align 4
  br label %205

205:                                              ; preds = %268, %204
  %206 = load i32, i32* %11, align 4
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = icmp slt i32 %206, %210
  br i1 %211, label %212, label %273

212:                                              ; preds = %205
  %213 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 0
  %215 = load i64*, i64** %214, align 8
  %216 = load i32, i32* %17, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i64, i64* %215, i64 %217
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @ZERO_BT, align 8
  %221 = icmp ne i64 %219, %220
  br i1 %221, label %222, label %267

222:                                              ; preds = %212
  %223 = load i32, i32* %18, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %255, label %225

225:                                              ; preds = %222
  %226 = load i32*, i32** %6, align 8
  %227 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @vlc_scalefactors, i32 0, i32 0), align 4
  %228 = call i32 @get_vlc2(i32* %226, i32 %227, i32 7, i32 3)
  %229 = sub nsw i32 %228, 60
  store i32 %229, i32* %21, align 4
  %230 = load i32, i32* %21, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %254

232:                                              ; preds = %225
  store i32 1, i32* %22, align 4
  %233 = load i32, i32* %21, align 4
  %234 = load i32, i32* %19, align 4
  %235 = add nsw i32 %234, %233
  store i32 %235, i32* %19, align 4
  store i32 %235, i32* %21, align 4
  %236 = load i32, i32* %13, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %246

238:                                              ; preds = %232
  %239 = load i32, i32* %21, align 4
  %240 = and i32 %239, 1
  %241 = mul nsw i32 2, %240
  %242 = load i32, i32* %22, align 4
  %243 = sub nsw i32 %242, %241
  store i32 %243, i32* %22, align 4
  %244 = load i32, i32* %21, align 4
  %245 = ashr i32 %244, 1
  store i32 %245, i32* %21, align 4
  br label %246

246:                                              ; preds = %238, %232
  %247 = load i8*, i8** %14, align 8
  %248 = load i32, i32* %21, align 4
  %249 = call i32 @GET_GAIN(i8* %247, i32 %248)
  %250 = load i32, i32* %22, align 4
  %251 = mul nsw i32 %249, %250
  %252 = sext i32 %251 to i64
  %253 = inttoptr i64 %252 to i8*
  store i8* %253, i8** %20, align 8
  br label %254

254:                                              ; preds = %246, %225
  br label %255

255:                                              ; preds = %254, %222
  %256 = load i8*, i8** %20, align 8
  %257 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %258 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %257, i32 0, i32 5
  %259 = load i8***, i8**** %258, align 8
  %260 = load i32, i32* %9, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i8**, i8*** %259, i64 %261
  %263 = load i8**, i8*** %262, align 8
  %264 = load i32, i32* %17, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i8*, i8** %263, i64 %265
  store i8* %256, i8** %266, align 8
  br label %267

267:                                              ; preds = %255, %212
  br label %268

268:                                              ; preds = %267
  %269 = load i32, i32* %11, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %11, align 4
  %271 = load i32, i32* %17, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %17, align 4
  br label %205

273:                                              ; preds = %205
  br label %274

274:                                              ; preds = %273
  %275 = load i32, i32* %10, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %10, align 4
  br label %197

277:                                              ; preds = %197
  br label %278

278:                                              ; preds = %277, %186
  br label %279

279:                                              ; preds = %278
  %280 = load i32, i32* %9, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %9, align 4
  br label %145

282:                                              ; preds = %145
  store i32 0, i32* %4, align 4
  br label %283

283:                                              ; preds = %282, %142
  %284 = load i32, i32* %4, align 4
  ret i32 %284
}

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i64 @get_bits(i32*, i32) #1

declare dso_local i32 @decode_ics(i32*, %struct.TYPE_9__*, i32*, i32, i32) #1

declare dso_local i8* @FIXR10(i32) #1

declare dso_local i32 @get_vlc2(i32*, i32, i32, i32) #1

declare dso_local i32 @GET_GAIN(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
