; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_pixdesc.c_av_read_image_line2.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_pixdesc.c_av_read_image_line2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }

@AV_PIX_FMT_FLAG_BITSTREAM = common dso_local global i32 0, align 4
@AV_PIX_FMT_FLAG_BE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @av_read_image_line2(i8* %0, i32** %1, i32* %2, %struct.TYPE_4__* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i8*, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_4__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_5__, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  store i8* %0, i8** %11, align 8
  store i32** %1, i32*** %12, align 8
  store i32* %2, i32** %13, align 8
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = load i32, i32* %17, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 %42
  %44 = bitcast %struct.TYPE_5__* %21 to i8*
  %45 = bitcast %struct.TYPE_5__* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %44, i8* align 4 %45, i64 20, i1 false)
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %22, align 4
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %23, align 4
  %50 = load i32, i32* %23, align 4
  %51 = zext i32 %50 to i64
  %52 = shl i64 1, %51
  %53 = sub i64 %52, 1
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %24, align 4
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %25, align 4
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %26, align 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %27, align 4
  %62 = load i8*, i8** %11, align 8
  %63 = bitcast i8* %62 to i32*
  store i32* %63, i32** %28, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = bitcast i8* %64 to i32*
  store i32* %65, i32** %29, align 8
  %66 = load i32, i32* %27, align 4
  %67 = load i32, i32* @AV_PIX_FMT_FLAG_BITSTREAM, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %148

70:                                               ; preds = %10
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* %26, align 4
  %73 = mul nsw i32 %71, %72
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %73, %75
  store i32 %76, i32* %30, align 4
  %77 = load i32**, i32*** %12, align 8
  %78 = load i32, i32* %22, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32*, i32** %77, i64 %79
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %16, align 4
  %83 = load i32*, i32** %13, align 8
  %84 = load i32, i32* %22, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = mul nsw i32 %82, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %81, i64 %89
  %91 = load i32, i32* %30, align 4
  %92 = ashr i32 %91, 3
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  store i32* %94, i32** %31, align 8
  %95 = load i32, i32* %23, align 4
  %96 = sub nsw i32 8, %95
  %97 = load i32, i32* %30, align 4
  %98 = and i32 %97, 7
  %99 = sub nsw i32 %96, %98
  store i32 %99, i32* %32, align 4
  br label %100

100:                                              ; preds = %146, %70
  %101 = load i32, i32* %18, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %18, align 4
  %103 = icmp ne i32 %101, 0
  br i1 %103, label %104, label %147

104:                                              ; preds = %100
  %105 = load i32*, i32** %31, align 8
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %32, align 4
  %108 = ashr i32 %106, %107
  %109 = load i32, i32* %24, align 4
  %110 = and i32 %108, %109
  store i32 %110, i32* %33, align 4
  %111 = load i32, i32* %19, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %124

113:                                              ; preds = %104
  %114 = load i32**, i32*** %12, align 8
  %115 = getelementptr inbounds i32*, i32** %114, i64 1
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %33, align 4
  %118 = mul nsw i32 4, %117
  %119 = load i32, i32* %17, align 4
  %120 = add nsw i32 %118, %119
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %116, i64 %121
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %33, align 4
  br label %124

124:                                              ; preds = %113, %104
  %125 = load i32, i32* %26, align 4
  %126 = load i32, i32* %32, align 4
  %127 = sub nsw i32 %126, %125
  store i32 %127, i32* %32, align 4
  %128 = load i32, i32* %32, align 4
  %129 = ashr i32 %128, 3
  %130 = load i32*, i32** %31, align 8
  %131 = sext i32 %129 to i64
  %132 = sub i64 0, %131
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  store i32* %133, i32** %31, align 8
  %134 = load i32, i32* %32, align 4
  %135 = and i32 %134, 7
  store i32 %135, i32* %32, align 4
  %136 = load i32, i32* %20, align 4
  %137 = icmp eq i32 %136, 4
  br i1 %137, label %138, label %142

138:                                              ; preds = %124
  %139 = load i32, i32* %33, align 4
  %140 = load i32*, i32** %29, align 8
  %141 = getelementptr inbounds i32, i32* %140, i32 1
  store i32* %141, i32** %29, align 8
  store i32 %139, i32* %140, align 4
  br label %146

142:                                              ; preds = %124
  %143 = load i32, i32* %33, align 4
  %144 = load i32*, i32** %28, align 8
  %145 = getelementptr inbounds i32, i32* %144, i32 1
  store i32* %145, i32** %28, align 8
  store i32 %143, i32* %144, align 4
  br label %146

146:                                              ; preds = %142, %138
  br label %100

147:                                              ; preds = %100
  br label %272

148:                                              ; preds = %10
  %149 = load i32**, i32*** %12, align 8
  %150 = load i32, i32* %22, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32*, i32** %149, i64 %151
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %16, align 4
  %155 = load i32*, i32** %13, align 8
  %156 = load i32, i32* %22, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = mul nsw i32 %154, %159
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %153, i64 %161
  %163 = load i32, i32* %15, align 4
  %164 = load i32, i32* %26, align 4
  %165 = mul nsw i32 %163, %164
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %162, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 4
  %169 = load i32, i32* %168, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %167, i64 %170
  store i32* %171, i32** %34, align 8
  %172 = load i32, i32* %25, align 4
  %173 = load i32, i32* %23, align 4
  %174 = add nsw i32 %172, %173
  %175 = icmp sle i32 %174, 8
  %176 = zext i1 %175 to i32
  store i32 %176, i32* %35, align 4
  %177 = load i32, i32* %25, align 4
  %178 = load i32, i32* %23, align 4
  %179 = add nsw i32 %177, %178
  %180 = icmp sle i32 %179, 16
  %181 = zext i1 %180 to i32
  store i32 %181, i32* %36, align 4
  %182 = load i32, i32* %35, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %195

