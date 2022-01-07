; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_overlay.c_do_blend.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_overlay.c_do_blend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32*, %struct.TYPE_18__*, %struct.TYPE_23__**, %struct.TYPE_20__* }
%struct.TYPE_18__ = type { i32 (%struct.TYPE_24__*, i32, %struct.TYPE_19__*, i32*, i32)* }
%struct.TYPE_19__ = type { %struct.TYPE_22__*, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i32, i64, i64 }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_20__ = type { i64, i32*, i64, i64, i32 }

@EVAL_MODE_FRAME = common dso_local global i64 0, align 8
@VAR_N = common dso_local global i64 0, align 8
@AV_NOPTS_VALUE = common dso_local global i32 0, align 4
@NAN = common dso_local global i32 0, align 4
@VAR_T = common dso_local global i64 0, align 8
@VAR_POS = common dso_local global i64 0, align 8
@VAR_OW = common dso_local global i64 0, align 8
@VAR_OVERLAY_W = common dso_local global i64 0, align 8
@VAR_OH = common dso_local global i64 0, align 8
@VAR_OVERLAY_H = common dso_local global i64 0, align 8
@VAR_MW = common dso_local global i64 0, align 8
@VAR_MAIN_W = common dso_local global i64 0, align 8
@VAR_MH = common dso_local global i64 0, align 8
@VAR_MAIN_H = common dso_local global i64 0, align 8
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"n:%f t:%f pos:%f x:%f xi:%d y:%f yi:%d\0A\00", align 1
@VAR_X = common dso_local global i64 0, align 8
@VAR_Y = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*)* @do_blend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_blend(%struct.TYPE_21__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_19__, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  store %struct.TYPE_24__* %14, %struct.TYPE_24__** %4, align 8
  %15 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  store %struct.TYPE_20__* %17, %struct.TYPE_20__** %7, align 8
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %20, i64 0
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  store %struct.TYPE_23__* %22, %struct.TYPE_23__** %8, align 8
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %24 = call i32 @ff_framesync_dualinput_get_writable(%struct.TYPE_21__* %23, %struct.TYPE_22__** %5, %struct.TYPE_22__** %6)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %2, align 4
  br label %279

29:                                               ; preds = %1
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %31 = icmp ne %struct.TYPE_22__* %30, null
  br i1 %31, label %40, label %32

32:                                               ; preds = %29
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %39 = call i32 @ff_filter_frame(i32 %37, %struct.TYPE_22__* %38)
  store i32 %39, i32* %2, align 4
  br label %279

40:                                               ; preds = %29
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @EVAL_MODE_FRAME, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %196

46:                                               ; preds = %40
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %10, align 4
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* @VAR_N, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  store i32 %52, i32* %57, align 4
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @AV_NOPTS_VALUE, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %46
  %64 = load i32, i32* @NAN, align 4
  br label %74

65:                                               ; preds = %46
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @av_q2d(i32 %71)
  %73 = mul nsw i32 %68, %72
  br label %74

74:                                               ; preds = %65, %63
  %75 = phi i32 [ %64, %63 ], [ %73, %65 ]
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i64, i64* @VAR_T, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  store i32 %75, i32* %80, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %83, label %85

83:                                               ; preds = %74
  %84 = load i32, i32* @NAN, align 4
  br label %87

85:                                               ; preds = %74
  %86 = load i32, i32* %10, align 4
  br label %87

87:                                               ; preds = %85, %83
  %88 = phi i32 [ %84, %83 ], [ %86, %85 ]
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load i64, i64* @VAR_POS, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  store i32 %88, i32* %93, align 4
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = trunc i64 %96 to i32
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* @VAR_OW, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  store i32 %97, i32* %102, align 4
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = load i64, i64* @VAR_OVERLAY_W, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  store i32 %97, i32* %107, align 4
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = trunc i64 %110 to i32
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load i64, i64* @VAR_OH, align 8
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  store i32 %111, i32* %116, align 4
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = load i64, i64* @VAR_OVERLAY_H, align 8
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  store i32 %111, i32* %121, align 4
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = trunc i64 %124 to i32
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = load i64, i64* @VAR_MW, align 8
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  store i32 %125, i32* %130, align 4
  %131 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = load i64, i64* @VAR_MAIN_W, align 8
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  store i32 %125, i32* %135, align 4
  %136 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = trunc i64 %138 to i32
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = load i64, i64* @VAR_MH, align 8
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  store i32 %139, i32* %144, align 4
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = load i64, i64* @VAR_MAIN_H, align 8
  %149 = getelementptr inbounds i32, i32* %147, i64 %148
  store i32 %139, i32* %149, align 4
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %151 = call i32 @eval_expr(%struct.TYPE_24__* %150)
  %152 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %153 = load i32, i32* @AV_LOG_DEBUG, align 4
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = load i64, i64* @VAR_N, align 8
  %158 = getelementptr inbounds i32, i32* %156, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = sext i32 %159 to i64
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %161, i32 0, i32 1
  %163 = load i32*, i32** %162, align 8
  %164 = load i64, i64* @VAR_T, align 8
  %165 = getelementptr inbounds i32, i32* %163, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = sext i32 %166 to i64
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 1
  %170 = load i32*, i32** %169, align 8
  %171 = load i64, i64* @VAR_POS, align 8
  %172 = getelementptr inbounds i32, i32* %170, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = sext i32 %173 to i64
  %175 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %175, i32 0, i32 1
  %177 = load i32*, i32** %176, align 8
  %178 = load i64, i64* @VAR_X, align 8
  %179 = getelementptr inbounds i32, i32* %177, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = sext i32 %180 to i64
  %182 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %182, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %185, i32 0, i32 1
  %187 = load i32*, i32** %186, align 8
  %188 = load i64, i64* @VAR_Y, align 8
  %189 = getelementptr inbounds i32, i32* %187, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = sext i32 %190 to i64
  %192 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %192, i32 0, i32 3
  %194 = load i64, i64* %193, align 8
  %195 = call i32 @av_log(%struct.TYPE_24__* %152, i32 %153, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %160, i64 %167, i64 %174, i64 %181, i64 %184, i64 %191, i64 %194)
  br label %196

196:                                              ; preds = %87, %40
  %197 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %200, i32 0, i32 2
  %202 = load i64, i64* %201, align 8
  %203 = icmp slt i64 %199, %202
  br i1 %203, label %204, label %271

204:                                              ; preds = %196
  %205 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %205, i32 0, i32 2
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %208, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  %211 = add nsw i64 %207, %210
  %212 = icmp sge i64 %211, 0
  br i1 %212, label %213, label %271

213:                                              ; preds = %204
  %214 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %214, i32 0, i32 3
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %217, i32 0, i32 3
  %219 = load i64, i64* %218, align 8
  %220 = icmp slt i64 %216, %219
  br i1 %220, label %221, label %271

221:                                              ; preds = %213
  %222 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %222, i32 0, i32 3
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %225, i32 0, i32 3
  %227 = load i64, i64* %226, align 8
  %228 = add nsw i64 %224, %227
  %229 = icmp sge i64 %228, 0
  br i1 %229, label %230, label %271

230:                                              ; preds = %221
  %231 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 1
  store %struct.TYPE_22__* %231, %struct.TYPE_22__** %232, align 8
  %233 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  store %struct.TYPE_22__* %233, %struct.TYPE_22__** %234, align 8
  %235 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %235, i32 0, i32 1
  %237 = load %struct.TYPE_18__*, %struct.TYPE_18__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %237, i32 0, i32 0
  %239 = load i32 (%struct.TYPE_24__*, i32, %struct.TYPE_19__*, i32*, i32)*, i32 (%struct.TYPE_24__*, i32, %struct.TYPE_19__*, i32*, i32)** %238, align 8
  %240 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %241 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %242 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %241, i32 0, i32 4
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %245 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %244, i32 0, i32 3
  %246 = load i64, i64* %245, align 8
  %247 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %248 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %247, i32 0, i32 3
  %249 = load i64, i64* %248, align 8
  %250 = add nsw i64 %246, %249
  %251 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %251, i32 0, i32 3
  %253 = load i64, i64* %252, align 8
  %254 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %255 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %254, i32 0, i32 3
  %256 = load i64, i64* %255, align 8
  %257 = call i32 @FFMIN(i64 %253, i64 %256)
  %258 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %258, i32 0, i32 3
  %260 = load i64, i64* %259, align 8
  %261 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %262 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %261, i32 0, i32 3
  %263 = load i64, i64* %262, align 8
  %264 = sub nsw i64 %260, %263
  %265 = call i32 @FFMIN3(i64 %250, i32 %257, i64 %264)
  %266 = call i64 @FFMAX(i32 1, i32 %265)
  %267 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %268 = call i64 @ff_filter_get_nb_threads(%struct.TYPE_24__* %267)
  %269 = call i32 @FFMIN(i64 %266, i64 %268)
  %270 = call i32 %239(%struct.TYPE_24__* %240, i32 %243, %struct.TYPE_19__* %11, i32* null, i32 %269)
  br label %271

271:                                              ; preds = %230, %221, %213, %204, %196
  %272 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %272, i32 0, i32 0
  %274 = load i32*, i32** %273, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 0
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %278 = call i32 @ff_filter_frame(i32 %276, %struct.TYPE_22__* %277)
  store i32 %278, i32* %2, align 4
  br label %279

279:                                              ; preds = %271, %32, %27
  %280 = load i32, i32* %2, align 4
  ret i32 %280
}

declare dso_local i32 @ff_framesync_dualinput_get_writable(%struct.TYPE_21__*, %struct.TYPE_22__**, %struct.TYPE_22__**) #1

declare dso_local i32 @ff_filter_frame(i32, %struct.TYPE_22__*) #1

declare dso_local i32 @av_q2d(i32) #1

declare dso_local i32 @eval_expr(%struct.TYPE_24__*) #1

declare dso_local i32 @av_log(%struct.TYPE_24__*, i32, i8*, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @FFMIN(i64, i64) #1

declare dso_local i64 @FFMAX(i32, i32) #1

declare dso_local i32 @FFMIN3(i64, i32, i64) #1

declare dso_local i64 @ff_filter_get_nb_threads(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
