; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_ctr_font.c_ctr_font_render_msg.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_ctr_font.c_ctr_font_render_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, float, float, i32, i32, i32 }
%struct.font_params = type { float, float, float, i32, i32, i32, float, float, i32 }

@TEXT_ALIGN_LEFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i8*, i8*, %struct.font_params*)* @ctr_font_render_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctr_font_render_msg(%struct.TYPE_4__* %0, i8* %1, i8* %2, %struct.font_params* %3) #0 {
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
  br label %199

49:                                               ; preds = %44
  %50 = load %struct.font_params*, %struct.font_params** %8, align 8
  %51 = icmp ne %struct.font_params* %50, null
  br i1 %51, label %52, label %96

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
  %93 = load %struct.font_params*, %struct.font_params** %8, align 8
  %94 = getelementptr inbounds %struct.font_params, %struct.font_params* %93, i32 0, i32 8
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %18, align 4
  br label %121

96:                                               ; preds = %49
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 2
  %99 = load float, float* %98, align 4
  store float %99, float* %9, align 4
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 3
  %102 = load float, float* %101, align 4
  store float %102, float* %10, align 4
  store float 1.000000e+00, float* %11, align 4
  %103 = load i32, i32* @TEXT_ALIGN_LEFT, align 4
  store i32 %103, i32* %17, align 4
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = mul nsw i32 %106, 255
  store i32 %107, i32* %20, align 4
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = mul nsw i32 %110, 255
  store i32 %111, i32* %21, align 4
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 6
  %114 = load i32, i32* %113, align 4
  %115 = mul nsw i32 %114, 255
  store i32 %115, i32* %22, align 4
  store i32 255, i32* %23, align 4
  %116 = load i32, i32* %20, align 4
  %117 = load i32, i32* %21, align 4
  %118 = load i32, i32* %22, align 4
  %119 = load i32, i32* %23, align 4
  %120 = call i32 @COLOR_ABGR(i32 %116, i32 %117, i32 %118, i32 %119)
  store i32 %120, i32* %18, align 4
  store i32 -2, i32* %14, align 4
  store i32 -2, i32* %15, align 4
  store float 0x3FD3333340000000, float* %12, align 4
  store float 1.000000e+00, float* %13, align 4
  br label %121

121:                                              ; preds = %96, %52
  %122 = load i8*, i8** %7, align 8
  %123 = call i32 @strlen(i8* %122)
  store i32 %123, i32* %16, align 4
  %124 = load i32, i32* %14, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %121
  %127 = load i32, i32* %15, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %126, %121
  %130 = load i32, i32* %16, align 4
  %131 = mul i32 %130, 2
  store i32 %131, i32* %16, align 4
  br label %132

132:                                              ; preds = %129, %126
  %133 = load i32, i32* %14, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %132
  %136 = load i32, i32* %15, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %189

138:                                              ; preds = %135, %132
  %139 = load i32, i32* %20, align 4
  %140 = uitofp i32 %139 to float
  %141 = load float, float* %12, align 4
  %142 = fmul float %140, %141
  %143 = fptoui float %142 to i32
  store i32 %143, i32* %24, align 4
  %144 = load i32, i32* %21, align 4
  %145 = uitofp i32 %144 to float
  %146 = load float, float* %12, align 4
  %147 = fmul float %145, %146
  %148 = fptoui float %147 to i32
  store i32 %148, i32* %25, align 4
  %149 = load i32, i32* %22, align 4
  %150 = uitofp i32 %149 to float
  %151 = load float, float* %12, align 4
  %152 = fmul float %150, %151
  %153 = fptoui float %152 to i32
  store i32 %153, i32* %26, align 4
  %154 = load i32, i32* %23, align 4
  %155 = uitofp i32 %154 to float
  %156 = load float, float* %13, align 4
  %157 = fmul float %155, %156
  %158 = fptoui float %157 to i32
  store i32 %158, i32* %27, align 4
  %159 = load i32, i32* %24, align 4
  %160 = load i32, i32* %25, align 4
  %161 = load i32, i32* %26, align 4
  %162 = load i32, i32* %27, align 4
  %163 = call i32 @COLOR_ABGR(i32 %159, i32 %160, i32 %161, i32 %162)
  store i32 %163, i32* %19, align 4
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %165 = load i32*, i32** %28, align 8
  %166 = load i8*, i8** %7, align 8
  %167 = load float, float* %11, align 4
  %168 = load i32, i32* %19, align 4
  %169 = load float, float* %9, align 4
  %170 = load float, float* %11, align 4
  %171 = load i32, i32* %14, align 4
  %172 = sitofp i32 %171 to float
  %173 = fmul float %170, %172
  %174 = load i32, i32* %29, align 4
  %175 = uitofp i32 %174 to float
  %176 = fdiv float %173, %175
  %177 = fadd float %169, %176
  %178 = load float, float* %10, align 4
  %179 = load float, float* %11, align 4
  %180 = load i32, i32* %15, align 4
  %181 = sitofp i32 %180 to float
  %182 = fmul float %179, %181
  %183 = load i32, i32* %30, align 4
  %184 = uitofp i32 %183 to float
  %185 = fdiv float %182, %184
  %186 = fadd float %178, %185
  %187 = load i32, i32* %17, align 4
  %188 = call i32 @ctr_font_render_message(%struct.TYPE_4__* %164, i32* %165, i8* %166, float %167, i32 %168, float %177, float %186, i32 %187)
  br label %189

189:                                              ; preds = %138, %135
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %191 = load i32*, i32** %28, align 8
  %192 = load i8*, i8** %7, align 8
  %193 = load float, float* %11, align 4
  %194 = load i32, i32* %18, align 4
  %195 = load float, float* %9, align 4
  %196 = load float, float* %10, align 4
  %197 = load i32, i32* %17, align 4
  %198 = call i32 @ctr_font_render_message(%struct.TYPE_4__* %190, i32* %191, i8* %192, float %193, i32 %194, float %195, float %196, i32 %197)
  br label %199

199:                                              ; preds = %189, %48
  ret void
}

declare dso_local i32 @FONT_COLOR_GET_RED(i32) #1

declare dso_local i32 @FONT_COLOR_GET_GREEN(i32) #1

declare dso_local i32 @FONT_COLOR_GET_BLUE(i32) #1

declare dso_local i32 @FONT_COLOR_GET_ALPHA(i32) #1

declare dso_local i32 @COLOR_ABGR(i32, i32, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ctr_font_render_message(%struct.TYPE_4__*, i32*, i8*, float, i32, float, float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
