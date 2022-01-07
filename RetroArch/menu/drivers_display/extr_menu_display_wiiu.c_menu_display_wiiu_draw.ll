; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers_display/extr_menu_display_wiiu.c_menu_display_wiiu_draw.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers_display/extr_menu_display_wiiu.c_menu_display_wiiu_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_38__ = type { %struct.TYPE_32__, %struct.TYPE_48__ }
%struct.TYPE_32__ = type { %struct.TYPE_31__* }
%struct.TYPE_31__ = type { i32, i32 }
%struct.TYPE_48__ = type { %struct.TYPE_47__* }
%struct.TYPE_47__ = type { i32 }
%struct.TYPE_37__ = type { float, double, double, i64, %struct.TYPE_46__*, i32, %struct.TYPE_39__ }
%struct.TYPE_46__ = type { i32, float*, i32*, float* }
%struct.TYPE_39__ = type { i32 }
%struct.TYPE_35__ = type { i64 }
%struct.TYPE_34__ = type { %struct.TYPE_33__, i32, i32, %struct.TYPE_43__, %struct.TYPE_40__, i32 }
%struct.TYPE_33__ = type { i32, i32, %struct.TYPE_36__* }
%struct.TYPE_36__ = type { %struct.TYPE_41__, %struct.TYPE_45__, %struct.TYPE_44__ }
%struct.TYPE_41__ = type { i32, i32, i32, i32 }
%struct.TYPE_45__ = type { float, float, float, float }
%struct.TYPE_44__ = type { float, float, double, i32 }
%struct.TYPE_43__ = type { %struct.TYPE_42__ }
%struct.TYPE_42__ = type { double }
%struct.TYPE_40__ = type { i32, i32, %struct.TYPE_36__* }

@GX2_SHADER_MODE_UNIFORM_BLOCK = common dso_local global i32 0, align 4
@ribbon_shader = common dso_local global %struct.TYPE_38__ zeroinitializer, align 8
@ribbon_simple_shader = common dso_local global %struct.TYPE_38__ zeroinitializer, align 8
@snow_simple_shader = common dso_local global %struct.TYPE_38__ zeroinitializer, align 8
@snow_shader = common dso_local global %struct.TYPE_38__ zeroinitializer, align 8
@bokeh_shader = common dso_local global %struct.TYPE_38__ zeroinitializer, align 8
@snowflake_shader = common dso_local global %struct.TYPE_38__ zeroinitializer, align 8
@GX2_PRIMITIVE_MODE_TRIANGLE_STRIP = common dso_local global i32 0, align 4
@GX2_RENDER_TARGET_0 = common dso_local global i32 0, align 4
@GX2_BLEND_MODE_SRC_ALPHA = common dso_local global i32 0, align 4
@GX2_BLEND_MODE_INV_SRC_ALPHA = common dso_local global i32 0, align 4
@GX2_BLEND_COMBINE_MODE_ADD = common dso_local global i32 0, align 4
@GX2_ENABLE = common dso_local global i32 0, align 4
@GX2_PRIMITIVE_MODE_QUADS = common dso_local global i32 0, align 4
@tex_shader = common dso_local global %struct.TYPE_38__ zeroinitializer, align 8
@sprite_shader = common dso_local global %struct.TYPE_38__ zeroinitializer, align 8
@GX2_PRIMITIVE_MODE_POINTS = common dso_local global i32 0, align 4
@GX2_SHADER_MODE_GEOMETRY_SHADER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_37__*, %struct.TYPE_35__*)* @menu_display_wiiu_draw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @menu_display_wiiu_draw(%struct.TYPE_37__* %0, %struct.TYPE_35__* %1) #0 {
  %3 = alloca %struct.TYPE_37__*, align 8
  %4 = alloca %struct.TYPE_35__*, align 8
  %5 = alloca %struct.TYPE_34__*, align 8
  %6 = alloca %struct.TYPE_36__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_36__*, align 8
  %9 = alloca %struct.TYPE_41__, align 4
  store %struct.TYPE_37__* %0, %struct.TYPE_37__** %3, align 8
  store %struct.TYPE_35__* %1, %struct.TYPE_35__** %4, align 8
  %10 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.TYPE_34__*
  store %struct.TYPE_34__* %13, %struct.TYPE_34__** %5, align 8
  %14 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %15 = icmp ne %struct.TYPE_34__* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %18 = icmp ne %struct.TYPE_37__* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16, %2
  br label %696

20:                                               ; preds = %16
  %21 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %21, i32 0, i32 6
  %23 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %72

