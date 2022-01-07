; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_block.c__vds_shared_init.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_block.c__vds_shared_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 (%struct.TYPE_17__*, i32)* }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i64, i64, i8**, i8*, %struct.TYPE_16__*, %struct.TYPE_18__* }
%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i32, i32*, i32, i32, i32, i32, i64*, i64*, i32**, i32*, i32*, i8*, %struct.TYPE_20__**, i32 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_18__ = type { i32*, i32*, i8*, i32*, i8**, i8***, i8* }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_17__*, i32)* }

@VI_TRANSFORMB = common dso_local global i32 0, align 4
@_floor_P = common dso_local global %struct.TYPE_15__** null, align 8
@_residue_P = common dso_local global %struct.TYPE_14__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_16__*, i32)* @_vds_shared_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_vds_shared_init(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  store %struct.TYPE_19__* %15, %struct.TYPE_19__** %9, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %10, align 8
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %17 = icmp eq %struct.TYPE_19__* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %489

19:                                               ; preds = %3
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %11, align 4
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %24 = call i32 @memset(%struct.TYPE_17__* %23, i32 0, i32 64)
  %25 = call i8* @_ogg_calloc(i32 1, i32 56)
  %26 = bitcast i8* %25 to %struct.TYPE_18__*
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 9
  store %struct.TYPE_18__* %26, %struct.TYPE_18__** %28, align 8
  store %struct.TYPE_18__* %26, %struct.TYPE_18__** %10, align 8
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 8
  store %struct.TYPE_16__* %29, %struct.TYPE_16__** %31, align 8
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @ilog2(i32 %34)
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 6
  store i8* %35, i8** %37, align 8
  %38 = load i32, i32* @VI_TRANSFORMB, align 4
  %39 = call i8* @_ogg_calloc(i32 %38, i32 8)
  %40 = bitcast i8* %39 to i8**
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 5
  %43 = load i8***, i8**** %42, align 8
  %44 = getelementptr inbounds i8**, i8*** %43, i64 0
  store i8** %40, i8*** %44, align 8
  %45 = load i32, i32* @VI_TRANSFORMB, align 4
  %46 = call i8* @_ogg_calloc(i32 %45, i32 8)
  %47 = bitcast i8* %46 to i8**
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 5
  %50 = load i8***, i8**** %49, align 8
  %51 = getelementptr inbounds i8**, i8*** %50, i64 1
  store i8** %47, i8*** %51, align 8
  %52 = call i8* @_ogg_calloc(i32 1, i32 4)
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 5
  %55 = load i8***, i8**** %54, align 8
  %56 = getelementptr inbounds i8**, i8*** %55, i64 0
  %57 = load i8**, i8*** %56, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 0
  store i8* %52, i8** %58, align 8
  %59 = call i8* @_ogg_calloc(i32 1, i32 4)
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 5
  %62 = load i8***, i8**** %61, align 8
  %63 = getelementptr inbounds i8**, i8*** %62, i64 1
  %64 = load i8**, i8*** %63, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 0
  store i8* %59, i8** %65, align 8
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 5
  %68 = load i8***, i8**** %67, align 8
  %69 = getelementptr inbounds i8**, i8*** %68, i64 0
  %70 = load i8**, i8*** %69, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 0
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %11, align 4
  %79 = ashr i32 %77, %78
  %80 = call i32 @mdct_init(i8* %72, i32 %79)
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 5
  %83 = load i8***, i8**** %82, align 8
  %84 = getelementptr inbounds i8**, i8*** %83, i64 1
  %85 = load i8**, i8*** %84, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 0
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %11, align 4
  %94 = ashr i32 %92, %93
  %95 = call i32 @mdct_init(i8* %87, i32 %94)
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = call i8* @ilog2(i32 %100)
  %102 = getelementptr i8, i8* %101, i64 -6
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 4
  %105 = load i8**, i8*** %104, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 0
  store i8* %102, i8** %106, align 8
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  %111 = load i32, i32* %110, align 4
  %112 = call i8* @ilog2(i32 %111)
  %113 = getelementptr i8, i8* %112, i64 -6
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 4
  %116 = load i8**, i8*** %115, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i64 1
  store i8* %113, i8** %117, align 8
  %118 = load i32, i32* %7, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %231

120:                                              ; preds = %19
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 3
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 2
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @drft_init(i32* %124, i32 %129)
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 3
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 1
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 2
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @drft_init(i32* %134, i32 %139)
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i32 0, i32 12
  %143 = load i8*, i8** %142, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %177, label %145

145:                                              ; preds = %120
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = call i8* @_ogg_calloc(i32 %148, i32 1)
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i32 0, i32 12
  store i8* %149, i8** %151, align 8
  store i32 0, i32* %8, align 4
  br label %152

152:                                              ; preds = %173, %145
  %153 = load i32, i32* %8, align 4
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = icmp slt i32 %153, %156
  br i1 %157, label %158, label %176

158:                                              ; preds = %152
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 12
  %161 = load i8*, i8** %160, align 8
  %162 = load i32, i32* %8, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr i8, i8* %161, i64 %163
  %165 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %165, i32 0, i32 9
  %167 = load i32**, i32*** %166, align 8
  %168 = load i32, i32* %8, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32*, i32** %167, i64 %169
  %171 = load i32*, i32** %170, align 8
  %172 = call i32 @vorbis_book_init_encode(i8* %164, i32* %171)
  br label %173

173:                                              ; preds = %158
  %174 = load i32, i32* %8, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %8, align 4
  br label %152

176:                                              ; preds = %152
  br label %177

177:                                              ; preds = %176, %120
  %178 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 4
  %181 = call i8* @_ogg_calloc(i32 %180, i32 1)
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %182, i32 0, i32 2
  store i8* %181, i8** %183, align 8
  store i32 0, i32* %8, align 4
  br label %184

184:                                              ; preds = %225, %177
  %185 = load i32, i32* %8, align 4
  %186 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %187 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 4
  %189 = icmp slt i32 %185, %188
  br i1 %189, label %190, label %228

190:                                              ; preds = %184
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 2
  %193 = load i8*, i8** %192, align 8
  %194 = load i32, i32* %8, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr i8, i8* %193, i64 %195
  %197 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %198 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %197, i32 0, i32 13
  %199 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %198, align 8
  %200 = load i32, i32* %8, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %199, i64 %201
  %203 = load %struct.TYPE_20__*, %struct.TYPE_20__** %202, align 8
  %204 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %205 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %204, i32 0, i32 14
  %206 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %207 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %206, i32 0, i32 2
  %208 = load i32*, i32** %207, align 8
  %209 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %210 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %209, i32 0, i32 13
  %211 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %210, align 8
  %212 = load i32, i32* %8, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %211, i64 %213
  %215 = load %struct.TYPE_20__*, %struct.TYPE_20__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = getelementptr inbounds i32, i32* %208, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = sdiv i32 %219, 2
  %221 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @_vp_psy_init(i8* %196, %struct.TYPE_20__* %203, i32* %205, i32 %220, i32 %223)
  br label %225

225:                                              ; preds = %190
  %226 = load i32, i32* %8, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %8, align 4
  br label %184

228:                                              ; preds = %184
  %229 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %229, i32 0, i32 0
  store i32 1, i32* %230, align 8
  br label %296

231:                                              ; preds = %19
  %232 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %233 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %232, i32 0, i32 12
  %234 = load i8*, i8** %233, align 8
  %235 = icmp ne i8* %234, null
  br i1 %235, label %295, label %236

236:                                              ; preds = %231
  %237 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %238 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 8
  %240 = call i8* @_ogg_calloc(i32 %239, i32 1)
  %241 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %242 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %241, i32 0, i32 12
  store i8* %240, i8** %242, align 8
  store i32 0, i32* %8, align 4
  br label %243

243:                                              ; preds = %291, %236
  %244 = load i32, i32* %8, align 4
  %245 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %246 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %245, i32 0, i32 3
  %247 = load i32, i32* %246, align 8
  %248 = icmp slt i32 %244, %247
  br i1 %248, label %249, label %294

249:                                              ; preds = %243
  %250 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %251 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %250, i32 0, i32 9
  %252 = load i32**, i32*** %251, align 8
  %253 = load i32, i32* %8, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32*, i32** %252, i64 %254
  %256 = load i32*, i32** %255, align 8
  %257 = icmp eq i32* %256, null
  br i1 %257, label %258, label %259

258:                                              ; preds = %249
  br label %451

259:                                              ; preds = %249
  %260 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %261 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %260, i32 0, i32 12
  %262 = load i8*, i8** %261, align 8
  %263 = load i32, i32* %8, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr i8, i8* %262, i64 %264
  %266 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %267 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %266, i32 0, i32 9
  %268 = load i32**, i32*** %267, align 8
  %269 = load i32, i32* %8, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32*, i32** %268, i64 %270
  %272 = load i32*, i32** %271, align 8
  %273 = call i64 @vorbis_book_init_decode(i8* %265, i32* %272)
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %276

275:                                              ; preds = %259
  br label %451

276:                                              ; preds = %259
  %277 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %278 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %277, i32 0, i32 9
  %279 = load i32**, i32*** %278, align 8
  %280 = load i32, i32* %8, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32*, i32** %279, i64 %281
  %283 = load i32*, i32** %282, align 8
  %284 = call i32 @vorbis_staticbook_destroy(i32* %283)
  %285 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %286 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %285, i32 0, i32 9
  %287 = load i32**, i32*** %286, align 8
  %288 = load i32, i32* %8, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32*, i32** %287, i64 %289
  store i32* null, i32** %290, align 8
  br label %291

291:                                              ; preds = %276
  %292 = load i32, i32* %8, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %8, align 4
  br label %243

294:                                              ; preds = %243
  br label %295

295:                                              ; preds = %294, %231
  br label %296

296:                                              ; preds = %295, %228
  %297 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %298 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %297, i32 0, i32 2
  %299 = load i32*, i32** %298, align 8
  %300 = getelementptr inbounds i32, i32* %299, i64 1
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %303 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %302, i32 0, i32 1
  store i32 %301, i32* %303, align 4
  %304 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %305 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = sext i32 %306 to i64
  %308 = mul i64 %307, 8
  %309 = trunc i64 %308 to i32
  %310 = call i8* @_ogg_malloc(i32 %309)
  %311 = bitcast i8* %310 to i8**
  %312 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %313 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %312, i32 0, i32 6
  store i8** %311, i8*** %313, align 8
  %314 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %315 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = sext i32 %316 to i64
  %318 = mul i64 %317, 1
  %319 = trunc i64 %318 to i32
  %320 = call i8* @_ogg_malloc(i32 %319)
  %321 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %322 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %321, i32 0, i32 7
  store i8* %320, i8** %322, align 8
  store i32 0, i32* %12, align 4
  br label %323

323:                                              ; preds = %340, %296
  %324 = load i32, i32* %12, align 4
  %325 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %326 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = icmp slt i32 %324, %327
  br i1 %328, label %329, label %343

329:                                              ; preds = %323
  %330 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %331 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 4
  %333 = call i8* @_ogg_calloc(i32 %332, i32 1)
  %334 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %335 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %334, i32 0, i32 6
  %336 = load i8**, i8*** %335, align 8
  %337 = load i32, i32* %12, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i8*, i8** %336, i64 %338
  store i8* %333, i8** %339, align 8
  br label %340

340:                                              ; preds = %329
  %341 = load i32, i32* %12, align 4
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %12, align 4
  br label %323

343:                                              ; preds = %323
  %344 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %345 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %344, i32 0, i32 5
  store i64 0, i64* %345, align 8
  %346 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %347 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %346, i32 0, i32 4
  store i64 0, i64* %347, align 8
  %348 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %349 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %348, i32 0, i32 2
  %350 = load i32*, i32** %349, align 8
  %351 = getelementptr inbounds i32, i32* %350, i64 1
  %352 = load i32, i32* %351, align 4
  %353 = sdiv i32 %352, 2
  %354 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %355 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %354, i32 0, i32 2
  store i32 %353, i32* %355, align 8
  %356 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %357 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %356, i32 0, i32 2
  %358 = load i32, i32* %357, align 8
  %359 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %360 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %359, i32 0, i32 3
  store i32 %358, i32* %360, align 4
  %361 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %362 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %361, i32 0, i32 5
  %363 = load i32, i32* %362, align 8
  %364 = call i8* @_ogg_calloc(i32 %363, i32 4)
  %365 = bitcast i8* %364 to i32*
  %366 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %367 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %366, i32 0, i32 1
  store i32* %365, i32** %367, align 8
  %368 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %369 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %368, i32 0, i32 6
  %370 = load i32, i32* %369, align 4
  %371 = call i8* @_ogg_calloc(i32 %370, i32 4)
  %372 = bitcast i8* %371 to i32*
  %373 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %374 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %373, i32 0, i32 0
  store i32* %372, i32** %374, align 8
  store i32 0, i32* %8, align 4
  br label %375

375:                                              ; preds = %409, %343
  %376 = load i32, i32* %8, align 4
  %377 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %378 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %377, i32 0, i32 5
  %379 = load i32, i32* %378, align 8
  %380 = icmp slt i32 %376, %379
  br i1 %380, label %381, label %412

381:                                              ; preds = %375
  %382 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @_floor_P, align 8
  %383 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %384 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %383, i32 0, i32 7
  %385 = load i64*, i64** %384, align 8
  %386 = load i32, i32* %8, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i64, i64* %385, i64 %387
  %389 = load i64, i64* %388, align 8
  %390 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %382, i64 %389
  %391 = load %struct.TYPE_15__*, %struct.TYPE_15__** %390, align 8
  %392 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %391, i32 0, i32 0
  %393 = load i32 (%struct.TYPE_17__*, i32)*, i32 (%struct.TYPE_17__*, i32)** %392, align 8
  %394 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %395 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %396 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %395, i32 0, i32 11
  %397 = load i32*, i32** %396, align 8
  %398 = load i32, i32* %8, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i32, i32* %397, i64 %399
  %401 = load i32, i32* %400, align 4
  %402 = call i32 %393(%struct.TYPE_17__* %394, i32 %401)
  %403 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %404 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %403, i32 0, i32 1
  %405 = load i32*, i32** %404, align 8
  %406 = load i32, i32* %8, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds i32, i32* %405, i64 %407
  store i32 %402, i32* %408, align 4
  br label %409

409:                                              ; preds = %381
  %410 = load i32, i32* %8, align 4
  %411 = add nsw i32 %410, 1
  store i32 %411, i32* %8, align 4
  br label %375

412:                                              ; preds = %375
  store i32 0, i32* %8, align 4
  br label %413

413:                                              ; preds = %447, %412
  %414 = load i32, i32* %8, align 4
  %415 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %416 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %415, i32 0, i32 6
  %417 = load i32, i32* %416, align 4
  %418 = icmp slt i32 %414, %417
  br i1 %418, label %419, label %450

419:                                              ; preds = %413
  %420 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @_residue_P, align 8
  %421 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %422 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %421, i32 0, i32 8
  %423 = load i64*, i64** %422, align 8
  %424 = load i32, i32* %8, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds i64, i64* %423, i64 %425
  %427 = load i64, i64* %426, align 8
  %428 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %420, i64 %427
  %429 = load %struct.TYPE_14__*, %struct.TYPE_14__** %428, align 8
  %430 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %429, i32 0, i32 0
  %431 = load i32 (%struct.TYPE_17__*, i32)*, i32 (%struct.TYPE_17__*, i32)** %430, align 8
  %432 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %433 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %434 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %433, i32 0, i32 10
  %435 = load i32*, i32** %434, align 8
  %436 = load i32, i32* %8, align 4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds i32, i32* %435, i64 %437
  %439 = load i32, i32* %438, align 4
  %440 = call i32 %431(%struct.TYPE_17__* %432, i32 %439)
  %441 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %442 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %441, i32 0, i32 0
  %443 = load i32*, i32** %442, align 8
  %444 = load i32, i32* %8, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds i32, i32* %443, i64 %445
  store i32 %440, i32* %446, align 4
  br label %447

447:                                              ; preds = %419
  %448 = load i32, i32* %8, align 4
  %449 = add nsw i32 %448, 1
  store i32 %449, i32* %8, align 4
  br label %413

450:                                              ; preds = %413
  store i32 0, i32* %4, align 4
  br label %489

451:                                              ; preds = %275, %258
  store i32 0, i32* %8, align 4
  br label %452

452:                                              ; preds = %483, %451
  %453 = load i32, i32* %8, align 4
  %454 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %455 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %454, i32 0, i32 3
  %456 = load i32, i32* %455, align 8
  %457 = icmp slt i32 %453, %456
  br i1 %457, label %458, label %486

458:                                              ; preds = %452
  %459 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %460 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %459, i32 0, i32 9
  %461 = load i32**, i32*** %460, align 8
  %462 = load i32, i32* %8, align 4
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds i32*, i32** %461, i64 %463
  %465 = load i32*, i32** %464, align 8
  %466 = icmp ne i32* %465, null
  br i1 %466, label %467, label %482

467:                                              ; preds = %458
  %468 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %469 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %468, i32 0, i32 9
  %470 = load i32**, i32*** %469, align 8
  %471 = load i32, i32* %8, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds i32*, i32** %470, i64 %472
  %474 = load i32*, i32** %473, align 8
  %475 = call i32 @vorbis_staticbook_destroy(i32* %474)
  %476 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %477 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %476, i32 0, i32 9
  %478 = load i32**, i32*** %477, align 8
  %479 = load i32, i32* %8, align 4
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds i32*, i32** %478, i64 %480
  store i32* null, i32** %481, align 8
  br label %482

482:                                              ; preds = %467, %458
  br label %483

483:                                              ; preds = %482
  %484 = load i32, i32* %8, align 4
  %485 = add nsw i32 %484, 1
  store i32 %485, i32* %8, align 4
  br label %452

486:                                              ; preds = %452
  %487 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %488 = call i32 @vorbis_dsp_clear(%struct.TYPE_17__* %487)
  store i32 -1, i32* %4, align 4
  br label %489

489:                                              ; preds = %486, %450, %18
  %490 = load i32, i32* %4, align 4
  ret i32 %490
}

declare dso_local i32 @memset(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i8* @_ogg_calloc(i32, i32) #1

declare dso_local i8* @ilog2(i32) #1

declare dso_local i32 @mdct_init(i8*, i32) #1

declare dso_local i32 @drft_init(i32*, i32) #1

declare dso_local i32 @vorbis_book_init_encode(i8*, i32*) #1

declare dso_local i32 @_vp_psy_init(i8*, %struct.TYPE_20__*, i32*, i32, i32) #1

declare dso_local i64 @vorbis_book_init_decode(i8*, i32*) #1

declare dso_local i32 @vorbis_staticbook_destroy(i32*) #1

declare dso_local i8* @_ogg_malloc(i32) #1

declare dso_local i32 @vorbis_dsp_clear(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
