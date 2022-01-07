; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_lbr.c_parse_grid_1_chunk.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_lbr.c_parse_grid_1_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32***, i32, i8***, i32** }
%struct.TYPE_6__ = type { i32, i32 }

@ff_dca_scf_to_grid_1 = common dso_local global i32* null, align 8
@ff_dca_grid_1_to_scf = common dso_local global i32* null, align 8
@ff_dca_vlc_avg_g3 = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"First grid chunk too short\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_6__*, i32, i32)* @parse_grid_1_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_grid_1_chunk(%struct.TYPE_7__* %0, %struct.TYPE_6__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [2 x i32], align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %279

20:                                               ; preds = %4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @init_get_bits8(i32* %22, i32 %25, i32 %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  store i32 -1, i32* %5, align 4
  br label %279

32:                                               ; preds = %20
  %33 = load i32*, i32** @ff_dca_scf_to_grid_1, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %33, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %13, align 4
  store i32 2, i32* %11, align 4
  br label %42

42:                                               ; preds = %93, %32
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %96

46:                                               ; preds = %42
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 7
  %50 = load i32**, i32*** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32*, i32** %50, i64 %52
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @parse_scale_factors(%struct.TYPE_7__* %47, i32 %58)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %46
  store i32 -1, i32* %5, align 4
  br label %279

62:                                               ; preds = %46
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %92

66:                                               ; preds = %62
  %67 = load i32*, i32** @ff_dca_grid_1_to_scf, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %92

76:                                               ; preds = %66
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 7
  %80 = load i32**, i32*** %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32*, i32** %80, i64 %82
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @parse_scale_factors(%struct.TYPE_7__* %77, i32 %88)
  %90 = icmp slt i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %76
  store i32 -1, i32* %5, align 4
  br label %279

92:                                               ; preds = %76, %66, %62
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %11, align 4
  br label %42

96:                                               ; preds = %42
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 3
  %99 = call i32 @get_bits_left(i32* %98)
  %100 = icmp slt i32 %99, 1
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  store i32 0, i32* %5, align 4
  br label %279

102:                                              ; preds = %96
  store i32 0, i32* %11, align 4
  br label %103

103:                                              ; preds = %174, %102
  %104 = load i32, i32* %11, align 4
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = sub nsw i32 %107, 4
  %109 = icmp slt i32 %104, %108
  br i1 %109, label %110, label %177

110:                                              ; preds = %103
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 3
  %113 = call i8* @parse_vlc(i32* %112, i32* @ff_dca_vlc_avg_g3, i32 2)
  %114 = getelementptr i8, i8* %113, i64 -16
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 6
  %117 = load i8***, i8**** %116, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8**, i8*** %117, i64 %119
  %121 = load i8**, i8*** %120, align 8
  %122 = load i32, i32* %11, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8*, i8** %121, i64 %123
  store i8* %114, i8** %124, align 8
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* %9, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %128, label %173

128:                                              ; preds = %110
  %129 = load i32, i32* %11, align 4
  %130 = add nsw i32 %129, 4
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = icmp slt i32 %130, %133
  br i1 %134, label %135, label %150

135:                                              ; preds = %128
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 3
  %138 = call i8* @parse_vlc(i32* %137, i32* @ff_dca_vlc_avg_g3, i32 2)
  %139 = getelementptr i8, i8* %138, i64 -16
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 6
  %142 = load i8***, i8**** %141, align 8
  %143 = load i32, i32* %9, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8**, i8*** %142, i64 %144
  %146 = load i8**, i8*** %145, align 8
  %147 = load i32, i32* %11, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8*, i8** %146, i64 %148
  store i8* %139, i8** %149, align 8
  br label %172

150:                                              ; preds = %128
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 6
  %153 = load i8***, i8**** %152, align 8
  %154 = load i32, i32* %8, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8**, i8*** %153, i64 %155
  %157 = load i8**, i8*** %156, align 8
  %158 = load i32, i32* %11, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8*, i8** %157, i64 %159
  %161 = load i8*, i8** %160, align 8
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 6
  %164 = load i8***, i8**** %163, align 8
  %165 = load i32, i32* %9, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8**, i8*** %164, i64 %166
  %168 = load i8**, i8*** %167, align 8
  %169 = load i32, i32* %11, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8*, i8** %168, i64 %170
  store i8* %161, i8** %171, align 8
  br label %172

172:                                              ; preds = %150, %135
  br label %173

173:                                              ; preds = %172, %110
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %11, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %11, align 4
  br label %103

177:                                              ; preds = %103
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 3
  %180 = call i32 @get_bits_left(i32* %179)
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %177
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 5
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @AV_LOG_ERROR, align 4
  %187 = call i32 @av_log(i32 %185, i32 %186, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %279

188:                                              ; preds = %177
  %189 = load i32, i32* %8, align 4
  %190 = load i32, i32* %9, align 4
  %191 = icmp ne i32 %189, %190
  br i1 %191, label %192, label %278

192:                                              ; preds = %188
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 3
  %195 = call i64 @ensure_bits(i32* %194, i32 8)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %192
  store i32 0, i32* %5, align 4
  br label %279

198:                                              ; preds = %192
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 3
  %201 = call i32 @get_bits(i32* %200, i32 4)
  %202 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  store i32 %201, i32* %202, align 4
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 3
  %205 = call i32 @get_bits(i32* %204, i32 4)
  %206 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  store i32 %205, i32* %206, align 4
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = sub nsw i32 %209, %212
  %214 = add nsw i32 %213, 3
  %215 = sdiv i32 %214, 4
  store i32 %215, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %216

216:                                              ; preds = %262, %198
  %217 = load i32, i32* %11, align 4
  %218 = load i32, i32* %13, align 4
  %219 = icmp slt i32 %217, %218
  br i1 %219, label %220, label %265

220:                                              ; preds = %216
  %221 = load i32, i32* %8, align 4
  store i32 %221, i32* %10, align 4
  br label %222

222:                                              ; preds = %258, %220
  %223 = load i32, i32* %10, align 4
  %224 = load i32, i32* %9, align 4
  %225 = icmp sle i32 %223, %224
  br i1 %225, label %226, label %261

226:                                              ; preds = %222
  store i32 1, i32* %12, align 4
  br label %227

227:                                              ; preds = %254, %226
  %228 = load i32, i32* %12, align 4
  %229 = icmp sle i32 %228, 4
  br i1 %229, label %230, label %257

230:                                              ; preds = %227
  %231 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 3
  %233 = load i32, i32* %10, align 4
  %234 = load i32, i32* %8, align 4
  %235 = sub nsw i32 %233, %234
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @parse_st_code(i32* %232, i32 %238)
  %240 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 4
  %242 = load i32***, i32**** %241, align 8
  %243 = load i32, i32* %10, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32**, i32*** %242, i64 %244
  %246 = load i32**, i32*** %245, align 8
  %247 = load i32, i32* %11, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32*, i32** %246, i64 %248
  %250 = load i32*, i32** %249, align 8
  %251 = load i32, i32* %12, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %250, i64 %252
  store i32 %239, i32* %253, align 4
  br label %254

254:                                              ; preds = %230
  %255 = load i32, i32* %12, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %12, align 4
  br label %227

257:                                              ; preds = %227
  br label %258

258:                                              ; preds = %257
  %259 = load i32, i32* %10, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %10, align 4
  br label %222

261:                                              ; preds = %222
  br label %262

262:                                              ; preds = %261
  %263 = load i32, i32* %11, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %11, align 4
  br label %216

265:                                              ; preds = %216
  %266 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %266, i32 0, i32 3
  %268 = call i32 @get_bits_left(i32* %267)
  %269 = icmp sge i32 %268, 0
  br i1 %269, label %270, label %277

270:                                              ; preds = %265
  %271 = load i32, i32* %8, align 4
  %272 = shl i32 1, %271
  %273 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %274 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 8
  %276 = or i32 %275, %272
  store i32 %276, i32* %274, align 8
  br label %277

277:                                              ; preds = %270, %265
  br label %278

278:                                              ; preds = %277, %188
  store i32 0, i32* %5, align 4
  br label %279

279:                                              ; preds = %278, %197, %182, %101, %91, %61, %31, %19
  %280 = load i32, i32* %5, align 4
  ret i32 %280
}

declare dso_local i64 @init_get_bits8(i32*, i32, i32) #1

declare dso_local i64 @parse_scale_factors(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @get_bits_left(i32*) #1

declare dso_local i8* @parse_vlc(i32*, i32*, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*) #1

declare dso_local i64 @ensure_bits(i32*, i32) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @parse_st_code(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