184:                                              ; preds = %148
  %185 = load i32, i32* %27, align 4
  %186 = load i32, i32* @AV_PIX_FMT_FLAG_BE, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  %189 = xor i1 %188, true
  %190 = xor i1 %189, true
  %191 = zext i1 %190 to i32
  %192 = load i32*, i32** %34, align 8
  %193 = sext i32 %191 to i64
  %194 = getelementptr inbounds i32, i32* %192, i64 %193
  store i32* %194, i32** %34, align 8
  br label %195

195:                                              ; preds = %184, %148
  br label %196

196:                                              ; preds = %270, %195
  %197 = load i32, i32* %18, align 4
  %198 = add nsw i32 %197, -1
  store i32 %198, i32* %18, align 4
  %199 = icmp ne i32 %197, 0
  br i1 %199, label %200, label %271

200:                                              ; preds = %196
  %201 = load i32, i32* %35, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %200
  %204 = load i32*, i32** %34, align 8
  %205 = load i32, i32* %204, align 4
  store i32 %205, i32* %37, align 4
  br label %236

206:                                              ; preds = %200
  %207 = load i32, i32* %36, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %222

209:                                              ; preds = %206
  %210 = load i32, i32* %27, align 4
  %211 = load i32, i32* @AV_PIX_FMT_FLAG_BE, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %209
  %215 = load i32*, i32** %34, align 8
  %216 = call i32 @AV_RB16(i32* %215)
  br label %220

217:                                              ; preds = %209
  %218 = load i32*, i32** %34, align 8
  %219 = call i32 @AV_RL16(i32* %218)
  br label %220

220:                                              ; preds = %217, %214
  %221 = phi i32 [ %216, %214 ], [ %219, %217 ]
  store i32 %221, i32* %37, align 4
  br label %235

222:                                              ; preds = %206
  %223 = load i32, i32* %27, align 4
  %224 = load i32, i32* @AV_PIX_FMT_FLAG_BE, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %222
  %228 = load i32*, i32** %34, align 8
  %229 = call i32 @AV_RB32(i32* %228)
  br label %233

230:                                              ; preds = %222
  %231 = load i32*, i32** %34, align 8
  %232 = call i32 @AV_RL32(i32* %231)
  br label %233

233:                                              ; preds = %230, %227
  %234 = phi i32 [ %229, %227 ], [ %232, %230 ]
  store i32 %234, i32* %37, align 4
  br label %235

235:                                              ; preds = %233, %220
  br label %236

236:                                              ; preds = %235, %203
  %237 = load i32, i32* %37, align 4
  %238 = load i32, i32* %25, align 4
  %239 = lshr i32 %237, %238
  %240 = load i32, i32* %24, align 4
  %241 = and i32 %239, %240
  store i32 %241, i32* %37, align 4
  %242 = load i32, i32* %19, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %255

244:                                              ; preds = %236
  %245 = load i32**, i32*** %12, align 8
  %246 = getelementptr inbounds i32*, i32** %245, i64 1
  %247 = load i32*, i32** %246, align 8
  %248 = load i32, i32* %37, align 4
  %249 = mul i32 4, %248
  %250 = load i32, i32* %17, align 4
  %251 = add i32 %249, %250
  %252 = zext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %247, i64 %252
  %254 = load i32, i32* %253, align 4
  store i32 %254, i32* %37, align 4
  br label %255

255:                                              ; preds = %244, %236
  %256 = load i32, i32* %26, align 4
  %257 = load i32*, i32** %34, align 8
  %258 = sext i32 %256 to i64
  %259 = getelementptr inbounds i32, i32* %257, i64 %258
  store i32* %259, i32** %34, align 8
  %260 = load i32, i32* %20, align 4
  %261 = icmp eq i32 %260, 4
  br i1 %261, label %262, label %266

262:                                              ; preds = %255
  %263 = load i32, i32* %37, align 4
  %264 = load i32*, i32** %29, align 8
  %265 = getelementptr inbounds i32, i32* %264, i32 1
  store i32* %265, i32** %29, align 8
  store i32 %263, i32* %264, align 4
  br label %270

266:                                              ; preds = %255
  %267 = load i32, i32* %37, align 4
  %268 = load i32*, i32** %28, align 8
  %269 = getelementptr inbounds i32, i32* %268, i32 1
  store i32* %269, i32** %28, align 8
  store i32 %267, i32* %268, align 4
  br label %270

270:                                              ; preds = %266, %262
  br label %196

271:                                              ; preds = %196
  br label %272

272:                                              ; preds = %271, %147
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @AV_RB16(i32*) #2

declare dso_local i32 @AV_RL16(i32*) #2

declare dso_local i32 @AV_RB32(i32*) #2

declare dso_local i32 @AV_RL32(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
