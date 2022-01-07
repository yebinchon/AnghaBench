; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_caca_font.c_caca_render_msg.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_caca_font.c_caca_render_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { float, float }
%struct.font_params = type { float, float, float, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i8*, i8*, %struct.font_params*)* @caca_render_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @caca_render_msg(%struct.TYPE_6__* %0, i8* %1, i8* %2, %struct.font_params* %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.font_params*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.font_params* %3, %struct.font_params** %8, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %17, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %21 = icmp ne %struct.TYPE_7__* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = load i8*, i8** %7, align 8
  %24 = call i64 @string_is_empty(i8* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %4
  br label %164

27:                                               ; preds = %22
  %28 = load %struct.font_params*, %struct.font_params** %8, align 8
  %29 = icmp ne %struct.font_params* %28, null
  br i1 %29, label %30, label %43

30:                                               ; preds = %27
  %31 = load %struct.font_params*, %struct.font_params** %8, align 8
  %32 = getelementptr inbounds %struct.font_params, %struct.font_params* %31, i32 0, i32 0
  %33 = load float, float* %32, align 4
  store float %33, float* %9, align 4
  %34 = load %struct.font_params*, %struct.font_params** %8, align 8
  %35 = getelementptr inbounds %struct.font_params, %struct.font_params* %34, i32 0, i32 1
  %36 = load float, float* %35, align 4
  store float %36, float* %10, align 4
  %37 = load %struct.font_params*, %struct.font_params** %8, align 8
  %38 = getelementptr inbounds %struct.font_params, %struct.font_params* %37, i32 0, i32 2
  %39 = load float, float* %38, align 4
  store float %39, float* %11, align 4
  %40 = load %struct.font_params*, %struct.font_params** %8, align 8
  %41 = getelementptr inbounds %struct.font_params, %struct.font_params* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %16, align 4
  br label %50

43:                                               ; preds = %27
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load float, float* %45, align 4
  store float %46, float* %9, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load float, float* %48, align 4
  store float %49, float* %10, align 4
  store float 1.000000e+00, float* %11, align 4
  store i32 129, i32* %16, align 4
  br label %50

50:                                               ; preds = %43, %30
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = icmp ne %struct.TYPE_5__* %53, null
  br i1 %54, label %55, label %85

55:                                               ; preds = %50
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %85

62:                                               ; preds = %55
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %85

69:                                               ; preds = %62
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %69
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %77, %69, %62, %55, %50
  br label %164

86:                                               ; preds = %77
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @caca_get_canvas_width(i32 %92)
  store i32 %93, i32* %12, align 4
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @caca_get_canvas_height(i32 %99)
  store i32 %100, i32* %13, align 4
  %101 = load i32, i32* %13, align 4
  %102 = uitofp i32 %101 to float
  %103 = load float, float* %10, align 4
  %104 = load i32, i32* %13, align 4
  %105 = uitofp i32 %104 to float
  %106 = fmul float %103, %105
  %107 = load float, float* %11, align 4
  %108 = fmul float %106, %107
  %109 = fsub float %102, %108
  %110 = fptoui float %109 to i32
  store i32 %110, i32* %15, align 4
  %111 = load i32, i32* %16, align 4
  switch i32 %111, label %138 [
    i32 128, label %112
    i32 130, label %124
    i32 129, label %137
  ]

112:                                              ; preds = %86
  %113 = load float, float* %9, align 4
  %114 = load i32, i32* %12, align 4
  %115 = uitofp i32 %114 to float
  %116 = fmul float %113, %115
  %117 = load float, float* %11, align 4
  %118 = fmul float %116, %117
  %119 = load i8*, i8** %7, align 8
  %120 = call i32 @strlen(i8* %119)
  %121 = sitofp i32 %120 to float
  %122 = fsub float %118, %121
  %123 = fptoui float %122 to i32
  store i32 %123, i32* %14, align 4
  br label %146

124:                                              ; preds = %86
  %125 = load float, float* %9, align 4
  %126 = load i32, i32* %12, align 4
  %127 = uitofp i32 %126 to float
  %128 = fmul float %125, %127
  %129 = load float, float* %11, align 4
  %130 = fmul float %128, %129
  %131 = load i8*, i8** %7, align 8
  %132 = call i32 @strlen(i8* %131)
  %133 = sdiv i32 %132, 2
  %134 = sitofp i32 %133 to float
  %135 = fsub float %130, %134
  %136 = fptoui float %135 to i32
  store i32 %136, i32* %14, align 4
  br label %146

137:                                              ; preds = %86
  br label %138

138:                                              ; preds = %86, %137
  %139 = load float, float* %9, align 4
  %140 = load i32, i32* %12, align 4
  %141 = uitofp i32 %140 to float
  %142 = fmul float %139, %141
  %143 = load float, float* %11, align 4
  %144 = fmul float %142, %143
  %145 = fptoui float %144 to i32
  store i32 %145, i32* %14, align 4
  br label %146

146:                                              ; preds = %138, %124, %112
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %14, align 4
  %154 = load i32, i32* %15, align 4
  %155 = load i8*, i8** %7, align 8
  %156 = call i32 @caca_put_str(i32 %152, i32 %153, i32 %154, i8* %155)
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @caca_refresh_display(i32 %162)
  br label %164

164:                                              ; preds = %146, %85, %26
  ret void
}

declare dso_local i64 @string_is_empty(i8*) #1

declare dso_local i32 @caca_get_canvas_width(i32) #1

declare dso_local i32 @caca_get_canvas_height(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @caca_put_str(i32, i32, i32, i8*) #1

declare dso_local i32 @caca_refresh_display(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
