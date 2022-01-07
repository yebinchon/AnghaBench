; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_vita2d_font.c_vita2d_font_render_msg.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_vita2d_font.c_vita2d_font_render_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, float, float, i32, i32, i32 }
%struct.font_params = type { float, float, float, i32, i32, i32, float, float, i32 }

@TEXT_ALIGN_LEFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i8*, i8*, %struct.font_params*)* @vita2d_font_render_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vita2d_font_render_msg(%struct.TYPE_4__* %0, i8* %1, i8* %2, %struct.font_params* %3) #0 {
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
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.font_params* %3, %struct.font_params** %8, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = bitcast i8* %31 to i32*
  store i32* %32, i32** %28, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %29, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %30, align 4
  %39 = load i32*, i32** %28, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %4
  %42 = load i8*, i8** %7, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i8*, i8** %7, align 8
  %46 = load i8, i8* %45, align 1
  %47 = icmp ne i8 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44, %41, %4
  br label %201

49:                                               ; preds = %44
  %50 = load %struct.font_params*, %struct.font_params** %8, align 8
  %51 = icmp ne %struct.font_params* %50, null
  br i1 %51, label %52, label %98

52:                                               ; preds = %49
  %53 = load %struct.font_params*, %struct.font_params** %8, align 8
  %54 = getelementptr inbounds %struct.font_params, %struct.font_params* %53, i32 0, i32 0
  %55 = load float, float* %54, align 4
  store float %55, float* %9, align 4
  %56 = load %struct.font_params*, %struct.font_params** %8, align 8
  %57 = getelementptr inbounds %struct.font_params, %struct.font_params* %56, i32 0, i32 1
  %58 = load float, float* %57, align 4
  store float %58, float* %10, align 4
  %59 = load %struct.font_params*, %struct.font_params** %8, align 8
  %60 = getelementptr inbounds %struct.font_params, %struct.font_params* %59, i32 0, i32 2
  %61 = load float, float* %60, align 4
  store float %61, float* %11, align 4
  %62 = load %struct.font_params*, %struct.font_params** %8, align 8
  %63 = getelementptr inbounds %struct.font_params, %struct.font_params* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %17, align 4
  %65 = load %struct.font_params*, %struct.font_params** %8, align 8
  %66 = getelementptr inbounds %struct.font_params, %struct.font_params* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %14, align 4
  %68 = load %struct.font_params*, %struct.font_params** %8, align 8
  %69 = getelementptr inbounds %struct.font_params, %struct.font_params* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %15, align 4
  %71 = load %struct.font_params*, %struct.font_params** %8, align 8
  %72 = getelementptr inbounds %struct.font_params, %struct.font_params* %71, i32 0, i32 6
  %73 = load float, float* %72, align 4
  store float %73, float* %12, align 4
  %74 = load %struct.font_params*, %struct.font_params** %8, align 8
  %75 = getelementptr inbounds %struct.font_params, %struct.font_params* %74, i32 0, i32 7
  %76 = load float, float* %75, align 4
  store float %76, float* %13, align 4
  %77 = load %struct.font_params*, %struct.font_params** %8, align 8
  %78 = getelementptr inbounds %struct.font_params, %struct.font_params* %77, i32 0, i32 8
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @FONT_COLOR_GET_RED(i32 %79)
  store i32 %80, i32* %20, align 4
  %81 = load %struct.font_params*, %struct.font_params** %8, align 8
  %82 = getelementptr inbounds %struct.font_params, %struct.font_params* %81, i32 0, i32 8
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @FONT_COLOR_GET_GREEN(i32 %83)
  store i32 %84, i32* %21, align 4
  %85 = load %struct.font_params*, %struct.font_params** %8, align 8
  %86 = getelementptr inbounds %struct.font_params, %struct.font_params* %85, i32 0, i32 8
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @FONT_COLOR_GET_BLUE(i32 %87)
  store i32 %88, i32* %22, align 4
  %89 = load %struct.font_params*, %struct.font_params** %8, align 8
  %90 = getelementptr inbounds %struct.font_params, %struct.font_params* %89, i32 0, i32 8
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @FONT_COLOR_GET_ALPHA(i32 %91)
  store i32 %92, i32* %23, align 4
  %93 = load i32, i32* %20, align 4
  %94 = load i32, i32* %21, align 4
  %95 = load i32, i32* %22, align 4
  %96 = load i32, i32* %23, align 4
  %97 = call i32 @RGBA8(i32 %93, i32 %94, i32 %95, i32 %96)
  store i32 %97, i32* %18, align 4
  br label %123