26:                                               ; preds = %20
  %27 = load i32, i32* @GX2_SHADER_MODE_UNIFORM_BLOCK, align 4
  %28 = call i32 @GX2SetShaderMode(i32 %27)
  %29 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %29, i32 0, i32 6
  %31 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %45 [
    i32 133, label %33
    i32 132, label %35
    i32 131, label %37
    i32 130, label %39
    i32 129, label %41
    i32 128, label %43
  ]

33:                                               ; preds = %26
  %34 = call i32 @GX2SetShader(%struct.TYPE_38__* @ribbon_shader)
  br label %46

35:                                               ; preds = %26
  %36 = call i32 @GX2SetShader(%struct.TYPE_38__* @ribbon_simple_shader)
  br label %46

37:                                               ; preds = %26
  %38 = call i32 @GX2SetShader(%struct.TYPE_38__* @snow_simple_shader)
  br label %46

39:                                               ; preds = %26
  %40 = call i32 @GX2SetShader(%struct.TYPE_38__* @snow_shader)
  br label %46

41:                                               ; preds = %26
  %42 = call i32 @GX2SetShader(%struct.TYPE_38__* @bokeh_shader)
  br label %46

43:                                               ; preds = %26
  %44 = call i32 @GX2SetShader(%struct.TYPE_38__* @snowflake_shader)
  br label %46

45:                                               ; preds = %26
  br label %46

46:                                               ; preds = %45, %43, %41, %39, %37, %35, %33
  %47 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %47, i32 0, i32 6
  %49 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %71 [
    i32 133, label %51
    i32 132, label %51
    i32 131, label %68
    i32 130, label %68
    i32 129, label %68
    i32 128, label %68
  ]

51:                                               ; preds = %46, %46
  %52 = load i32, i32* @GX2_PRIMITIVE_MODE_TRIANGLE_STRIP, align 4
  %53 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %53, i32 0, i32 4
  %55 = load %struct.TYPE_46__*, %struct.TYPE_46__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @GX2DrawEx(i32 %52, i32 %57, i32 0, i32 1)
  %59 = load i32, i32* @GX2_RENDER_TARGET_0, align 4
  %60 = load i32, i32* @GX2_BLEND_MODE_SRC_ALPHA, align 4
  %61 = load i32, i32* @GX2_BLEND_MODE_INV_SRC_ALPHA, align 4
  %62 = load i32, i32* @GX2_BLEND_COMBINE_MODE_ADD, align 4
  %63 = load i32, i32* @GX2_ENABLE, align 4
  %64 = load i32, i32* @GX2_BLEND_MODE_SRC_ALPHA, align 4
  %65 = load i32, i32* @GX2_BLEND_MODE_INV_SRC_ALPHA, align 4
  %66 = load i32, i32* @GX2_BLEND_COMBINE_MODE_ADD, align 4
  %67 = call i32 @GX2SetBlendControl(i32 %59, i32 %60, i32 %61, i32 %62, i32 %63, i32 %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %46, %46, %46, %46, %51
  %69 = load i32, i32* @GX2_PRIMITIVE_MODE_QUADS, align 4
  %70 = call i32 @GX2DrawEx(i32 %69, i32 4, i32 0, i32 1)
  br label %71

71:                                               ; preds = %46, %68
  br label %656

72:                                               ; preds = %20
  %73 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %73, i32 0, i32 4
  %75 = load %struct.TYPE_46__*, %struct.TYPE_46__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %75, i32 0, i32 1
  %77 = load float*, float** %76, align 8
  %78 = icmp ne float* %77, null
  br i1 %78, label %95, label %79

79:                                               ; preds = %72
  %80 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %80, i32 0, i32 4
  %82 = load %struct.TYPE_46__*, %struct.TYPE_46__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %87, i32 0, i32 4
  %89 = load %struct.TYPE_46__*, %struct.TYPE_46__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 12
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %86, %93
  br i1 %94, label %95, label %517

95:                                               ; preds = %79, %72
  %96 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %99, 4
  %101 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp sgt i32 %100, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %95
  br label %696

107:                                              ; preds = %95
  %108 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %109, i32 0, i32 2
  %111 = load %struct.TYPE_36__*, %struct.TYPE_36__** %110, align 8
  %112 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %112, i32 0, i32 4
  %114 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %111, i64 %116
  store %struct.TYPE_36__* %117, %struct.TYPE_36__** %6, align 8
  %118 = load i32, i32* @GX2_SHADER_MODE_UNIFORM_BLOCK, align 4
  %119 = call i32 @GX2SetShaderMode(i32 %118)
  %120 = call i32 @GX2SetShader(%struct.TYPE_38__* @tex_shader)
  %121 = load %struct.TYPE_31__*, %struct.TYPE_31__** getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tex_shader, i32 0, i32 0, i32 0), align 8
  %122 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %121, i64 0
  %123 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_31__*, %struct.TYPE_31__** getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tex_shader, i32 0, i32 0, i32 0), align 8
  %126 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %125, i64 0
  %127 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @GX2SetVertexUniformBlock(i32 %124, i32 %128, i32 %131)
  %133 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %133, i32 0, i32 4
  %135 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = sext i32 %136 to i64
  %138 = mul i64 %137, 56
  %139 = trunc i64 %138 to i32
  %140 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %140, i32 0, i32 4
  %142 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %141, i32 0, i32 2
  %143 = load %struct.TYPE_36__*, %struct.TYPE_36__** %142, align 8
  %144 = call i32 @GX2SetAttribBuffer(i32 0, i32 %139, i32 56, %struct.TYPE_36__* %143)
  %145 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %145, i32 0, i32 4
  %147 = load %struct.TYPE_46__*, %struct.TYPE_46__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %147, i32 0, i32 1
  %149 = load float*, float** %148, align 8
  %150 = icmp ne float* %149, null
  br i1 %150, label %184, label %151

