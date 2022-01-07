; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/tremor/extr_info.c__vorbis_unpack_books.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/tremor/extr_info.c__vorbis_unpack_books.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 (%struct.TYPE_15__*, i32*)* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_17__ = type { i32 (%struct.TYPE_15__*, i32*)* }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_15__*, i32*)* }
%struct.TYPE_16__ = type { i32, i32, i32*, i32, i32*, i32, i32*, i32, i32*, i32, %struct.TYPE_14__**, i32*, i32*, i32*, i32** }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }

@OV_EFAULT = common dso_local global i32 0, align 4
@VI_TIMEB = common dso_local global i64 0, align 8
@VI_FLOORB = common dso_local global i32 0, align 4
@_floor_P = common dso_local global %struct.TYPE_13__** null, align 8
@VI_RESB = common dso_local global i32 0, align 4
@_residue_P = common dso_local global %struct.TYPE_17__** null, align 8
@VI_MAPB = common dso_local global i32 0, align 4
@_mapping_P = common dso_local global %struct.TYPE_12__** null, align 8
@VI_WINDOWB = common dso_local global i64 0, align 8
@OV_EBADHEADER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32*)* @_vorbis_unpack_books to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_vorbis_unpack_books(%struct.TYPE_15__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %11, %struct.TYPE_16__** %6, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %13 = icmp ne %struct.TYPE_16__* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @OV_EFAULT, align 4
  store i32 %15, i32* %3, align 4
  br label %442

16:                                               ; preds = %2
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @oggpack_read(i32* %17, i32 8)
  %19 = add nsw i32 %18, 1
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %49, %16
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %52

28:                                               ; preds = %22
  %29 = call i64 @_ogg_calloc(i32 1, i32 4)
  %30 = inttoptr i64 %29 to i32*
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 14
  %33 = load i32**, i32*** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32*, i32** %33, i64 %35
  store i32* %30, i32** %36, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 14
  %40 = load i32**, i32*** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32*, i32** %40, i64 %42
  %44 = load i32*, i32** %43, align 8
  %45 = call i64 @vorbis_staticbook_unpack(i32* %37, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %28
  br label %438

48:                                               ; preds = %28
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %22

52:                                               ; preds = %22
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @oggpack_read(i32* %53, i32 6)
  %55 = add nsw i32 %54, 1
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  store i32 0, i32* %7, align 4
  br label %58

58:                                               ; preds = %94, %52
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %97

64:                                               ; preds = %58
  %65 = load i32*, i32** %5, align 8
  %66 = call i32 @oggpack_read(i32* %65, i32 16)
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32 %66, i32* %72, align 4
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %92, label %81

81:                                               ; preds = %64
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = load i64, i64* @VI_TIMEB, align 8
  %91 = icmp sge i64 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %81, %64
  br label %438

93:                                               ; preds = %81
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %7, align 4
  br label %58

97:                                               ; preds = %58
  %98 = load i32*, i32** %5, align 8
  %99 = call i32 @oggpack_read(i32* %98, i32 6)
  %100 = add nsw i32 %99, 1
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 3
  store i32 %100, i32* %102, align 8
  store i32 0, i32* %7, align 4
  br label %103

103:                                              ; preds = %170, %97
  %104 = load i32, i32* %7, align 4
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = icmp slt i32 %104, %107
  br i1 %108, label %109, label %173

109:                                              ; preds = %103
  %110 = load i32*, i32** %5, align 8
  %111 = call i32 @oggpack_read(i32* %110, i32 16)
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 4
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %7, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  store i32 %111, i32* %117, align 4
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 4
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %7, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %136, label %126

126:                                              ; preds = %109
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 4
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %7, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @VI_FLOORB, align 4
  %135 = icmp sge i32 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %126, %109
  br label %438

137:                                              ; preds = %126
  %138 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @_floor_P, align 8
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 4
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %7, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %138, i64 %146
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 0
  %150 = load i32 (%struct.TYPE_15__*, i32*)*, i32 (%struct.TYPE_15__*, i32*)** %149, align 8
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %152 = load i32*, i32** %5, align 8
  %153 = call i32 %150(%struct.TYPE_15__* %151, i32* %152)
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 13
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %7, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  store i32 %153, i32* %159, align 4
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 13
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %7, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %169, label %168

168:                                              ; preds = %137
  br label %438

169:                                              ; preds = %137
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %7, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %7, align 4
  br label %103

173:                                              ; preds = %103
  %174 = load i32*, i32** %5, align 8
  %175 = call i32 @oggpack_read(i32* %174, i32 6)
  %176 = add nsw i32 %175, 1
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 5
  store i32 %176, i32* %178, align 8
  store i32 0, i32* %7, align 4
  br label %179

179:                                              ; preds = %246, %173
  %180 = load i32, i32* %7, align 4
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 5
  %183 = load i32, i32* %182, align 8
  %184 = icmp slt i32 %180, %183
  br i1 %184, label %185, label %249

185:                                              ; preds = %179
  %186 = load i32*, i32** %5, align 8
  %187 = call i32 @oggpack_read(i32* %186, i32 16)
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 6
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* %7, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  store i32 %187, i32* %193, align 4
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 6
  %196 = load i32*, i32** %195, align 8
  %197 = load i32, i32* %7, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %212, label %202

202:                                              ; preds = %185
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 6
  %205 = load i32*, i32** %204, align 8
  %206 = load i32, i32* %7, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @VI_RESB, align 4
  %211 = icmp sge i32 %209, %210
  br i1 %211, label %212, label %213

212:                                              ; preds = %202, %185
  br label %438

213:                                              ; preds = %202
  %214 = load %struct.TYPE_17__**, %struct.TYPE_17__*** @_residue_P, align 8
  %215 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i32 0, i32 6
  %217 = load i32*, i32** %216, align 8
  %218 = load i32, i32* %7, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %214, i64 %222
  %224 = load %struct.TYPE_17__*, %struct.TYPE_17__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %224, i32 0, i32 0
  %226 = load i32 (%struct.TYPE_15__*, i32*)*, i32 (%struct.TYPE_15__*, i32*)** %225, align 8
  %227 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %228 = load i32*, i32** %5, align 8
  %229 = call i32 %226(%struct.TYPE_15__* %227, i32* %228)
  %230 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %230, i32 0, i32 12
  %232 = load i32*, i32** %231, align 8
  %233 = load i32, i32* %7, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  store i32 %229, i32* %235, align 4
  %236 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %236, i32 0, i32 12
  %238 = load i32*, i32** %237, align 8
  %239 = load i32, i32* %7, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %238, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %245, label %244

244:                                              ; preds = %213
  br label %438

245:                                              ; preds = %213
  br label %246

246:                                              ; preds = %245
  %247 = load i32, i32* %7, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %7, align 4
  br label %179

249:                                              ; preds = %179
  %250 = load i32*, i32** %5, align 8
  %251 = call i32 @oggpack_read(i32* %250, i32 6)
  %252 = add nsw i32 %251, 1
  %253 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %253, i32 0, i32 7
  store i32 %252, i32* %254, align 8
  store i32 0, i32* %7, align 4
  br label %255

255:                                              ; preds = %322, %249
  %256 = load i32, i32* %7, align 4
  %257 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %258 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %257, i32 0, i32 7
  %259 = load i32, i32* %258, align 8
  %260 = icmp slt i32 %256, %259
  br i1 %260, label %261, label %325

261:                                              ; preds = %255
  %262 = load i32*, i32** %5, align 8
  %263 = call i32 @oggpack_read(i32* %262, i32 16)
  %264 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %265 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %264, i32 0, i32 8
  %266 = load i32*, i32** %265, align 8
  %267 = load i32, i32* %7, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %266, i64 %268
  store i32 %263, i32* %269, align 4
  %270 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %271 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %270, i32 0, i32 8
  %272 = load i32*, i32** %271, align 8
  %273 = load i32, i32* %7, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %272, i64 %274
  %276 = load i32, i32* %275, align 4
  %277 = icmp slt i32 %276, 0
  br i1 %277, label %288, label %278

278:                                              ; preds = %261
  %279 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %280 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %279, i32 0, i32 8
  %281 = load i32*, i32** %280, align 8
  %282 = load i32, i32* %7, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32, i32* %281, i64 %283
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* @VI_MAPB, align 4
  %287 = icmp sge i32 %285, %286
  br i1 %287, label %288, label %289

288:                                              ; preds = %278, %261
  br label %438

289:                                              ; preds = %278
  %290 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @_mapping_P, align 8
  %291 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %292 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %291, i32 0, i32 8
  %293 = load i32*, i32** %292, align 8
  %294 = load i32, i32* %7, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %293, i64 %295
  %297 = load i32, i32* %296, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %290, i64 %298
  %300 = load %struct.TYPE_12__*, %struct.TYPE_12__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %300, i32 0, i32 0
  %302 = load i32 (%struct.TYPE_15__*, i32*)*, i32 (%struct.TYPE_15__*, i32*)** %301, align 8
  %303 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %304 = load i32*, i32** %5, align 8
  %305 = call i32 %302(%struct.TYPE_15__* %303, i32* %304)
  %306 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %307 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %306, i32 0, i32 11
  %308 = load i32*, i32** %307, align 8
  %309 = load i32, i32* %7, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32, i32* %308, i64 %310
  store i32 %305, i32* %311, align 4
  %312 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %313 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %312, i32 0, i32 11
  %314 = load i32*, i32** %313, align 8
  %315 = load i32, i32* %7, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i32, i32* %314, i64 %316
  %318 = load i32, i32* %317, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %321, label %320

320:                                              ; preds = %289
  br label %438

321:                                              ; preds = %289
  br label %322

322:                                              ; preds = %321
  %323 = load i32, i32* %7, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %7, align 4
  br label %255

325:                                              ; preds = %255
  %326 = load i32*, i32** %5, align 8
  %327 = call i32 @oggpack_read(i32* %326, i32 6)
  %328 = add nsw i32 %327, 1
  %329 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %330 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %329, i32 0, i32 9
  store i32 %328, i32* %330, align 8
  store i32 0, i32* %7, align 4
  br label %331

331:                                              ; preds = %429, %325
  %332 = load i32, i32* %7, align 4
  %333 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %334 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %333, i32 0, i32 9
  %335 = load i32, i32* %334, align 8
  %336 = icmp slt i32 %332, %335
  br i1 %336, label %337, label %432

337:                                              ; preds = %331
  %338 = call i64 @_ogg_calloc(i32 1, i32 16)
  %339 = inttoptr i64 %338 to %struct.TYPE_14__*
  %340 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %341 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %340, i32 0, i32 10
  %342 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %341, align 8
  %343 = load i32, i32* %7, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %342, i64 %344
  store %struct.TYPE_14__* %339, %struct.TYPE_14__** %345, align 8
  %346 = load i32*, i32** %5, align 8
  %347 = call i32 @oggpack_read(i32* %346, i32 1)
  %348 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %349 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %348, i32 0, i32 10
  %350 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %349, align 8
  %351 = load i32, i32* %7, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %350, i64 %352
  %354 = load %struct.TYPE_14__*, %struct.TYPE_14__** %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %354, i32 0, i32 0
  store i32 %347, i32* %355, align 4
  %356 = load i32*, i32** %5, align 8
  %357 = call i32 @oggpack_read(i32* %356, i32 16)
  %358 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %359 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %358, i32 0, i32 10
  %360 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %359, align 8
  %361 = load i32, i32* %7, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %360, i64 %362
  %364 = load %struct.TYPE_14__*, %struct.TYPE_14__** %363, align 8
  %365 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %364, i32 0, i32 1
  store i32 %357, i32* %365, align 4
  %366 = load i32*, i32** %5, align 8
  %367 = call i32 @oggpack_read(i32* %366, i32 16)
  %368 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %369 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %368, i32 0, i32 10
  %370 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %369, align 8
  %371 = load i32, i32* %7, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %370, i64 %372
  %374 = load %struct.TYPE_14__*, %struct.TYPE_14__** %373, align 8
  %375 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %374, i32 0, i32 2
  store i32 %367, i32* %375, align 4
  %376 = load i32*, i32** %5, align 8
  %377 = call i32 @oggpack_read(i32* %376, i32 8)
  %378 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %379 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %378, i32 0, i32 10
  %380 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %379, align 8
  %381 = load i32, i32* %7, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %380, i64 %382
  %384 = load %struct.TYPE_14__*, %struct.TYPE_14__** %383, align 8
  %385 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %384, i32 0, i32 3
  store i32 %377, i32* %385, align 4
  %386 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %387 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %386, i32 0, i32 10
  %388 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %387, align 8
  %389 = load i32, i32* %7, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %388, i64 %390
  %392 = load %struct.TYPE_14__*, %struct.TYPE_14__** %391, align 8
  %393 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %392, i32 0, i32 1
  %394 = load i32, i32* %393, align 4
  %395 = sext i32 %394 to i64
  %396 = load i64, i64* @VI_WINDOWB, align 8
  %397 = icmp sge i64 %395, %396
  br i1 %397, label %398, label %399

398:                                              ; preds = %337
  br label %438

399:                                              ; preds = %337
  %400 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %401 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %400, i32 0, i32 10
  %402 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %401, align 8
  %403 = load i32, i32* %7, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %402, i64 %404
  %406 = load %struct.TYPE_14__*, %struct.TYPE_14__** %405, align 8
  %407 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %406, i32 0, i32 2
  %408 = load i32, i32* %407, align 4
  %409 = sext i32 %408 to i64
  %410 = load i64, i64* @VI_WINDOWB, align 8
  %411 = icmp sge i64 %409, %410
  br i1 %411, label %412, label %413

412:                                              ; preds = %399
  br label %438

413:                                              ; preds = %399
  %414 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %415 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %414, i32 0, i32 10
  %416 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %415, align 8
  %417 = load i32, i32* %7, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %416, i64 %418
  %420 = load %struct.TYPE_14__*, %struct.TYPE_14__** %419, align 8
  %421 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %420, i32 0, i32 3
  %422 = load i32, i32* %421, align 4
  %423 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %424 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %423, i32 0, i32 7
  %425 = load i32, i32* %424, align 8
  %426 = icmp sge i32 %422, %425
  br i1 %426, label %427, label %428

427:                                              ; preds = %413
  br label %438

428:                                              ; preds = %413
  br label %429

429:                                              ; preds = %428
  %430 = load i32, i32* %7, align 4
  %431 = add nsw i32 %430, 1
  store i32 %431, i32* %7, align 4
  br label %331

432:                                              ; preds = %331
  %433 = load i32*, i32** %5, align 8
  %434 = call i32 @oggpack_read(i32* %433, i32 1)
  %435 = icmp ne i32 %434, 1
  br i1 %435, label %436, label %437

436:                                              ; preds = %432
  br label %438

437:                                              ; preds = %432
  store i32 0, i32* %3, align 4
  br label %442

438:                                              ; preds = %436, %427, %412, %398, %320, %288, %244, %212, %168, %136, %92, %47
  %439 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %440 = call i32 @vorbis_info_clear(%struct.TYPE_15__* %439)
  %441 = load i32, i32* @OV_EBADHEADER, align 4
  store i32 %441, i32* %3, align 4
  br label %442

442:                                              ; preds = %438, %437, %14
  %443 = load i32, i32* %3, align 4
  ret i32 %443
}

declare dso_local i32 @oggpack_read(i32*, i32) #1

declare dso_local i64 @_ogg_calloc(i32, i32) #1

declare dso_local i64 @vorbis_staticbook_unpack(i32*, i32*) #1

declare dso_local i32 @vorbis_info_clear(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