98:                                               ; preds = %49
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 2
  %101 = load float, float* %100, align 4
  store float %101, float* %9, align 4
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 3
  %104 = load float, float* %103, align 4
  store float %104, float* %10, align 4
  store float 1.000000e+00, float* %11, align 4
  %105 = load i32, i32* @TEXT_ALIGN_LEFT, align 4
  store i32 %105, i32* %17, align 4
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = mul nsw i32 %108, 255
  store i32 %109, i32* %20, align 4
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 4
  %113 = mul nsw i32 %112, 255
  store i32 %113, i32* %21, align 4
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 6
  %116 = load i32, i32* %115, align 4
  %117 = mul nsw i32 %116, 255
  store i32 %117, i32* %22, align 4
  store i32 255, i32* %23, align 4
  %118 = load i32, i32* %20, align 4
  %119 = load i32, i32* %21, align 4
  %120 = load i32, i32* %22, align 4
  %121 = load i32, i32* %23, align 4
  %122 = call i32 @RGBA8(i32 %118, i32 %119, i32 %120, i32 %121)
  store i32 %122, i32* %18, align 4
  store i32 -2, i32* %14, align 4
  store i32 -2, i32* %15, align 4
  store float 0x3FD3333340000000, float* %12, align 4
  store float 1.000000e+00, float* %13, align 4
  br label %123

123:                                              ; preds = %98, %52
  %124 = load i8*, i8** %7, align 8
  %125 = call i32 @strlen(i8* %124)
  store i32 %125, i32* %16, align 4
  %126 = load i32, i32* %14, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %123
  %129 = load i32, i32* %15, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %128, %123
  %132 = load i32, i32* %16, align 4
  %133 = mul i32 %132, 2
  store i32 %133, i32* %16, align 4
  br label %134

134:                                              ; preds = %131, %128
  %135 = load i32, i32* %14, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %134
  %138 = load i32, i32* %15, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %191

140:                                              ; preds = %137, %134
  %141 = load i32, i32* %20, align 4
  %142 = uitofp i32 %141 to float
  %143 = load float, float* %12, align 4
  %144 = fmul float %142, %143
  %145 = fptoui float %144 to i32
  store i32 %145, i32* %24, align 4
  %146 = load i32, i32* %21, align 4
  %147 = uitofp i32 %146 to float
  %148 = load float, float* %12, align 4
  %149 = fmul float %147, %148
  %150 = fptoui float %149 to i32
  store i32 %150, i32* %25, align 4
  %151 = load i32, i32* %22, align 4
  %152 = uitofp i32 %151 to float
  %153 = load float, float* %12, align 4
  %154 = fmul float %152, %153
  %155 = fptoui float %154 to i32
  store i32 %155, i32* %26, align 4
  %156 = load i32, i32* %23, align 4
  %157 = uitofp i32 %156 to float
  %158 = load float, float* %13, align 4
  %159 = fmul float %157, %158
  %160 = fptoui float %159 to i32
  store i32 %160, i32* %27, align 4
  %161 = load i32, i32* %24, align 4
  %162 = load i32, i32* %25, align 4
  %163 = load i32, i32* %26, align 4
  %164 = load i32, i32* %27, align 4
  %165 = call i32 @RGBA8(i32 %161, i32 %162, i32 %163, i32 %164)
  store i32 %165, i32* %19, align 4
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %167 = load i32*, i32** %28, align 8
  %168 = load i8*, i8** %7, align 8
  %169 = load float, float* %11, align 4
  %170 = load i32, i32* %19, align 4
  %171 = load float, float* %9, align 4
  %172 = load float, float* %11, align 4
  %173 = load i32, i32* %14, align 4
  %174 = sitofp i32 %173 to float
  %175 = fmul float %172, %174
  %176 = load i32, i32* %29, align 4
  %177 = uitofp i32 %176 to float
  %178 = fdiv float %175, %177
  %179 = fadd float %171, %178
  %180 = load float, float* %10, align 4
  %181 = load float, float* %11, align 4
  %182 = load i32, i32* %15, align 4
  %183 = sitofp i32 %182 to float
  %184 = fmul float %181, %183
  %185 = load i32, i32* %30, align 4
  %186 = uitofp i32 %185 to float
  %187 = fdiv float %184, %186
  %188 = fadd float %180, %187
  %189 = load i32, i32* %17, align 4
  %190 = call i32 @vita2d_font_render_message(%struct.TYPE_4__* %166, i32* %167, i8* %168, float %169, i32 %170, float %179, float %188, i32 %189)
  br label %191

191:                                              ; preds = %140, %137
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %193 = load i32*, i32** %28, align 8
  %194 = load i8*, i8** %7, align 8
  %195 = load float, float* %11, align 4
  %196 = load i32, i32* %18, align 4
  %197 = load float, float* %9, align 4
  %198 = load float, float* %10, align 4
  %199 = load i32, i32* %17, align 4
  %200 = call i32 @vita2d_font_render_message(%struct.TYPE_4__* %192, i32* %193, i8* %194, float %195, i32 %196, float %197, float %198, i32 %199)
  br label %201

201:                                              ; preds = %191, %48
  ret void
}

declare dso_local i32 @FONT_COLOR_GET_RED(i32) #1

declare dso_local i32 @FONT_COLOR_GET_GREEN(i32) #1

declare dso_local i32 @FONT_COLOR_GET_BLUE(i32) #1

declare dso_local i32 @FONT_COLOR_GET_ALPHA(i32) #1

declare dso_local i32 @RGBA8(i32, i32, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @vita2d_font_render_message(%struct.TYPE_4__*, i32*, i8*, float, i32, float, float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
