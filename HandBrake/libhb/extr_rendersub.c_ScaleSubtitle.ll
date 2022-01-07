; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_rendersub.c_ScaleSubtitle.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_rendersub.c_ScaleSubtitle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32*, i32* }
%struct.TYPE_14__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { double, double, i32, i32, double, double, i32 }

@AV_PIX_FMT_YUVA420P = common dso_local global i32 0, align 4
@SWS_LANCZOS = common dso_local global i32 0, align 4
@SWS_ACCURATE_RND = common dso_local global i32 0, align 4
@SWS_CS_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_14__* (%struct.TYPE_13__*, %struct.TYPE_14__*, %struct.TYPE_14__*)* @ScaleSubtitle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_14__* @ScaleSubtitle(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca [4 x i32*], align 16
  %12 = alloca [4 x i32*], align 16
  %13 = alloca [4 x i32], align 16
  %14 = alloca [4 x i32], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %7, align 8
  store double 1.000000e+00, double* %9, align 8
  store double 1.000000e+00, double* %10, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load double, double* %23, align 8
  %25 = fcmp ogt double %24, 0.000000e+00
  br i1 %25, label %26, label %61

26:                                               ; preds = %3
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 1
  %30 = load double, double* %29, align 8
  %31 = fcmp ogt double %30, 0.000000e+00
  br i1 %31, label %32, label %61

32:                                               ; preds = %26
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = sitofp i32 %36 to double
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load double, double* %40, align 8
  %42 = fdiv double %37, %41
  store double %42, double* %9, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = sitofp i32 %46 to double
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 1
  %51 = load double, double* %50, align 8
  %52 = fdiv double %47, %51
  store double %52, double* %10, align 8
  %53 = load double, double* %9, align 8
  %54 = load double, double* %10, align 8
  %55 = fcmp ogt double %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %32
  %57 = load double, double* %9, align 8
  store double %57, double* %10, align 8
  br label %60

58:                                               ; preds = %32
  %59 = load double, double* %10, align 8
  store double %59, double* %9, align 8
  br label %60

60:                                               ; preds = %58, %56
  br label %61

61:                                               ; preds = %60, %26, %3
  %62 = load double, double* %9, align 8
  %63 = fsub double %62, 1.000000e+00
  %64 = call double @ABS(double %63)
  %65 = fcmp ogt double %64, 1.000000e-02
  br i1 %65, label %71, label %66

66:                                               ; preds = %61
  %67 = load double, double* %10, align 8
  %68 = fsub double %67, 1.000000e+00
  %69 = call double @ABS(double %68)
  %70 = fcmp ogt double %69, 1.000000e-02
  br i1 %70, label %71, label %204

71:                                               ; preds = %66, %61
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = sitofp i32 %75 to double
  %77 = load double, double* %9, align 8
  %78 = fmul double %76, %77
  %79 = fptosi double %78 to i32
  store i32 %79, i32* %15, align 4
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = sitofp i32 %83 to double
  %85 = load double, double* %10, align 8
  %86 = fmul double %84, %85
  %87 = fptosi double %86 to i32
  store i32 %87, i32* %16, align 4
  %88 = load i32, i32* @AV_PIX_FMT_YUVA420P, align 4
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* %16, align 4
  %91 = call %struct.TYPE_14__* @hb_frame_buffer_init(i32 %88, i32 %89, i32 %90)
  store %struct.TYPE_14__* %91, %struct.TYPE_14__** %8, align 8
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %93 = icmp eq %struct.TYPE_14__* %92, null
  br i1 %93, label %94, label %95

94:                                               ; preds = %71
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %4, align 8
  br label %488

95:                                               ; preds = %71
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 4
  %99 = load double, double* %98, align 8
  %100 = load double, double* %9, align 8
  %101 = fmul double %99, %100
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 4
  store double %101, double* %104, align 8
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 5
  %108 = load double, double* %107, align 8
  %109 = load double, double* %10, align 8
  %110 = fmul double %108, %109
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 5
  store double %110, double* %113, align 8
  %114 = getelementptr inbounds [4 x i32*], [4 x i32*]* %11, i64 0, i64 0
  %115 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %117 = call i32 @hb_picture_fill(i32** %114, i32* %115, %struct.TYPE_14__* %116)
  %118 = getelementptr inbounds [4 x i32*], [4 x i32*]* %12, i64 0, i64 0
  %119 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %121 = call i32 @hb_picture_fill(i32** %118, i32* %119, %struct.TYPE_14__* %120)
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 3
  %124 = load i32*, i32** %123, align 8
  %125 = icmp eq i32* %124, null
  br i1 %125, label %138, label %126

126:                                              ; preds = %95
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %15, align 4
  %131 = icmp ne i32 %129, %130
  br i1 %131, label %138, label %132

132:                                              ; preds = %126
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %16, align 4
  %137 = icmp ne i32 %135, %136
  br i1 %137, label %138, label %190

138:                                              ; preds = %132, %126, %95
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 3
  %141 = load i32*, i32** %140, align 8
  %142 = icmp ne i32* %141, null
  br i1 %142, label %143, label %148

143:                                              ; preds = %138
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 3
  %146 = load i32*, i32** %145, align 8
  %147 = call i32 @sws_freeContext(i32* %146)
  br label %148

148:                                              ; preds = %143, %138
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = sitofp i32 %152 to double
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = sitofp i32 %157 to double
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 6
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = sitofp i32 %166 to double
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = sitofp i32 %171 to double
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 6
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @SWS_LANCZOS, align 4
  %178 = load i32, i32* @SWS_ACCURATE_RND, align 4
  %179 = or i32 %177, %178
  %180 = load i32, i32* @SWS_CS_DEFAULT, align 4
  %181 = call i32* @hb_sws_get_context(double %153, double %158, i32 %162, double %167, double %172, i32 %176, i32 %179, i32 %180)
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 3
  store i32* %181, i32** %183, align 8
  %184 = load i32, i32* %15, align 4
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 0
  store i32 %184, i32* %186, align 8
  %187 = load i32, i32* %16, align 4
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 1
  store i32 %187, i32* %189, align 4
  br label %190

190:                                              ; preds = %148, %132
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 3
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds [4 x i32*], [4 x i32*]* %11, i64 0, i64 0
  %195 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = sitofp i32 %199 to double
  %201 = getelementptr inbounds [4 x i32*], [4 x i32*]* %12, i64 0, i64 0
  %202 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %203 = call i32 @sws_scale(i32* %193, i32** %194, i32* %195, i32 0, double %200, i32** %201, i32* %202)
  br label %207

204:                                              ; preds = %66
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %206 = call %struct.TYPE_14__* @hb_buffer_dup(%struct.TYPE_14__* %205)
  store %struct.TYPE_14__* %206, %struct.TYPE_14__** %8, align 8
  br label %207

207:                                              ; preds = %204, %190
  store i32 2, i32* %20, align 4
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 2
  %214 = load i32*, i32** %213, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 0
  %216 = load i32, i32* %215, align 4
  %217 = sub nsw i32 %211, %216
  %218 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i32 0, i32 2
  %220 = load i32*, i32** %219, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 1
  %222 = load i32, i32* %221, align 4
  %223 = sub nsw i32 %217, %222
  %224 = load i32, i32* %20, align 4
  %225 = mul nsw i32 %223, %224
  %226 = sdiv i32 %225, 100
  store i32 %226, i32* %19, align 4
  %227 = load i32, i32* %19, align 4
  %228 = icmp sgt i32 %227, 20
  br i1 %228, label %229, label %230

229:                                              ; preds = %207
  store i32 20, i32* %19, align 4
  br label %230

230:                                              ; preds = %229, %207
  %231 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %232 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %236 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i32 0, i32 2
  %241 = load i32*, i32** %240, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 0
  %243 = load i32, i32* %242, align 4
  %244 = sub nsw i32 %238, %243
  %245 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 2
  %247 = load i32*, i32** %246, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 1
  %249 = load i32, i32* %248, align 4
  %250 = sub nsw i32 %244, %249
  %251 = load i32, i32* %19, align 4
  %252 = mul nsw i32 %251, 2
  %253 = sub nsw i32 %250, %252
  %254 = icmp sgt i32 %234, %253
  br i1 %254, label %255, label %284

255:                                              ; preds = %230
  %256 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %257 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %256, i32 0, i32 2
  %258 = load i32*, i32** %257, align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 0
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %262 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %262, i32 0, i32 3
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %265, i32 0, i32 2
  %267 = load i32*, i32** %266, align 8
  %268 = getelementptr inbounds i32, i32* %267, i64 0
  %269 = load i32, i32* %268, align 4
  %270 = sub nsw i32 %264, %269
  %271 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %272 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %271, i32 0, i32 2
  %273 = load i32*, i32** %272, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 1
  %275 = load i32, i32* %274, align 4
  %276 = sub nsw i32 %270, %275
  %277 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %278 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %278, i32 0, i32 3
  %280 = load i32, i32* %279, align 4
  %281 = sub nsw i32 %276, %280
  %282 = sdiv i32 %281, 2
  %283 = add nsw i32 %260, %282
  store i32 %283, i32* %17, align 4
  br label %356

284:                                              ; preds = %230
  %285 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %286 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %285, i32 0, i32 0
  %287 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %286, i32 0, i32 5
  %288 = load double, double* %287, align 8
  %289 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %290 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %289, i32 0, i32 2
  %291 = load i32*, i32** %290, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 0
  %293 = load i32, i32* %292, align 4
  %294 = load i32, i32* %19, align 4
  %295 = add nsw i32 %293, %294
  %296 = sitofp i32 %295 to double
  %297 = fcmp olt double %288, %296
  br i1 %297, label %298, label %306

298:                                              ; preds = %284
  %299 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %300 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %299, i32 0, i32 2
  %301 = load i32*, i32** %300, align 8
  %302 = getelementptr inbounds i32, i32* %301, i64 0
  %303 = load i32, i32* %302, align 4
  %304 = load i32, i32* %19, align 4
  %305 = add nsw i32 %303, %304
  store i32 %305, i32* %17, align 4
  br label %355

306:                                              ; preds = %284
  %307 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %308 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %308, i32 0, i32 5
  %310 = load double, double* %309, align 8
  %311 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %312 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %312, i32 0, i32 3
  %314 = load i32, i32* %313, align 4
  %315 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %316 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %315, i32 0, i32 2
  %317 = load i32*, i32** %316, align 8
  %318 = getelementptr inbounds i32, i32* %317, i64 1
  %319 = load i32, i32* %318, align 4
  %320 = sub nsw i32 %314, %319
  %321 = load i32, i32* %19, align 4
  %322 = sub nsw i32 %320, %321
  %323 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %324 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %324, i32 0, i32 3
  %326 = load i32, i32* %325, align 4
  %327 = sub nsw i32 %322, %326
  %328 = sitofp i32 %327 to double
  %329 = fcmp ogt double %310, %328
  br i1 %329, label %330, label %348

330:                                              ; preds = %306
  %331 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %332 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %332, i32 0, i32 3
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %336 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %335, i32 0, i32 2
  %337 = load i32*, i32** %336, align 8
  %338 = getelementptr inbounds i32, i32* %337, i64 1
  %339 = load i32, i32* %338, align 4
  %340 = sub nsw i32 %334, %339
  %341 = load i32, i32* %19, align 4
  %342 = sub nsw i32 %340, %341
  %343 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %344 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %344, i32 0, i32 3
  %346 = load i32, i32* %345, align 4
  %347 = sub nsw i32 %342, %346
  store i32 %347, i32* %17, align 4
  br label %354

348:                                              ; preds = %306
  %349 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %350 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %350, i32 0, i32 5
  %352 = load double, double* %351, align 8
  %353 = fptosi double %352 to i32
  store i32 %353, i32* %17, align 4
  br label %354

354:                                              ; preds = %348, %330
  br label %355

355:                                              ; preds = %354, %298
  br label %356

356:                                              ; preds = %355, %255
  %357 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %358 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %357, i32 0, i32 0
  %359 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %358, i32 0, i32 2
  %360 = load i32, i32* %359, align 8
  %361 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %362 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %361, i32 0, i32 0
  %363 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %362, i32 0, i32 2
  %364 = load i32, i32* %363, align 8
  %365 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %366 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %365, i32 0, i32 2
  %367 = load i32*, i32** %366, align 8
  %368 = getelementptr inbounds i32, i32* %367, i64 2
  %369 = load i32, i32* %368, align 4
  %370 = sub nsw i32 %364, %369
  %371 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %372 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %371, i32 0, i32 2
  %373 = load i32*, i32** %372, align 8
  %374 = getelementptr inbounds i32, i32* %373, i64 3
  %375 = load i32, i32* %374, align 4
  %376 = sub nsw i32 %370, %375
  %377 = sub nsw i32 %376, 40
  %378 = icmp sgt i32 %360, %377
  br i1 %378, label %379, label %408

379:                                              ; preds = %356
  %380 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %381 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %380, i32 0, i32 2
  %382 = load i32*, i32** %381, align 8
  %383 = getelementptr inbounds i32, i32* %382, i64 2
  %384 = load i32, i32* %383, align 4
  %385 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %386 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %385, i32 0, i32 0
  %387 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %386, i32 0, i32 2
  %388 = load i32, i32* %387, align 8
  %389 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %390 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %389, i32 0, i32 2
  %391 = load i32*, i32** %390, align 8
  %392 = getelementptr inbounds i32, i32* %391, i64 2
  %393 = load i32, i32* %392, align 4
  %394 = sub nsw i32 %388, %393
  %395 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %396 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %395, i32 0, i32 2
  %397 = load i32*, i32** %396, align 8
  %398 = getelementptr inbounds i32, i32* %397, i64 3
  %399 = load i32, i32* %398, align 4
  %400 = sub nsw i32 %394, %399
  %401 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %402 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %401, i32 0, i32 0
  %403 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %402, i32 0, i32 2
  %404 = load i32, i32* %403, align 8
  %405 = sub nsw i32 %400, %404
  %406 = sdiv i32 %405, 2
  %407 = add nsw i32 %384, %406
  store i32 %407, i32* %18, align 4
  br label %476

408:                                              ; preds = %356
  %409 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %410 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %409, i32 0, i32 0
  %411 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %410, i32 0, i32 4
  %412 = load double, double* %411, align 8
  %413 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %414 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %413, i32 0, i32 2
  %415 = load i32*, i32** %414, align 8
  %416 = getelementptr inbounds i32, i32* %415, i64 2
  %417 = load i32, i32* %416, align 4
  %418 = add nsw i32 %417, 20
  %419 = sitofp i32 %418 to double
  %420 = fcmp olt double %412, %419
  br i1 %420, label %421, label %428

421:                                              ; preds = %408
  %422 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %423 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %422, i32 0, i32 2
  %424 = load i32*, i32** %423, align 8
  %425 = getelementptr inbounds i32, i32* %424, i64 2
  %426 = load i32, i32* %425, align 4
  %427 = add nsw i32 %426, 20
  store i32 %427, i32* %18, align 4
  br label %475

428:                                              ; preds = %408
  %429 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %430 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %429, i32 0, i32 0
  %431 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %430, i32 0, i32 4
  %432 = load double, double* %431, align 8
  %433 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %434 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %433, i32 0, i32 0
  %435 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %434, i32 0, i32 2
  %436 = load i32, i32* %435, align 8
  %437 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %438 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %437, i32 0, i32 2
  %439 = load i32*, i32** %438, align 8
  %440 = getelementptr inbounds i32, i32* %439, i64 3
  %441 = load i32, i32* %440, align 4
  %442 = sub nsw i32 %436, %441
  %443 = sub nsw i32 %442, 20
  %444 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %445 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %444, i32 0, i32 0
  %446 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %445, i32 0, i32 2
  %447 = load i32, i32* %446, align 8
  %448 = sub nsw i32 %443, %447
  %449 = sitofp i32 %448 to double
  %450 = fcmp ogt double %432, %449
  br i1 %450, label %451, label %468

451:                                              ; preds = %428
  %452 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %453 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %452, i32 0, i32 0
  %454 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %453, i32 0, i32 2
  %455 = load i32, i32* %454, align 8
  %456 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %457 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %456, i32 0, i32 2
  %458 = load i32*, i32** %457, align 8
  %459 = getelementptr inbounds i32, i32* %458, i64 3
  %460 = load i32, i32* %459, align 4
  %461 = sub nsw i32 %455, %460
  %462 = sub nsw i32 %461, 20
  %463 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %464 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %463, i32 0, i32 0
  %465 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %464, i32 0, i32 2
  %466 = load i32, i32* %465, align 8
  %467 = sub nsw i32 %462, %466
  store i32 %467, i32* %18, align 4
  br label %474

468:                                              ; preds = %428
  %469 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %470 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %469, i32 0, i32 0
  %471 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %470, i32 0, i32 4
  %472 = load double, double* %471, align 8
  %473 = fptosi double %472 to i32
  store i32 %473, i32* %18, align 4
  br label %474

474:                                              ; preds = %468, %451
  br label %475

475:                                              ; preds = %474, %421
  br label %476

476:                                              ; preds = %475, %379
  %477 = load i32, i32* %18, align 4
  %478 = sitofp i32 %477 to double
  %479 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %480 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %479, i32 0, i32 0
  %481 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %480, i32 0, i32 4
  store double %478, double* %481, align 8
  %482 = load i32, i32* %17, align 4
  %483 = sitofp i32 %482 to double
  %484 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %485 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %484, i32 0, i32 0
  %486 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %485, i32 0, i32 5
  store double %483, double* %486, align 8
  %487 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  store %struct.TYPE_14__* %487, %struct.TYPE_14__** %4, align 8
  br label %488

488:                                              ; preds = %476, %94
  %489 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  ret %struct.TYPE_14__* %489
}

declare dso_local double @ABS(double) #1

declare dso_local %struct.TYPE_14__* @hb_frame_buffer_init(i32, i32, i32) #1

declare dso_local i32 @hb_picture_fill(i32**, i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @sws_freeContext(i32*) #1

declare dso_local i32* @hb_sws_get_context(double, double, i32, double, double, i32, i32, i32) #1

declare dso_local i32 @sws_scale(i32*, i32**, i32*, i32, double, i32**, i32*) #1

declare dso_local %struct.TYPE_14__* @hb_buffer_dup(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