151:                                              ; preds = %107
  %152 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %152, i64 0
  %154 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %154, i32 0, i32 0
  store float 0.000000e+00, float* %155, align 8
  %156 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %156, i64 0
  %158 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %158, i32 0, i32 1
  store float 1.000000e+00, float* %159, align 4
  %160 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %160, i64 1
  %162 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %162, i32 0, i32 0
  store float 1.000000e+00, float* %163, align 8
  %164 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %164, i64 1
  %166 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %166, i32 0, i32 1
  store float 1.000000e+00, float* %167, align 4
  %168 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %168, i64 2
  %170 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %170, i32 0, i32 0
  store float 0.000000e+00, float* %171, align 8
  %172 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %172, i64 2
  %174 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %174, i32 0, i32 1
  store float 0.000000e+00, float* %175, align 4
  %176 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %176, i64 3
  %178 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %178, i32 0, i32 0
  store float 1.000000e+00, float* %179, align 8
  %180 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %180, i64 3
  %182 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %182, i32 0, i32 1
  store float 0.000000e+00, float* %183, align 4
  br label %285

184:                                              ; preds = %107
  %185 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %185, i32 0, i32 4
  %187 = load %struct.TYPE_46__*, %struct.TYPE_46__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %187, i32 0, i32 1
  %189 = load float*, float** %188, align 8
  %190 = getelementptr inbounds float, float* %189, i64 0
  %191 = load float, float* %190, align 4
  %192 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %192, i64 0
  %194 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %194, i32 0, i32 0
  store float %191, float* %195, align 8
  %196 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %196, i32 0, i32 4
  %198 = load %struct.TYPE_46__*, %struct.TYPE_46__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %198, i32 0, i32 1
  %200 = load float*, float** %199, align 8
  %201 = getelementptr inbounds float, float* %200, i64 1
  %202 = load float, float* %201, align 4
  %203 = fpext float %202 to double
  %204 = fsub double 1.000000e+00, %203
  %205 = fptrunc double %204 to float
  %206 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %206, i64 0
  %208 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %208, i32 0, i32 1
  store float %205, float* %209, align 4
  %210 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %210, i32 0, i32 4
  %212 = load %struct.TYPE_46__*, %struct.TYPE_46__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %212, i32 0, i32 1
  %214 = load float*, float** %213, align 8
  %215 = getelementptr inbounds float, float* %214, i64 2
  %216 = load float, float* %215, align 4
  %217 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %217, i64 1
  %219 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %219, i32 0, i32 0
  store float %216, float* %220, align 8
  %221 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %221, i32 0, i32 4
  %223 = load %struct.TYPE_46__*, %struct.TYPE_46__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %223, i32 0, i32 1
  %225 = load float*, float** %224, align 8
  %226 = getelementptr inbounds float, float* %225, i64 3
  %227 = load float, float* %226, align 4
  %228 = fpext float %227 to double
  %229 = fsub double 1.000000e+00, %228
  %230 = fptrunc double %229 to float
  %231 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %231, i64 1
  %233 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %232, i32 0, i32 2
  %234 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %233, i32 0, i32 1
  store float %230, float* %234, align 4
  %235 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %235, i32 0, i32 4
  %237 = load %struct.TYPE_46__*, %struct.TYPE_46__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %237, i32 0, i32 1
  %239 = load float*, float** %238, align 8
  %240 = getelementptr inbounds float, float* %239, i64 4
  %241 = load float, float* %240, align 4
  %242 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %242, i64 2
  %244 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %243, i32 0, i32 2
  %245 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %244, i32 0, i32 0
  store float %241, float* %245, align 8
  %246 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %247 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %246, i32 0, i32 4
  %248 = load %struct.TYPE_46__*, %struct.TYPE_46__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %248, i32 0, i32 1
  %250 = load float*, float** %249, align 8
  %251 = getelementptr inbounds float, float* %250, i64 5
  %252 = load float, float* %251, align 4
  %253 = fpext float %252 to double
  %254 = fsub double 1.000000e+00, %253
  %255 = fptrunc double %254 to float
  %256 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %256, i64 2
  %258 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %257, i32 0, i32 2
  %259 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %258, i32 0, i32 1
  store float %255, float* %259, align 4
  %260 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %261 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %260, i32 0, i32 4
  %262 = load %struct.TYPE_46__*, %struct.TYPE_46__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %262, i32 0, i32 1
  %264 = load float*, float** %263, align 8
  %265 = getelementptr inbounds float, float* %264, i64 6
  %266 = load float, float* %265, align 4
  %267 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %267, i64 3
  %269 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %268, i32 0, i32 2
  %270 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %269, i32 0, i32 0
  store float %266, float* %270, align 8
  %271 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %272 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %271, i32 0, i32 4
  %273 = load %struct.TYPE_46__*, %struct.TYPE_46__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %273, i32 0, i32 1
  %275 = load float*, float** %274, align 8
  %276 = getelementptr inbounds float, float* %275, i64 7
  %277 = load float, float* %276, align 4
  %278 = fpext float %277 to double
  %279 = fsub double 1.000000e+00, %278
  %280 = fptrunc double %279 to float
  %281 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %282 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %281, i64 3
  %283 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %282, i32 0, i32 2
  %284 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %283, i32 0, i32 1
  store float %280, float* %284, align 4
  br label %285

