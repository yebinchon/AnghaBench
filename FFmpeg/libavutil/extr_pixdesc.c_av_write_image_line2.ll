; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_pixdesc.c_av_write_image_line2.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_pixdesc.c_av_write_image_line2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }

@AV_PIX_FMT_FLAG_BITSTREAM = common dso_local global i32 0, align 4
@AV_PIX_FMT_FLAG_BE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @av_write_image_line2(i8* %0, i32** %1, i32* %2, %struct.TYPE_4__* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_5__, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i32** %1, i32*** %11, align 8
  store i32* %2, i32** %12, align 8
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = load i32, i32* %16, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 %40
  %42 = bitcast %struct.TYPE_5__* %19 to i8*
  %43 = bitcast %struct.TYPE_5__* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 4 %43, i64 20, i1 false)
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %20, align 4
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %21, align 4
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %22, align 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %23, align 4
  %53 = load i8*, i8** %10, align 8
  %54 = bitcast i8* %53 to i32*
  store i32* %54, i32** %24, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = bitcast i8* %55 to i32*
  store i32* %56, i32** %25, align 8
  %57 = load i32, i32* %23, align 4
  %58 = load i32, i32* @AV_PIX_FMT_FLAG_BITSTREAM, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %125

61:                                               ; preds = %9
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %22, align 4
  %64 = mul nsw i32 %62, %63
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %64, %66
  store i32 %67, i32* %26, align 4
  %68 = load i32**, i32*** %11, align 8
  %69 = load i32, i32* %20, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32*, i32** %68, i64 %70
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %15, align 4
  %74 = load i32*, i32** %12, align 8
  %75 = load i32, i32* %20, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = mul nsw i32 %73, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %72, i64 %80
  %82 = load i32, i32* %26, align 4
  %83 = ashr i32 %82, 3
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  store i32* %85, i32** %27, align 8
  %86 = load i32, i32* %21, align 4
  %87 = sub nsw i32 8, %86
  %88 = load i32, i32* %26, align 4
  %89 = and i32 %88, 7
  %90 = sub nsw i32 %87, %89
  store i32 %90, i32* %28, align 4
  br label %91

91:                                               ; preds = %106, %61
  %92 = load i32, i32* %17, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %17, align 4
  %94 = icmp ne i32 %92, 0
  br i1 %94, label %95, label %124

95:                                               ; preds = %91
  %96 = load i32, i32* %18, align 4
  %97 = icmp eq i32 %96, 4
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load i32*, i32** %24, align 8
  %100 = getelementptr inbounds i32, i32* %99, i32 1
  store i32* %100, i32** %24, align 8
  %101 = load i32, i32* %99, align 4
  br label %106

102:                                              ; preds = %95
  %103 = load i32*, i32** %25, align 8
  %104 = getelementptr inbounds i32, i32* %103, i32 1
  store i32* %104, i32** %25, align 8
  %105 = load i32, i32* %103, align 4
  br label %106

106:                                              ; preds = %102, %98
  %107 = phi i32 [ %101, %98 ], [ %105, %102 ]
  %108 = load i32, i32* %28, align 4
  %109 = shl i32 %107, %108
  %110 = load i32*, i32** %27, align 8
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %109
  store i32 %112, i32* %110, align 4
  %113 = load i32, i32* %22, align 4
  %114 = load i32, i32* %28, align 4
  %115 = sub nsw i32 %114, %113
  store i32 %115, i32* %28, align 4
  %116 = load i32, i32* %28, align 4
  %117 = ashr i32 %116, 3
  %118 = load i32*, i32** %27, align 8
  %119 = sext i32 %117 to i64
  %120 = sub i64 0, %119
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  store i32* %121, i32** %27, align 8
  %122 = load i32, i32* %28, align 4
  %123 = and i32 %122, 7
  store i32 %123, i32* %28, align 4
  br label %91

124:                                              ; preds = %91
  br label %274

