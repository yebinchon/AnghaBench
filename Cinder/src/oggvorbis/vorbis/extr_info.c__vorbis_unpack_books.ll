; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_info.c__vorbis_unpack_books.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_info.c__vorbis_unpack_books.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 (%struct.TYPE_14__*, i32*)* }
%struct.TYPE_14__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, i32*, i32, i32*, i32, i32*, i32, %struct.TYPE_17__**, i32*, i32*, i32*, i32* }
%struct.TYPE_17__ = type { i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32 (%struct.TYPE_14__*, i32*)* }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_14__*, i32*)* }

@OV_EFAULT = common dso_local global i32 0, align 4
@VI_TIMEB = common dso_local global i32 0, align 4
@VI_FLOORB = common dso_local global i32 0, align 4
@_floor_P = common dso_local global %struct.TYPE_13__** null, align 8
@VI_RESB = common dso_local global i32 0, align 4
@_residue_P = common dso_local global %struct.TYPE_16__** null, align 8
@VI_MAPB = common dso_local global i32 0, align 4
@_mapping_P = common dso_local global %struct.TYPE_12__** null, align 8
@VI_WINDOWB = common dso_local global i32 0, align 4
@OV_EBADHEADER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32*)* @_vorbis_unpack_books to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_vorbis_unpack_books(%struct.TYPE_14__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  store %struct.TYPE_15__* %12, %struct.TYPE_15__** %6, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %14 = icmp ne %struct.TYPE_15__* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @OV_EFAULT, align 4
  store i32 %16, i32* %3, align 4
  br label %461

17:                                               ; preds = %2
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @oggpack_read(i32* %18, i32 8)
  %20 = add nsw i32 %19, 1
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sle i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  br label %457

28:                                               ; preds = %17
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %54, %28
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %57

35:                                               ; preds = %29
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @vorbis_staticbook_unpack(i32* %36)
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 12
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32 %37, i32* %43, align 4
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 12
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %35
  br label %457

53:                                               ; preds = %35
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %29

57:                                               ; preds = %29
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 @oggpack_read(i32* %58, i32 6)
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp sle i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %457

64:                                               ; preds = %57
  store i32 0, i32* %7, align 4
  br label %65

65:                                               ; preds = %80, %64
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %83

69:                                               ; preds = %65
  %70 = load i32*, i32** %5, align 8
  %71 = call i32 @oggpack_read(i32* %70, i32 16)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @VI_TIMEB, align 4
  %77 = icmp sge i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %74, %69
  br label %457

79:                                               ; preds = %74
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %7, align 4
  br label %65

83:                                               ; preds = %65
  %84 = load i32*, i32** %5, align 8
  %85 = call i32 @oggpack_read(i32* %84, i32 6)
  %86 = add nsw i32 %85, 1
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp sle i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %83
  br label %457

94:                                               ; preds = %83
  store i32 0, i32* %7, align 4
  br label %95

95:                                               ; preds = %162, %94
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %165

101:                                              ; preds = %95
  %102 = load i32*, i32** %5, align 8
  %103 = call i32 @oggpack_read(i32* %102, i32 16)
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  store i32 %103, i32* %109, align 4
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %7, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %128, label %118

118:                                              ; preds = %101
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 2
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %7, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @VI_FLOORB, align 4
  %127 = icmp sge i32 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %118, %101
  br label %457

129:                                              ; preds = %118
  %130 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @_floor_P, align 8
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %7, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %130, i64 %138
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 0
  %142 = load i32 (%struct.TYPE_14__*, i32*)*, i32 (%struct.TYPE_14__*, i32*)** %141, align 8
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %144 = load i32*, i32** %5, align 8
  %145 = call i32 %142(%struct.TYPE_14__* %143, i32* %144)
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 11
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %7, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  store i32 %145, i32* %151, align 4
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 11
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %7, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %129
  br label %457

161:                                              ; preds = %129
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %7, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %7, align 4
  br label %95

165:                                              ; preds = %95
  %166 = load i32*, i32** %5, align 8
  %167 = call i32 @oggpack_read(i32* %166, i32 6)
  %168 = add nsw i32 %167, 1
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 3
  store i32 %168, i32* %170, align 8
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 8
  %174 = icmp sle i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %165
  br label %457

176:                                              ; preds = %165
  store i32 0, i32* %7, align 4
  br label %177

177:                                              ; preds = %244, %176
  %178 = load i32, i32* %7, align 4
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = icmp slt i32 %178, %181
  br i1 %182, label %183, label %247

183:                                              ; preds = %177
  %184 = load i32*, i32** %5, align 8
  %185 = call i32 @oggpack_read(i32* %184, i32 16)
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 4
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* %7, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  store i32 %185, i32* %191, align 4
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 4
  %194 = load i32*, i32** %193, align 8
  %195 = load i32, i32* %7, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %194, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = icmp slt i32 %198, 0
  br i1 %199, label %210, label %200

200:                                              ; preds = %183
  %201 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %201, i32 0, i32 4
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* %7, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @VI_RESB, align 4
  %209 = icmp sge i32 %207, %208
  br i1 %209, label %210, label %211

210:                                              ; preds = %200, %183
  br label %457

211:                                              ; preds = %200
  %212 = load %struct.TYPE_16__**, %struct.TYPE_16__*** @_residue_P, align 8
  %213 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %213, i32 0, i32 4
  %215 = load i32*, i32** %214, align 8
  %216 = load i32, i32* %7, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %212, i64 %220
  %222 = load %struct.TYPE_16__*, %struct.TYPE_16__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %222, i32 0, i32 0
  %224 = load i32 (%struct.TYPE_14__*, i32*)*, i32 (%struct.TYPE_14__*, i32*)** %223, align 8
  %225 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %226 = load i32*, i32** %5, align 8
  %227 = call i32 %224(%struct.TYPE_14__* %225, i32* %226)
  %228 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %228, i32 0, i32 10
  %230 = load i32*, i32** %229, align 8
  %231 = load i32, i32* %7, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %230, i64 %232
  store i32 %227, i32* %233, align 4
  %234 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %235 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %234, i32 0, i32 10
  %236 = load i32*, i32** %235, align 8
  %237 = load i32, i32* %7, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %243, label %242

242:                                              ; preds = %211
  br label %457

243:                                              ; preds = %211
  br label %244

244:                                              ; preds = %243
  %245 = load i32, i32* %7, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %7, align 4
  br label %177

247:                                              ; preds = %177
  %248 = load i32*, i32** %5, align 8
  %249 = call i32 @oggpack_read(i32* %248, i32 6)
  %250 = add nsw i32 %249, 1
  %251 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %251, i32 0, i32 5
  store i32 %250, i32* %252, align 8
  %253 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %253, i32 0, i32 5
  %255 = load i32, i32* %254, align 8
  %256 = icmp sle i32 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %247
  br label %457

258:                                              ; preds = %247
  store i32 0, i32* %7, align 4
  br label %259

259:                                              ; preds = %326, %258
  %260 = load i32, i32* %7, align 4
  %261 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %262 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %261, i32 0, i32 5
  %263 = load i32, i32* %262, align 8
  %264 = icmp slt i32 %260, %263
  br i1 %264, label %265, label %329

265:                                              ; preds = %259
  %266 = load i32*, i32** %5, align 8
  %267 = call i32 @oggpack_read(i32* %266, i32 16)
  %268 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %269 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %268, i32 0, i32 6
  %270 = load i32*, i32** %269, align 8
  %271 = load i32, i32* %7, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %270, i64 %272
  store i32 %267, i32* %273, align 4
  %274 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %275 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %274, i32 0, i32 6
  %276 = load i32*, i32** %275, align 8
  %277 = load i32, i32* %7, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %276, i64 %278
  %280 = load i32, i32* %279, align 4
  %281 = icmp slt i32 %280, 0
  br i1 %281, label %292, label %282

282:                                              ; preds = %265
  %283 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %284 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %283, i32 0, i32 6
  %285 = load i32*, i32** %284, align 8
  %286 = load i32, i32* %7, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %285, i64 %287
  %289 = load i32, i32* %288, align 4
  %290 = load i32, i32* @VI_MAPB, align 4
  %291 = icmp sge i32 %289, %290
  br i1 %291, label %292, label %293

292:                                              ; preds = %282, %265
  br label %457

293:                                              ; preds = %282
  %294 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @_mapping_P, align 8
  %295 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %296 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %295, i32 0, i32 6
  %297 = load i32*, i32** %296, align 8
  %298 = load i32, i32* %7, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i32, i32* %297, i64 %299
  %301 = load i32, i32* %300, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %294, i64 %302
  %304 = load %struct.TYPE_12__*, %struct.TYPE_12__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %304, i32 0, i32 0
  %306 = load i32 (%struct.TYPE_14__*, i32*)*, i32 (%struct.TYPE_14__*, i32*)** %305, align 8
  %307 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %308 = load i32*, i32** %5, align 8
  %309 = call i32 %306(%struct.TYPE_14__* %307, i32* %308)
  %310 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %311 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %310, i32 0, i32 9
  %312 = load i32*, i32** %311, align 8
  %313 = load i32, i32* %7, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i32, i32* %312, i64 %314
  store i32 %309, i32* %315, align 4
  %316 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %317 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %316, i32 0, i32 9
  %318 = load i32*, i32** %317, align 8
  %319 = load i32, i32* %7, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32, i32* %318, i64 %320
  %322 = load i32, i32* %321, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %325, label %324

324:                                              ; preds = %293
  br label %457

325:                                              ; preds = %293
  br label %326

326:                                              ; preds = %325
  %327 = load i32, i32* %7, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %7, align 4
  br label %259

329:                                              ; preds = %259
  %330 = load i32*, i32** %5, align 8
  %331 = call i32 @oggpack_read(i32* %330, i32 6)
  %332 = add nsw i32 %331, 1
  %333 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %334 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %333, i32 0, i32 7
  store i32 %332, i32* %334, align 8
  %335 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %336 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %335, i32 0, i32 7
  %337 = load i32, i32* %336, align 8
  %338 = icmp sle i32 %337, 0
  br i1 %338, label %339, label %340

339:                                              ; preds = %329
  br label %457

340:                                              ; preds = %329
  store i32 0, i32* %7, align 4
  br label %341

341:                                              ; preds = %448, %340
  %342 = load i32, i32* %7, align 4
  %343 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %344 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %343, i32 0, i32 7
  %345 = load i32, i32* %344, align 8
  %346 = icmp slt i32 %342, %345
  br i1 %346, label %347, label %451

347:                                              ; preds = %341
  %348 = call %struct.TYPE_17__* @_ogg_calloc(i32 1, i32 16)
  %349 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %350 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %349, i32 0, i32 8
  %351 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %350, align 8
  %352 = load i32, i32* %7, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %351, i64 %353
  store %struct.TYPE_17__* %348, %struct.TYPE_17__** %354, align 8
  %355 = load i32*, i32** %5, align 8
  %356 = call i32 @oggpack_read(i32* %355, i32 1)
  %357 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %358 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %357, i32 0, i32 8
  %359 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %358, align 8
  %360 = load i32, i32* %7, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %359, i64 %361
  %363 = load %struct.TYPE_17__*, %struct.TYPE_17__** %362, align 8
  %364 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %363, i32 0, i32 0
  store i32 %356, i32* %364, align 4
  %365 = load i32*, i32** %5, align 8
  %366 = call i32 @oggpack_read(i32* %365, i32 16)
  %367 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %368 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %367, i32 0, i32 8
  %369 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %368, align 8
  %370 = load i32, i32* %7, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %369, i64 %371
  %373 = load %struct.TYPE_17__*, %struct.TYPE_17__** %372, align 8
  %374 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %373, i32 0, i32 1
  store i32 %366, i32* %374, align 4
  %375 = load i32*, i32** %5, align 8
  %376 = call i32 @oggpack_read(i32* %375, i32 16)
  %377 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %378 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %377, i32 0, i32 8
  %379 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %378, align 8
  %380 = load i32, i32* %7, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %379, i64 %381
  %383 = load %struct.TYPE_17__*, %struct.TYPE_17__** %382, align 8
  %384 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %383, i32 0, i32 2
  store i32 %376, i32* %384, align 4
  %385 = load i32*, i32** %5, align 8
  %386 = call i32 @oggpack_read(i32* %385, i32 8)
  %387 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %388 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %387, i32 0, i32 8
  %389 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %388, align 8
  %390 = load i32, i32* %7, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %389, i64 %391
  %393 = load %struct.TYPE_17__*, %struct.TYPE_17__** %392, align 8
  %394 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %393, i32 0, i32 3
  store i32 %386, i32* %394, align 4
  %395 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %396 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %395, i32 0, i32 8
  %397 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %396, align 8
  %398 = load i32, i32* %7, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %397, i64 %399
  %401 = load %struct.TYPE_17__*, %struct.TYPE_17__** %400, align 8
  %402 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %401, i32 0, i32 1
  %403 = load i32, i32* %402, align 4
  %404 = load i32, i32* @VI_WINDOWB, align 4
  %405 = icmp sge i32 %403, %404
  br i1 %405, label %406, label %407

406:                                              ; preds = %347
  br label %457

407:                                              ; preds = %347
  %408 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %409 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %408, i32 0, i32 8
  %410 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %409, align 8
  %411 = load i32, i32* %7, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %410, i64 %412
  %414 = load %struct.TYPE_17__*, %struct.TYPE_17__** %413, align 8
  %415 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %414, i32 0, i32 2
  %416 = load i32, i32* %415, align 4
  %417 = load i32, i32* @VI_WINDOWB, align 4
  %418 = icmp sge i32 %416, %417
  br i1 %418, label %419, label %420

419:                                              ; preds = %407
  br label %457

420:                                              ; preds = %407
  %421 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %422 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %421, i32 0, i32 8
  %423 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %422, align 8
  %424 = load i32, i32* %7, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %423, i64 %425
  %427 = load %struct.TYPE_17__*, %struct.TYPE_17__** %426, align 8
  %428 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %427, i32 0, i32 3
  %429 = load i32, i32* %428, align 4
  %430 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %431 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %430, i32 0, i32 5
  %432 = load i32, i32* %431, align 8
  %433 = icmp sge i32 %429, %432
  br i1 %433, label %434, label %435

434:                                              ; preds = %420
  br label %457

435:                                              ; preds = %420
  %436 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %437 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %436, i32 0, i32 8
  %438 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %437, align 8
  %439 = load i32, i32* %7, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %438, i64 %440
  %442 = load %struct.TYPE_17__*, %struct.TYPE_17__** %441, align 8
  %443 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %442, i32 0, i32 3
  %444 = load i32, i32* %443, align 4
  %445 = icmp slt i32 %444, 0
  br i1 %445, label %446, label %447

446:                                              ; preds = %435
  br label %457

447:                                              ; preds = %435
  br label %448

448:                                              ; preds = %447
  %449 = load i32, i32* %7, align 4
  %450 = add nsw i32 %449, 1
  store i32 %450, i32* %7, align 4
  br label %341

451:                                              ; preds = %341
  %452 = load i32*, i32** %5, align 8
  %453 = call i32 @oggpack_read(i32* %452, i32 1)
  %454 = icmp ne i32 %453, 1
  br i1 %454, label %455, label %456

455:                                              ; preds = %451
  br label %457

456:                                              ; preds = %451
  store i32 0, i32* %3, align 4
  br label %461

457:                                              ; preds = %455, %446, %434, %419, %406, %339, %324, %292, %257, %242, %210, %175, %160, %128, %93, %78, %63, %52, %27
  %458 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %459 = call i32 @vorbis_info_clear(%struct.TYPE_14__* %458)
  %460 = load i32, i32* @OV_EBADHEADER, align 4
  store i32 %460, i32* %3, align 4
  br label %461

461:                                              ; preds = %457, %456, %15
  %462 = load i32, i32* %3, align 4
  ret i32 %462
}

declare dso_local i32 @oggpack_read(i32*, i32) #1

declare dso_local i32 @vorbis_staticbook_unpack(i32*) #1

declare dso_local %struct.TYPE_17__* @_ogg_calloc(i32, i32) #1

declare dso_local i32 @vorbis_info_clear(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
