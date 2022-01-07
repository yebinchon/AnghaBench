; ModuleID = '/home/carl/AnghaBench/brotli/c/enc/extr_encode.c_WriteMetaBlockInternal.c'
source_filename = "/home/carl/AnghaBench/brotli/c/enc/extr_encode.c_WriteMetaBlockInternal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@MAX_QUALITY_FOR_STATIC_ENTROPY_CODES = common dso_local global i32 0, align 4
@MIN_QUALITY_FOR_BLOCK_SPLIT = common dso_local global i32 0, align 4
@MIN_QUALITY_FOR_HQ_BLOCK_SPLITTING = common dso_local global i32 0, align 4
@MIN_QUALITY_FOR_OPTIMIZE_HISTOGRAMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i64, i32, i64, i32, i32, %struct.TYPE_9__*, i32, i32, i64, i64, i32*, i32*, i32*, i64*, i32*)* @WriteMetaBlockInternal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @WriteMetaBlockInternal(i32* %0, i32* %1, i64 %2, i32 %3, i64 %4, i32 %5, i32 %6, %struct.TYPE_9__* %7, i32 %8, i32 %9, i64 %10, i64 %11, i32* %12, i32* %13, i32* %14, i64* %15, i32* %16) #0 {
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_9__*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i64*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca %struct.TYPE_9__, align 4
  %40 = alloca i32, align 4
  %41 = alloca i64, align 8
  %42 = alloca i32*, align 8
  store i32* %0, i32** %18, align 8
  store i32* %1, i32** %19, align 8
  store i64 %2, i64* %20, align 8
  store i32 %3, i32* %21, align 4
  store i64 %4, i64* %22, align 8
  store i32 %5, i32* %23, align 4
  store i32 %6, i32* %24, align 4
  store %struct.TYPE_9__* %7, %struct.TYPE_9__** %25, align 8
  store i32 %8, i32* %26, align 4
  store i32 %9, i32* %27, align 4
  store i64 %10, i64* %28, align 8
  store i64 %11, i64* %29, align 8
  store i32* %12, i32** %30, align 8
  store i32* %13, i32** %31, align 8
  store i32* %14, i32** %32, align 8
  store i64* %15, i64** %33, align 8
  store i32* %16, i32** %34, align 8
  %43 = load i32, i32* %21, align 4
  %44 = call i32 @WrapPosition(i32 %43)
  store i32 %44, i32* %35, align 4
  %45 = load i32, i32* %24, align 4
  %46 = call i32 @BROTLI_CONTEXT_LUT(i32 %45)
  store i32 %46, i32* %38, align 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %48 = bitcast %struct.TYPE_9__* %39 to i8*
  %49 = bitcast %struct.TYPE_9__* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %48, i8* align 4 %49, i64 16, i1 false)
  %50 = load i64, i64* %22, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %17
  %53 = load i64*, i64** %33, align 8
  %54 = load i32*, i32** %34, align 8
  %55 = call i32 @BrotliWriteBits(i32 2, i32 3, i64* %53, i32* %54)
  %56 = load i64*, i64** %33, align 8
  %57 = load i64, i64* %56, align 8
  %58 = add i64 %57, 7
  %59 = and i64 %58, 4294967288
  %60 = load i64*, i64** %33, align 8
  store i64 %59, i64* %60, align 8
  br label %267