125:                                              ; preds = %9
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %29, align 4
  %128 = load i32**, i32*** %11, align 8
  %129 = load i32, i32* %20, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32*, i32** %128, i64 %130
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %15, align 4
  %134 = load i32*, i32** %12, align 8
  %135 = load i32, i32* %20, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = mul nsw i32 %133, %138
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %132, i64 %140
  %142 = load i32, i32* %14, align 4
  %143 = load i32, i32* %22, align 4
  %144 = mul nsw i32 %142, %143
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %141, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %146, i64 %149
  store i32* %150, i32** %30, align 8
  %151 = load i32, i32* %29, align 4
  %152 = load i32, i32* %21, align 4
  %153 = add nsw i32 %151, %152
  %154 = icmp sle i32 %153, 8
  br i1 %154, label %155, label %193

155:                                              ; preds = %125
  %156 = load i32, i32* %23, align 4
  %157 = load i32, i32* @AV_PIX_FMT_FLAG_BE, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  %160 = xor i1 %159, true
  %161 = xor i1 %160, true
  %162 = zext i1 %161 to i32
  %163 = load i32*, i32** %30, align 8
  %164 = sext i32 %162 to i64
  %165 = getelementptr inbounds i32, i32* %163, i64 %164
  store i32* %165, i32** %30, align 8
  br label %166

166:                                              ; preds = %181, %155
  %167 = load i32, i32* %17, align 4
  %168 = add nsw i32 %167, -1
  store i32 %168, i32* %17, align 4
  %169 = icmp ne i32 %167, 0
  br i1 %169, label %170, label %192

170:                                              ; preds = %166
  %171 = load i32, i32* %18, align 4
  %172 = icmp eq i32 %171, 4
  br i1 %172, label %173, label %177

173:                                              ; preds = %170
  %174 = load i32*, i32** %24, align 8
  %175 = getelementptr inbounds i32, i32* %174, i32 1
  store i32* %175, i32** %24, align 8
  %176 = load i32, i32* %174, align 4
  br label %181

177:                                              ; preds = %170
  %178 = load i32*, i32** %25, align 8
  %179 = getelementptr inbounds i32, i32* %178, i32 1
  store i32* %179, i32** %25, align 8
  %180 = load i32, i32* %178, align 4
  br label %181

181:                                              ; preds = %177, %173
  %182 = phi i32 [ %176, %173 ], [ %180, %177 ]
  %183 = load i32, i32* %29, align 4
  %184 = shl i32 %182, %183
  %185 = load i32*, i32** %30, align 8
  %186 = load i32, i32* %185, align 4
  %187 = or i32 %186, %184
  store i32 %187, i32* %185, align 4
  %188 = load i32, i32* %22, align 4
  %189 = load i32*, i32** %30, align 8
  %190 = sext i32 %188 to i64
  %191 = getelementptr inbounds i32, i32* %189, i64 %190
  store i32* %191, i32** %30, align 8
  br label %166

192:                                              ; preds = %166
  br label %273

193:                                              ; preds = %125
  br label %194

194:                                              ; preds = %267, %193
  %195 = load i32, i32* %17, align 4
  %196 = add nsw i32 %195, -1
  store i32 %196, i32* %17, align 4
  %197 = icmp ne i32 %195, 0
  br i1 %197, label %198, label %272

198:                                              ; preds = %194
  %199 = load i32, i32* %18, align 4
  %200 = icmp eq i32 %199, 4
  br i1 %200, label %201, label %205

201:                                              ; preds = %198
  %202 = load i32*, i32** %24, align 8
  %203 = getelementptr inbounds i32, i32* %202, i32 1
  store i32* %203, i32** %24, align 8
  %204 = load i32, i32* %202, align 4
  br label %209

205:                                              ; preds = %198
  %206 = load i32*, i32** %25, align 8
  %207 = getelementptr inbounds i32, i32* %206, i32 1
  store i32* %207, i32** %25, align 8
  %208 = load i32, i32* %206, align 4
  br label %209