285:                                              ; preds = %184, %151
  %286 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %287 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %286, i32 0, i32 4
  %288 = load %struct.TYPE_46__*, %struct.TYPE_46__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %288, i32 0, i32 3
  %290 = load float*, float** %289, align 8
  %291 = icmp ne float* %290, null
  br i1 %291, label %325, label %292

292:                                              ; preds = %285
  %293 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %294 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %293, i64 0
  %295 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %294, i32 0, i32 1
  %296 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %295, i32 0, i32 0
  store float 0.000000e+00, float* %296, align 8
  %297 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %298 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %297, i64 0
  %299 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %298, i32 0, i32 1
  %300 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %299, i32 0, i32 1
  store float 1.000000e+00, float* %300, align 4
  %301 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %302 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %301, i64 1
  %303 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %302, i32 0, i32 1
  %304 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %303, i32 0, i32 0
  store float 1.000000e+00, float* %304, align 8
  %305 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %306 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %305, i64 1
  %307 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %306, i32 0, i32 1
  %308 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %307, i32 0, i32 1
  store float 1.000000e+00, float* %308, align 4
  %309 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %310 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %309, i64 2
  %311 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %310, i32 0, i32 1
  %312 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %311, i32 0, i32 0
  store float 0.000000e+00, float* %312, align 8
  %313 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %314 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %313, i64 2
  %315 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %314, i32 0, i32 1
  %316 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %315, i32 0, i32 1
  store float 0.000000e+00, float* %316, align 4
  %317 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %318 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %317, i64 3
  %319 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %318, i32 0, i32 1
  %320 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %319, i32 0, i32 0
  store float 1.000000e+00, float* %320, align 8
  %321 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %322 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %321, i64 3
  %323 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %322, i32 0, i32 1
  %324 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %323, i32 0, i32 1
  store float 0.000000e+00, float* %324, align 4
  br label %414

