; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vp9.c_decode_tiles.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vp9.c_decode_tiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_25__, %struct.TYPE_27__*, i32*, i32, i32, %struct.TYPE_26__* }
%struct.TYPE_25__ = type { %struct.TYPE_22__*, %struct.TYPE_24__ }
%struct.TYPE_22__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i32*, i64* }
%struct.TYPE_24__ = type { %struct.TYPE_21__, i64, i64, %struct.TYPE_23__ }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_23__ = type { i32, i32, i32, i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_26__ = type { i32, i32*, i32*, i32, i32, i32, i32, i32, i32 }

@CUR_FRAME = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@DC_PRED = common dso_local global i32 0, align 4
@NEARESTMV = common dso_local global i32 0, align 4
@BL_64X64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, i32*, i32)* @decode_tiles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_tiles(%struct.TYPE_19__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca %struct.TYPE_26__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_29__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_27__*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_28__*, %struct.TYPE_28__** %30, align 8
  store %struct.TYPE_28__* %31, %struct.TYPE_28__** %8, align 8
  %32 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %32, i32 0, i32 11
  %34 = load %struct.TYPE_26__*, %struct.TYPE_26__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %34, i64 0
  store %struct.TYPE_26__* %35, %struct.TYPE_26__** %9, align 8
  %36 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %36, i32 0, i32 6
  %38 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %38, align 8
  %40 = load i64, i64* @CUR_FRAME, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_29__*, %struct.TYPE_29__** %43, align 8
  store %struct.TYPE_29__* %44, %struct.TYPE_29__** %20, align 8
  %45 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  %46 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %23, align 4
  %50 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  %51 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %24, align 4
  %55 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %15, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %12, align 4
  br label %58

58:                                               ; preds = %518, %3
  %59 = load i32, i32* %12, align 4
  %60 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %60, i32 0, i32 6
  %62 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %59, %65
  br i1 %66, label %67, label %521

67:                                               ; preds = %58
  %68 = load i32, i32* %12, align 4
  %69 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %69, i32 0, i32 6
  %71 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %75, i32 0, i32 10
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @set_tile_offset(i32* %16, i32* %17, i32 %68, i32 %74, i32 %77)
  store i32 0, i32* %13, align 4
  br label %79

79:                                               ; preds = %174, %67
  %80 = load i32, i32* %13, align 4
  %81 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %81, i32 0, i32 6
  %83 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp slt i32 %80, %86
  br i1 %87, label %88, label %177

88:                                               ; preds = %79
  %89 = load i32, i32* %13, align 4
  %90 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %90, i32 0, i32 6
  %92 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = sub nsw i32 %95, 1
  %97 = icmp eq i32 %89, %96
  br i1 %97, label %98, label %110

98:                                               ; preds = %88
  %99 = load i32, i32* %12, align 4
  %100 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %100, i32 0, i32 6
  %102 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = sub nsw i32 %105, 1
  %107 = icmp eq i32 %99, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %98
  %109 = load i32, i32* %7, align 4
  store i32 %109, i32* %25, align 4
  br label %117

110:                                              ; preds = %98, %88
  %111 = load i32*, i32** %6, align 8
  %112 = call i32 @AV_RB32(i32* %111)
  store i32 %112, i32* %25, align 4
  %113 = load i32*, i32** %6, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 4
  store i32* %114, i32** %6, align 8
  %115 = load i32, i32* %7, align 4
  %116 = sub nsw i32 %115, 4
  store i32 %116, i32* %7, align 4
  br label %117

117:                                              ; preds = %110, %108
  %118 = load i32, i32* %25, align 4
  %119 = load i32, i32* %7, align 4
  %120 = icmp sgt i32 %118, %119
  br i1 %120, label %121, label %132

121:                                              ; preds = %117
  %122 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %122, i32 0, i32 6
  %124 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %124, align 8
  %126 = load i64, i64* @CUR_FRAME, align 8
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %125, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 0
  %129 = load i32, i32* @INT_MAX, align 4
  %130 = call i32 @ff_thread_report_progress(%struct.TYPE_20__* %128, i32 %129, i32 0)
  %131 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %131, i32* %4, align 4
  br label %522

132:                                              ; preds = %117
  %133 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %133, i32 0, i32 2
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %13, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32*, i32** %6, align 8
  %140 = load i32, i32* %25, align 4
  %141 = call i32 @ff_vp56_init_range_decoder(i32* %138, i32* %139, i32 %140)
  store i32 %141, i32* %14, align 4
  %142 = load i32, i32* %14, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %132
  %145 = load i32, i32* %14, align 4
  store i32 %145, i32* %4, align 4
  br label %522

146:                                              ; preds = %132
  %147 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %147, i32 0, i32 2
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %13, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = call i64 @vp56_rac_get_prob_branchy(i32* %152, i32 128)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %166

155:                                              ; preds = %146
  %156 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %156, i32 0, i32 6
  %158 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_22__*, %struct.TYPE_22__** %158, align 8
  %160 = load i64, i64* @CUR_FRAME, align 8
  %161 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %159, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %161, i32 0, i32 0
  %163 = load i32, i32* @INT_MAX, align 4
  %164 = call i32 @ff_thread_report_progress(%struct.TYPE_20__* %162, i32 %163, i32 0)
  %165 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %165, i32* %4, align 4
  br label %522

166:                                              ; preds = %146
  %167 = load i32, i32* %25, align 4
  %168 = load i32*, i32** %6, align 8
  %169 = sext i32 %167 to i64
  %170 = getelementptr inbounds i32, i32* %168, i64 %169
  store i32* %170, i32** %6, align 8
  %171 = load i32, i32* %25, align 4
  %172 = load i32, i32* %7, align 4
  %173 = sub nsw i32 %172, %171
  store i32 %173, i32* %7, align 4
  br label %174

174:                                              ; preds = %166
  %175 = load i32, i32* %13, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %13, align 4
  br label %79

177:                                              ; preds = %79
  %178 = load i32, i32* %16, align 4
  store i32 %178, i32* %10, align 4
  br label %179

179:                                              ; preds = %502, %177
  %180 = load i32, i32* %10, align 4
  %181 = load i32, i32* %17, align 4
  %182 = icmp slt i32 %180, %181
  br i1 %182, label %183, label %517

183:                                              ; preds = %179
  %184 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %184, i32 0, i32 7
  %186 = load %struct.TYPE_27__*, %struct.TYPE_27__** %185, align 8
  store %struct.TYPE_27__* %186, %struct.TYPE_27__** %26, align 8
  %187 = load i32, i32* %21, align 4
  store i32 %187, i32* %27, align 4
  %188 = load i32, i32* %22, align 4
  store i32 %188, i32* %28, align 4
  store i32 0, i32* %13, align 4
  br label %189

189:                                              ; preds = %338, %183
  %190 = load i32, i32* %13, align 4
  %191 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %191, i32 0, i32 6
  %193 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %193, i32 0, i32 3
  %195 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = icmp slt i32 %190, %196
  br i1 %197, label %198, label %341

198:                                              ; preds = %189
  %199 = load i32, i32* %13, align 4
  %200 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %201 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %200, i32 0, i32 6
  %202 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %202, i32 0, i32 3
  %204 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %206, i32 0, i32 9
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @set_tile_offset(i32* %18, i32* %19, i32 %199, i32 %205, i32 %208)
  %210 = load i32, i32* %18, align 4
  %211 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %212 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %211, i32 0, i32 0
  store i32 %210, i32* %212, align 8
  %213 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %214 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = icmp ne i32 %215, 2
  br i1 %216, label %217, label %272

217:                                              ; preds = %198
  %218 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %219 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %218, i32 0, i32 8
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @memset(i32 %220, i32 0, i32 8)
  %222 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %223 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %222, i32 0, i32 7
  %224 = load i32, i32* %223, align 8
  %225 = call i32 @memset(i32 %224, i32 0, i32 8)
  %226 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %227 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %226, i32 0, i32 6
  %228 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %228, i32 0, i32 2
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %239, label %232

232:                                              ; preds = %217
  %233 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %234 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %233, i32 0, i32 6
  %235 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %245

239:                                              ; preds = %232, %217
  %240 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %241 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %240, i32 0, i32 6
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @DC_PRED, align 4
  %244 = call i32 @memset(i32 %242, i32 %243, i32 16)
  br label %251

245:                                              ; preds = %232
  %246 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %247 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %246, i32 0, i32 6
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* @NEARESTMV, align 4
  %250 = call i32 @memset(i32 %248, i32 %249, i32 8)
  br label %251

251:                                              ; preds = %245, %239
  %252 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %253 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %252, i32 0, i32 5
  %254 = load i32, i32* %253, align 8
  %255 = call i32 @memset(i32 %254, i32 0, i32 16)
  %256 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %257 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %256, i32 0, i32 4
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @memset(i32 %258, i32 0, i32 32)
  %260 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %261 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %260, i32 0, i32 3
  %262 = load i32, i32* %261, align 8
  %263 = call i32 @memset(i32 %262, i32 0, i32 8)
  %264 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %265 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %264, i32 0, i32 2
  %266 = load i32*, i32** %265, align 8
  %267 = load i32, i32* %13, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %266, i64 %268
  %270 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %271 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %270, i32 0, i32 1
  store i32* %269, i32** %271, align 8
  br label %272

272:                                              ; preds = %251, %198
  %273 = load i32, i32* %18, align 4
  store i32 %273, i32* %11, align 4
  br label %274

274:                                              ; preds = %320, %272
  %275 = load i32, i32* %11, align 4
  %276 = load i32, i32* %19, align 4
  %277 = icmp slt i32 %275, %276
  br i1 %277, label %278, label %337

278:                                              ; preds = %274
  %279 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %280 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %279, i32 0, i32 2
  %281 = load i32, i32* %280, align 8
  %282 = icmp ne i32 %281, 1
  br i1 %282, label %283, label %288

283:                                              ; preds = %278
  %284 = load %struct.TYPE_27__*, %struct.TYPE_27__** %26, align 8
  %285 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = call i32 @memset(i32 %286, i32 0, i32 4)
  br label %288

288:                                              ; preds = %283, %278
  %289 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %290 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %289, i32 0, i32 2
  %291 = load i32, i32* %290, align 8
  %292 = icmp eq i32 %291, 2
  br i1 %292, label %293, label %302

293:                                              ; preds = %288
  %294 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %295 = load i32, i32* %10, align 4
  %296 = load i32, i32* %11, align 4
  %297 = load %struct.TYPE_27__*, %struct.TYPE_27__** %26, align 8
  %298 = load i32, i32* %27, align 4
  %299 = load i32, i32* %28, align 4
  %300 = load i32, i32* @BL_64X64, align 4
  %301 = call i32 @decode_sb_mem(%struct.TYPE_26__* %294, i32 %295, i32 %296, %struct.TYPE_27__* %297, i32 %298, i32 %299, i32 %300)
  br label %319

302:                                              ; preds = %288
  %303 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %304 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %303, i32 0, i32 1
  %305 = load i32*, i32** %304, align 8
  %306 = call i64 @vpX_rac_is_end(i32* %305)
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %310

308:                                              ; preds = %302
  %309 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %309, i32* %4, align 4
  br label %522

310:                                              ; preds = %302
  %311 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %312 = load i32, i32* %10, align 4
  %313 = load i32, i32* %11, align 4
  %314 = load %struct.TYPE_27__*, %struct.TYPE_27__** %26, align 8
  %315 = load i32, i32* %27, align 4
  %316 = load i32, i32* %28, align 4
  %317 = load i32, i32* @BL_64X64, align 4
  %318 = call i32 @decode_sb(%struct.TYPE_26__* %311, i32 %312, i32 %313, %struct.TYPE_27__* %314, i32 %315, i32 %316, i32 %317)
  br label %319

319:                                              ; preds = %310, %293
  br label %320

320:                                              ; preds = %319
  %321 = load i32, i32* %11, align 4
  %322 = add nsw i32 %321, 8
  store i32 %322, i32* %11, align 4
  %323 = load i32, i32* %15, align 4
  %324 = mul nsw i32 64, %323
  %325 = load i32, i32* %27, align 4
  %326 = add nsw i32 %325, %324
  store i32 %326, i32* %27, align 4
  %327 = load i32, i32* %15, align 4
  %328 = mul nsw i32 64, %327
  %329 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %330 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %329, i32 0, i32 3
  %331 = load i32, i32* %330, align 4
  %332 = ashr i32 %328, %331
  %333 = load i32, i32* %28, align 4
  %334 = add nsw i32 %333, %332
  store i32 %334, i32* %28, align 4
  %335 = load %struct.TYPE_27__*, %struct.TYPE_27__** %26, align 8
  %336 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %335, i32 1
  store %struct.TYPE_27__* %336, %struct.TYPE_27__** %26, align 8
  br label %274

337:                                              ; preds = %274
  br label %338

338:                                              ; preds = %337
  %339 = load i32, i32* %13, align 4
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %13, align 4
  br label %189

341:                                              ; preds = %189
  %342 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %343 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %342, i32 0, i32 2
  %344 = load i32, i32* %343, align 8
  %345 = icmp eq i32 %344, 1
  br i1 %345, label %346, label %347

346:                                              ; preds = %341
  br label %502

347:                                              ; preds = %341
  %348 = load i32, i32* %10, align 4
  %349 = add nsw i32 %348, 8
  %350 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %351 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %350, i32 0, i32 4
  %352 = load i32, i32* %351, align 8
  %353 = icmp slt i32 %349, %352
  br i1 %353, label %354, label %445

354:                                              ; preds = %347
  %355 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %356 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %355, i32 0, i32 8
  %357 = load i32*, i32** %356, align 8
  %358 = getelementptr inbounds i32, i32* %357, i64 0
  %359 = load i32, i32* %358, align 4
  %360 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  %361 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %360, i32 0, i32 1
  %362 = load i64*, i64** %361, align 8
  %363 = getelementptr inbounds i64, i64* %362, i64 0
  %364 = load i64, i64* %363, align 8
  %365 = load i32, i32* %21, align 4
  %366 = sext i32 %365 to i64
  %367 = add nsw i64 %364, %366
  %368 = load i32, i32* %23, align 4
  %369 = mul nsw i32 63, %368
  %370 = sext i32 %369 to i64
  %371 = add nsw i64 %367, %370
  %372 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %373 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %372, i32 0, i32 5
  %374 = load i32, i32* %373, align 4
  %375 = mul nsw i32 8, %374
  %376 = load i32, i32* %15, align 4
  %377 = mul nsw i32 %375, %376
  %378 = call i32 @memcpy(i32 %359, i64 %371, i32 %377)
  %379 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %380 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %379, i32 0, i32 8
  %381 = load i32*, i32** %380, align 8
  %382 = getelementptr inbounds i32, i32* %381, i64 1
  %383 = load i32, i32* %382, align 4
  %384 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  %385 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %384, i32 0, i32 1
  %386 = load i64*, i64** %385, align 8
  %387 = getelementptr inbounds i64, i64* %386, i64 1
  %388 = load i64, i64* %387, align 8
  %389 = load i32, i32* %22, align 4
  %390 = sext i32 %389 to i64
  %391 = add nsw i64 %388, %390
  %392 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %393 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %392, i32 0, i32 1
  %394 = load i32, i32* %393, align 4
  %395 = ashr i32 64, %394
  %396 = sub nsw i32 %395, 1
  %397 = load i32, i32* %24, align 4
  %398 = mul nsw i32 %396, %397
  %399 = sext i32 %398 to i64
  %400 = add nsw i64 %391, %399
  %401 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %402 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %401, i32 0, i32 5
  %403 = load i32, i32* %402, align 4
  %404 = mul nsw i32 8, %403
  %405 = load i32, i32* %15, align 4
  %406 = mul nsw i32 %404, %405
  %407 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %408 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %407, i32 0, i32 3
  %409 = load i32, i32* %408, align 4
  %410 = ashr i32 %406, %409
  %411 = call i32 @memcpy(i32 %383, i64 %400, i32 %410)
  %412 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %413 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %412, i32 0, i32 8
  %414 = load i32*, i32** %413, align 8
  %415 = getelementptr inbounds i32, i32* %414, i64 2
  %416 = load i32, i32* %415, align 4
  %417 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  %418 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %417, i32 0, i32 1
  %419 = load i64*, i64** %418, align 8
  %420 = getelementptr inbounds i64, i64* %419, i64 2
  %421 = load i64, i64* %420, align 8
  %422 = load i32, i32* %22, align 4
  %423 = sext i32 %422 to i64
  %424 = add nsw i64 %421, %423
  %425 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %426 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %425, i32 0, i32 1
  %427 = load i32, i32* %426, align 4
  %428 = ashr i32 64, %427
  %429 = sub nsw i32 %428, 1
  %430 = load i32, i32* %24, align 4
  %431 = mul nsw i32 %429, %430
  %432 = sext i32 %431 to i64
  %433 = add nsw i64 %424, %432
  %434 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %435 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %434, i32 0, i32 5
  %436 = load i32, i32* %435, align 4
  %437 = mul nsw i32 8, %436
  %438 = load i32, i32* %15, align 4
  %439 = mul nsw i32 %437, %438
  %440 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %441 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %440, i32 0, i32 3
  %442 = load i32, i32* %441, align 4
  %443 = ashr i32 %439, %442
  %444 = call i32 @memcpy(i32 %416, i64 %433, i32 %443)
  br label %445

445:                                              ; preds = %354, %347
  %446 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %447 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %446, i32 0, i32 6
  %448 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %447, i32 0, i32 1
  %449 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %448, i32 0, i32 0
  %450 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %449, i32 0, i32 0
  %451 = load i64, i64* %450, align 8
  %452 = icmp ne i64 %451, 0
  br i1 %452, label %453, label %491

453:                                              ; preds = %445
  %454 = load i32, i32* %21, align 4
  store i32 %454, i32* %27, align 4
  %455 = load i32, i32* %22, align 4
  store i32 %455, i32* %28, align 4
  %456 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %457 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %456, i32 0, i32 7
  %458 = load %struct.TYPE_27__*, %struct.TYPE_27__** %457, align 8
  store %struct.TYPE_27__* %458, %struct.TYPE_27__** %26, align 8
  store i32 0, i32* %11, align 4
  br label %459

459:                                              ; preds = %473, %453
  %460 = load i32, i32* %11, align 4
  %461 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %462 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %461, i32 0, i32 5
  %463 = load i32, i32* %462, align 4
  %464 = icmp slt i32 %460, %463
  br i1 %464, label %465, label %490

465:                                              ; preds = %459
  %466 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %467 = load %struct.TYPE_27__*, %struct.TYPE_27__** %26, align 8
  %468 = load i32, i32* %10, align 4
  %469 = load i32, i32* %11, align 4
  %470 = load i32, i32* %27, align 4
  %471 = load i32, i32* %28, align 4
  %472 = call i32 @ff_vp9_loopfilter_sb(%struct.TYPE_19__* %466, %struct.TYPE_27__* %467, i32 %468, i32 %469, i32 %470, i32 %471)
  br label %473

473:                                              ; preds = %465
  %474 = load i32, i32* %11, align 4
  %475 = add nsw i32 %474, 8
  store i32 %475, i32* %11, align 4
  %476 = load i32, i32* %15, align 4
  %477 = mul nsw i32 64, %476
  %478 = load i32, i32* %27, align 4
  %479 = add nsw i32 %478, %477
  store i32 %479, i32* %27, align 4
  %480 = load i32, i32* %15, align 4
  %481 = mul nsw i32 64, %480
  %482 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %483 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %482, i32 0, i32 3
  %484 = load i32, i32* %483, align 4
  %485 = ashr i32 %481, %484
  %486 = load i32, i32* %28, align 4
  %487 = add nsw i32 %486, %485
  store i32 %487, i32* %28, align 4
  %488 = load %struct.TYPE_27__*, %struct.TYPE_27__** %26, align 8
  %489 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %488, i32 1
  store %struct.TYPE_27__* %489, %struct.TYPE_27__** %26, align 8
  br label %459

490:                                              ; preds = %459
  br label %491

491:                                              ; preds = %490, %445
  %492 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %493 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %492, i32 0, i32 6
  %494 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %493, i32 0, i32 0
  %495 = load %struct.TYPE_22__*, %struct.TYPE_22__** %494, align 8
  %496 = load i64, i64* @CUR_FRAME, align 8
  %497 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %495, i64 %496
  %498 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %497, i32 0, i32 0
  %499 = load i32, i32* %10, align 4
  %500 = ashr i32 %499, 3
  %501 = call i32 @ff_thread_report_progress(%struct.TYPE_20__* %498, i32 %500, i32 0)
  br label %502

502:                                              ; preds = %491, %346
  %503 = load i32, i32* %10, align 4
  %504 = add nsw i32 %503, 8
  store i32 %504, i32* %10, align 4
  %505 = load i32, i32* %23, align 4
  %506 = mul nsw i32 %505, 64
  %507 = load i32, i32* %21, align 4
  %508 = add nsw i32 %507, %506
  store i32 %508, i32* %21, align 4
  %509 = load i32, i32* %24, align 4
  %510 = mul nsw i32 %509, 64
  %511 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %512 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %511, i32 0, i32 1
  %513 = load i32, i32* %512, align 4
  %514 = ashr i32 %510, %513
  %515 = load i32, i32* %22, align 4
  %516 = add nsw i32 %515, %514
  store i32 %516, i32* %22, align 4
  br label %179

517:                                              ; preds = %179
  br label %518

518:                                              ; preds = %517
  %519 = load i32, i32* %12, align 4
  %520 = add nsw i32 %519, 1
  store i32 %520, i32* %12, align 4
  br label %58

521:                                              ; preds = %58
  store i32 0, i32* %4, align 4
  br label %522

522:                                              ; preds = %521, %308, %155, %144, %121
  %523 = load i32, i32* %4, align 4
  ret i32 %523
}

declare dso_local i32 @set_tile_offset(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @AV_RB32(i32*) #1

declare dso_local i32 @ff_thread_report_progress(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @ff_vp56_init_range_decoder(i32*, i32*, i32) #1

declare dso_local i64 @vp56_rac_get_prob_branchy(i32*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @decode_sb_mem(%struct.TYPE_26__*, i32, i32, %struct.TYPE_27__*, i32, i32, i32) #1

declare dso_local i64 @vpX_rac_is_end(i32*) #1

declare dso_local i32 @decode_sb(%struct.TYPE_26__*, i32, i32, %struct.TYPE_27__*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i64, i32) #1

declare dso_local i32 @ff_vp9_loopfilter_sb(%struct.TYPE_19__*, %struct.TYPE_27__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
