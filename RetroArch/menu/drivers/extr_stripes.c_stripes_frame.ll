; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_stripes_frame.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_stripes_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_38__ = type { i32, i32, i64 }
%struct.TYPE_32__ = type { float, i32, i32, i32, i32, i32* }
%struct.TYPE_40__ = type { i32, i32, float, i32, double, double, %struct.TYPE_33__, i32, i64, i32*, i32, i32, i32, %struct.TYPE_35__, %struct.TYPE_35__ }
%struct.TYPE_33__ = type { i32* }
%struct.TYPE_35__ = type { %struct.TYPE_37__ }
%struct.TYPE_37__ = type { %struct.TYPE_36__ }
%struct.TYPE_36__ = type { i64 }
%struct.TYPE_41__ = type { %struct.TYPE_34__ }
%struct.TYPE_34__ = type { float }
%struct.TYPE_39__ = type { double, float, i64, float, double, float }
%struct.TYPE_42__ = type { i32, i32 }

@stripes_coord_black = common dso_local global i64* null, align 8
@stripes_coord_white = common dso_local global i64* null, align 8
@MENU_LIST_HORIZONTAL = common dso_local global i32 0, align 4
@stripes_item_color = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s\0A%s\00", align 1
@STRIPES_TEXTURE_POINTER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_38__*)* @stripes_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stripes_frame(i8* %0, %struct.TYPE_38__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_38__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_32__, align 8
  %8 = alloca [1024 x i8], align 16
  %9 = alloca [255 x i8], align 16
  %10 = alloca [255 x i8], align 16
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca %struct.TYPE_40__*, align 8
  %23 = alloca %struct.TYPE_41__*, align 8
  %24 = alloca %struct.TYPE_39__*, align 8
  %25 = alloca [3 x float], align 4
  %26 = alloca [16 x float], align 16
  %27 = alloca %struct.TYPE_39__*, align 8
  %28 = alloca %struct.TYPE_32__, align 8
  %29 = alloca i32, align 4
  %30 = alloca i64, align 8
  %31 = alloca float, align 4
  %32 = alloca float, align 4
  %33 = alloca float, align 4
  %34 = alloca float, align 4
  %35 = alloca i8*, align 8
  %36 = alloca i8*, align 8
  %37 = alloca %struct.TYPE_42__, align 4
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_38__* %1, %struct.TYPE_38__** %4, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i32 50, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32* null, i32** %15, align 8
  %38 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %16, align 4
  %41 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %17, align 4
  store float 0x3FEEB851E0000000, float* %18, align 4
  store float 0.000000e+00, float* %19, align 4
  store float 0.000000e+00, float* %20, align 4
  store float 2.850000e+02, float* %21, align 4
  %44 = load i8*, i8** %3, align 8
  %45 = bitcast i8* %44 to %struct.TYPE_40__*
  store %struct.TYPE_40__* %45, %struct.TYPE_40__** %22, align 8
  %46 = call %struct.TYPE_41__* (...) @config_get_ptr()
  store %struct.TYPE_41__* %46, %struct.TYPE_41__** %23, align 8
  %47 = load %struct.TYPE_40__*, %struct.TYPE_40__** %22, align 8
  %48 = icmp ne %struct.TYPE_40__* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %2
  br label %485

50:                                               ; preds = %2
  %51 = load %struct.TYPE_41__*, %struct.TYPE_41__** %23, align 8
  %52 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %52, i32 0, i32 0
  %54 = load float, float* %53, align 4
  %55 = load i32, i32* %16, align 4
  %56 = uitofp i32 %55 to float
  %57 = fmul float %54, %56
  %58 = fdiv float %57, 1.920000e+03
  store float %58, float* %19, align 4
  %59 = load %struct.TYPE_40__*, %struct.TYPE_40__** %22, align 8
  %60 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = mul nsw i32 %61, 4
  %63 = load %struct.TYPE_40__*, %struct.TYPE_40__** %22, align 8
  %64 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = sdiv i32 %65, 4
  %67 = sub nsw i32 %62, %66
  %68 = sitofp i32 %67 to float
  store float %68, float* %20, align 4
  %69 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  store i8 0, i8* %69, align 16
  %70 = getelementptr inbounds [255 x i8], [255 x i8]* %9, i64 0, i64 0
  store i8 0, i8* %70, align 16
  %71 = getelementptr inbounds [255 x i8], [255 x i8]* %10, i64 0, i64 0
  store i8 0, i8* %71, align 16
  %72 = load %struct.TYPE_40__*, %struct.TYPE_40__** %22, align 8
  %73 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %72, i32 0, i32 11
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_40__*, %struct.TYPE_40__** %22, align 8
  %76 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %75, i32 0, i32 14
  %77 = call i32 @font_driver_bind_block(i32 %74, %struct.TYPE_35__* %76)
  %78 = load %struct.TYPE_40__*, %struct.TYPE_40__** %22, align 8
  %79 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %78, i32 0, i32 10
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_40__*, %struct.TYPE_40__** %22, align 8
  %82 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %81, i32 0, i32 13
  %83 = call i32 @font_driver_bind_block(i32 %80, %struct.TYPE_35__* %82)
  %84 = load %struct.TYPE_40__*, %struct.TYPE_40__** %22, align 8
  %85 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %84, i32 0, i32 14
  %86 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %87, i32 0, i32 0
  store i64 0, i64* %88, align 8
  %89 = load %struct.TYPE_40__*, %struct.TYPE_40__** %22, align 8
  %90 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %89, i32 0, i32 13
  %91 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %92, i32 0, i32 0
  store i64 0, i64* %93, align 8
  %94 = load i64*, i64** @stripes_coord_black, align 8
  %95 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = sitofp i64 %97 to float
  %99 = fdiv float %98, 1.000000e+02
  %100 = load %struct.TYPE_40__*, %struct.TYPE_40__** %22, align 8
  %101 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %100, i32 0, i32 2
  %102 = load float, float* %101, align 8
  %103 = call float @MIN(float %99, float %102)
  %104 = call i32 @menu_display_set_alpha(i64* %94, float %103)
  %105 = load i64*, i64** @stripes_coord_white, align 8
  %106 = load %struct.TYPE_40__*, %struct.TYPE_40__** %22, align 8
  %107 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %106, i32 0, i32 2
  %108 = load float, float* %107, align 8
  %109 = call i32 @menu_display_set_alpha(i64* %105, float %108)
  %110 = load %struct.TYPE_40__*, %struct.TYPE_40__** %22, align 8
  %111 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %112 = load i32, i32* %16, align 4
  %113 = load i32, i32* %17, align 4
  %114 = call i32 @stripes_draw_bg(%struct.TYPE_40__* %110, %struct.TYPE_38__* %111, i32 %112, i32 %113)
  %115 = call i64 (...) @menu_navigation_get_selection()
  store i64 %115, i64* %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %7, i32 0, i32 5
  store i32* %5, i32** %116, align 8
  %117 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %7, i32 0, i32 0
  store float 0.000000e+00, float* %117, align 8
  %118 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %7, i32 0, i32 1
  store i32 1, i32* %118, align 4
  %119 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %7, i32 0, i32 2
  store i32 1, i32* %119, align 8
  %120 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %7, i32 0, i32 3
  store i32 1, i32* %120, align 4
  %121 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %7, i32 0, i32 4
  store i32 1, i32* %121, align 8
  %122 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %123 = call i32 @menu_display_rotate_z(%struct.TYPE_32__* %7, %struct.TYPE_38__* %122)
  %124 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %125 = call i32 @menu_display_blend_begin(%struct.TYPE_38__* %124)
  store i32 0, i32* %6, align 4
  br label %126

126:                                              ; preds = %254, %50
  %127 = load i32, i32* %6, align 4
  %128 = load %struct.TYPE_40__*, %struct.TYPE_40__** %22, align 8
  %129 = load i32, i32* @MENU_LIST_HORIZONTAL, align 4
  %130 = call i32 @stripes_list_get_size(%struct.TYPE_40__* %128, i32 %129)
  %131 = load %struct.TYPE_40__*, %struct.TYPE_40__** %22, align 8
  %132 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = add i32 %130, %133
  %135 = icmp ule i32 %127, %134
  br i1 %135, label %136, label %257

136:                                              ; preds = %126
  %137 = load %struct.TYPE_40__*, %struct.TYPE_40__** %22, align 8
  %138 = load i32, i32* %6, align 4
  %139 = call %struct.TYPE_39__* @stripes_get_node(%struct.TYPE_40__* %137, i32 %138)
  store %struct.TYPE_39__* %139, %struct.TYPE_39__** %24, align 8
  %140 = load %struct.TYPE_39__*, %struct.TYPE_39__** %24, align 8
  %141 = icmp ne %struct.TYPE_39__* %140, null
  br i1 %141, label %143, label %142

142:                                              ; preds = %136
  br label %254

143:                                              ; preds = %136
  %144 = load i32, i32* %6, align 4
  %145 = uitofp i32 %144 to float
  %146 = fpext float %145 to double
  %147 = fmul double 7.000000e-02, %146
  %148 = getelementptr inbounds [3 x float], [3 x float]* %25, i64 0, i64 0
  %149 = call i32 @HSLToRGB(double %147, double 5.000000e-01, double 5.000000e-01, float* %148)
  %150 = getelementptr inbounds [16 x float], [16 x float]* %26, i64 0, i64 0
  %151 = getelementptr inbounds [3 x float], [3 x float]* %25, i64 0, i64 0
  %152 = load float, float* %151, align 4
  store float %152, float* %150, align 4
  %153 = getelementptr inbounds float, float* %150, i64 1
  %154 = getelementptr inbounds [3 x float], [3 x float]* %25, i64 0, i64 1
  %155 = load float, float* %154, align 4
  store float %155, float* %153, align 4
  %156 = getelementptr inbounds float, float* %153, i64 1
  %157 = getelementptr inbounds [3 x float], [3 x float]* %25, i64 0, i64 2
  %158 = load float, float* %157, align 4
  store float %158, float* %156, align 4
  %159 = getelementptr inbounds float, float* %156, i64 1
  store float 0x3FE19999A0000000, float* %159, align 4
  %160 = getelementptr inbounds float, float* %159, i64 1
  %161 = getelementptr inbounds [3 x float], [3 x float]* %25, i64 0, i64 0
  %162 = load float, float* %161, align 4
  store float %162, float* %160, align 4
  %163 = getelementptr inbounds float, float* %160, i64 1
  %164 = getelementptr inbounds [3 x float], [3 x float]* %25, i64 0, i64 1
  %165 = load float, float* %164, align 4
  store float %165, float* %163, align 4
  %166 = getelementptr inbounds float, float* %163, i64 1
  %167 = getelementptr inbounds [3 x float], [3 x float]* %25, i64 0, i64 2
  %168 = load float, float* %167, align 4
  store float %168, float* %166, align 4
  %169 = getelementptr inbounds float, float* %166, i64 1
  store float 0x3FE19999A0000000, float* %169, align 4
  %170 = getelementptr inbounds float, float* %169, i64 1
  %171 = getelementptr inbounds [3 x float], [3 x float]* %25, i64 0, i64 0
  %172 = load float, float* %171, align 4
  store float %172, float* %170, align 4
  %173 = getelementptr inbounds float, float* %170, i64 1
  %174 = getelementptr inbounds [3 x float], [3 x float]* %25, i64 0, i64 1
  %175 = load float, float* %174, align 4
  store float %175, float* %173, align 4
  %176 = getelementptr inbounds float, float* %173, i64 1
  %177 = getelementptr inbounds [3 x float], [3 x float]* %25, i64 0, i64 2
  %178 = load float, float* %177, align 4
  store float %178, float* %176, align 4
  %179 = getelementptr inbounds float, float* %176, i64 1
  store float 0x3FE19999A0000000, float* %179, align 4
  %180 = getelementptr inbounds float, float* %179, i64 1
  %181 = getelementptr inbounds [3 x float], [3 x float]* %25, i64 0, i64 0
  %182 = load float, float* %181, align 4
  store float %182, float* %180, align 4
  %183 = getelementptr inbounds float, float* %180, i64 1
  %184 = getelementptr inbounds [3 x float], [3 x float]* %25, i64 0, i64 1
  %185 = load float, float* %184, align 4
  store float %185, float* %183, align 4
  %186 = getelementptr inbounds float, float* %183, i64 1
  %187 = getelementptr inbounds [3 x float], [3 x float]* %25, i64 0, i64 2
  %188 = load float, float* %187, align 4
  store float %188, float* %186, align 4
  %189 = getelementptr inbounds float, float* %186, i64 1
  store float 0x3FE19999A0000000, float* %189, align 4
  %190 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %191 = load %struct.TYPE_40__*, %struct.TYPE_40__** %22, align 8
  %192 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %191, i32 0, i32 4
  %193 = load double, double* %192, align 8
  %194 = load float, float* %21, align 4
  %195 = fpext float %194 to double
  %196 = fadd double %193, %195
  %197 = load %struct.TYPE_40__*, %struct.TYPE_40__** %22, align 8
  %198 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %197, i32 0, i32 4
  %199 = load double, double* %198, align 8
  %200 = load float, float* %21, align 4
  %201 = fpext float %200 to double
  %202 = fadd double %199, %201
  %203 = load %struct.TYPE_39__*, %struct.TYPE_39__** %24, align 8
  %204 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %203, i32 0, i32 0
  %205 = load double, double* %204, align 8
  %206 = fadd double %202, %205
  %207 = load %struct.TYPE_40__*, %struct.TYPE_40__** %22, align 8
  %208 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %207, i32 0, i32 4
  %209 = load double, double* %208, align 8
  %210 = load float, float* %21, align 4
  %211 = fpext float %210 to double
  %212 = fadd double %209, %211
  %213 = load %struct.TYPE_40__*, %struct.TYPE_40__** %22, align 8
  %214 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %213, i32 0, i32 5
  %215 = load double, double* %214, align 8
  %216 = fadd double %212, %215
  %217 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.TYPE_40__*, %struct.TYPE_40__** %22, align 8
  %221 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %220, i32 0, i32 4
  %222 = load double, double* %221, align 8
  %223 = load float, float* %21, align 4
  %224 = fpext float %223 to double
  %225 = fadd double %222, %224
  %226 = load %struct.TYPE_40__*, %struct.TYPE_40__** %22, align 8
  %227 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %226, i32 0, i32 5
  %228 = load double, double* %227, align 8
  %229 = fadd double %225, %228
  %230 = load %struct.TYPE_39__*, %struct.TYPE_39__** %24, align 8
  %231 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %230, i32 0, i32 0
  %232 = load double, double* %231, align 8
  %233 = fadd double %229, %232
  %234 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = getelementptr inbounds [16 x float], [16 x float]* %26, i64 0, i64 0
  %244 = call i32 @menu_display_draw_polygon(%struct.TYPE_38__* %190, double %196, i32 0, double %206, i32 0, double %216, i32 %219, double %233, i32 %236, i32 %239, i32 %242, float* %243)
  %245 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %246 = call i32 @menu_display_blend_begin(%struct.TYPE_38__* %245)
  %247 = load %struct.TYPE_39__*, %struct.TYPE_39__** %24, align 8
  %248 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %247, i32 0, i32 0
  %249 = load double, double* %248, align 8
  %250 = load float, float* %21, align 4
  %251 = fpext float %250 to double
  %252 = fadd double %251, %249
  %253 = fptrunc double %252 to float
  store float %253, float* %21, align 4
  br label %254

254:                                              ; preds = %143, %142
  %255 = load i32, i32* %6, align 4
  %256 = add i32 %255, 1
  store i32 %256, i32* %6, align 4
  br label %126

257:                                              ; preds = %126
  store float 2.850000e+02, float* %21, align 4
  store i32 0, i32* %6, align 4
  br label %258

258:                                              ; preds = %368, %257
  %259 = load i32, i32* %6, align 4
  %260 = load %struct.TYPE_40__*, %struct.TYPE_40__** %22, align 8
  %261 = load i32, i32* @MENU_LIST_HORIZONTAL, align 4
  %262 = call i32 @stripes_list_get_size(%struct.TYPE_40__* %260, i32 %261)
  %263 = load %struct.TYPE_40__*, %struct.TYPE_40__** %22, align 8
  %264 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %263, i32 0, i32 3
  %265 = load i32, i32* %264, align 4
  %266 = add i32 %262, %265
  %267 = icmp ule i32 %259, %266
  br i1 %267, label %268, label %371

268:                                              ; preds = %258
  %269 = load %struct.TYPE_40__*, %struct.TYPE_40__** %22, align 8
  %270 = load i32, i32* %6, align 4
  %271 = call %struct.TYPE_39__* @stripes_get_node(%struct.TYPE_40__* %269, i32 %270)
  store %struct.TYPE_39__* %271, %struct.TYPE_39__** %27, align 8
  %272 = load %struct.TYPE_39__*, %struct.TYPE_39__** %27, align 8
  %273 = icmp ne %struct.TYPE_39__* %272, null
  br i1 %273, label %275, label %274

274:                                              ; preds = %268
  br label %368

275:                                              ; preds = %268
  %276 = load i64*, i64** @stripes_item_color, align 8
  %277 = load %struct.TYPE_39__*, %struct.TYPE_39__** %27, align 8
  %278 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %277, i32 0, i32 1
  %279 = load float, float* %278, align 8
  %280 = load %struct.TYPE_40__*, %struct.TYPE_40__** %22, align 8
  %281 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %280, i32 0, i32 2
  %282 = load float, float* %281, align 8
  %283 = call float @MIN(float %279, float %282)
  %284 = call i32 @menu_display_set_alpha(i64* %276, float %283)
  %285 = load i64*, i64** @stripes_item_color, align 8
  %286 = getelementptr inbounds i64, i64* %285, i64 3
  %287 = load i64, i64* %286, align 8
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %360

289:                                              ; preds = %275
  %290 = load %struct.TYPE_39__*, %struct.TYPE_39__** %27, align 8
  %291 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %290, i32 0, i32 2
  %292 = load i64, i64* %291, align 8
  store i64 %292, i64* %30, align 8
  %293 = load %struct.TYPE_40__*, %struct.TYPE_40__** %22, align 8
  %294 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %293, i32 0, i32 4
  %295 = load double, double* %294, align 8
  %296 = load float, float* %21, align 4
  %297 = fpext float %296 to double
  %298 = fadd double %295, %297
  %299 = load %struct.TYPE_39__*, %struct.TYPE_39__** %27, align 8
  %300 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %299, i32 0, i32 3
  %301 = load float, float* %300, align 8
  %302 = fpext float %301 to double
  %303 = fadd double %298, %302
  %304 = load %struct.TYPE_39__*, %struct.TYPE_39__** %27, align 8
  %305 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %304, i32 0, i32 0
  %306 = load double, double* %305, align 8
  %307 = fdiv double %306, 2.000000e+00
  %308 = fadd double %303, %307
  %309 = load %struct.TYPE_40__*, %struct.TYPE_40__** %22, align 8
  %310 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = sitofp i32 %311 to double
  %313 = fdiv double %312, 2.000000e+00
  %314 = fsub double %308, %313
  %315 = fptrunc double %314 to float
  store float %315, float* %31, align 4
  %316 = load %struct.TYPE_39__*, %struct.TYPE_39__** %27, align 8
  %317 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %316, i32 0, i32 4
  %318 = load double, double* %317, align 8
  %319 = load %struct.TYPE_40__*, %struct.TYPE_40__** %22, align 8
  %320 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 4
  %322 = sitofp i32 %321 to double
  %323 = fdiv double %322, 2.000000e+00
  %324 = fadd double %318, %323
  %325 = fptrunc double %324 to float
  store float %325, float* %32, align 4
  store float 0.000000e+00, float* %33, align 4
  %326 = load %struct.TYPE_39__*, %struct.TYPE_39__** %27, align 8
  %327 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %326, i32 0, i32 5
  %328 = load float, float* %327, align 8
  store float %328, float* %34, align 4
  %329 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %28, i32 0, i32 5
  store i32* %29, i32** %329, align 8
  %330 = load float, float* %33, align 4
  %331 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %28, i32 0, i32 0
  store float %330, float* %331, align 8
  %332 = load float, float* %34, align 4
  %333 = fptosi float %332 to i32
  %334 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %28, i32 0, i32 1
  store i32 %333, i32* %334, align 4
  %335 = load float, float* %34, align 4
  %336 = fptosi float %335 to i32
  %337 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %28, i32 0, i32 2
  store i32 %336, i32* %337, align 8
  %338 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %28, i32 0, i32 3
  store i32 1, i32* %338, align 4
  %339 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %28, i32 0, i32 4
  store i32 1, i32* %339, align 8
  %340 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %341 = call i32 @menu_display_rotate_z(%struct.TYPE_32__* %28, %struct.TYPE_38__* %340)
  %342 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %343 = load %struct.TYPE_40__*, %struct.TYPE_40__** %22, align 8
  %344 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 4
  %346 = sitofp i32 %345 to double
  %347 = load i64, i64* %30, align 8
  %348 = load float, float* %31, align 4
  %349 = load float, float* %32, align 4
  %350 = load i32, i32* %16, align 4
  %351 = load i32, i32* %17, align 4
  %352 = load float, float* %33, align 4
  %353 = load float, float* %34, align 4
  %354 = load i64*, i64** @stripes_item_color, align 8
  %355 = getelementptr inbounds i64, i64* %354, i64 0
  %356 = load %struct.TYPE_40__*, %struct.TYPE_40__** %22, align 8
  %357 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %356, i32 0, i32 12
  %358 = load i32, i32* %357, align 8
  %359 = call i32 @stripes_draw_icon(%struct.TYPE_38__* %342, double %346, i32* %29, i64 %347, float %348, float %349, i32 %350, i32 %351, double 1.000000e+00, float %352, float %353, i64* %355, i32 %358)
  br label %360

360:                                              ; preds = %289, %275
  %361 = load %struct.TYPE_39__*, %struct.TYPE_39__** %27, align 8
  %362 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %361, i32 0, i32 0
  %363 = load double, double* %362, align 8
  %364 = load float, float* %21, align 4
  %365 = fpext float %364 to double
  %366 = fadd double %365, %363
  %367 = fptrunc double %366 to float
  store float %367, float* %21, align 4
  br label %368

368:                                              ; preds = %360, %274
  %369 = load i32, i32* %6, align 4
  %370 = add i32 %369, 1
  store i32 %370, i32* %6, align 4
  br label %258

371:                                              ; preds = %258
  %372 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %373 = call i32 @menu_display_blend_end(%struct.TYPE_38__* %372)
  %374 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %375 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 8
  %377 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %378 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %377, i32 0, i32 1
  %379 = load i32, i32* %378, align 4
  %380 = load %struct.TYPE_40__*, %struct.TYPE_40__** %22, align 8
  %381 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %380, i32 0, i32 11
  %382 = load i32, i32* %381, align 4
  %383 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %384 = call i32 @font_driver_flush(i32 %376, i32 %379, i32 %382, %struct.TYPE_38__* %383)
  %385 = load %struct.TYPE_40__*, %struct.TYPE_40__** %22, align 8
  %386 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %385, i32 0, i32 11
  %387 = load i32, i32* %386, align 4
  %388 = call i32 @font_driver_bind_block(i32 %387, %struct.TYPE_35__* null)
  %389 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %390 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 8
  %392 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %393 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %392, i32 0, i32 1
  %394 = load i32, i32* %393, align 4
  %395 = load %struct.TYPE_40__*, %struct.TYPE_40__** %22, align 8
  %396 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %395, i32 0, i32 10
  %397 = load i32, i32* %396, align 8
  %398 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %399 = call i32 @font_driver_flush(i32 %391, i32 %394, i32 %397, %struct.TYPE_38__* %398)
  %400 = load %struct.TYPE_40__*, %struct.TYPE_40__** %22, align 8
  %401 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %400, i32 0, i32 10
  %402 = load i32, i32* %401, align 8
  %403 = call i32 @font_driver_bind_block(i32 %402, %struct.TYPE_35__* null)
  %404 = call i64 (...) @menu_input_dialog_get_display_kb()
  %405 = icmp ne i64 %404, 0
  br i1 %405, label %406, label %413

406:                                              ; preds = %371
  %407 = call i8* (...) @menu_input_dialog_get_buffer()
  store i8* %407, i8** %35, align 8
  %408 = call i8* (...) @menu_input_dialog_get_label_buffer()
  store i8* %408, i8** %36, align 8
  %409 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %410 = load i8*, i8** %36, align 8
  %411 = load i8*, i8** %35, align 8
  %412 = call i32 @snprintf(i8* %409, i32 1024, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %410, i8* %411)
  store i32 1, i32* %14, align 4
  br label %413

413:                                              ; preds = %406, %371
  %414 = load %struct.TYPE_40__*, %struct.TYPE_40__** %22, align 8
  %415 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %414, i32 0, i32 9
  %416 = load i32*, i32** %415, align 8
  %417 = call i32 @string_is_empty(i32* %416)
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %431, label %419

419:                                              ; preds = %413
  %420 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %421 = load %struct.TYPE_40__*, %struct.TYPE_40__** %22, align 8
  %422 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %421, i32 0, i32 9
  %423 = load i32*, i32** %422, align 8
  %424 = call i32 @strlcpy(i8* %420, i32* %423, i32 1024)
  %425 = load %struct.TYPE_40__*, %struct.TYPE_40__** %22, align 8
  %426 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %425, i32 0, i32 9
  %427 = load i32*, i32** %426, align 8
  %428 = call i32 @free(i32* %427)
  %429 = load %struct.TYPE_40__*, %struct.TYPE_40__** %22, align 8
  %430 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %429, i32 0, i32 9
  store i32* null, i32** %430, align 8
  store i32 1, i32* %14, align 4
  br label %431

431:                                              ; preds = %419, %413
  %432 = load i32, i32* %14, align 4
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %444

434:                                              ; preds = %431
  %435 = load %struct.TYPE_40__*, %struct.TYPE_40__** %22, align 8
  %436 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %437 = load i32, i32* %16, align 4
  %438 = load i32, i32* %17, align 4
  %439 = call i32 @stripes_draw_dark_layer(%struct.TYPE_40__* %435, %struct.TYPE_38__* %436, i32 %437, i32 %438)
  %440 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %441 = load %struct.TYPE_40__*, %struct.TYPE_40__** %22, align 8
  %442 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %443 = call i32 @stripes_render_messagebox_internal(%struct.TYPE_38__* %440, %struct.TYPE_40__* %441, i8* %442)
  br label %444

444:                                              ; preds = %434, %431
  %445 = load %struct.TYPE_40__*, %struct.TYPE_40__** %22, align 8
  %446 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %445, i32 0, i32 8
  %447 = load i64, i64* %446, align 8
  %448 = icmp ne i64 %447, 0
  br i1 %448, label %449, label %477

449:                                              ; preds = %444
  %450 = call i32 @menu_input_get_pointer_state(%struct.TYPE_42__* %37)
  %451 = load i64*, i64** @stripes_coord_white, align 8
  %452 = load %struct.TYPE_40__*, %struct.TYPE_40__** %22, align 8
  %453 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %452, i32 0, i32 2
  %454 = load float, float* %453, align 8
  %455 = call float @MIN(float %454, float 1.000000e+00)
  %456 = call i32 @menu_display_set_alpha(i64* %451, float %455)
  %457 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %458 = load i64*, i64** @stripes_coord_white, align 8
  %459 = getelementptr inbounds i64, i64* %458, i64 0
  %460 = load %struct.TYPE_40__*, %struct.TYPE_40__** %22, align 8
  %461 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %460, i32 0, i32 7
  %462 = load i32, i32* %461, align 8
  %463 = load %struct.TYPE_40__*, %struct.TYPE_40__** %22, align 8
  %464 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %463, i32 0, i32 6
  %465 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %464, i32 0, i32 0
  %466 = load i32*, i32** %465, align 8
  %467 = load i64, i64* @STRIPES_TEXTURE_POINTER, align 8
  %468 = getelementptr inbounds i32, i32* %466, i64 %467
  %469 = load i32, i32* %468, align 4
  %470 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %37, i32 0, i32 1
  %471 = load i32, i32* %470, align 4
  %472 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %37, i32 0, i32 0
  %473 = load i32, i32* %472, align 4
  %474 = load i32, i32* %16, align 4
  %475 = load i32, i32* %17, align 4
  %476 = call i32 @menu_display_draw_cursor(%struct.TYPE_38__* %457, i64* %459, i32 %462, i32 %469, i32 %471, i32 %473, i32 %474, i32 %475)
  br label %477

477:                                              ; preds = %449, %444
  %478 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %479 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %478, i32 0, i32 0
  %480 = load i32, i32* %479, align 8
  %481 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %482 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %481, i32 0, i32 1
  %483 = load i32, i32* %482, align 4
  %484 = call i32 @menu_display_unset_viewport(i32 %480, i32 %483)
  br label %485

485:                                              ; preds = %477, %49
  ret void
}