325:                                              ; preds = %285
  %326 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %327 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %326, i32 0, i32 4
  %328 = load %struct.TYPE_46__*, %struct.TYPE_46__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %328, i32 0, i32 3
  %330 = load float*, float** %329, align 8
  %331 = getelementptr inbounds float, float* %330, i64 0
  %332 = load float, float* %331, align 4
  %333 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %334 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %333, i64 0
  %335 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %334, i32 0, i32 1
  %336 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %335, i32 0, i32 0
  store float %332, float* %336, align 8
  %337 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %338 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %337, i32 0, i32 4
  %339 = load %struct.TYPE_46__*, %struct.TYPE_46__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %339, i32 0, i32 3
  %341 = load float*, float** %340, align 8
  %342 = getelementptr inbounds float, float* %341, i64 1
  %343 = load float, float* %342, align 4
  %344 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %345 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %344, i64 0
  %346 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %345, i32 0, i32 1
  %347 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %346, i32 0, i32 1
  store float %343, float* %347, align 4
  %348 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %349 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %348, i32 0, i32 4
  %350 = load %struct.TYPE_46__*, %struct.TYPE_46__** %349, align 8
  %351 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %350, i32 0, i32 3
  %352 = load float*, float** %351, align 8
  %353 = getelementptr inbounds float, float* %352, i64 2
  %354 = load float, float* %353, align 4
  %355 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %356 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %355, i64 1
  %357 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %356, i32 0, i32 1
  %358 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %357, i32 0, i32 0
  store float %354, float* %358, align 8
  %359 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %360 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %359, i32 0, i32 4
  %361 = load %struct.TYPE_46__*, %struct.TYPE_46__** %360, align 8
  %362 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %361, i32 0, i32 3
  %363 = load float*, float** %362, align 8
  %364 = getelementptr inbounds float, float* %363, i64 3
  %365 = load float, float* %364, align 4
  %366 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %367 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %366, i64 1
  %368 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %367, i32 0, i32 1
  %369 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %368, i32 0, i32 1
  store float %365, float* %369, align 4
  %370 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %371 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %370, i32 0, i32 4
  %372 = load %struct.TYPE_46__*, %struct.TYPE_46__** %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %372, i32 0, i32 3
  %374 = load float*, float** %373, align 8
  %375 = getelementptr inbounds float, float* %374, i64 4
  %376 = load float, float* %375, align 4
  %377 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %378 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %377, i64 2
  %379 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %378, i32 0, i32 1
  %380 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %379, i32 0, i32 0
  store float %376, float* %380, align 8
  %381 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %382 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %381, i32 0, i32 4
  %383 = load %struct.TYPE_46__*, %struct.TYPE_46__** %382, align 8
  %384 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %383, i32 0, i32 3
  %385 = load float*, float** %384, align 8
  %386 = getelementptr inbounds float, float* %385, i64 5
  %387 = load float, float* %386, align 4
  %388 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %389 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %388, i64 2
  %390 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %389, i32 0, i32 1
  %391 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %390, i32 0, i32 1
  store float %387, float* %391, align 4
  %392 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %393 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %392, i32 0, i32 4
  %394 = load %struct.TYPE_46__*, %struct.TYPE_46__** %393, align 8
  %395 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %394, i32 0, i32 3
  %396 = load float*, float** %395, align 8
  %397 = getelementptr inbounds float, float* %396, i64 6
  %398 = load float, float* %397, align 4
  %399 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %400 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %399, i64 3
  %401 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %400, i32 0, i32 1
  %402 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %401, i32 0, i32 0
  store float %398, float* %402, align 8
  %403 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %404 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %403, i32 0, i32 4
  %405 = load %struct.TYPE_46__*, %struct.TYPE_46__** %404, align 8
  %406 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %405, i32 0, i32 3
  %407 = load float*, float** %406, align 8
  %408 = getelementptr inbounds float, float* %407, i64 7
  %409 = load float, float* %408, align 4
  %410 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %411 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %410, i64 3
  %412 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %411, i32 0, i32 1
  %413 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %412, i32 0, i32 1
  store float %409, float* %413, align 4
  br label %414

414:                                              ; preds = %325, %292
  store i32 0, i32* %7, align 4
  br label %415

415:                                              ; preds = %487, %414
  %416 = load i32, i32* %7, align 4
  %417 = icmp slt i32 %416, 4
  br i1 %417, label %418, label %490

