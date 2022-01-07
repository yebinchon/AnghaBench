; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/legacy/extr_zstd_v07.c_ZSTDv07_decompressContinue.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/legacy/extr_zstd_v07.c_ZSTDv07_decompressContinue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, i64, i64, i32, i8*, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@srcSize_wrong = common dso_local global i32 0, align 4
@ZSTDv07_frameHeaderSize_min = common dso_local global i64 0, align 8
@ZSTDv07_MAGIC_SKIPPABLE_START = common dso_local global i32 0, align 4
@ZSTDv07_skippableHeaderSize = common dso_local global i64 0, align 8
@ZSTDv07_blockHeaderSize = common dso_local global i8* null, align 8
@checksum_wrong = common dso_local global i32 0, align 4
@GENERIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ZSTDv07_decompressContinue(%struct.TYPE_11__* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_10__, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %20 = load i64, i64* %11, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %20, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %5
  %26 = load i32, i32* @srcSize_wrong, align 4
  %27 = call i64 @ERROR(i32 %26)
  store i64 %27, i64* %6, align 8
  br label %287

28:                                               ; preds = %5
  %29 = load i64, i64* %9, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @ZSTDv07_checkContinuity(%struct.TYPE_11__* %32, i8* %33)
  br label %35

35:                                               ; preds = %31, %28
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %284 [
    i32 133, label %39
    i32 136, label %106
    i32 137, label %137
    i32 134, label %202
    i32 135, label %257
    i32 132, label %279
  ]

39:                                               ; preds = %35
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* @ZSTDv07_frameHeaderSize_min, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32, i32* @srcSize_wrong, align 4
  %45 = call i64 @ERROR(i32 %44)
  store i64 %45, i64* %6, align 8
  br label %287

46:                                               ; preds = %39
  %47 = load i8*, i8** %10, align 8
  %48 = call i32 @MEM_readLE32(i8* %47)
  %49 = and i32 %48, -16
  %50 = load i32, i32* @ZSTDv07_MAGIC_SKIPPABLE_START, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %46
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = load i64, i64* @ZSTDv07_frameHeaderSize_min, align 8
  %58 = call i32 @memcpy(i64 %55, i8* %56, i64 %57)
  %59 = load i64, i64* @ZSTDv07_skippableHeaderSize, align 8
  %60 = load i64, i64* @ZSTDv07_frameHeaderSize_min, align 8
  %61 = sub i64 %59, %60
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  store i32 135, i32* %65, align 8
  store i64 0, i64* %6, align 8
  br label %287

66:                                               ; preds = %46
  %67 = load i8*, i8** %10, align 8
  %68 = load i64, i64* @ZSTDv07_frameHeaderSize_min, align 8
  %69 = call i64 @ZSTDv07_frameHeaderSize(i8* %67, i64 %68)
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 3
  store i64 %69, i64* %71, align 8
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @ZSTDv07_isError(i64 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %66
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %6, align 8
  br label %287

81:                                               ; preds = %66
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load i8*, i8** %10, align 8
  %86 = load i64, i64* @ZSTDv07_frameHeaderSize_min, align 8
  %87 = call i32 @memcpy(i64 %84, i8* %85, i64 %86)
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @ZSTDv07_frameHeaderSize_min, align 8
  %92 = icmp ugt i64 %90, %91
  br i1 %92, label %93, label %103

93:                                               ; preds = %81
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @ZSTDv07_frameHeaderSize_min, align 8
  %98 = sub i64 %96, %97
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  store i64 %98, i64* %100, align 8
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 1
  store i32 136, i32* %102, align 8
  store i64 0, i64* %6, align 8
  br label %287

103:                                              ; preds = %81
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  store i64 0, i64* %105, align 8
  br label %106

106:                                              ; preds = %35, %103
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @ZSTDv07_frameHeaderSize_min, align 8
  %111 = add i64 %109, %110
  %112 = load i8*, i8** %10, align 8
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @memcpy(i64 %111, i8* %112, i64 %115)
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = call i64 @ZSTDv07_decodeFrameHeader(%struct.TYPE_11__* %117, i64 %120, i64 %123)
  store i64 %124, i64* %12, align 8
  %125 = load i64, i64* %12, align 8
  %126 = call i32 @ZSTDv07_isError(i64 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %106
  %129 = load i64, i64* %12, align 8
  store i64 %129, i64* %6, align 8
  br label %287

130:                                              ; preds = %106
  %131 = load i8*, i8** @ZSTDv07_blockHeaderSize, align 8
  %132 = ptrtoint i8* %131 to i64
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  store i64 %132, i64* %134, align 8
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 1
  store i32 137, i32* %136, align 8
  store i64 0, i64* %6, align 8
  br label %287

137:                                              ; preds = %35
  %138 = load i8*, i8** %10, align 8
  %139 = load i8*, i8** @ZSTDv07_blockHeaderSize, align 8
  %140 = call i64 @ZSTDv07_getcBlockSize(i8* %138, i8* %139, %struct.TYPE_10__* %13)
  store i64 %140, i64* %14, align 8
  %141 = load i64, i64* %14, align 8
  %142 = call i32 @ZSTDv07_isError(i64 %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %137
  %145 = load i64, i64* %14, align 8
  store i64 %145, i64* %6, align 8
  br label %287

146:                                              ; preds = %137
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = icmp eq i32 %148, 130
  br i1 %149, label %150, label %191

150:                                              ; preds = %146
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 7
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %186

156:                                              ; preds = %150
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 6
  %159 = call i32 @XXH64_digest(i32* %158)
  store i32 %159, i32* %15, align 4
  %160 = load i32, i32* %15, align 4
  %161 = ashr i32 %160, 11
  %162 = and i32 %161, 4194303
  store i32 %162, i32* %16, align 4
  %163 = load i8*, i8** %10, align 8
  %164 = bitcast i8* %163 to i32*
  store i32* %164, i32** %17, align 8
  %165 = load i32*, i32** %17, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 2
  %167 = load i32, i32* %166, align 4
  %168 = load i32*, i32** %17, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 1
  %170 = load i32, i32* %169, align 4
  %171 = shl i32 %170, 8
  %172 = add nsw i32 %167, %171
  %173 = load i32*, i32** %17, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 0
  %175 = load i32, i32* %174, align 4
  %176 = and i32 %175, 63
  %177 = shl i32 %176, 16
  %178 = add nsw i32 %172, %177
  store i32 %178, i32* %18, align 4
  %179 = load i32, i32* %18, align 4
  %180 = load i32, i32* %16, align 4
  %181 = icmp ne i32 %179, %180
  br i1 %181, label %182, label %185

182:                                              ; preds = %156
  %183 = load i32, i32* @checksum_wrong, align 4
  %184 = call i64 @ERROR(i32 %183)
  store i64 %184, i64* %6, align 8
  br label %287

185:                                              ; preds = %156
  br label %186

186:                                              ; preds = %185, %150
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 0
  store i64 0, i64* %188, align 8
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 1
  store i32 133, i32* %190, align 8
  br label %201

191:                                              ; preds = %146
  %192 = load i64, i64* %14, align 8
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 0
  store i64 %192, i64* %194, align 8
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 4
  store i32 %196, i32* %198, align 8
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 1
  store i32 134, i32* %200, align 8
  br label %201

201:                                              ; preds = %191, %186
  store i64 0, i64* %6, align 8
  br label %287

202:                                              ; preds = %35
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 8
  switch i32 %205, label %223 [
    i32 131, label %206
    i32 129, label %213
    i32 128, label %219
    i32 130, label %222
  ]

206:                                              ; preds = %202
  %207 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %208 = load i8*, i8** %8, align 8
  %209 = load i64, i64* %9, align 8
  %210 = load i8*, i8** %10, align 8
  %211 = load i64, i64* %11, align 8
  %212 = call i64 @ZSTDv07_decompressBlock_internal(%struct.TYPE_11__* %207, i8* %208, i64 %209, i8* %210, i64 %211)
  store i64 %212, i64* %19, align 8
  br label %226

213:                                              ; preds = %202
  %214 = load i8*, i8** %8, align 8
  %215 = load i64, i64* %9, align 8
  %216 = load i8*, i8** %10, align 8
  %217 = load i64, i64* %11, align 8
  %218 = call i64 @ZSTDv07_copyRawBlock(i8* %214, i64 %215, i8* %216, i64 %217)
  store i64 %218, i64* %19, align 8
  br label %226

219:                                              ; preds = %202
  %220 = load i32, i32* @GENERIC, align 4
  %221 = call i64 @ERROR(i32 %220)
  store i64 %221, i64* %6, align 8
  br label %287

222:                                              ; preds = %202
  store i64 0, i64* %19, align 8
  br label %226

223:                                              ; preds = %202
  %224 = load i32, i32* @GENERIC, align 4
  %225 = call i64 @ERROR(i32 %224)
  store i64 %225, i64* %6, align 8
  br label %287

226:                                              ; preds = %222, %213, %206
  %227 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 1
  store i32 137, i32* %228, align 8
  %229 = load i8*, i8** @ZSTDv07_blockHeaderSize, align 8
  %230 = ptrtoint i8* %229 to i64
  %231 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %232 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %231, i32 0, i32 0
  store i64 %230, i64* %232, align 8
  %233 = load i8*, i8** %8, align 8
  %234 = load i64, i64* %19, align 8
  %235 = getelementptr inbounds i8, i8* %233, i64 %234
  %236 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %236, i32 0, i32 5
  store i8* %235, i8** %237, align 8
  %238 = load i64, i64* %19, align 8
  %239 = call i32 @ZSTDv07_isError(i64 %238)
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %243

241:                                              ; preds = %226
  %242 = load i64, i64* %19, align 8
  store i64 %242, i64* %6, align 8
  br label %287

243:                                              ; preds = %226
  %244 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %245 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %244, i32 0, i32 7
  %246 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %255

249:                                              ; preds = %243
  %250 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %251 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %250, i32 0, i32 6
  %252 = load i8*, i8** %8, align 8
  %253 = load i64, i64* %19, align 8
  %254 = call i32 @XXH64_update(i32* %251, i8* %252, i64 %253)
  br label %255

255:                                              ; preds = %249, %243
  %256 = load i64, i64* %19, align 8
  store i64 %256, i64* %6, align 8
  br label %287

257:                                              ; preds = %35
  %258 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %258, i32 0, i32 2
  %260 = load i64, i64* %259, align 8
  %261 = load i64, i64* @ZSTDv07_frameHeaderSize_min, align 8
  %262 = add i64 %260, %261
  %263 = load i8*, i8** %10, align 8
  %264 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %265 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = call i32 @memcpy(i64 %262, i8* %263, i64 %266)
  %268 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %269 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %268, i32 0, i32 2
  %270 = load i64, i64* %269, align 8
  %271 = add i64 %270, 4
  %272 = inttoptr i64 %271 to i8*
  %273 = call i32 @MEM_readLE32(i8* %272)
  %274 = sext i32 %273 to i64
  %275 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %276 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %275, i32 0, i32 0
  store i64 %274, i64* %276, align 8
  %277 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %278 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %277, i32 0, i32 1
  store i32 132, i32* %278, align 8
  store i64 0, i64* %6, align 8
  br label %287

279:                                              ; preds = %35
  %280 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %281 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %280, i32 0, i32 0
  store i64 0, i64* %281, align 8
  %282 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %283 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %282, i32 0, i32 1
  store i32 133, i32* %283, align 8
  store i64 0, i64* %6, align 8
  br label %287

284:                                              ; preds = %35
  %285 = load i32, i32* @GENERIC, align 4
  %286 = call i64 @ERROR(i32 %285)
  store i64 %286, i64* %6, align 8
  br label %287

287:                                              ; preds = %284, %279, %257, %255, %241, %223, %219, %201, %182, %144, %130, %128, %93, %77, %52, %43, %25
  %288 = load i64, i64* %6, align 8
  ret i64 %288
}

declare dso_local i64 @ERROR(i32) #1

declare dso_local i32 @ZSTDv07_checkContinuity(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @MEM_readLE32(i8*) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

declare dso_local i64 @ZSTDv07_frameHeaderSize(i8*, i64) #1

declare dso_local i32 @ZSTDv07_isError(i64) #1

declare dso_local i64 @ZSTDv07_decodeFrameHeader(%struct.TYPE_11__*, i64, i64) #1

declare dso_local i64 @ZSTDv07_getcBlockSize(i8*, i8*, %struct.TYPE_10__*) #1

declare dso_local i32 @XXH64_digest(i32*) #1

declare dso_local i64 @ZSTDv07_decompressBlock_internal(%struct.TYPE_11__*, i8*, i64, i8*, i64) #1

declare dso_local i64 @ZSTDv07_copyRawBlock(i8*, i64, i8*, i64) #1

declare dso_local i32 @XXH64_update(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
