; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_d3d_w32_font.c_d3dfonts_w32_render_msg.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_d3d_w32_font.c_d3dfonts_w32_render_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.font_params = type { i32, i32, double, i32, i32, float, float, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_10__, %struct.TYPE_10__ }

@DT_LEFT = common dso_local global i32 0, align 4
@DT_RIGHT = common dso_local global i32 0, align 4
@DT_CENTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i8*, i8*, %struct.font_params*)* @d3dfonts_w32_render_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d3dfonts_w32_render_msg(%struct.TYPE_8__* %0, i8* %1, i8* %2, %struct.font_params* %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.font_params*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_10__, align 4
  %15 = alloca %struct.TYPE_10__, align 4
  %16 = alloca %struct.TYPE_10__*, align 8
  %17 = alloca %struct.TYPE_10__*, align 8
  %18 = alloca %struct.TYPE_9__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.font_params* %3, %struct.font_params** %8, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %16, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %17, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = bitcast i8* %29 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %30, %struct.TYPE_9__** %18, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %19, align 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %20, align 4
  store float 0x3FD3333340000000, float* %21, align 4
  store float 1.000000e+00, float* %22, align 4
  store i32 -2, i32* %23, align 4
  store i32 -2, i32* %24, align 4
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %38 = icmp ne %struct.TYPE_9__* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %4
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = icmp ne %struct.TYPE_7__* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i8*, i8** %7, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %44, %39, %4
  br label %249

48:                                               ; preds = %44
  %49 = load i32, i32* @DT_LEFT, align 4
  store i32 %49, i32* %9, align 4
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  store %struct.TYPE_10__* %53, %struct.TYPE_10__** %17, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  store %struct.TYPE_10__* %57, %struct.TYPE_10__** %16, align 8
  %58 = load %struct.font_params*, %struct.font_params** %8, align 8
  %59 = icmp ne %struct.font_params* %58, null
  br i1 %59, label %60, label %184

60:                                               ; preds = %48
  %61 = load %struct.font_params*, %struct.font_params** %8, align 8
  %62 = getelementptr inbounds %struct.font_params, %struct.font_params* %61, i32 0, i32 7
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @FONT_COLOR_GET_ALPHA(i32 %63)
  store i32 %64, i32* %10, align 4
  %65 = load %struct.font_params*, %struct.font_params** %8, align 8
  %66 = getelementptr inbounds %struct.font_params, %struct.font_params* %65, i32 0, i32 7
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @FONT_COLOR_GET_RED(i32 %67)
  store i32 %68, i32* %11, align 4
  %69 = load %struct.font_params*, %struct.font_params** %8, align 8
  %70 = getelementptr inbounds %struct.font_params, %struct.font_params* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @FONT_COLOR_GET_GREEN(i32 %71)
  store i32 %72, i32* %12, align 4
  %73 = load %struct.font_params*, %struct.font_params** %8, align 8
  %74 = getelementptr inbounds %struct.font_params, %struct.font_params* %73, i32 0, i32 7
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @FONT_COLOR_GET_BLUE(i32 %75)
  store i32 %76, i32* %13, align 4
  %77 = load %struct.font_params*, %struct.font_params** %8, align 8
  %78 = getelementptr inbounds %struct.font_params, %struct.font_params* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  switch i32 %79, label %112 [
    i32 128, label %80
    i32 130, label %89
    i32 129, label %111
  ]

80:                                               ; preds = %60
  %81 = load i32, i32* @DT_RIGHT, align 4
  store i32 %81, i32* %9, align 4
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  store i32 0, i32* %82, align 4
  %83 = load %struct.font_params*, %struct.font_params** %8, align 8
  %84 = getelementptr inbounds %struct.font_params, %struct.font_params* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %19, align 4
  %87 = mul i32 %85, %86
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  store i32 %87, i32* %88, align 4
  br label %122

89:                                               ; preds = %60
  %90 = load i32, i32* @DT_CENTER, align 4
  store i32 %90, i32* %9, align 4
  %91 = load %struct.font_params*, %struct.font_params** %8, align 8
  %92 = getelementptr inbounds %struct.font_params, %struct.font_params* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = uitofp i32 %93 to double
  %95 = fsub double %94, 1.000000e+00
  %96 = load i32, i32* %19, align 4
  %97 = uitofp i32 %96 to double
  %98 = fmul double %95, %97
  %99 = fptoui double %98 to i32
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  store i32 %99, i32* %100, align 4
  %101 = load %struct.font_params*, %struct.font_params** %8, align 8
  %102 = getelementptr inbounds %struct.font_params, %struct.font_params* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = uitofp i32 %103 to double
  %105 = fadd double %104, 1.000000e+00
  %106 = load i32, i32* %19, align 4
  %107 = uitofp i32 %106 to double
  %108 = fmul double %105, %107
  %109 = fptoui double %108 to i32
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  store i32 %109, i32* %110, align 4
  br label %122

111:                                              ; preds = %60
  br label %112

112:                                              ; preds = %60, %111
  %113 = load i32, i32* @DT_LEFT, align 4
  store i32 %113, i32* %9, align 4
  %114 = load %struct.font_params*, %struct.font_params** %8, align 8
  %115 = getelementptr inbounds %struct.font_params, %struct.font_params* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %19, align 4
  %118 = mul i32 %116, %117
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  store i32 %118, i32* %119, align 4
  %120 = load i32, i32* %19, align 4
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  store i32 %120, i32* %121, align 4
  br label %122

122:                                              ; preds = %112, %89, %80
  %123 = load %struct.font_params*, %struct.font_params** %8, align 8
  %124 = getelementptr inbounds %struct.font_params, %struct.font_params* %123, i32 0, i32 2
  %125 = load double, double* %124, align 8
  %126 = fsub double 1.000000e+00, %125
  %127 = load i32, i32* %20, align 4
  %128 = uitofp i32 %127 to double
  %129 = fmul double %126, %128
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = sitofp i32 %132 to double
  %134 = fsub double %129, %133
  %135 = fptosi double %134 to i32
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  store i32 %135, i32* %136, align 4
  %137 = load i32, i32* %20, align 4
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 3
  store i32 %137, i32* %138, align 4
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %17, align 8
  %139 = load %struct.font_params*, %struct.font_params** %8, align 8
  %140 = getelementptr inbounds %struct.font_params, %struct.font_params* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  store i32 %141, i32* %23, align 4
  %142 = load %struct.font_params*, %struct.font_params** %8, align 8
  %143 = getelementptr inbounds %struct.font_params, %struct.font_params* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 4
  store i32 %144, i32* %24, align 4
  %145 = load i32, i32* %23, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %150, label %147

147:                                              ; preds = %122
  %148 = load i32, i32* %24, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %183

150:                                              ; preds = %147, %122
  %151 = load %struct.font_params*, %struct.font_params** %8, align 8
  %152 = getelementptr inbounds %struct.font_params, %struct.font_params* %151, i32 0, i32 5
  %153 = load float, float* %152, align 8
  store float %153, float* %21, align 4
  %154 = load %struct.font_params*, %struct.font_params** %8, align 8
  %155 = getelementptr inbounds %struct.font_params, %struct.font_params* %154, i32 0, i32 6
  %156 = load float, float* %155, align 4
  store float %156, float* %22, align 4
  %157 = bitcast %struct.TYPE_10__* %15 to i8*
  %158 = bitcast %struct.TYPE_10__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %157, i8* align 4 %158, i64 16, i1 false)
  %159 = load %struct.font_params*, %struct.font_params** %8, align 8
  %160 = getelementptr inbounds %struct.font_params, %struct.font_params* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = add i32 %163, %161
  store i32 %164, i32* %162, align 4
  %165 = load %struct.font_params*, %struct.font_params** %8, align 8
  %166 = getelementptr inbounds %struct.font_params, %struct.font_params* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = add i32 %169, %167
  store i32 %170, i32* %168, align 4
  %171 = load %struct.font_params*, %struct.font_params** %8, align 8
  %172 = getelementptr inbounds %struct.font_params, %struct.font_params* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 4
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = sub nsw i32 %175, %173
  store i32 %176, i32* %174, align 4
  %177 = load %struct.font_params*, %struct.font_params** %8, align 8
  %178 = getelementptr inbounds %struct.font_params, %struct.font_params* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 4
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = sub i32 %181, %179
  store i32 %182, i32* %180, align 4
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %16, align 8
  br label %183

