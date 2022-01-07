; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_d3d10_font.c_d3d10_font_render_msg.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_d3d10_font.c_d3d10_font_render_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, float, float, i32, i32, i32 }
%struct.font_params = type { float, float, float, i32, i32, i32, float, float, i32 }

@TEXT_ALIGN_LEFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i8*, i8*, %struct.font_params*)* @d3d10_font_render_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d3d10_font_render_msg(%struct.TYPE_4__* %0, i8* %1, i8* %2, %struct.font_params* %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.font_params*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.font_params* %3, %struct.font_params** %8, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = bitcast i8* %30 to i32*
  store i32* %31, i32** %27, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %28, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %29, align 4
  %38 = load i32*, i32** %27, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %4
  %41 = load i8*, i8** %7, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i8*, i8** %7, align 8
  %45 = load i8, i8* %44, align 1
  %46 = icmp ne i8 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %43, %40, %4
  br label %189

48:                                               ; preds = %43
  %49 = load %struct.font_params*, %struct.font_params** %8, align 8
  %50 = icmp ne %struct.font_params* %49, null
  br i1 %50, label %51, label %97

51:                                               ; preds = %48
  %52 = load %struct.font_params*, %struct.font_params** %8, align 8
  %53 = getelementptr inbounds %struct.font_params, %struct.font_params* %52, i32 0, i32 0
  %54 = load float, float* %53, align 4
  store float %54, float* %9, align 4
  %55 = load %struct.font_params*, %struct.font_params** %8, align 8
  %56 = getelementptr inbounds %struct.font_params, %struct.font_params* %55, i32 0, i32 1
  %57 = load float, float* %56, align 4
  store float %57, float* %10, align 4
  %58 = load %struct.font_params*, %struct.font_params** %8, align 8
  %59 = getelementptr inbounds %struct.font_params, %struct.font_params* %58, i32 0, i32 2
  %60 = load float, float* %59, align 4
  store float %60, float* %11, align 4
  %61 = load %struct.font_params*, %struct.font_params** %8, align 8
  %62 = getelementptr inbounds %struct.font_params, %struct.font_params* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %16, align 4
  %64 = load %struct.font_params*, %struct.font_params** %8, align 8
  %65 = getelementptr inbounds %struct.font_params, %struct.font_params* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %14, align 4
  %67 = load %struct.font_params*, %struct.font_params** %8, align 8
  %68 = getelementptr inbounds %struct.font_params, %struct.font_params* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %15, align 4
  %70 = load %struct.font_params*, %struct.font_params** %8, align 8
  %71 = getelementptr inbounds %struct.font_params, %struct.font_params* %70, i32 0, i32 6
  %72 = load float, float* %71, align 4
  store float %72, float* %12, align 4
  %73 = load %struct.font_params*, %struct.font_params** %8, align 8
  %74 = getelementptr inbounds %struct.font_params, %struct.font_params* %73, i32 0, i32 7
  %75 = load float, float* %74, align 4
  store float %75, float* %13, align 4
  %76 = load %struct.font_params*, %struct.font_params** %8, align 8
  %77 = getelementptr inbounds %struct.font_params, %struct.font_params* %76, i32 0, i32 8
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @FONT_COLOR_GET_RED(i32 %78)
  store i32 %79, i32* %19, align 4
  %80 = load %struct.font_params*, %struct.font_params** %8, align 8
  %81 = getelementptr inbounds %struct.font_params, %struct.font_params* %80, i32 0, i32 8
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @FONT_COLOR_GET_GREEN(i32 %82)
  store i32 %83, i32* %20, align 4
  %84 = load %struct.font_params*, %struct.font_params** %8, align 8
  %85 = getelementptr inbounds %struct.font_params, %struct.font_params* %84, i32 0, i32 8
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @FONT_COLOR_GET_BLUE(i32 %86)
  store i32 %87, i32* %21, align 4
  %88 = load %struct.font_params*, %struct.font_params** %8, align 8
  %89 = getelementptr inbounds %struct.font_params, %struct.font_params* %88, i32 0, i32 8
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @FONT_COLOR_GET_ALPHA(i32 %90)
  store i32 %91, i32* %22, align 4
  %92 = load i32, i32* %19, align 4
  %93 = load i32, i32* %20, align 4
  %94 = load i32, i32* %21, align 4
  %95 = load i32, i32* %22, align 4
  %96 = call i32 @DXGI_COLOR_RGBA(i32 %92, i32 %93, i32 %94, i32 %95)
  store i32 %96, i32* %17, align 4
  br label %122

97:                                               ; preds = %48
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 2
  %100 = load float, float* %99, align 4
  store float %100, float* %9, align 4
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 3
  %103 = load float, float* %102, align 4
  store float %103, float* %10, align 4
  store float 1.000000e+00, float* %11, align 4
  %104 = load i32, i32* @TEXT_ALIGN_LEFT, align 4
  store i32 %104, i32* %16, align 4
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = mul nsw i32 %107, 255
  store i32 %108, i32* %19, align 4
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 4
  %112 = mul nsw i32 %111, 255
  store i32 %112, i32* %20, align 4
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 4
  %116 = mul nsw i32 %115, 255
  store i32 %116, i32* %21, align 4
  store i32 255, i32* %22, align 4
  %117 = load i32, i32* %19, align 4
  %118 = load i32, i32* %20, align 4
  %119 = load i32, i32* %21, align 4
  %120 = load i32, i32* %22, align 4
  %121 = call i32 @DXGI_COLOR_RGBA(i32 %117, i32 %118, i32 %119, i32 %120)
  store i32 %121, i32* %17, align 4
  store i32 -2, i32* %14, align 4
  store i32 -2, i32* %15, align 4
  store float 0x3FD3333340000000, float* %12, align 4
  store float 1.000000e+00, float* %13, align 4
  br label %122

122:                                              ; preds = %97, %51
  %123 = load i32, i32* %14, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %122
  %126 = load i32, i32* %15, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %179

128:                                              ; preds = %125, %122
  %129 = load i32, i32* %19, align 4
  %130 = uitofp i32 %129 to float
  %131 = load float, float* %12, align 4
  %132 = fmul float %130, %131
  %133 = fptoui float %132 to i32
  store i32 %133, i32* %23, align 4
  %134 = load i32, i32* %20, align 4
  %135 = uitofp i32 %134 to float
  %136 = load float, float* %12, align 4
  %137 = fmul float %135, %136
  %138 = fptoui float %137 to i32
  store i32 %138, i32* %24, align 4
  %139 = load i32, i32* %21, align 4
  %140 = uitofp i32 %139 to float
  %141 = load float, float* %12, align 4
  %142 = fmul float %140, %141
  %143 = fptoui float %142 to i32
  store i32 %143, i32* %25, align 4
  %144 = load i32, i32* %22, align 4
  %145 = uitofp i32 %144 to float
  %146 = load float, float* %13, align 4
  %147 = fmul float %145, %146
  %148 = fptoui float %147 to i32
  store i32 %148, i32* %26, align 4
  %149 = load i32, i32* %23, align 4
  %150 = load i32, i32* %24, align 4
  %151 = load i32, i32* %25, align 4
  %152 = load i32, i32* %26, align 4
  %153 = call i32 @DXGI_COLOR_RGBA(i32 %149, i32 %150, i32 %151, i32 %152)
  store i32 %153, i32* %18, align 4
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %155 = load i32*, i32** %27, align 8
  %156 = load i8*, i8** %7, align 8
  %157 = load float, float* %11, align 4
  %158 = load i32, i32* %18, align 4
  %159 = load float, float* %9, align 4
  %160 = load float, float* %11, align 4
  %161 = load i32, i32* %14, align 4
  %162 = sitofp i32 %161 to float
  %163 = fmul float %160, %162
  %164 = load i32, i32* %28, align 4
  %165 = uitofp i32 %164 to float
  %166 = fdiv float %163, %165
  %167 = fadd float %159, %166
  %168 = load float, float* %10, align 4
  %169 = load float, float* %11, align 4
  %170 = load i32, i32* %15, align 4
  %171 = sitofp i32 %170 to float
  %172 = fmul float %169, %171
  %173 = load i32, i32* %29, align 4
  %174 = uitofp i32 %173 to float
  %175 = fdiv float %172, %174
  %176 = fadd float %168, %175
  %177 = load i32, i32* %16, align 4
  %178 = call i32 @d3d10_font_render_message(%struct.TYPE_4__* %154, i32* %155, i8* %156, float %157, i32 %158, float %167, float %176, i32 %177)
  br label %179

179:                                              ; preds = %128, %125
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %181 = load i32*, i32** %27, align 8
  %182 = load i8*, i8** %7, align 8
  %183 = load float, float* %11, align 4
  %184 = load i32, i32* %17, align 4
  %185 = load float, float* %9, align 4
  %186 = load float, float* %10, align 4
  %187 = load i32, i32* %16, align 4
  %188 = call i32 @d3d10_font_render_message(%struct.TYPE_4__* %180, i32* %181, i8* %182, float %183, i32 %184, float %185, float %186, i32 %187)
  br label %189

189:                                              ; preds = %179, %47
  ret void
}

declare dso_local i32 @FONT_COLOR_GET_RED(i32) #1

declare dso_local i32 @FONT_COLOR_GET_GREEN(i32) #1

declare dso_local i32 @FONT_COLOR_GET_BLUE(i32) #1

declare dso_local i32 @FONT_COLOR_GET_ALPHA(i32) #1

declare dso_local i32 @DXGI_COLOR_RGBA(i32, i32, i32, i32) #1

declare dso_local i32 @d3d10_font_render_message(%struct.TYPE_4__*, i32*, i8*, float, i32, float, float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