418:                                              ; preds = %415
  %419 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %420 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %419, i32 0, i32 4
  %421 = load %struct.TYPE_46__*, %struct.TYPE_46__** %420, align 8
  %422 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %421, i32 0, i32 2
  %423 = load i32*, i32** %422, align 8
  %424 = load i32, i32* %7, align 4
  %425 = shl i32 %424, 2
  %426 = add nsw i32 %425, 0
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds i32, i32* %423, i64 %427
  %429 = load i32, i32* %428, align 4
  %430 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %431 = load i32, i32* %7, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %430, i64 %432
  %434 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %433, i32 0, i32 0
  %435 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %434, i32 0, i32 0
  store i32 %429, i32* %435, align 8
  %436 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %437 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %436, i32 0, i32 4
  %438 = load %struct.TYPE_46__*, %struct.TYPE_46__** %437, align 8
  %439 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %438, i32 0, i32 2
  %440 = load i32*, i32** %439, align 8
  %441 = load i32, i32* %7, align 4
  %442 = shl i32 %441, 2
  %443 = add nsw i32 %442, 1
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds i32, i32* %440, i64 %444
  %446 = load i32, i32* %445, align 4
  %447 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %448 = load i32, i32* %7, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %447, i64 %449
  %451 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %450, i32 0, i32 0
  %452 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %451, i32 0, i32 1
  store i32 %446, i32* %452, align 4
  %453 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %454 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %453, i32 0, i32 4
  %455 = load %struct.TYPE_46__*, %struct.TYPE_46__** %454, align 8
  %456 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %455, i32 0, i32 2
  %457 = load i32*, i32** %456, align 8
  %458 = load i32, i32* %7, align 4
  %459 = shl i32 %458, 2
  %460 = add nsw i32 %459, 2
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds i32, i32* %457, i64 %461
  %463 = load i32, i32* %462, align 4
  %464 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %465 = load i32, i32* %7, align 4
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %464, i64 %466
  %468 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %467, i32 0, i32 0
  %469 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %468, i32 0, i32 2
  store i32 %463, i32* %469, align 8
  %470 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %471 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %470, i32 0, i32 4
  %472 = load %struct.TYPE_46__*, %struct.TYPE_46__** %471, align 8
  %473 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %472, i32 0, i32 2
  %474 = load i32*, i32** %473, align 8
  %475 = load i32, i32* %7, align 4
  %476 = shl i32 %475, 2
  %477 = add nsw i32 %476, 3
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds i32, i32* %474, i64 %478
  %480 = load i32, i32* %479, align 4
  %481 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %482 = load i32, i32* %7, align 4
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %481, i64 %483
  %485 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %484, i32 0, i32 0
  %486 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %485, i32 0, i32 3
  store i32 %480, i32* %486, align 4
  br label %487

487:                                              ; preds = %418
  %488 = load i32, i32* %7, align 4
  %489 = add nsw i32 %488, 1
  store i32 %489, i32* %7, align 4
  br label %415

490:                                              ; preds = %415
  %491 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %492 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %491, i32 0, i32 3
  %493 = load i64, i64* %492, align 8
  %494 = icmp ne i64 %493, 0
  br i1 %494, label %495, label %505

495:                                              ; preds = %490
  %496 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %497 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %496, i32 0, i32 3
  %498 = load i64, i64* %497, align 8
  %499 = inttoptr i64 %498 to i32*
  %500 = load %struct.TYPE_47__*, %struct.TYPE_47__** getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tex_shader, i32 0, i32 1, i32 0), align 8
  %501 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %500, i64 0
  %502 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %501, i32 0, i32 0
  %503 = load i32, i32* %502, align 4
  %504 = call i32 @GX2SetPixelTexture(i32* %499, i32 %503)
  br label %505

505:                                              ; preds = %495, %490
  %506 = load i32, i32* @GX2_PRIMITIVE_MODE_TRIANGLE_STRIP, align 4
  %507 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %508 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %507, i32 0, i32 4
  %509 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %508, i32 0, i32 0
  %510 = load i32, i32* %509, align 8
  %511 = call i32 @GX2DrawEx(i32 %506, i32 4, i32 %510, i32 1)
  %512 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %513 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %512, i32 0, i32 4
  %514 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %513, i32 0, i32 0
  %515 = load i32, i32* %514, align 8
  %516 = add nsw i32 %515, 4
  store i32 %516, i32* %514, align 8
  br label %655

517:                                              ; preds = %79
  %518 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %519 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %518, i32 0, i32 0
  %520 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %519, i32 0, i32 0
  %521 = load i32, i32* %520, align 8
  %522 = add nsw i32 %521, 1
  %523 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %524 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %523, i32 0, i32 0
  %525 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %524, i32 0, i32 1
  %526 = load i32, i32* %525, align 4
  %527 = icmp sgt i32 %522, %526
  br i1 %527, label %528, label %529

528:                                              ; preds = %517
  br label %696

