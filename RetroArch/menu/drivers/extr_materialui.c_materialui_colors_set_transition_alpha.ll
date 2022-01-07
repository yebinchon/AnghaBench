; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_materialui.c_materialui_colors_set_transition_alpha.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_materialui.c_materialui_colors_set_transition_alpha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { float, i64, float, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, float, float*, float*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @materialui_colors_set_transition_alpha to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @materialui_colors_set_transition_alpha(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca float, align 4
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load float, float* %7, align 8
  %9 = fcmp olt float %8, 1.000000e+00
  br i1 %9, label %10, label %153

10:                                               ; preds = %1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load float, float* %12, align 8
  store float %13, float* %3, align 4
  %14 = load float, float* %3, align 4
  %15 = fmul float 2.550000e+02, %14
  %16 = fadd float %15, 5.000000e-01
  %17 = fptoui float %16 to i32
  store i32 %17, i32* %4, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %21, -256
  %23 = load i32, i32* %4, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, -256
  %33 = load i32, i32* %4, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = and i32 %41, -256
  %43 = load i32, i32* %4, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  store i32 %44, i32* %47, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, -256
  %53 = load i32, i32* %4, align 4
  %54 = or i32 %52, %53
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 3
  store i32 %54, i32* %57, align 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 15
  %61 = load i32, i32* %60, align 8
  %62 = load float, float* %3, align 4
  %63 = call i32 @menu_display_set_alpha(i32 %61, float %62)
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 14
  %67 = load i32, i32* %66, align 4
  %68 = load float, float* %3, align 4
  %69 = call i32 @menu_display_set_alpha(i32 %67, float %68)
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 13
  %73 = load i32, i32* %72, align 8
  %74 = load float, float* %3, align 4
  %75 = call i32 @menu_display_set_alpha(i32 %73, float %74)
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 12
  %79 = load i32, i32* %78, align 4
  %80 = load float, float* %3, align 4
  %81 = call i32 @menu_display_set_alpha(i32 %79, float %80)
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 11
  %85 = load i32, i32* %84, align 8
  %86 = load float, float* %3, align 4
  %87 = call i32 @menu_display_set_alpha(i32 %85, float %86)
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 10
  %91 = load i32, i32* %90, align 4
  %92 = load float, float* %3, align 4
  %93 = call i32 @menu_display_set_alpha(i32 %91, float %92)
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 9
  %97 = load i32, i32* %96, align 8
  %98 = load float, float* %3, align 4
  %99 = call i32 @menu_display_set_alpha(i32 %97, float %98)
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 8
  %103 = load i32, i32* %102, align 4
  %104 = load float, float* %3, align 4
  %105 = call i32 @menu_display_set_alpha(i32 %103, float %104)
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 7
  %109 = load i32, i32* %108, align 8
  %110 = load float, float* %3, align 4
  %111 = call i32 @menu_display_set_alpha(i32 %109, float %110)
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %152

116:                                              ; preds = %10
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 2
  %119 = load float, float* %118, align 8
  %120 = fcmp une float %119, 0.000000e+00
  br i1 %120, label %121, label %152

121:                                              ; preds = %116
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 4
  %125 = load float, float* %124, align 8
  %126 = load float, float* %3, align 4
  %127 = fmul float %125, %126
  store float %127, float* %5, align 4
  %128 = load float, float* %5, align 4
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 5
  %132 = load float*, float** %131, align 8
  %133 = getelementptr inbounds float, float* %132, i64 7
  store float %128, float* %133, align 4
  %134 = load float, float* %5, align 4
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 5
  %138 = load float*, float** %137, align 8
  %139 = getelementptr inbounds float, float* %138, i64 15
  store float %134, float* %139, align 4
  %140 = load float, float* %5, align 4
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 6
  %144 = load float*, float** %143, align 8
  %145 = getelementptr inbounds float, float* %144, i64 3
  store float %140, float* %145, align 4
  %146 = load float, float* %5, align 4
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 6
  %150 = load float*, float** %149, align 8
  %151 = getelementptr inbounds float, float* %150, i64 11
  store float %146, float* %151, align 4
  br label %152

152:                                              ; preds = %121, %116, %10
  br label %153

153:                                              ; preds = %152, %1
  ret void
}

declare dso_local i32 @menu_display_set_alpha(i32, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
