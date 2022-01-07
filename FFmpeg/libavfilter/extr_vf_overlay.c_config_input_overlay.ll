; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_overlay.c_config_input_overlay.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_overlay.c_config_input_overlay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_12__**, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i32*, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }

@MAIN = common dso_local global i64 0, align 8
@VAR_MW = common dso_local global i64 0, align 8
@VAR_MAIN_W = common dso_local global i64 0, align 8
@VAR_MH = common dso_local global i64 0, align 8
@VAR_MAIN_H = common dso_local global i64 0, align 8
@OVERLAY = common dso_local global i64 0, align 8
@VAR_OW = common dso_local global i64 0, align 8
@VAR_OVERLAY_W = common dso_local global i64 0, align 8
@VAR_OH = common dso_local global i64 0, align 8
@VAR_OVERLAY_H = common dso_local global i64 0, align 8
@VAR_HSUB = common dso_local global i64 0, align 8
@VAR_VSUB = common dso_local global i64 0, align 8
@NAN = common dso_local global i8* null, align 8
@VAR_X = common dso_local global i64 0, align 8
@VAR_Y = common dso_local global i64 0, align 8
@VAR_N = common dso_local global i64 0, align 8
@VAR_T = common dso_local global i64 0, align 8
@VAR_POS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@alpha_pix_fmts = common dso_local global i32 0, align 4
@EVAL_MODE_INIT = common dso_local global i64 0, align 8
@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"x:%f xi:%d y:%f yi:%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"main w:%d h:%d fmt:%s overlay w:%d h:%d fmt:%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*)* @config_input_overlay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_input_overlay(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  store %struct.TYPE_16__* %10, %struct.TYPE_16__** %4, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %5, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.TYPE_14__* @av_pix_fmt_desc_get(i32 %18)
  store %struct.TYPE_14__* %19, %struct.TYPE_14__** %7, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 11
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %24 = call i32 @av_image_fill_max_pixsteps(i32 %22, i32* null, %struct.TYPE_14__* %23)
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %26, align 8
  %28 = load i64, i64* @MAIN, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %27, i64 %28
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* @VAR_MW, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  store i32 %32, i32* %37, align 4
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* @VAR_MAIN_W, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  store i32 %32, i32* %42, align 4
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %44, align 8
  %46 = load i64, i64* @MAIN, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %45, i64 %46
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* @VAR_MH, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32 %50, i32* %55, align 4
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* @VAR_MAIN_H, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  store i32 %50, i32* %60, align 4
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %62, align 8
  %64 = load i64, i64* @OVERLAY, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %63, i64 %64
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* @VAR_OW, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  store i32 %68, i32* %73, align 4
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i64, i64* @VAR_OVERLAY_W, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  store i32 %68, i32* %78, align 4
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %80, align 8
  %82 = load i64, i64* @OVERLAY, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %81, i64 %82
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* @VAR_OH, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  store i32 %86, i32* %91, align 4
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i64, i64* @VAR_OVERLAY_H, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  store i32 %86, i32* %96, align 4
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = shl i32 1, %99
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i64, i64* @VAR_HSUB, align 8
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  store i32 %100, i32* %105, align 4
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = shl i32 1, %108
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load i64, i64* @VAR_VSUB, align 8
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  store i32 %109, i32* %114, align 4
  %115 = load i8*, i8** @NAN, align 8
  %116 = ptrtoint i8* %115 to i32
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i64, i64* @VAR_X, align 8
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  store i32 %116, i32* %121, align 4
  %122 = load i8*, i8** @NAN, align 8
  %123 = ptrtoint i8* %122 to i32
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load i64, i64* @VAR_Y, align 8
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  store i32 %123, i32* %128, align 4
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = load i64, i64* @VAR_N, align 8
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  store i32 0, i32* %133, align 4
  %134 = load i8*, i8** @NAN, align 8
  %135 = ptrtoint i8* %134 to i32
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = load i64, i64* @VAR_T, align 8
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  store i32 %135, i32* %140, align 4
  %141 = load i8*, i8** @NAN, align 8
  %142 = ptrtoint i8* %141 to i32
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = load i64, i64* @VAR_POS, align 8
  %147 = getelementptr inbounds i32, i32* %145, i64 %146
  store i32 %142, i32* %147, align 4
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 10
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 9
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %154 = call i32 @set_expr(i32* %149, i32 %152, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %struct.TYPE_16__* %153)
  store i32 %154, i32* %6, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %165, label %156

156:                                              ; preds = %1
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 8
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 7
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %163 = call i32 @set_expr(i32* %158, i32 %161, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_16__* %162)
  store i32 %163, i32* %6, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %156, %1
  %166 = load i32, i32* %6, align 4
  store i32 %166, i32* %2, align 4
  br label %269

167:                                              ; preds = %156
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 6
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i64 @ff_fill_rgba_map(i32 %170, i32 %173)
  %175 = icmp sge i64 %174, 0
  %176 = zext i1 %175 to i32
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 1
  store i32 %176, i32* %178, align 8
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @alpha_pix_fmts, align 4
  %183 = call i32 @ff_fmt_is_in(i32 %181, i32 %182)
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 5
  store i32 %183, i32* %185, align 8
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 2
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @EVAL_MODE_INIT, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %215

191:                                              ; preds = %167
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %193 = call i32 @eval_expr(%struct.TYPE_16__* %192)
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %195 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 0
  %198 = load i32*, i32** %197, align 8
  %199 = load i64, i64* @VAR_X, align 8
  %200 = getelementptr inbounds i32, i32* %198, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 4
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 0
  %207 = load i32*, i32** %206, align 8
  %208 = load i64, i64* @VAR_Y, align 8
  %209 = getelementptr inbounds i32, i32* %207, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 8
  %214 = call i32 (%struct.TYPE_16__*, i32, i8*, i32, i32, i32, i32, ...) @av_log(%struct.TYPE_16__* %194, i32 %195, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %201, i32 %204, i32 %210, i32 %213)
  br label %215

215:                                              ; preds = %191, %167
  %216 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %217 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %218 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %218, i32 0, i32 0
  %220 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %219, align 8
  %221 = load i64, i64* @MAIN, align 8
  %222 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %220, i64 %221
  %223 = load %struct.TYPE_12__*, %struct.TYPE_12__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %226, i32 0, i32 0
  %228 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %227, align 8
  %229 = load i64, i64* @MAIN, align 8
  %230 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %228, i64 %229
  %231 = load %struct.TYPE_12__*, %struct.TYPE_12__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %234, i32 0, i32 0
  %236 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %235, align 8
  %237 = load i64, i64* @MAIN, align 8
  %238 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %236, i64 %237
  %239 = load %struct.TYPE_12__*, %struct.TYPE_12__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @av_get_pix_fmt_name(i32 %241)
  %243 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %243, i32 0, i32 0
  %245 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %244, align 8
  %246 = load i64, i64* @OVERLAY, align 8
  %247 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %245, i64 %246
  %248 = load %struct.TYPE_12__*, %struct.TYPE_12__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %251, i32 0, i32 0
  %253 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %252, align 8
  %254 = load i64, i64* @OVERLAY, align 8
  %255 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %253, i64 %254
  %256 = load %struct.TYPE_12__*, %struct.TYPE_12__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %259, i32 0, i32 0
  %261 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %260, align 8
  %262 = load i64, i64* @OVERLAY, align 8
  %263 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %261, i64 %262
  %264 = load %struct.TYPE_12__*, %struct.TYPE_12__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @av_get_pix_fmt_name(i32 %266)
  %268 = call i32 (%struct.TYPE_16__*, i32, i8*, i32, i32, i32, i32, ...) @av_log(%struct.TYPE_16__* %216, i32 %217, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %225, i32 %233, i32 %242, i32 %250, i32 %258, i32 %267)
  store i32 0, i32* %2, align 4
  br label %269

269:                                              ; preds = %215, %165
  %270 = load i32, i32* %2, align 4
  ret i32 %270
}

declare dso_local %struct.TYPE_14__* @av_pix_fmt_desc_get(i32) #1

declare dso_local i32 @av_image_fill_max_pixsteps(i32, i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @set_expr(i32*, i32, i8*, %struct.TYPE_16__*) #1

declare dso_local i64 @ff_fill_rgba_map(i32, i32) #1

declare dso_local i32 @ff_fmt_is_in(i32, i32) #1

declare dso_local i32 @eval_expr(%struct.TYPE_16__*) #1

declare dso_local i32 @av_log(%struct.TYPE_16__*, i32, i8*, i32, i32, i32, i32, ...) #1

declare dso_local i32 @av_get_pix_fmt_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