529:                                              ; preds = %517
  %530 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %531 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %530, i32 0, i32 0
  %532 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %531, i32 0, i32 2
  %533 = load %struct.TYPE_36__*, %struct.TYPE_36__** %532, align 8
  %534 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %535 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %534, i32 0, i32 0
  %536 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %535, i32 0, i32 0
  %537 = load i32, i32* %536, align 8
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %533, i64 %538
  store %struct.TYPE_36__* %539, %struct.TYPE_36__** %8, align 8
  %540 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %541 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %540, i32 0, i32 0
  %542 = load float, float* %541, align 8
  %543 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %544 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %543, i32 0, i32 2
  %545 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %544, i32 0, i32 0
  store float %542, float* %545, align 8
  %546 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %547 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %546, i32 0, i32 3
  %548 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %547, i32 0, i32 0
  %549 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %548, i32 0, i32 0
  %550 = load double, double* %549, align 8
  %551 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %552 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %551, i32 0, i32 1
  %553 = load double, double* %552, align 8
  %554 = fsub double %550, %553
  %555 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %556 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %555, i32 0, i32 2
  %557 = load double, double* %556, align 8
  %558 = fsub double %554, %557
  %559 = fptrunc double %558 to float
  %560 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %561 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %560, i32 0, i32 2
  %562 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %561, i32 0, i32 1
  store float %559, float* %562, align 4
  %563 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %564 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %563, i32 0, i32 5
  %565 = load i32, i32* %564, align 8
  %566 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %567 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %566, i32 0, i32 2
  %568 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %567, i32 0, i32 3
  store i32 %565, i32* %568, align 8
  %569 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %570 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %569, i32 0, i32 2
  %571 = load double, double* %570, align 8
  %572 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %573 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %572, i32 0, i32 2
  %574 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %573, i32 0, i32 2
  store double %571, double* %574, align 8
  %575 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %576 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %575, i32 0, i32 1
  %577 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %576, i32 0, i32 0
  store float 0.000000e+00, float* %577, align 8
  %578 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %579 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %578, i32 0, i32 1
  %580 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %579, i32 0, i32 1
  store float 0.000000e+00, float* %580, align 4
  %581 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %582 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %581, i32 0, i32 1
  %583 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %582, i32 0, i32 2
  store float 1.000000e+00, float* %583, align 8
  %584 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %585 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %584, i32 0, i32 1
  %586 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %585, i32 0, i32 3
  store float 1.000000e+00, float* %586, align 4
  %587 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %588 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %587, i32 0, i32 0
  %589 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %590 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %589, i32 0, i32 4
  %591 = load %struct.TYPE_46__*, %struct.TYPE_46__** %590, align 8
  %592 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %591, i32 0, i32 2
  %593 = load i32*, i32** %592, align 8
  %594 = getelementptr inbounds i32, i32* %593, i64 0
  %595 = load i32, i32* %594, align 4
  %596 = mul nsw i32 255, %595
  %597 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %598 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %597, i32 0, i32 4
  %599 = load %struct.TYPE_46__*, %struct.TYPE_46__** %598, align 8
  %600 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %599, i32 0, i32 2
  %601 = load i32*, i32** %600, align 8
  %602 = getelementptr inbounds i32, i32* %601, i64 1
  %603 = load i32, i32* %602, align 4
  %604 = mul nsw i32 255, %603
  %605 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %606 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %605, i32 0, i32 4
  %607 = load %struct.TYPE_46__*, %struct.TYPE_46__** %606, align 8
  %608 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %607, i32 0, i32 2
  %609 = load i32*, i32** %608, align 8
  %610 = getelementptr inbounds i32, i32* %609, i64 2
  %611 = load i32, i32* %610, align 4
  %612 = mul nsw i32 255, %611
  %613 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %614 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %613, i32 0, i32 4
  %615 = load %struct.TYPE_46__*, %struct.TYPE_46__** %614, align 8
  %616 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %615, i32 0, i32 2
  %617 = load i32*, i32** %616, align 8
  %618 = getelementptr inbounds i32, i32* %617, i64 3
  %619 = load i32, i32* %618, align 4
  %620 = mul nsw i32 255, %619
  %621 = call { i64, i64 } @COLOR_RGBA(i32 %596, i32 %604, i32 %612, i32 %620)
  %622 = bitcast %struct.TYPE_41__* %9 to { i64, i64 }*
  %623 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %622, i32 0, i32 0
  %624 = extractvalue { i64, i64 } %621, 0
  store i64 %624, i64* %623, align 4
  %625 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %622, i32 0, i32 1
  %626 = extractvalue { i64, i64 } %621, 1
  store i64 %626, i64* %625, align 4
  %627 = bitcast %struct.TYPE_41__* %588 to i8*
  %628 = bitcast %struct.TYPE_41__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %627, i8* align 4 %628, i64 16, i1 false)
  %629 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %630 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %629, i32 0, i32 3
  %631 = load i64, i64* %630, align 8
  %632 = icmp ne i64 %631, 0
  br i1 %632, label %633, label %643

