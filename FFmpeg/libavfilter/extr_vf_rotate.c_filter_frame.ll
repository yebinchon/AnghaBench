; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_rotate.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_rotate.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32, i32, i32, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { %struct.TYPE_21__*, %struct.TYPE_23__*, %struct.TYPE_25__** }
%struct.TYPE_21__ = type { i32 (%struct.TYPE_26__*, i32, %struct.TYPE_22__*, i32*, i32)* }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_24__*, %struct.TYPE_24__* }
%struct.TYPE_23__ = type { double, i32, i32, i32, i32, i32, i64, i32*, i32 }
%struct.TYPE_24__ = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@VAR_N = common dso_local global i64 0, align 8
@VAR_T = common dso_local global i64 0, align 8
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"n:%f time:%f angle:%f/PI\0A\00", align 1
@M_PI = common dso_local global i32 0, align 4
@FIXP = common dso_local global double 0.000000e+00, align 8
@INT_PI = common dso_local global i32 0, align 4
@filter_slice = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, %struct.TYPE_24__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_25__* %0, %struct.TYPE_24__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_22__, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %5, align 8
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %20, i32 0, i32 4
  %22 = load %struct.TYPE_26__*, %struct.TYPE_26__** %21, align 8
  store %struct.TYPE_26__* %22, %struct.TYPE_26__** %6, align 8
  %23 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %25, i64 0
  %27 = load %struct.TYPE_25__*, %struct.TYPE_25__** %26, align 8
  store %struct.TYPE_25__* %27, %struct.TYPE_25__** %7, align 8
  %28 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %29, align 8
  store %struct.TYPE_23__* %30, %struct.TYPE_23__** %9, align 8
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %32 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call %struct.TYPE_24__* @ff_get_video_buffer(%struct.TYPE_25__* %31, i32 %34, i32 %37)
  store %struct.TYPE_24__* %38, %struct.TYPE_24__** %8, align 8
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %40 = icmp ne %struct.TYPE_24__* %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %2
  %42 = call i32 @av_frame_free(%struct.TYPE_24__** %5)
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = call i32 @AVERROR(i32 %43)
  store i32 %44, i32* %3, align 4
  br label %250

45:                                               ; preds = %2
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %48 = call i32 @av_frame_copy_props(%struct.TYPE_24__* %46, %struct.TYPE_24__* %47)
  %49 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 7
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* @VAR_N, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  store i32 %51, i32* %56, align 4
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @TS2T(i32 %59, i32 %62)
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i32 0, i32 7
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* @VAR_T, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  store i32 %63, i32* %68, align 4
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %69, i32 0, i32 8
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %72, i32 0, i32 7
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %76 = call double @av_expr_eval(i32 %71, i32* %74, %struct.TYPE_23__* %75)
  store double %76, double* %14, align 8
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %77, i32 0, i32 0
  store double %76, double* %78, align 8
  %79 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %80 = load i32, i32* @AV_LOG_DEBUG, align 4
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 7
  %83 = load i32*, i32** %82, align 8
  %84 = load i64, i64* @VAR_N, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 7
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* @VAR_T, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %93, i32 0, i32 0
  %95 = load double, double* %94, align 8
  %96 = load i32, i32* @M_PI, align 4
  %97 = sitofp i32 %96 to double
  %98 = fdiv double %95, %97
  %99 = fptosi double %98 to i32
  %100 = call i32 @av_log(%struct.TYPE_26__* %79, i32 %80, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %86, i32 %92, i32 %99)
  %101 = load double, double* %14, align 8
  %102 = load double, double* @FIXP, align 8
  %103 = fmul double %101, %102
  %104 = fmul double %103, 1.600000e+01
  %105 = fptosi double %104 to i32
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %10, align 4
  %107 = call i32 @int_sin(i32 %106)
  store i32 %107, i32* %11, align 4
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* @INT_PI, align 4
  %110 = sdiv i32 %109, 2
  %111 = add nsw i32 %108, %110
  %112 = call i32 @int_sin(i32 %111)
  store i32 %112, i32* %12, align 4
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %113, i32 0, i32 6
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %135

117:                                              ; preds = %45
  %118 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %118, i32 0, i32 5
  %120 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %120, i32 0, i32 4
  %122 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @ff_fill_rectangle(i32* %119, i32* %121, i32 %124, i32 %127, i32 0, i32 0, i32 %130, i32 %133)
  br label %135

135:                                              ; preds = %117, %45
  store i32 0, i32* %13, align 4
  br label %136

136:                                              ; preds = %242, %135
  %137 = load i32, i32* %13, align 4
  %138 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = icmp slt i32 %137, %140
  br i1 %141, label %142, label %245

142:                                              ; preds = %136
  %143 = load i32, i32* %13, align 4
  %144 = icmp eq i32 %143, 1
  br i1 %144, label %148, label %145

145:                                              ; preds = %142
  %146 = load i32, i32* %13, align 4
  %147 = icmp eq i32 %146, 2
  br i1 %147, label %148, label %152

148:                                              ; preds = %145, %142
  %149 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  br label %153

152:                                              ; preds = %145
  br label %153

153:                                              ; preds = %152, %148
  %154 = phi i32 [ %151, %148 ], [ 0, %152 ]
  store i32 %154, i32* %15, align 4
  %155 = load i32, i32* %13, align 4
  %156 = icmp eq i32 %155, 1
  br i1 %156, label %160, label %157

