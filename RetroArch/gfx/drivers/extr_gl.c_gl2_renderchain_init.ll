; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gl.c_gl2_renderchain_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gl.c_gl2_renderchain_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32, i32, i32, i32, %struct.TYPE_20__*, i32, %struct.TYPE_19__*, i32 }
%struct.TYPE_20__ = type { i8*, i8*, i32, i32 }
%struct.TYPE_19__ = type { i32 (i32, i32*)* }
%struct.TYPE_24__ = type { i32, i32, %struct.gfx_fbo_scale* }
%struct.gfx_fbo_scale = type { i32, float, float, i8*, i8* }
%struct.TYPE_21__ = type { i32, %struct.gfx_fbo_scale* }
%struct.TYPE_22__ = type { i32 }

@.str = private unnamed_addr constant [79 x i8] c"[GL]: Failed to locate FBO functions. Won't be able to use render-to-texture.\0A\00", align 1
@RARCH_SCALE_INPUT = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"[GL]: Creating FBO %d @ %ux%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"[GL]: Creating feedback FBO %d @ %ux%u\0A\00", align 1
@.str.3 = private unnamed_addr constant [127 x i8] c"[GL]: Tried to create feedback FBO of pass #%u, but there are only %d FBO passes. Will use input texture as feedback texture.\0A\00", align 1
@.str.4 = private unnamed_addr constant [64 x i8] c"[GL]: Failed to create FBO targets. Will continue without FBO.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_23__*, %struct.TYPE_24__*, i32, i32)* @gl2_renderchain_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl2_renderchain_init(%struct.TYPE_23__* %0, %struct.TYPE_24__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_21__, align 8
  %13 = alloca %struct.TYPE_22__, align 4
  %14 = alloca %struct.gfx_fbo_scale, align 8
  %15 = alloca %struct.gfx_fbo_scale, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %5, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %17 = call i32 @gl2_shader_info(%struct.TYPE_23__* %16, %struct.TYPE_22__* %13)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  br label %318

20:                                               ; preds = %4
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %22 = icmp ne %struct.TYPE_23__* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %20
  br label %318

28:                                               ; preds = %23
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %10, align 4
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %11, align 4
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 1
  store %struct.gfx_fbo_scale* %14, %struct.gfx_fbo_scale** %36, align 8
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %38 = call i32 @gl2_shader_scale(%struct.TYPE_23__* %37, %struct.TYPE_21__* %12)
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 0
  store i32 %40, i32* %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 1
  store %struct.gfx_fbo_scale* %15, %struct.gfx_fbo_scale** %42, align 8
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %44 = call i32 @gl2_shader_scale(%struct.TYPE_23__* %43, %struct.TYPE_21__* %12)
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %53

48:                                               ; preds = %28
  %49 = getelementptr inbounds %struct.gfx_fbo_scale, %struct.gfx_fbo_scale* %14, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  br label %318

53:                                               ; preds = %48, %28
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 8
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %53
  %59 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0))
  br label %318

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %62, 1
  %64 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = getelementptr inbounds %struct.gfx_fbo_scale, %struct.gfx_fbo_scale* %15, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %60
  %70 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %69, %60
  %75 = getelementptr inbounds %struct.gfx_fbo_scale, %struct.gfx_fbo_scale* %14, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.gfx_fbo_scale, %struct.gfx_fbo_scale* %14, i32 0, i32 1
  store float 1.000000e+00, float* %79, align 4
  %80 = getelementptr inbounds %struct.gfx_fbo_scale, %struct.gfx_fbo_scale* %14, i32 0, i32 2
  store float 1.000000e+00, float* %80, align 8
  %81 = load i8*, i8** @RARCH_SCALE_INPUT, align 8
  %82 = getelementptr inbounds %struct.gfx_fbo_scale, %struct.gfx_fbo_scale* %14, i32 0, i32 3
  store i8* %81, i8** %82, align 8
  %83 = getelementptr inbounds %struct.gfx_fbo_scale, %struct.gfx_fbo_scale* %14, i32 0, i32 4
  store i8* %81, i8** %83, align 8
  %84 = getelementptr inbounds %struct.gfx_fbo_scale, %struct.gfx_fbo_scale* %14, i32 0, i32 0
  store i32 1, i32* %84, align 8
  br label %85

85:                                               ; preds = %78, %74
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 2
  %88 = load %struct.gfx_fbo_scale*, %struct.gfx_fbo_scale** %87, align 8
  %89 = getelementptr inbounds %struct.gfx_fbo_scale, %struct.gfx_fbo_scale* %88, i64 0
  %90 = bitcast %struct.gfx_fbo_scale* %89 to i8*
  %91 = bitcast %struct.gfx_fbo_scale* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %90, i8* align 8 %91, i64 32, i1 false)
  store i32 1, i32* %9, align 4
  br label %92

92:                                               ; preds = %158, %85
  %93 = load i32, i32* %9, align 4
  %94 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp slt i32 %93, %96
  br i1 %97, label %98, label %161