209:                                              ; preds = %205, %201
  %210 = phi i32 [ %204, %201 ], [ %208, %205 ]
  store i32 %210, i32* %31, align 4
  %211 = load i32, i32* %29, align 4
  %212 = load i32, i32* %21, align 4
  %213 = add nsw i32 %211, %212
  %214 = icmp sle i32 %213, 16
  br i1 %214, label %215, label %241

215:                                              ; preds = %209
  %216 = load i32, i32* %23, align 4
  %217 = load i32, i32* @AV_PIX_FMT_FLAG_BE, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %230

220:                                              ; preds = %215
  %221 = load i32*, i32** %30, align 8
  %222 = call i32 @AV_RB16(i32* %221)
  %223 = load i32, i32* %31, align 4
  %224 = load i32, i32* %29, align 4
  %225 = shl i32 %223, %224
  %226 = or i32 %222, %225
  store i32 %226, i32* %32, align 4
  %227 = load i32*, i32** %30, align 8
  %228 = load i32, i32* %32, align 4
  %229 = call i32 @AV_WB16(i32* %227, i32 %228)
  br label %240

230:                                              ; preds = %215
  %231 = load i32*, i32** %30, align 8
  %232 = call i32 @AV_RL16(i32* %231)
  %233 = load i32, i32* %31, align 4
  %234 = load i32, i32* %29, align 4
  %235 = shl i32 %233, %234
  %236 = or i32 %232, %235
  store i32 %236, i32* %33, align 4
  %237 = load i32*, i32** %30, align 8
  %238 = load i32, i32* %33, align 4
  %239 = call i32 @AV_WL16(i32* %237, i32 %238)
  br label %240

240:                                              ; preds = %230, %220
  br label %267

241:                                              ; preds = %209
  %242 = load i32, i32* %23, align 4
  %243 = load i32, i32* @AV_PIX_FMT_FLAG_BE, align 4
  %244 = and i32 %242, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %256

246:                                              ; preds = %241
  %247 = load i32*, i32** %30, align 8
  %248 = call i32 @AV_RB32(i32* %247)
  %249 = load i32, i32* %31, align 4
  %250 = load i32, i32* %29, align 4
  %251 = shl i32 %249, %250
  %252 = or i32 %248, %251
  store i32 %252, i32* %34, align 4
  %253 = load i32*, i32** %30, align 8
  %254 = load i32, i32* %34, align 4
  %255 = call i32 @AV_WB32(i32* %253, i32 %254)
  br label %266

256:                                              ; preds = %241
  %257 = load i32*, i32** %30, align 8
  %258 = call i32 @AV_RL32(i32* %257)
  %259 = load i32, i32* %31, align 4
  %260 = load i32, i32* %29, align 4
  %261 = shl i32 %259, %260
  %262 = or i32 %258, %261
  store i32 %262, i32* %35, align 4
  %263 = load i32*, i32** %30, align 8
  %264 = load i32, i32* %35, align 4
  %265 = call i32 @AV_WL32(i32* %263, i32 %264)
  br label %266

266:                                              ; preds = %256, %246
  br label %267

267:                                              ; preds = %266, %240
  %268 = load i32, i32* %22, align 4
  %269 = load i32*, i32** %30, align 8
  %270 = sext i32 %268 to i64
  %271 = getelementptr inbounds i32, i32* %269, i64 %270
  store i32* %271, i32** %30, align 8
  br label %194

272:                                              ; preds = %194
  br label %273

273:                                              ; preds = %272, %192
  br label %274

274:                                              ; preds = %273, %124
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @AV_RB16(i32*) #2

declare dso_local i32 @AV_WB16(i32*, i32) #2

declare dso_local i32 @AV_RL16(i32*) #2

declare dso_local i32 @AV_WL16(i32*, i32) #2

declare dso_local i32 @AV_RB32(i32*) #2

declare dso_local i32 @AV_WB32(i32*, i32) #2

declare dso_local i32 @AV_RL32(i32*) #2

declare dso_local i32 @AV_WL32(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