157:                                              ; preds = %153
  %158 = load i32, i32* %13, align 4
  %159 = icmp eq i32 %158, 2
  br i1 %159, label %160, label %164

160:                                              ; preds = %157, %153
  %161 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 8
  br label %165

164:                                              ; preds = %157
  br label %165

165:                                              ; preds = %164, %160
  %166 = phi i32 [ %163, %160 ], [ 0, %164 ]
  store i32 %166, i32* %16, align 4
  %167 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %15, align 4
  %171 = call i32 @AV_CEIL_RSHIFT(i32 %169, i32 %170)
  store i32 %171, i32* %17, align 4
  %172 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* %16, align 4
  %176 = call i32 @AV_CEIL_RSHIFT(i32 %174, i32 %175)
  store i32 %176, i32* %18, align 4
  %177 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 0
  %178 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %15, align 4
  %182 = call i32 @AV_CEIL_RSHIFT(i32 %180, i32 %181)
  store i32 %182, i32* %177, align 8
  %183 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 1
  %184 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* %16, align 4
  %188 = call i32 @AV_CEIL_RSHIFT(i32 %186, i32 %187)
  store i32 %188, i32* %183, align 4
  %189 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 2
  %190 = load i32, i32* %18, align 4
  store i32 %190, i32* %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 3
  %192 = load i32, i32* %17, align 4
  store i32 %192, i32* %191, align 4
  %193 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 4
  %194 = load i32, i32* %17, align 4
  %195 = sub nsw i32 %194, 1
  %196 = sub nsw i32 0, %195
  %197 = load i32, i32* %12, align 4
  %198 = mul nsw i32 %196, %197
  %199 = sdiv i32 %198, 2
  store i32 %199, i32* %193, align 8
  %200 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 5
  %201 = load i32, i32* %17, align 4
  %202 = sub nsw i32 %201, 1
  %203 = load i32, i32* %11, align 4
  %204 = mul nsw i32 %202, %203
  %205 = sdiv i32 %204, 2
  store i32 %205, i32* %200, align 4
  %206 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 6
  %207 = load i32, i32* %18, align 4
  %208 = sub nsw i32 %207, 1
  %209 = sub nsw i32 0, %208
  %210 = load i32, i32* %11, align 4
  %211 = mul nsw i32 %209, %210
  %212 = sdiv i32 %211, 2
  store i32 %212, i32* %206, align 8
  %213 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 7
  %214 = load i32, i32* %18, align 4
  %215 = sub nsw i32 %214, 1
  %216 = sub nsw i32 0, %215
  %217 = load i32, i32* %12, align 4
  %218 = mul nsw i32 %216, %217
  %219 = sdiv i32 %218, 2
  store i32 %219, i32* %213, align 4
  %220 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 8
  %221 = load i32, i32* %13, align 4
  store i32 %221, i32* %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 9
  %223 = load i32, i32* %12, align 4
  store i32 %223, i32* %222, align 4
  %224 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 10
  %225 = load i32, i32* %11, align 4
  store i32 %225, i32* %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 11
  %227 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  store %struct.TYPE_24__* %227, %struct.TYPE_24__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 12
  %229 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  store %struct.TYPE_24__* %229, %struct.TYPE_24__** %228, align 8
  %230 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %230, i32 0, i32 0
  %232 = load %struct.TYPE_21__*, %struct.TYPE_21__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %232, i32 0, i32 0
  %234 = load i32 (%struct.TYPE_26__*, i32, %struct.TYPE_22__*, i32*, i32)*, i32 (%struct.TYPE_26__*, i32, %struct.TYPE_22__*, i32*, i32)** %233, align 8
  %235 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %236 = load i32, i32* @filter_slice, align 4
  %237 = load i32, i32* %18, align 4
  %238 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %239 = call i32 @ff_filter_get_nb_threads(%struct.TYPE_26__* %238)
  %240 = call i32 @FFMIN(i32 %237, i32 %239)
  %241 = call i32 %234(%struct.TYPE_26__* %235, i32 %236, %struct.TYPE_22__* %19, i32* null, i32 %240)
  br label %242

242:                                              ; preds = %165
  %243 = load i32, i32* %13, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %13, align 4
  br label %136

245:                                              ; preds = %136
  %246 = call i32 @av_frame_free(%struct.TYPE_24__** %5)
  %247 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %248 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %249 = call i32 @ff_filter_frame(%struct.TYPE_25__* %247, %struct.TYPE_24__* %248)
  store i32 %249, i32* %3, align 4
  br label %250

250:                                              ; preds = %245, %41
  %251 = load i32, i32* %3, align 4
  ret i32 %251
}

declare dso_local %struct.TYPE_24__* @ff_get_video_buffer(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_24__**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_24__*, %struct.TYPE_24__*) #1

declare dso_local i32 @TS2T(i32, i32) #1

declare dso_local double @av_expr_eval(i32, i32*, %struct.TYPE_23__*) #1

declare dso_local i32 @av_log(%struct.TYPE_26__*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @int_sin(i32) #1

declare dso_local i32 @ff_fill_rectangle(i32*, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @AV_CEIL_RSHIFT(i32, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @ff_filter_get_nb_threads(%struct.TYPE_26__*) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_25__*, %struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