declare dso_local %struct.TYPE_41__* @config_get_ptr(...) #1

declare dso_local i32 @font_driver_bind_block(i32, %struct.TYPE_35__*) #1

declare dso_local i32 @menu_display_set_alpha(i64*, float) #1

declare dso_local float @MIN(float, float) #1

declare dso_local i32 @stripes_draw_bg(%struct.TYPE_40__*, %struct.TYPE_38__*, i32, i32) #1

declare dso_local i64 @menu_navigation_get_selection(...) #1

declare dso_local i32 @menu_display_rotate_z(%struct.TYPE_32__*, %struct.TYPE_38__*) #1

declare dso_local i32 @menu_display_blend_begin(%struct.TYPE_38__*) #1

declare dso_local i32 @stripes_list_get_size(%struct.TYPE_40__*, i32) #1

declare dso_local %struct.TYPE_39__* @stripes_get_node(%struct.TYPE_40__*, i32) #1

declare dso_local i32 @HSLToRGB(double, double, double, float*) #1

declare dso_local i32 @menu_display_draw_polygon(%struct.TYPE_38__*, double, i32, double, i32, double, i32, double, i32, i32, i32, float*) #1

declare dso_local i32 @stripes_draw_icon(%struct.TYPE_38__*, double, i32*, i64, float, float, i32, i32, double, float, float, i64*, i32) #1

declare dso_local i32 @menu_display_blend_end(%struct.TYPE_38__*) #1

declare dso_local i32 @font_driver_flush(i32, i32, i32, %struct.TYPE_38__*) #1

declare dso_local i64 @menu_input_dialog_get_display_kb(...) #1

declare dso_local i8* @menu_input_dialog_get_buffer(...) #1

declare dso_local i8* @menu_input_dialog_get_label_buffer(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @string_is_empty(i32*) #1

declare dso_local i32 @strlcpy(i8*, i32*, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @stripes_draw_dark_layer(%struct.TYPE_40__*, %struct.TYPE_38__*, i32, i32) #1

declare dso_local i32 @stripes_render_messagebox_internal(%struct.TYPE_38__*, %struct.TYPE_40__*, i8*) #1

declare dso_local i32 @menu_input_get_pointer_state(%struct.TYPE_42__*) #1

declare dso_local i32 @menu_display_draw_cursor(%struct.TYPE_38__*, i64*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @menu_display_unset_viewport(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