98:                                               ; preds = %92
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, 1
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 0
  store i32 %100, i32* %101, align 8
  %102 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %102, i32 0, i32 2
  %104 = load %struct.gfx_fbo_scale*, %struct.gfx_fbo_scale** %103, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.gfx_fbo_scale, %struct.gfx_fbo_scale* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 1
  store %struct.gfx_fbo_scale* %107, %struct.gfx_fbo_scale** %108, align 8
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %110 = call i32 @gl2_shader_scale(%struct.TYPE_23__* %109, %struct.TYPE_21__* %12)
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %111, i32 0, i32 2
  %113 = load %struct.gfx_fbo_scale*, %struct.gfx_fbo_scale** %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.gfx_fbo_scale, %struct.gfx_fbo_scale* %113, i64 %115
  %117 = getelementptr inbounds %struct.gfx_fbo_scale, %struct.gfx_fbo_scale* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %157, label %120

120:                                              ; preds = %98
  %121 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %121, i32 0, i32 2
  %123 = load %struct.gfx_fbo_scale*, %struct.gfx_fbo_scale** %122, align 8
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.gfx_fbo_scale, %struct.gfx_fbo_scale* %123, i64 %125
  %127 = getelementptr inbounds %struct.gfx_fbo_scale, %struct.gfx_fbo_scale* %126, i32 0, i32 2
  store float 1.000000e+00, float* %127, align 8
  %128 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %128, i32 0, i32 2
  %130 = load %struct.gfx_fbo_scale*, %struct.gfx_fbo_scale** %129, align 8
  %131 = load i32, i32* %9, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.gfx_fbo_scale, %struct.gfx_fbo_scale* %130, i64 %132
  %134 = getelementptr inbounds %struct.gfx_fbo_scale, %struct.gfx_fbo_scale* %133, i32 0, i32 1
  store float 1.000000e+00, float* %134, align 4
  %135 = load i8*, i8** @RARCH_SCALE_INPUT, align 8
  %136 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %136, i32 0, i32 2
  %138 = load %struct.gfx_fbo_scale*, %struct.gfx_fbo_scale** %137, align 8
  %139 = load i32, i32* %9, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.gfx_fbo_scale, %struct.gfx_fbo_scale* %138, i64 %140
  %142 = getelementptr inbounds %struct.gfx_fbo_scale, %struct.gfx_fbo_scale* %141, i32 0, i32 3
  store i8* %135, i8** %142, align 8
  %143 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %143, i32 0, i32 2
  %145 = load %struct.gfx_fbo_scale*, %struct.gfx_fbo_scale** %144, align 8
  %146 = load i32, i32* %9, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.gfx_fbo_scale, %struct.gfx_fbo_scale* %145, i64 %147
  %149 = getelementptr inbounds %struct.gfx_fbo_scale, %struct.gfx_fbo_scale* %148, i32 0, i32 4
  store i8* %135, i8** %149, align 8
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %150, i32 0, i32 2
  %152 = load %struct.gfx_fbo_scale*, %struct.gfx_fbo_scale** %151, align 8
  %153 = load i32, i32* %9, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.gfx_fbo_scale, %struct.gfx_fbo_scale* %152, i64 %154
  %156 = getelementptr inbounds %struct.gfx_fbo_scale, %struct.gfx_fbo_scale* %155, i32 0, i32 0
  store i32 1, i32* %156, align 8
  br label %157

157:                                              ; preds = %120, %98
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %9, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %9, align 4
  br label %92

161:                                              ; preds = %92
  %162 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %163 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %164 = load i32, i32* %7, align 4
  %165 = load i32, i32* %8, align 4
  %166 = load i32, i32* %10, align 4
  %167 = load i32, i32* %11, align 4
  %168 = call i32 @gl2_renderchain_recompute_pass_sizes(%struct.TYPE_23__* %162, %struct.TYPE_24__* %163, i32 %164, i32 %165, i32 %166, i32 %167)
  store i32 0, i32* %9, align 4
  br label %169

169:                                              ; preds = %226, %161
  %170 = load i32, i32* %9, align 4
  %171 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = icmp slt i32 %170, %173
  br i1 %174, label %175, label %229

175:                                              ; preds = %169
  %176 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %176, i32 0, i32 5
  %178 = load %struct.TYPE_20__*, %struct.TYPE_20__** %177, align 8
  %179 = load i32, i32* %9, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = call i8* @next_pow2(i32 %183)
  %185 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %185, i32 0, i32 5
  %187 = load %struct.TYPE_20__*, %struct.TYPE_20__** %186, align 8
  %188 = load i32, i32* %9, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %190, i32 0, i32 1
  store i8* %184, i8** %191, align 8
  %192 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %192, i32 0, i32 5
  %194 = load %struct.TYPE_20__*, %struct.TYPE_20__** %193, align 8
  %195 = load i32, i32* %9, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = call i8* @next_pow2(i32 %199)
  %201 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %201, i32 0, i32 5
  %203 = load %struct.TYPE_20__*, %struct.TYPE_20__** %202, align 8
  %204 = load i32, i32* %9, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %206, i32 0, i32 0
  store i8* %200, i8** %207, align 8
  %208 = load i32, i32* %9, align 4
  %209 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %209, i32 0, i32 5
  %211 = load %struct.TYPE_20__*, %struct.TYPE_20__** %210, align 8
  %212 = load i32, i32* %9, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %214, i32 0, i32 1
  %216 = load i8*, i8** %215, align 8
  %217 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %217, i32 0, i32 5
  %219 = load %struct.TYPE_20__*, %struct.TYPE_20__** %218, align 8
  %220 = load i32, i32* %9, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %219, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %222, i32 0, i32 0
  %224 = load i8*, i8** %223, align 8
  %225 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %208, i8* %216, i8* %224)
  br label %226

