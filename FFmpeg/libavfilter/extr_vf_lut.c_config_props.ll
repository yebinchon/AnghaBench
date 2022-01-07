; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_lut.c_config_props.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_lut.c_config_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32*, i32, i32, i32, i32, i32, i32*, i32**, i32**, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_12__*, i32, i32 }
%struct.TYPE_12__ = type { i32 }

@VAR_W = common dso_local global i64 0, align 8
@VAR_H = common dso_local global i64 0, align 8
@Y = common dso_local global i64 0, align 8
@U = common dso_local global i64 0, align 8
@V = common dso_local global i64 0, align 8
@A = common dso_local global i64 0, align 8
@AV_PIX_FMT_FLAG_PLANAR = common dso_local global i32 0, align 4
@yuv_pix_fmts = common dso_local global i32 0, align 4
@rgb_pix_fmts = common dso_local global i32 0, align 4
@var_names = common dso_local global i32 0, align 4
@funcs1_names = common dso_local global i32 0, align 4
@funcs1 = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"Error when parsing the expression '%s' for the component %d and color %d.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VAR_MAXVAL = common dso_local global i64 0, align 8
@VAR_MINVAL = common dso_local global i64 0, align 8
@VAR_VAL = common dso_local global i64 0, align 8
@VAR_CLIPVAL = common dso_local global i64 0, align 8
@VAR_NEGVAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [82 x i8] c"Error when evaluating the expression '%s' for the value %d for the component %d.\0A\00", align 1
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"val[%d][%d] = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*)* @config_props to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_props(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca [4 x i32], align 16
  %8 = alloca [4 x i32], align 16
  %9 = alloca [4 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  store %struct.TYPE_16__* %17, %struct.TYPE_16__** %4, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  store %struct.TYPE_13__* %20, %struct.TYPE_13__** %5, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.TYPE_14__* @av_pix_fmt_desc_get(i32 %23)
  store %struct.TYPE_14__* %24, %struct.TYPE_14__** %6, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 10
  store i32 %27, i32* %29, align 4
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 9
  store i32 %32, i32* %34, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* @VAR_W, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  store i32 %37, i32* %42, align 4
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* @VAR_H, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32 %45, i32* %50, align 4
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp sgt i32 %56, 8
  %58 = zext i1 %57 to i32
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  switch i32 %63, label %152 [
    i32 162, label %64
    i32 161, label %64
    i32 160, label %64
    i32 154, label %64
    i32 148, label %64
    i32 145, label %64
    i32 139, label %64
    i32 135, label %64
    i32 131, label %64
    i32 155, label %64
    i32 149, label %64
    i32 140, label %64
    i32 136, label %64
    i32 132, label %64
    i32 128, label %64
    i32 159, label %64
    i32 153, label %64
    i32 147, label %64
    i32 144, label %64
    i32 138, label %64
    i32 134, label %64
    i32 130, label %64
    i32 158, label %64
    i32 152, label %64
    i32 146, label %64
    i32 143, label %64
    i32 157, label %64
    i32 151, label %64
    i32 142, label %64
    i32 156, label %64
    i32 150, label %64
    i32 141, label %64
    i32 137, label %64
    i32 133, label %64
    i32 129, label %64
    i32 164, label %143
    i32 163, label %143
  ]

64:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i64 0
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %70, 8
  %72 = shl i32 1, %71
  %73 = mul nsw i32 16, %72
  %74 = load i64, i64* @Y, align 8
  %75 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %74
  store i32 %73, i32* %75, align 4
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i64 1
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %81, 8
  %83 = shl i32 1, %82
  %84 = mul nsw i32 16, %83
  %85 = load i64, i64* @U, align 8
  %86 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %85
  store i32 %84, i32* %86, align 4
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i64 2
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = sub nsw i32 %92, 8
  %94 = shl i32 1, %93
  %95 = mul nsw i32 16, %94
  %96 = load i64, i64* @V, align 8
  %97 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %96
  store i32 %95, i32* %97, align 4
  %98 = load i64, i64* @A, align 8
  %99 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %98
  store i32 0, i32* %99, align 4
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 2
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i64 0
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = sub nsw i32 %105, 8
  %107 = shl i32 1, %106
  %108 = mul nsw i32 235, %107
  %109 = load i64, i64* @Y, align 8
  %110 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %109
  store i32 %108, i32* %110, align 4
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 2
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i64 1
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = sub nsw i32 %116, 8
  %118 = shl i32 1, %117
  %119 = mul nsw i32 240, %118
  %120 = load i64, i64* @U, align 8
  %121 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %120
  store i32 %119, i32* %121, align 4
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 2
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i64 2
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = sub nsw i32 %127, 8
  %129 = shl i32 1, %128
  %130 = mul nsw i32 240, %129
  %131 = load i64, i64* @V, align 8
  %132 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %131
  store i32 %130, i32* %132, align 4
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 2
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i64 0
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = shl i32 1, %138
  %140 = sub nsw i32 %139, 1
  %141 = load i64, i64* @A, align 8
  %142 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %141
  store i32 %140, i32* %142, align 4
  br label %170

143:                                              ; preds = %1, %1
  %144 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  store i32 0, i32* %144, align 4
  %145 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  store i32 0, i32* %145, align 8
  %146 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 0, i32* %146, align 4
  %147 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 0, i32* %147, align 16
  %148 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  store i32 65535, i32* %148, align 4
  %149 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  store i32 65535, i32* %149, align 8
  %150 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  store i32 65535, i32* %150, align 4
  %151 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  store i32 65535, i32* %151, align 16
  br label %170

152:                                              ; preds = %1
  %153 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  store i32 0, i32* %153, align 4
  %154 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  store i32 0, i32* %154, align 8
  %155 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 0, i32* %155, align 4
  %156 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 0, i32* %156, align 16
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 2
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i64 0
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = sub nsw i32 %162, 8
  %164 = shl i32 1, %163
  %165 = mul nsw i32 255, %164
  %166 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  store i32 %165, i32* %166, align 4
  %167 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  store i32 %165, i32* %167, align 8
  %168 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  store i32 %165, i32* %168, align 4
  %169 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  store i32 %165, i32* %169, align 16
  br label %170

170:                                              ; preds = %152, %143, %64
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 3
  store i32 0, i32* %172, align 8
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 2
  store i32 0, i32* %174, align 4
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @AV_PIX_FMT_FLAG_PLANAR, align 4
  %179 = and i32 %177, %178
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 4
  store i32 %179, i32* %181, align 4
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @yuv_pix_fmts, align 4
  %186 = call i64 @ff_fmt_is_in(i32 %184, i32 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %170
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 2
  store i32 1, i32* %190, align 4
  br label %202

191:                                              ; preds = %170
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @rgb_pix_fmts, align 4
  %196 = call i64 @ff_fmt_is_in(i32 %194, i32 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %191
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 3
  store i32 1, i32* %200, align 8
  br label %201

201:                                              ; preds = %198, %191
  br label %202

202:                                              ; preds = %201, %188
  %203 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 8
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %230

207:                                              ; preds = %202
  %208 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %209 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = call i32 @ff_fill_rgba_map(i32* %208, i32 %211)
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %214 = call i32 @av_get_bits_per_pixel(%struct.TYPE_14__* %213)
  %215 = ashr i32 %214, 3
  %216 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 5
  store i32 %215, i32* %217, align 8
  %218 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 8
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %229

222:                                              ; preds = %207
  %223 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %223, i32 0, i32 5
  %225 = load i32, i32* %224, align 8
  %226 = ashr i32 %225, 1
  %227 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %227, i32 0, i32 5
  store i32 %226, i32* %228, align 8
  br label %229

229:                                              ; preds = %222, %207
  br label %230

230:                                              ; preds = %229, %202
  store i32 0, i32* %11, align 4
  br label %231

231:                                              ; preds = %452, %230
  %232 = load i32, i32* %11, align 4
  %233 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = icmp slt i32 %232, %235
  br i1 %236, label %237, label %455

237:                                              ; preds = %231
  %238 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 8
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %247

242:                                              ; preds = %237
  %243 = load i32, i32* %11, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %244
  %246 = load i32, i32* %245, align 4
  br label %249

247:                                              ; preds = %237
  %248 = load i32, i32* %11, align 4
  br label %249

249:                                              ; preds = %247, %242
  %250 = phi i32 [ %246, %242 ], [ %248, %247 ]
  store i32 %250, i32* %14, align 4
  %251 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %251, i32 0, i32 8
  %253 = load i32**, i32*** %252, align 8
  %254 = load i32, i32* %11, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32*, i32** %253, i64 %255
  %257 = load i32*, i32** %256, align 8
  %258 = call i32 @av_expr_free(i32* %257)
  %259 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %260 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %259, i32 0, i32 8
  %261 = load i32**, i32*** %260, align 8
  %262 = load i32, i32* %11, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32*, i32** %261, i64 %263
  store i32* null, i32** %264, align 8
  %265 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %265, i32 0, i32 8
  %267 = load i32**, i32*** %266, align 8
  %268 = load i32, i32* %11, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32*, i32** %267, i64 %269
  %271 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %272 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %271, i32 0, i32 6
  %273 = load i32*, i32** %272, align 8
  %274 = load i32, i32* %11, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %273, i64 %275
  %277 = load i32, i32* %276, align 4
  %278 = load i32, i32* @var_names, align 4
  %279 = load i32, i32* @funcs1_names, align 4
  %280 = load i32, i32* @funcs1, align 4
  %281 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %282 = call i32 @av_expr_parse(i32** %270, i32 %277, i32 %278, i32 %279, i32 %280, i32* null, i32* null, i32 0, %struct.TYPE_16__* %281)
  store i32 %282, i32* %12, align 4
  %283 = load i32, i32* %12, align 4
  %284 = icmp slt i32 %283, 0
  br i1 %284, label %285, label %300

285:                                              ; preds = %249
  %286 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %287 = load i32, i32* @AV_LOG_ERROR, align 4
  %288 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %289 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %288, i32 0, i32 6
  %290 = load i32*, i32** %289, align 8
  %291 = load i32, i32* %14, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32, i32* %290, i64 %292
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* %14, align 4
  %296 = load i32, i32* %11, align 4
  %297 = call i32 @av_log(%struct.TYPE_16__* %286, i32 %287, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %294, i32 %295, i32 %296)
  %298 = load i32, i32* @EINVAL, align 4
  %299 = call i32 @AVERROR(i32 %298)
  store i32 %299, i32* %2, align 4
  br label %456

300:                                              ; preds = %249
  %301 = load i32, i32* %11, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %302
  %304 = load i32, i32* %303, align 4
  %305 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %306 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %305, i32 0, i32 0
  %307 = load i32*, i32** %306, align 8
  %308 = load i64, i64* @VAR_MAXVAL, align 8
  %309 = getelementptr inbounds i32, i32* %307, i64 %308
  store i32 %304, i32* %309, align 4
  %310 = load i32, i32* %11, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %311
  %313 = load i32, i32* %312, align 4
  %314 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %315 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %314, i32 0, i32 0
  %316 = load i32*, i32** %315, align 8
  %317 = load i64, i64* @VAR_MINVAL, align 8
  %318 = getelementptr inbounds i32, i32* %316, i64 %317
  store i32 %313, i32* %318, align 4
  store i32 0, i32* %10, align 4
  br label %319

319:                                              ; preds = %448, %300
  %320 = load i32, i32* %10, align 4
  %321 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %322 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %321, i32 0, i32 7
  %323 = load i32**, i32*** %322, align 8
  %324 = load i32, i32* %14, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32*, i32** %323, i64 %325
  %327 = load i32*, i32** %326, align 8
  %328 = call i32 @FF_ARRAY_ELEMS(i32* %327)
  %329 = icmp slt i32 %320, %328
  br i1 %329, label %330, label %451

330:                                              ; preds = %319
  %331 = load i32, i32* %10, align 4
  %332 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %333 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %332, i32 0, i32 0
  %334 = load i32*, i32** %333, align 8
  %335 = load i64, i64* @VAR_VAL, align 8
  %336 = getelementptr inbounds i32, i32* %334, i64 %335
  store i32 %331, i32* %336, align 4
  %337 = load i32, i32* %10, align 4
  %338 = load i32, i32* %11, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %339
  %341 = load i32, i32* %340, align 4
  %342 = load i32, i32* %11, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %343
  %345 = load i32, i32* %344, align 4
  %346 = call i8* @av_clip(i32 %337, i32 %341, i32 %345)
  %347 = ptrtoint i8* %346 to i32
  %348 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %349 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %348, i32 0, i32 0
  %350 = load i32*, i32** %349, align 8
  %351 = load i64, i64* @VAR_CLIPVAL, align 8
  %352 = getelementptr inbounds i32, i32* %350, i64 %351
  store i32 %347, i32* %352, align 4
  %353 = load i32, i32* %11, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %354
  %356 = load i32, i32* %355, align 4
  %357 = load i32, i32* %11, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %358
  %360 = load i32, i32* %359, align 4
  %361 = add nsw i32 %356, %360
  %362 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %363 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %362, i32 0, i32 0
  %364 = load i32*, i32** %363, align 8
  %365 = load i64, i64* @VAR_VAL, align 8
  %366 = getelementptr inbounds i32, i32* %364, i64 %365
  %367 = load i32, i32* %366, align 4
  %368 = sub nsw i32 %361, %367
  %369 = load i32, i32* %11, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %370
  %372 = load i32, i32* %371, align 4
  %373 = load i32, i32* %11, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %374
  %376 = load i32, i32* %375, align 4
  %377 = call i8* @av_clip(i32 %368, i32 %372, i32 %376)
  %378 = ptrtoint i8* %377 to i32
  %379 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %380 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %379, i32 0, i32 0
  %381 = load i32*, i32** %380, align 8
  %382 = load i64, i64* @VAR_NEGVAL, align 8
  %383 = getelementptr inbounds i32, i32* %381, i64 %382
  store i32 %378, i32* %383, align 4
  %384 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %385 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %384, i32 0, i32 8
  %386 = load i32**, i32*** %385, align 8
  %387 = load i32, i32* %11, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds i32*, i32** %386, i64 %388
  %390 = load i32*, i32** %389, align 8
  %391 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %392 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %391, i32 0, i32 0
  %393 = load i32*, i32** %392, align 8
  %394 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %395 = call double @av_expr_eval(i32* %390, i32* %393, %struct.TYPE_13__* %394)
  store double %395, double* %13, align 8
  %396 = load double, double* %13, align 8
  %397 = call i64 @isnan(double %396)
  %398 = icmp ne i64 %397, 0
  br i1 %398, label %399, label %414

399:                                              ; preds = %330
  %400 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %401 = load i32, i32* @AV_LOG_ERROR, align 4
  %402 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %403 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %402, i32 0, i32 6
  %404 = load i32*, i32** %403, align 8
  %405 = load i32, i32* %11, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds i32, i32* %404, i64 %406
  %408 = load i32, i32* %407, align 4
  %409 = load i32, i32* %10, align 4
  %410 = load i32, i32* %14, align 4
  %411 = call i32 @av_log(%struct.TYPE_16__* %400, i32 %401, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 %408, i32 %409, i32 %410)
  %412 = load i32, i32* @EINVAL, align 4
  %413 = call i32 @AVERROR(i32 %412)
  store i32 %413, i32* %2, align 4
  br label %456

414:                                              ; preds = %330
  %415 = load double, double* %13, align 8
  %416 = fptosi double %415 to i32
  %417 = load i64, i64* @A, align 8
  %418 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %417
  %419 = load i32, i32* %418, align 4
  %420 = call i8* @av_clip(i32 %416, i32 0, i32 %419)
  %421 = ptrtoint i8* %420 to i32
  %422 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %423 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %422, i32 0, i32 7
  %424 = load i32**, i32*** %423, align 8
  %425 = load i32, i32* %14, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds i32*, i32** %424, i64 %426
  %428 = load i32*, i32** %427, align 8
  %429 = load i32, i32* %10, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds i32, i32* %428, i64 %430
  store i32 %421, i32* %431, align 4
  %432 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %433 = load i32, i32* @AV_LOG_DEBUG, align 4
  %434 = load i32, i32* %14, align 4
  %435 = load i32, i32* %10, align 4
  %436 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %437 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %436, i32 0, i32 7
  %438 = load i32**, i32*** %437, align 8
  %439 = load i32, i32* %14, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds i32*, i32** %438, i64 %440
  %442 = load i32*, i32** %441, align 8
  %443 = load i32, i32* %10, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds i32, i32* %442, i64 %444
  %446 = load i32, i32* %445, align 4
  %447 = call i32 @av_log(%struct.TYPE_16__* %432, i32 %433, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %434, i32 %435, i32 %446)
  br label %448

448:                                              ; preds = %414
  %449 = load i32, i32* %10, align 4
  %450 = add nsw i32 %449, 1
  store i32 %450, i32* %10, align 4
  br label %319

451:                                              ; preds = %319
  br label %452

452:                                              ; preds = %451
  %453 = load i32, i32* %11, align 4
  %454 = add nsw i32 %453, 1
  store i32 %454, i32* %11, align 4
  br label %231

455:                                              ; preds = %231
  store i32 0, i32* %2, align 4
  br label %456

456:                                              ; preds = %455, %399, %285
  %457 = load i32, i32* %2, align 4
  ret i32 %457
}

declare dso_local %struct.TYPE_14__* @av_pix_fmt_desc_get(i32) #1

declare dso_local i64 @ff_fmt_is_in(i32, i32) #1

declare dso_local i32 @ff_fill_rgba_map(i32*, i32) #1

declare dso_local i32 @av_get_bits_per_pixel(%struct.TYPE_14__*) #1

declare dso_local i32 @av_expr_free(i32*) #1

declare dso_local i32 @av_expr_parse(i32**, i32, i32, i32, i32, i32*, i32*, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @av_log(%struct.TYPE_16__*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @FF_ARRAY_ELEMS(i32*) #1

declare dso_local i8* @av_clip(i32, i32, i32) #1

declare dso_local double @av_expr_eval(i32*, i32*, %struct.TYPE_13__*) #1

declare dso_local i64 @isnan(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