183:                                              ; preds = %150, %147
  br label %197

184:                                              ; preds = %48
  store i32 255, i32* %10, align 4
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = mul nsw i32 %187, 255
  store i32 %188, i32* %11, align 4
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = mul nsw i32 %191, 255
  store i32 %192, i32* %12, align 4
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 4
  %195 = load i32, i32* %194, align 4
  %196 = mul nsw i32 %195, 255
  store i32 %196, i32* %13, align 4
  br label %197

197:                                              ; preds = %184, %183
  %198 = load i32, i32* %23, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %203, label %200

200:                                              ; preds = %197
  %201 = load i32, i32* %24, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %236

203:                                              ; preds = %200, %197
  %204 = load i32, i32* %10, align 4
  %205 = uitofp i32 %204 to float
  %206 = load float, float* %22, align 4
  %207 = fmul float %205, %206
  %208 = fptoui float %207 to i32
  store i32 %208, i32* %25, align 4
  %209 = load i32, i32* %11, align 4
  %210 = uitofp i32 %209 to float
  %211 = load float, float* %21, align 4
  %212 = fmul float %210, %211
  %213 = fptoui float %212 to i32
  store i32 %213, i32* %26, align 4
  %214 = load i32, i32* %12, align 4
  %215 = uitofp i32 %214 to float
  %216 = load float, float* %21, align 4
  %217 = fmul float %215, %216
  %218 = fptoui float %217 to i32
  store i32 %218, i32* %27, align 4
  %219 = load i32, i32* %13, align 4
  %220 = uitofp i32 %219 to float
  %221 = load float, float* %21, align 4
  %222 = fmul float %220, %221
  %223 = fptoui float %222 to i32
  store i32 %223, i32* %28, align 4
  %224 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = load i8*, i8** %7, align 8
  %228 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %229 = load i32, i32* %9, align 4
  %230 = load i32, i32* %25, align 4
  %231 = load i32, i32* %26, align 4
  %232 = load i32, i32* %27, align 4
  %233 = load i32, i32* %28, align 4
  %234 = call i32 @D3DCOLOR_ARGB(i32 %230, i32 %231, i32 %232, i32 %233)
  %235 = call i32 @d3d9x_font_draw_text(i32 %226, i32* null, i8* %227, i32 -1, %struct.TYPE_10__* %228, i32 %229, i32 %234)
  br label %236

236:                                              ; preds = %203, %200
  %237 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %238 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = load i8*, i8** %7, align 8
  %241 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %242 = load i32, i32* %9, align 4
  %243 = load i32, i32* %10, align 4
  %244 = load i32, i32* %11, align 4
  %245 = load i32, i32* %12, align 4
  %246 = load i32, i32* %13, align 4
  %247 = call i32 @D3DCOLOR_ARGB(i32 %243, i32 %244, i32 %245, i32 %246)
  %248 = call i32 @d3d9x_font_draw_text(i32 %239, i32* null, i8* %240, i32 -1, %struct.TYPE_10__* %241, i32 %242, i32 %247)
  br label %249

249:                                              ; preds = %236, %47
  ret void
}

declare dso_local i32 @FONT_COLOR_GET_ALPHA(i32) #1

declare dso_local i32 @FONT_COLOR_GET_RED(i32) #1

declare dso_local i32 @FONT_COLOR_GET_GREEN(i32) #1

declare dso_local i32 @FONT_COLOR_GET_BLUE(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @d3d9x_font_draw_text(i32, i32*, i8*, i32, %struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @D3DCOLOR_ARGB(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