633:                                              ; preds = %529
  %634 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %635 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %634, i32 0, i32 3
  %636 = load i64, i64* %635, align 8
  %637 = inttoptr i64 %636 to i32*
  %638 = load %struct.TYPE_47__*, %struct.TYPE_47__** getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @sprite_shader, i32 0, i32 1, i32 0), align 8
  %639 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %638, i64 0
  %640 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %639, i32 0, i32 0
  %641 = load i32, i32* %640, align 4
  %642 = call i32 @GX2SetPixelTexture(i32* %637, i32 %641)
  br label %643

643:                                              ; preds = %633, %529
  %644 = load i32, i32* @GX2_PRIMITIVE_MODE_POINTS, align 4
  %645 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %646 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %645, i32 0, i32 0
  %647 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %646, i32 0, i32 0
  %648 = load i32, i32* %647, align 8
  %649 = call i32 @GX2DrawEx(i32 %644, i32 1, i32 %648, i32 1)
  %650 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %651 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %650, i32 0, i32 0
  %652 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %651, i32 0, i32 0
  %653 = load i32, i32* %652, align 8
  %654 = add nsw i32 %653, 1
  store i32 %654, i32* %652, align 8
  br label %696

655:                                              ; preds = %505
  br label %656

656:                                              ; preds = %655, %71
  %657 = load i32, i32* @GX2_SHADER_MODE_GEOMETRY_SHADER, align 4
  %658 = call i32 @GX2SetShaderMode(i32 %657)
  %659 = call i32 @GX2SetShader(%struct.TYPE_38__* @sprite_shader)
  %660 = load %struct.TYPE_31__*, %struct.TYPE_31__** getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @sprite_shader, i32 0, i32 0, i32 0), align 8
  %661 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %660, i64 0
  %662 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %661, i32 0, i32 1
  %663 = load i32, i32* %662, align 4
  %664 = load %struct.TYPE_31__*, %struct.TYPE_31__** getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @sprite_shader, i32 0, i32 0, i32 0), align 8
  %665 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %664, i64 0
  %666 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %665, i32 0, i32 0
  %667 = load i32, i32* %666, align 4
  %668 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %669 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %668, i32 0, i32 2
  %670 = load i32, i32* %669, align 4
  %671 = call i32 @GX2SetVertexUniformBlock(i32 %663, i32 %667, i32 %670)
  %672 = load %struct.TYPE_31__*, %struct.TYPE_31__** getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @sprite_shader, i32 0, i32 0, i32 0), align 8
  %673 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %672, i64 1
  %674 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %673, i32 0, i32 1
  %675 = load i32, i32* %674, align 4
  %676 = load %struct.TYPE_31__*, %struct.TYPE_31__** getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @sprite_shader, i32 0, i32 0, i32 0), align 8
  %677 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %676, i64 1
  %678 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %677, i32 0, i32 0
  %679 = load i32, i32* %678, align 4
  %680 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %681 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %680, i32 0, i32 1
  %682 = load i32, i32* %681, align 8
  %683 = call i32 @GX2SetVertexUniformBlock(i32 %675, i32 %679, i32 %682)
  %684 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %685 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %684, i32 0, i32 0
  %686 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %685, i32 0, i32 1
  %687 = load i32, i32* %686, align 4
  %688 = sext i32 %687 to i64
  %689 = mul i64 %688, 56
  %690 = trunc i64 %689 to i32
  %691 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %692 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %691, i32 0, i32 0
  %693 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %692, i32 0, i32 2
  %694 = load %struct.TYPE_36__*, %struct.TYPE_36__** %693, align 8
  %695 = call i32 @GX2SetAttribBuffer(i32 0, i32 %690, i32 56, %struct.TYPE_36__* %694)
  br label %696

696:                                              ; preds = %656, %643, %528, %106, %19
  ret void
}

declare dso_local i32 @GX2SetShaderMode(i32) #1

declare dso_local i32 @GX2SetShader(%struct.TYPE_38__*) #1

declare dso_local i32 @GX2DrawEx(i32, i32, i32, i32) #1

declare dso_local i32 @GX2SetBlendControl(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GX2SetVertexUniformBlock(i32, i32, i32) #1

declare dso_local i32 @GX2SetAttribBuffer(i32, i32, i32, %struct.TYPE_36__*) #1

declare dso_local i32 @GX2SetPixelTexture(i32*, i32) #1

declare dso_local { i64, i64 } @COLOR_RGBA(i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