61:                                               ; preds = %17
  %62 = load i32*, i32** %19, align 8
  %63 = load i64, i64* %20, align 8
  %64 = load i32, i32* %21, align 4
  %65 = load i64, i64* %22, align 8
  %66 = load i64, i64* %28, align 8
  %67 = load i64, i64* %29, align 8
  %68 = call i32 @ShouldCompress(i32* %62, i64 %63, i32 %64, i64 %65, i64 %66, i64 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %82, label %70

70:                                               ; preds = %61
  %71 = load i32*, i32** %32, align 8
  %72 = load i32*, i32** %31, align 8
  %73 = call i32 @memcpy(i32* %71, i32* %72, i32 16)
  %74 = load i32, i32* %23, align 4
  %75 = load i32*, i32** %19, align 8
  %76 = load i32, i32* %35, align 4
  %77 = load i64, i64* %20, align 8
  %78 = load i64, i64* %22, align 8
  %79 = load i64*, i64** %33, align 8
  %80 = load i32*, i32** %34, align 8
  %81 = call i32 @BrotliStoreUncompressedMetaBlock(i32 %74, i32* %75, i32 %76, i64 %77, i64 %78, i64* %79, i32* %80)
  br label %267

82:                                               ; preds = %61
  %83 = load i64*, i64** %33, align 8
  %84 = load i64, i64* %83, align 8
  %85 = icmp ule i64 %84, 14
  %86 = zext i1 %85 to i32
  %87 = call i32 @BROTLI_DCHECK(i32 %86)
  %88 = load i32*, i32** %34, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = shl i32 %90, 8
  %92 = load i32*, i32** %34, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %91, %94
  store i32 %95, i32* %36, align 4
  %96 = load i64*, i64** %33, align 8
  %97 = load i64, i64* %96, align 8
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %37, align 4
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @MAX_QUALITY_FOR_STATIC_ENTROPY_CODES, align 4
  %103 = icmp sle i32 %101, %102
  br i1 %103, label %104, label %122

104:                                              ; preds = %82
  %105 = load i32*, i32** %18, align 8
  %106 = load i32*, i32** %19, align 8
  %107 = load i32, i32* %35, align 4
  %108 = load i64, i64* %22, align 8
  %109 = load i64, i64* %20, align 8
  %110 = load i32, i32* %23, align 4
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %112 = load i32*, i32** %30, align 8
  %113 = load i64, i64* %29, align 8
  %114 = load i64*, i64** %33, align 8
  %115 = load i32*, i32** %34, align 8
  %116 = call i32 @BrotliStoreMetaBlockFast(i32* %105, i32* %106, i32 %107, i64 %108, i64 %109, i32 %110, %struct.TYPE_9__* %111, i32* %112, i64 %113, i64* %114, i32* %115)
  %117 = load i32*, i32** %18, align 8
  %118 = call i64 @BROTLI_IS_OOM(i32* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %104
  br label %267

121:                                              ; preds = %104
  br label %238

122:                                              ; preds = %82
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @MIN_QUALITY_FOR_BLOCK_SPLIT, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %146

128:                                              ; preds = %122
  %129 = load i32*, i32** %18, align 8
  %130 = load i32*, i32** %19, align 8
  %131 = load i32, i32* %35, align 4
  %132 = load i64, i64* %22, align 8
  %133 = load i64, i64* %20, align 8
  %134 = load i32, i32* %23, align 4
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %136 = load i32*, i32** %30, align 8
  %137 = load i64, i64* %29, align 8
  %138 = load i64*, i64** %33, align 8
  %139 = load i32*, i32** %34, align 8
  %140 = call i32 @BrotliStoreMetaBlockTrivial(i32* %129, i32* %130, i32 %131, i64 %132, i64 %133, i32 %134, %struct.TYPE_9__* %135, i32* %136, i64 %137, i64* %138, i32* %139)
  %141 = load i32*, i32** %18, align 8
  %142 = call i64 @BROTLI_IS_OOM(i32* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %128
  br label %267

145:                                              ; preds = %128
  br label %237

146:                                              ; preds = %122
  %147 = call i32 @InitMetaBlockSplit(i32* %40)
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @MIN_QUALITY_FOR_HQ_BLOCK_SPLITTING, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %188

153:                                              ; preds = %146
  store i64 1, i64* %41, align 8
  store i32* null, i32** %42, align 8
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %170, label %158

158:                                              ; preds = %153
  %159 = load i32*, i32** %19, align 8
  %160 = load i32, i32* %35, align 4
  %161 = load i64, i64* %22, align 8
  %162 = load i64, i64* %20, align 8
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @DecideOverLiteralContextModeling(i32* %159, i32 %160, i64 %161, i64 %162, i32 %165, i32 %168, i64* %41, i32** %42)
  br label %170

170:                                              ; preds = %158, %153
  %171 = load i32*, i32** %18, align 8
  %172 = load i32*, i32** %19, align 8
  %173 = load i32, i32* %35, align 4
  %174 = load i64, i64* %20, align 8
  %175 = load i32, i32* %26, align 4
  %176 = load i32, i32* %27, align 4
  %177 = load i32, i32* %38, align 4
  %178 = load i64, i64* %41, align 8
  %179 = load i32*, i32** %42, align 8
  %180 = load i32*, i32** %30, align 8
  %181 = load i64, i64* %29, align 8
  %182 = call i32 @BrotliBuildMetaBlockGreedy(i32* %171, i32* %172, i32 %173, i64 %174, i32 %175, i32 %176, i32 %177, i64 %178, i32* %179, i32* %180, i64 %181, i32* %40)
  %183 = load i32*, i32** %18, align 8
  %184 = call i64 @BROTLI_IS_OOM(i32* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %170
  br label %267

187:                                              ; preds = %170
  br label %204

188:                                              ; preds = %146
  %189 = load i32*, i32** %18, align 8
  %190 = load i32*, i32** %19, align 8
  %191 = load i32, i32* %35, align 4
  %192 = load i64, i64* %20, align 8
  %193 = load i32, i32* %26, align 4
  %194 = load i32, i32* %27, align 4
  %195 = load i32*, i32** %30, align 8
  %196 = load i64, i64* %29, align 8
  %197 = load i32, i32* %24, align 4
  %198 = call i32 @BrotliBuildMetaBlock(i32* %189, i32* %190, i32 %191, i64 %192, %struct.TYPE_9__* %39, i32 %193, i32 %194, i32* %195, i64 %196, i32 %197, i32* %40)
  %199 = load i32*, i32** %18, align 8
  %200 = call i64 @BROTLI_IS_OOM(i32* %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %188
  br label %267

203:                                              ; preds = %188
  br label %204

204:                                              ; preds = %203, %187
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @MIN_QUALITY_FOR_OPTIMIZE_HISTOGRAMS, align 4
  %209 = icmp sge i32 %207, %208
  br i1 %209, label %210, label %215

210:                                              ; preds = %204
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @BrotliOptimizeHistograms(i32 %213, i32* %40)
  br label %215

215:                                              ; preds = %210, %204
  %216 = load i32*, i32** %18, align 8
  %217 = load i32*, i32** %19, align 8
  %218 = load i32, i32* %35, align 4
  %219 = load i64, i64* %22, align 8
  %220 = load i64, i64* %20, align 8
  %221 = load i32, i32* %26, align 4
  %222 = load i32, i32* %27, align 4
  %223 = load i32, i32* %23, align 4
  %224 = load i32, i32* %24, align 4
  %225 = load i32*, i32** %30, align 8
  %226 = load i64, i64* %29, align 8
  %227 = load i64*, i64** %33, align 8
  %228 = load i32*, i32** %34, align 8
  %229 = call i32 @BrotliStoreMetaBlock(i32* %216, i32* %217, i32 %218, i64 %219, i64 %220, i32 %221, i32 %222, i32 %223, %struct.TYPE_9__* %39, i32 %224, i32* %225, i64 %226, i32* %40, i64* %227, i32* %228)
  %230 = load i32*, i32** %18, align 8
  %231 = call i64 @BROTLI_IS_OOM(i32* %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %215
  br label %267

234:                                              ; preds = %215
  %235 = load i32*, i32** %18, align 8
  %236 = call i32 @DestroyMetaBlockSplit(i32* %235, i32* %40)
  br label %237

237:                                              ; preds = %234, %145
  br label %238

238:                                              ; preds = %237, %121
  %239 = load i64, i64* %22, align 8
  %240 = add i64 %239, 4
  %241 = load i64*, i64** %33, align 8
  %242 = load i64, i64* %241, align 8
  %243 = lshr i64 %242, 3
  %244 = icmp ult i64 %240, %243
  br i1 %244, label %245, label %267

245:                                              ; preds = %238
  %246 = load i32*, i32** %32, align 8
  %247 = load i32*, i32** %31, align 8
  %248 = call i32 @memcpy(i32* %246, i32* %247, i32 16)
  %249 = load i32, i32* %36, align 4
  %250 = load i32*, i32** %34, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 0
  store i32 %249, i32* %251, align 4
  %252 = load i32, i32* %36, align 4
  %253 = ashr i32 %252, 8
  %254 = load i32*, i32** %34, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 1
  store i32 %253, i32* %255, align 4
  %256 = load i32, i32* %37, align 4
  %257 = sext i32 %256 to i64
  %258 = load i64*, i64** %33, align 8
  store i64 %257, i64* %258, align 8
  %259 = load i32, i32* %23, align 4
  %260 = load i32*, i32** %19, align 8
  %261 = load i32, i32* %35, align 4
  %262 = load i64, i64* %20, align 8
  %263 = load i64, i64* %22, align 8
  %264 = load i64*, i64** %33, align 8
  %265 = load i32*, i32** %34, align 8
  %266 = call i32 @BrotliStoreUncompressedMetaBlock(i32 %259, i32* %260, i32 %261, i64 %262, i64 %263, i64* %264, i32* %265)
  br label %267

267:                                              ; preds = %52, %70, %120, %144, %186, %202, %233, %245, %238
  ret void
}

declare dso_local i32 @WrapPosition(i32) #1

declare dso_local i32 @BROTLI_CONTEXT_LUT(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @BrotliWriteBits(i32, i32, i64*, i32*) #1

declare dso_local i32 @ShouldCompress(i32*, i64, i32, i64, i64, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @BrotliStoreUncompressedMetaBlock(i32, i32*, i32, i64, i64, i64*, i32*) #1

declare dso_local i32 @BROTLI_DCHECK(i32) #1

declare dso_local i32 @BrotliStoreMetaBlockFast(i32*, i32*, i32, i64, i64, i32, %struct.TYPE_9__*, i32*, i64, i64*, i32*) #1

declare dso_local i64 @BROTLI_IS_OOM(i32*) #1

declare dso_local i32 @BrotliStoreMetaBlockTrivial(i32*, i32*, i32, i64, i64, i32, %struct.TYPE_9__*, i32*, i64, i64*, i32*) #1

declare dso_local i32 @InitMetaBlockSplit(i32*) #1

declare dso_local i32 @DecideOverLiteralContextModeling(i32*, i32, i64, i64, i32, i32, i64*, i32**) #1

declare dso_local i32 @BrotliBuildMetaBlockGreedy(i32*, i32*, i32, i64, i32, i32, i32, i64, i32*, i32*, i64, i32*) #1

declare dso_local i32 @BrotliBuildMetaBlock(i32*, i32*, i32, i64, %struct.TYPE_9__*, i32, i32, i32*, i64, i32, i32*) #1

declare dso_local i32 @BrotliOptimizeHistograms(i32, i32*) #1

declare dso_local i32 @BrotliStoreMetaBlock(i32*, i32*, i32, i64, i64, i32, i32, i32, %struct.TYPE_9__*, i32, i32*, i64, i32*, i64*, i32*) #1

declare dso_local i32 @DestroyMetaBlockSplit(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
