; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vp9mvs.c_ff_vp9_fill_mv.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vp9mvs.c_ff_vp9_fill_mv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_20__, i32, %struct.TYPE_23__*, %struct.TYPE_22__* }
%struct.TYPE_20__ = type { i32* }
%struct.TYPE_23__ = type { i32*, i64 }
%struct.TYPE_22__ = type { %struct.TYPE_19__, %struct.TYPE_17__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_24__ = type { i32, i32 }

@ZEROMV = common dso_local global i32 0, align 4
@NEARMV = common dso_local global i32 0, align 4
@NEWMV = common dso_local global i32 0, align 4
@ff_vp9_mv_joint_tree = common dso_local global i32 0, align 4
@MV_JOINT_V = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_vp9_fill_mv(%struct.TYPE_21__* %0, %struct.TYPE_24__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  store %struct.TYPE_22__* %16, %struct.TYPE_22__** %9, align 8
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  store %struct.TYPE_23__* %19, %struct.TYPE_23__** %10, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @ZEROMV, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %25 = call i32 @AV_ZERO64(%struct.TYPE_24__* %24)
  br label %351

26:                                               ; preds = %4
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i64 0
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @NEARMV, align 4
  %37 = icmp eq i32 %35, %36
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @NEWMV, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %26
  br label %45

43:                                               ; preds = %26
  %44 = load i32, i32* %8, align 4
  br label %45

45:                                               ; preds = %43, %42
  %46 = phi i32 [ -1, %42 ], [ %44, %43 ]
  %47 = call i32 @find_ref_mvs(%struct.TYPE_21__* %27, %struct.TYPE_24__* %29, i32 %34, i32 0, i32 %38, i32 %46)
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @NEWMV, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %54, label %51

51:                                               ; preds = %45
  %52 = load i32, i32* %8, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %131

54:                                               ; preds = %51, %45
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %54
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %62, i64 0
  %64 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @abs(i32 %65) #3
  %67 = icmp slt i32 %66, 64
  br i1 %67, label %68, label %75

68:                                               ; preds = %61
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %69, i64 0
  %71 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @abs(i32 %72) #3
  %74 = icmp slt i32 %73, 64
  br label %75

75:                                               ; preds = %68, %61, %54
  %76 = phi i1 [ false, %61 ], [ false, %54 ], [ %74, %68 ]
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %11, align 4
  br i1 %76, label %131, label %78

78:                                               ; preds = %75
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %79, i64 0
  %81 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, 1
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %104

85:                                               ; preds = %78
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i64 0
  %88 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %85
  %92 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %92, i64 0
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  br label %103

97:                                               ; preds = %85
  %98 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %98, i64 0
  %100 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %97, %91
  br label %104

104:                                              ; preds = %103, %78
  %105 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %105, i64 0
  %107 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, 1
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %130

111:                                              ; preds = %104
  %112 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %112, i64 0
  %114 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %111
  %118 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %118, i64 0
  %120 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 4
  br label %129

123:                                              ; preds = %111
  %124 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %124, i64 0
  %126 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, -1
  store i32 %128, i32* %126, align 4
  br label %129

129:                                              ; preds = %123, %117
  br label %130

130:                                              ; preds = %129, %104
  br label %131

131:                                              ; preds = %130, %75, %51
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* @NEWMV, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %185

135:                                              ; preds = %131
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @ff_vp9_mv_joint_tree, align 4
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @vp8_rac_get_tree(i32 %138, i32 %139, i32 %144)
  store i32 %145, i32* %12, align 4
  %146 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %12, align 4
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %152, align 4
  %155 = load i32, i32* %12, align 4
  %156 = load i32, i32* @MV_JOINT_V, align 4
  %157 = icmp uge i32 %155, %156
  br i1 %157, label %158, label %169

158:                                              ; preds = %135
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %160 = load i32, i32* %11, align 4
  %161 = call i64 @read_mv_component(%struct.TYPE_21__* %159, i32 0, i32 %160)
  %162 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %162, i64 0
  %164 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = sext i32 %165 to i64
  %167 = add nsw i64 %166, %161
  %168 = trunc i64 %167 to i32
  store i32 %168, i32* %164, align 4
  br label %169

169:                                              ; preds = %158, %135
  %170 = load i32, i32* %12, align 4
  %171 = and i32 %170, 1
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %184

173:                                              ; preds = %169
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %175 = load i32, i32* %11, align 4
  %176 = call i64 @read_mv_component(%struct.TYPE_21__* %174, i32 1, i32 %175)
  %177 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %177, i64 0
  %179 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = sext i32 %180 to i64
  %182 = add nsw i64 %181, %176
  %183 = trunc i64 %182 to i32
  store i32 %183, i32* %179, align 4
  br label %184

184:                                              ; preds = %173, %169
  br label %185

185:                                              ; preds = %184, %131
  %186 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %350

190:                                              ; preds = %185
  %191 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %192 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %192, i64 1
  %194 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %195 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %194, i32 0, i32 0
  %196 = load i32*, i32** %195, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 1
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* %7, align 4
  %200 = load i32, i32* @NEARMV, align 4
  %201 = icmp eq i32 %199, %200
  %202 = zext i1 %201 to i32
  %203 = load i32, i32* %7, align 4
  %204 = load i32, i32* @NEWMV, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %206, label %207

206:                                              ; preds = %190
  br label %209

207:                                              ; preds = %190
  %208 = load i32, i32* %8, align 4
  br label %209

209:                                              ; preds = %207, %206
  %210 = phi i32 [ -1, %206 ], [ %208, %207 ]
  %211 = call i32 @find_ref_mvs(%struct.TYPE_21__* %191, %struct.TYPE_24__* %193, i32 %198, i32 1, i32 %202, i32 %210)
  %212 = load i32, i32* %7, align 4
  %213 = load i32, i32* @NEWMV, align 4
  %214 = icmp eq i32 %212, %213
  br i1 %214, label %218, label %215

215:                                              ; preds = %209
  %216 = load i32, i32* %8, align 4
  %217 = icmp eq i32 %216, -1
  br i1 %217, label %218, label %295

218:                                              ; preds = %215, %209
  %219 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %220 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %239

225:                                              ; preds = %218
  %226 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %226, i64 1
  %228 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @abs(i32 %229) #3
  %231 = icmp slt i32 %230, 64
  br i1 %231, label %232, label %239

232:                                              ; preds = %225
  %233 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %233, i64 1
  %235 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @abs(i32 %236) #3
  %238 = icmp slt i32 %237, 64
  br label %239

239:                                              ; preds = %232, %225, %218
  %240 = phi i1 [ false, %225 ], [ false, %218 ], [ %238, %232 ]
  %241 = zext i1 %240 to i32
  store i32 %241, i32* %11, align 4
  br i1 %240, label %295, label %242

242:                                              ; preds = %239
  %243 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %243, i64 1
  %245 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = and i32 %246, 1
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %268

249:                                              ; preds = %242
  %250 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %250, i64 1
  %252 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = icmp slt i32 %253, 0
  br i1 %254, label %255, label %261

255:                                              ; preds = %249
  %256 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %256, i64 1
  %258 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %258, align 4
  br label %267

261:                                              ; preds = %249
  %262 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %263 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %262, i64 1
  %264 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = add nsw i32 %265, -1
  store i32 %266, i32* %264, align 4
  br label %267

267:                                              ; preds = %261, %255
  br label %268

268:                                              ; preds = %267, %242
  %269 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %270 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %269, i64 1
  %271 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = and i32 %272, 1
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %294

275:                                              ; preds = %268
  %276 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %277 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %276, i64 1
  %278 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = icmp slt i32 %279, 0
  br i1 %280, label %281, label %287

281:                                              ; preds = %275
  %282 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %283 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %282, i64 1
  %284 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %284, align 4
  br label %293

287:                                              ; preds = %275
  %288 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %289 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %288, i64 1
  %290 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = add nsw i32 %291, -1
  store i32 %292, i32* %290, align 4
  br label %293

293:                                              ; preds = %287, %281
  br label %294

294:                                              ; preds = %293, %268
  br label %295

295:                                              ; preds = %294, %239, %215
  %296 = load i32, i32* %7, align 4
  %297 = load i32, i32* @NEWMV, align 4
  %298 = icmp eq i32 %296, %297
  br i1 %298, label %299, label %349

299:                                              ; preds = %295
  %300 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %301 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 8
  %303 = load i32, i32* @ff_vp9_mv_joint_tree, align 4
  %304 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %305 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = call i32 @vp8_rac_get_tree(i32 %302, i32 %303, i32 %308)
  store i32 %309, i32* %13, align 4
  %310 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %311 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %311, i32 0, i32 0
  %313 = load i32*, i32** %312, align 8
  %314 = load i32, i32* %13, align 4
  %315 = zext i32 %314 to i64
  %316 = getelementptr inbounds i32, i32* %313, i64 %315
  %317 = load i32, i32* %316, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %316, align 4
  %319 = load i32, i32* %13, align 4
  %320 = load i32, i32* @MV_JOINT_V, align 4
  %321 = icmp uge i32 %319, %320
  br i1 %321, label %322, label %333

322:                                              ; preds = %299
  %323 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %324 = load i32, i32* %11, align 4
  %325 = call i64 @read_mv_component(%struct.TYPE_21__* %323, i32 0, i32 %324)
  %326 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %327 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %326, i64 1
  %328 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %327, i32 0, i32 1
  %329 = load i32, i32* %328, align 4
  %330 = sext i32 %329 to i64
  %331 = add nsw i64 %330, %325
  %332 = trunc i64 %331 to i32
  store i32 %332, i32* %328, align 4
  br label %333

333:                                              ; preds = %322, %299
  %334 = load i32, i32* %13, align 4
  %335 = and i32 %334, 1
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %348

337:                                              ; preds = %333
  %338 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %339 = load i32, i32* %11, align 4
  %340 = call i64 @read_mv_component(%struct.TYPE_21__* %338, i32 1, i32 %339)
  %341 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %342 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %341, i64 1
  %343 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 4
  %345 = sext i32 %344 to i64
  %346 = add nsw i64 %345, %340
  %347 = trunc i64 %346 to i32
  store i32 %347, i32* %343, align 4
  br label %348

348:                                              ; preds = %337, %333
  br label %349

349:                                              ; preds = %348, %295
  br label %350

350:                                              ; preds = %349, %185
  br label %351

351:                                              ; preds = %350, %23
  ret void
}

declare dso_local i32 @AV_ZERO64(%struct.TYPE_24__*) #1

declare dso_local i32 @find_ref_mvs(%struct.TYPE_21__*, %struct.TYPE_24__*, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @vp8_rac_get_tree(i32, i32, i32) #1

declare dso_local i64 @read_mv_component(%struct.TYPE_21__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