226:                                              ; preds = %175
  %227 = load i32, i32* %9, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %9, align 4
  br label %169

229:                                              ; preds = %169
  %230 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %230, i32 0, i32 7
  %232 = load %struct.TYPE_19__*, %struct.TYPE_19__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %232, i32 0, i32 0
  %234 = load i32 (i32, i32*)*, i32 (i32, i32*)** %233, align 8
  %235 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %235, i32 0, i32 6
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %238, i32 0, i32 3
  %240 = call i32 %234(i32 %237, i32* %239)
  %241 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %241, i32 0, i32 2
  store i32 %240, i32* %242, align 8
  %243 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 8
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %278

247:                                              ; preds = %229
  %248 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %249 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %248, i32 0, i32 3
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = icmp ult i32 %250, %253
  br i1 %254, label %255, label %278

255:                                              ; preds = %247
  %256 = load i32, i32* %9, align 4
  %257 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %258 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %257, i32 0, i32 5
  %259 = load %struct.TYPE_20__*, %struct.TYPE_20__** %258, align 8
  %260 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %261 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %260, i32 0, i32 3
  %262 = load i32, i32* %261, align 4
  %263 = zext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %259, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %264, i32 0, i32 1
  %266 = load i8*, i8** %265, align 8
  %267 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %268 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %267, i32 0, i32 5
  %269 = load %struct.TYPE_20__*, %struct.TYPE_20__** %268, align 8
  %270 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %270, i32 0, i32 3
  %272 = load i32, i32* %271, align 4
  %273 = zext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %269, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %274, i32 0, i32 0
  %276 = load i8*, i8** %275, align 8
  %277 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %256, i8* %266, i8* %276)
  br label %295

278:                                              ; preds = %247, %229
  %279 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %280 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %279, i32 0, i32 2
  %281 = load i32, i32* %280, align 8
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %294

283:                                              ; preds = %278
  %284 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %285 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %284, i32 0, i32 3
  %286 = load i32, i32* %285, align 4
  %287 = zext i32 %286 to i64
  %288 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %289 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str.3, i64 0, i64 0), i64 %287, i32 %290)
  %292 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %292, i32 0, i32 2
  store i32 0, i32* %293, align 8
  br label %294

294:                                              ; preds = %283, %278
  br label %295

295:                                              ; preds = %294, %255
  %296 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %297 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %298 = call i32 @gl2_create_fbo_textures(%struct.TYPE_23__* %296, %struct.TYPE_24__* %297)
  %299 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %300 = icmp ne %struct.TYPE_23__* %299, null
  br i1 %300, label %301, label %306

301:                                              ; preds = %295
  %302 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %303 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %304 = call i32 @gl2_create_fbo_targets(%struct.TYPE_23__* %302, %struct.TYPE_24__* %303)
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %315, label %306

306:                                              ; preds = %301, %295
  %307 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %308 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %311 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 4
  %313 = call i32 @glDeleteTextures(i32 %309, i32 %312)
  %314 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0))
  br label %318

315:                                              ; preds = %301
  %316 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %317 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %316, i32 0, i32 4
  store i32 1, i32* %317, align 8
  br label %318

318:                                              ; preds = %315, %306, %58, %52, %27, %19
  ret void
}

declare dso_local i32 @gl2_shader_info(%struct.TYPE_23__*, %struct.TYPE_22__*) #1

declare dso_local i32 @gl2_shader_scale(%struct.TYPE_23__*, %struct.TYPE_21__*) #1

declare dso_local i32 @RARCH_ERR(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @gl2_renderchain_recompute_pass_sizes(%struct.TYPE_23__*, %struct.TYPE_24__*, i32, i32, i32, i32) #1

declare dso_local i8* @next_pow2(i32) #1

declare dso_local i32 @RARCH_LOG(i8*, i32, i8*, i8*) #1

declare dso_local i32 @RARCH_WARN(i8*, i64, i32) #1

declare dso_local i32 @gl2_create_fbo_textures(%struct.TYPE_23__*, %struct.TYPE_24__*) #1

declare dso_local i32 @gl2_create_fbo_targets(%struct.TYPE_23__*, %struct.TYPE_24__*) #1

declare dso_local i32 @glDeleteTextures(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
