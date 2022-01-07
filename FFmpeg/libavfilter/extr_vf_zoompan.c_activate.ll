; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_zoompan.c_activate.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_zoompan.c_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_22__**, %struct.TYPE_22__**, %struct.TYPE_21__* }
%struct.TYPE_22__ = type { i32, i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { double, i64 }
%struct.TYPE_21__ = type { i32*, i32, i32, i32, i32, i32, i32, double, i64, i32, %struct.TYPE_24__*, i32, %struct.TYPE_20__* }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i32 }

@VAR_IW = common dso_local global i64 0, align 8
@VAR_IN_W = common dso_local global i64 0, align 8
@VAR_IH = common dso_local global i64 0, align 8
@VAR_IN_H = common dso_local global i64 0, align 8
@VAR_OW = common dso_local global i64 0, align 8
@VAR_OUT_W = common dso_local global i64 0, align 8
@VAR_OH = common dso_local global i64 0, align 8
@VAR_OUT_H = common dso_local global i64 0, align 8
@VAR_IN = common dso_local global i64 0, align 8
@VAR_ON = common dso_local global i64 0, align 8
@VAR_PX = common dso_local global i64 0, align 8
@VAR_PY = common dso_local global i64 0, align 8
@VAR_X = common dso_local global i64 0, align 8
@VAR_Y = common dso_local global i64 0, align 8
@VAR_PZOOM = common dso_local global i64 0, align 8
@VAR_ZOOM = common dso_local global i64 0, align 8
@VAR_PDURATION = common dso_local global i64 0, align 8
@VAR_A = common dso_local global i64 0, align 8
@VAR_SAR = common dso_local global i64 0, align 8
@VAR_DAR = common dso_local global i64 0, align 8
@VAR_HSUB = common dso_local global i64 0, align 8
@VAR_VSUB = common dso_local global i64 0, align 8
@var_names = common dso_local global i32 0, align 4
@VAR_DURATION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*)* @activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @activate(%struct.TYPE_23__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  store %struct.TYPE_21__* %19, %struct.TYPE_21__** %4, align 8
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %22, i64 0
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  store %struct.TYPE_22__* %24, %struct.TYPE_22__** %5, align 8
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %27, i64 0
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %28, align 8
  store %struct.TYPE_22__* %29, %struct.TYPE_22__** %6, align 8
  store i32 0, i32* %8, align 4
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %32 = call i32 @FF_FILTER_FORWARD_STATUS_BACK(%struct.TYPE_22__* %30, %struct.TYPE_22__* %31)
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 10
  %35 = load %struct.TYPE_24__*, %struct.TYPE_24__** %34, align 8
  %36 = icmp ne %struct.TYPE_24__* %35, null
  br i1 %36, label %37, label %58

37:                                               ; preds = %1
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %39 = call i64 @ff_outlink_frame_wanted(%struct.TYPE_22__* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %37
  store double -1.000000e+00, double* %10, align 8
  store double -1.000000e+00, double* %11, align 8
  store double -1.000000e+00, double* %12, align 8
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 10
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %44, align 8
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 9
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @output_single_frame(%struct.TYPE_23__* %42, %struct.TYPE_24__* %45, i32* %48, i32 %51, double* %10, double* %11, double* %12)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %41
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %2, align 4
  br label %349

57:                                               ; preds = %41
  br label %58

58:                                               ; preds = %57, %37, %1
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 10
  %61 = load %struct.TYPE_24__*, %struct.TYPE_24__** %60, align 8
  %62 = icmp ne %struct.TYPE_24__* %61, null
  br i1 %62, label %317, label %63

63:                                               ; preds = %58
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 10
  %67 = call i32 @ff_inlink_consume_frame(%struct.TYPE_22__* %64, %struct.TYPE_24__** %66)
  store i32 %67, i32* %8, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %317

69:                                               ; preds = %63
  store double -1.000000e+00, double* %13, align 8
  store double -1.000000e+00, double* %14, align 8
  store double -1.000000e+00, double* %15, align 8
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 8
  store i64 0, i64* %71, align 8
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 10
  %74 = load %struct.TYPE_24__*, %struct.TYPE_24__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i64, i64* @VAR_IW, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  store i32 %76, i32* %81, align 4
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i64, i64* @VAR_IN_W, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  store i32 %76, i32* %86, align 4
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 10
  %89 = load %struct.TYPE_24__*, %struct.TYPE_24__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i64, i64* @VAR_IH, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  store i32 %91, i32* %96, align 4
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i64, i64* @VAR_IN_H, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  store i32 %91, i32* %101, align 4
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i64, i64* @VAR_OW, align 8
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  store i32 %104, i32* %109, align 4
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load i64, i64* @VAR_OUT_W, align 8
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  store i32 %104, i32* %114, align 4
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load i64, i64* @VAR_OH, align 8
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  store i32 %117, i32* %122, align 4
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load i64, i64* @VAR_OUT_H, align 8
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  store i32 %117, i32* %127, align 4
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = sub nsw i32 %130, 1
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = load i64, i64* @VAR_IN, align 8
  %136 = getelementptr inbounds i32, i32* %134, i64 %135
  store i32 %131, i32* %136, align 4
  %137 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = load i64, i64* @VAR_ON, align 8
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  store i32 %139, i32* %144, align 4
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = load i64, i64* @VAR_PX, align 8
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  store i32 %147, i32* %152, align 4
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = load i64, i64* @VAR_PY, align 8
  %160 = getelementptr inbounds i32, i32* %158, i64 %159
  store i32 %155, i32* %160, align 4
  %161 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = load i64, i64* @VAR_X, align 8
  %165 = getelementptr inbounds i32, i32* %163, i64 %164
  store i32 0, i32* %165, align 4
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = load i64, i64* @VAR_Y, align 8
  %170 = getelementptr inbounds i32, i32* %168, i64 %169
  store i32 0, i32* %170, align 4
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = load i64, i64* @VAR_PZOOM, align 8
  %178 = getelementptr inbounds i32, i32* %176, i64 %177
  store i32 %173, i32* %178, align 4
  %179 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = load i64, i64* @VAR_ZOOM, align 8
  %183 = getelementptr inbounds i32, i32* %181, i64 %182
  store i32 1, i32* %183, align 4
  %184 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %184, i32 0, i32 6
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %187, i32 0, i32 0
  %189 = load i32*, i32** %188, align 8
  %190 = load i64, i64* @VAR_PDURATION, align 8
  %191 = getelementptr inbounds i32, i32* %189, i64 %190
  store i32 %186, i32* %191, align 4
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %192, i32 0, i32 10
  %194 = load %struct.TYPE_24__*, %struct.TYPE_24__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = sitofp i32 %196 to double
  %198 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %198, i32 0, i32 10
  %200 = load %struct.TYPE_24__*, %struct.TYPE_24__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = sitofp i32 %202 to double
  %204 = fdiv double %197, %203
  %205 = fptosi double %204 to i32
  %206 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %206, i32 0, i32 0
  %208 = load i32*, i32** %207, align 8
  %209 = load i64, i64* @VAR_A, align 8
  %210 = getelementptr inbounds i32, i32* %208, i64 %209
  store i32 %205, i32* %210, align 4
  %211 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %211, i32 0, i32 2
  %213 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %227

216:                                              ; preds = %69
  %217 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %217, i32 0, i32 2
  %219 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = sitofp i64 %220 to double
  %222 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %222, i32 0, i32 2
  %224 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %223, i32 0, i32 0
  %225 = load double, double* %224, align 8
  %226 = fdiv double %221, %225
  br label %228

227:                                              ; preds = %69
  br label %228

228:                                              ; preds = %227, %216
  %229 = phi double [ %226, %216 ], [ 1.000000e+00, %227 ]
  %230 = fptosi double %229 to i32
  %231 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %231, i32 0, i32 0
  %233 = load i32*, i32** %232, align 8
  %234 = load i64, i64* @VAR_SAR, align 8
  %235 = getelementptr inbounds i32, i32* %233, i64 %234
  store i32 %230, i32* %235, align 4
  %236 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %236, i32 0, i32 0
  %238 = load i32*, i32** %237, align 8
  %239 = load i64, i64* @VAR_A, align 8
  %240 = getelementptr inbounds i32, i32* %238, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %242, i32 0, i32 0
  %244 = load i32*, i32** %243, align 8
  %245 = load i64, i64* @VAR_SAR, align 8
  %246 = getelementptr inbounds i32, i32* %244, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = mul nsw i32 %241, %247
  %249 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %250 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %249, i32 0, i32 0
  %251 = load i32*, i32** %250, align 8
  %252 = load i64, i64* @VAR_DAR, align 8
  %253 = getelementptr inbounds i32, i32* %251, i64 %252
  store i32 %248, i32* %253, align 4
  %254 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %254, i32 0, i32 12
  %256 = load %struct.TYPE_20__*, %struct.TYPE_20__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = shl i32 1, %258
  %260 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %260, i32 0, i32 0
  %262 = load i32*, i32** %261, align 8
  %263 = load i64, i64* @VAR_HSUB, align 8
  %264 = getelementptr inbounds i32, i32* %262, i64 %263
  store i32 %259, i32* %264, align 4
  %265 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %266 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %265, i32 0, i32 12
  %267 = load %struct.TYPE_20__*, %struct.TYPE_20__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = shl i32 1, %269
  %271 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %272 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %271, i32 0, i32 0
  %273 = load i32*, i32** %272, align 8
  %274 = load i64, i64* @VAR_VSUB, align 8
  %275 = getelementptr inbounds i32, i32* %273, i64 %274
  store i32 %270, i32* %275, align 4
  %276 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %276, i32 0, i32 11
  %278 = load i32, i32* %277, align 8
  %279 = load i32, i32* @var_names, align 4
  %280 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %281 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %280, i32 0, i32 0
  %282 = load i32*, i32** %281, align 8
  %283 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %284 = call i32 @av_expr_parse_and_eval(double* %16, i32 %278, i32 %279, i32* %282, i32* null, i32* null, i32* null, i32* null, i32* null, i32 0, %struct.TYPE_23__* %283)
  store i32 %284, i32* %8, align 4
  %285 = icmp slt i32 %284, 0
  br i1 %285, label %286, label %291

286:                                              ; preds = %228
  %287 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %288 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %287, i32 0, i32 10
  %289 = call i32 @av_frame_free(%struct.TYPE_24__** %288)
  %290 = load i32, i32* %8, align 4
  store i32 %290, i32* %2, align 4
  br label %349

291:                                              ; preds = %228
  %292 = load double, double* %16, align 8
  %293 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %294 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %293, i32 0, i32 7
  store double %292, double* %294, align 8
  %295 = fptosi double %292 to i32
  %296 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %297 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %296, i32 0, i32 0
  %298 = load i32*, i32** %297, align 8
  %299 = load i64, i64* @VAR_DURATION, align 8
  %300 = getelementptr inbounds i32, i32* %298, i64 %299
  store i32 %295, i32* %300, align 4
  %301 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %302 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %303 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %302, i32 0, i32 10
  %304 = load %struct.TYPE_24__*, %struct.TYPE_24__** %303, align 8
  %305 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %306 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %305, i32 0, i32 0
  %307 = load i32*, i32** %306, align 8
  %308 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %309 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %308, i32 0, i32 9
  %310 = load i32, i32* %309, align 8
  %311 = call i32 @output_single_frame(%struct.TYPE_23__* %301, %struct.TYPE_24__* %304, i32* %307, i32 %310, double* %13, double* %14, double* %15)
  store i32 %311, i32* %8, align 4
  %312 = load i32, i32* %8, align 4
  %313 = icmp slt i32 %312, 0
  br i1 %313, label %314, label %316

314:                                              ; preds = %291
  %315 = load i32, i32* %8, align 4
  store i32 %315, i32* %2, align 4
  br label %349

316:                                              ; preds = %291
  br label %317

317:                                              ; preds = %316, %63, %58
  %318 = load i32, i32* %8, align 4
  %319 = icmp slt i32 %318, 0
  br i1 %319, label %320, label %322

320:                                              ; preds = %317
  %321 = load i32, i32* %8, align 4
  store i32 %321, i32* %2, align 4
  br label %349

322:                                              ; preds = %317
  %323 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %324 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %323, i32 0, i32 8
  %325 = load i64, i64* %324, align 8
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %336

327:                                              ; preds = %322
  %328 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %329 = call i64 @ff_inlink_acknowledge_status(%struct.TYPE_22__* %328, i32* %7, i32* %9)
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %336

331:                                              ; preds = %327
  %332 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %333 = load i32, i32* %7, align 4
  %334 = load i32, i32* %9, align 4
  %335 = call i32 @ff_outlink_set_status(%struct.TYPE_22__* %332, i32 %333, i32 %334)
  store i32 0, i32* %2, align 4
  br label %349

336:                                              ; preds = %327, %322
  %337 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %338 = call i64 @ff_outlink_frame_wanted(%struct.TYPE_22__* %337)
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %348

340:                                              ; preds = %336
  %341 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %342 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %341, i32 0, i32 8
  %343 = load i64, i64* %342, align 8
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %345, label %348

345:                                              ; preds = %340
  %346 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %347 = call i32 @ff_inlink_request_frame(%struct.TYPE_22__* %346)
  br label %348

348:                                              ; preds = %345, %340, %336
  store i32 0, i32* %2, align 4
  br label %349

349:                                              ; preds = %348, %331, %320, %314, %286, %55
  %350 = load i32, i32* %2, align 4
  ret i32 %350
}

declare dso_local i32 @FF_FILTER_FORWARD_STATUS_BACK(%struct.TYPE_22__*, %struct.TYPE_22__*) #1

declare dso_local i64 @ff_outlink_frame_wanted(%struct.TYPE_22__*) #1

declare dso_local i32 @output_single_frame(%struct.TYPE_23__*, %struct.TYPE_24__*, i32*, i32, double*, double*, double*) #1

declare dso_local i32 @ff_inlink_consume_frame(%struct.TYPE_22__*, %struct.TYPE_24__**) #1

declare dso_local i32 @av_expr_parse_and_eval(double*, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32, %struct.TYPE_23__*) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_24__**) #1

declare dso_local i64 @ff_inlink_acknowledge_status(%struct.TYPE_22__*, i32*, i32*) #1

declare dso_local i32 @ff_outlink_set_status(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @ff_inlink_request_frame(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
