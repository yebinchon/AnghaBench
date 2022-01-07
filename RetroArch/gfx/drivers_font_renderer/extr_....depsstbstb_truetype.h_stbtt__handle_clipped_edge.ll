; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_font_renderer/extr_....depsstbstb_truetype.h_stbtt__handle_clipped_edge.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_font_renderer/extr_....depsstbstb_truetype.h_stbtt__handle_clipped_edge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float, float, float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, i32, %struct.TYPE_3__*, float, float, float, float)* @stbtt__handle_clipped_edge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stbtt__handle_clipped_edge(float* %0, i32 %1, %struct.TYPE_3__* %2, float %3, float %4, float %5, float %6) #0 {
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  store float* %0, float** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %10, align 8
  store float %3, float* %11, align 4
  store float %4, float* %12, align 4
  store float %5, float* %13, align 4
  store float %6, float* %14, align 4
  %15 = load float, float* %12, align 4
  %16 = load float, float* %14, align 4
  %17 = fcmp oeq float %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %7
  br label %161

19:                                               ; preds = %7
  %20 = load float, float* %12, align 4
  %21 = load float, float* %14, align 4
  %22 = fcmp olt float %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load float, float* %26, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load float, float* %29, align 4
  %31 = fcmp ole float %27, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load float, float* %12, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load float, float* %36, align 4
  %38 = fcmp ogt float %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %19
  br label %161

40:                                               ; preds = %19
  %41 = load float, float* %14, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load float, float* %43, align 4
  %45 = fcmp olt float %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %161

47:                                               ; preds = %40
  %48 = load float, float* %12, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load float, float* %50, align 4
  %52 = fcmp olt float %48, %51
  br i1 %52, label %53, label %72

53:                                               ; preds = %47
  %54 = load float, float* %13, align 4
  %55 = load float, float* %11, align 4
  %56 = fsub float %54, %55
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load float, float* %58, align 4
  %60 = load float, float* %12, align 4
  %61 = fsub float %59, %60
  %62 = fmul float %56, %61
  %63 = load float, float* %14, align 4
  %64 = load float, float* %12, align 4
  %65 = fsub float %63, %64
  %66 = fdiv float %62, %65
  %67 = load float, float* %11, align 4
  %68 = fadd float %67, %66
  store float %68, float* %11, align 4
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load float, float* %70, align 4
  store float %71, float* %12, align 4
  br label %72

72:                                               ; preds = %53, %47
  %73 = load float, float* %14, align 4
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load float, float* %75, align 4
  %77 = fcmp ogt float %73, %76
  br i1 %77, label %78, label %97

78:                                               ; preds = %72
  %79 = load float, float* %13, align 4
  %80 = load float, float* %11, align 4
  %81 = fsub float %79, %80
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load float, float* %83, align 4
  %85 = load float, float* %14, align 4
  %86 = fsub float %84, %85
  %87 = fmul float %81, %86
  %88 = load float, float* %14, align 4
  %89 = load float, float* %12, align 4
  %90 = fsub float %88, %89
  %91 = fdiv float %87, %90
  %92 = load float, float* %13, align 4
  %93 = fadd float %92, %91
  store float %93, float* %13, align 4
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load float, float* %95, align 4
  store float %96, float* %14, align 4
  br label %97

97:                                               ; preds = %78, %72
  %98 = load float, float* %11, align 4
  %99 = load i32, i32* %9, align 4
  %100 = sitofp i32 %99 to float
  %101 = fcmp ole float %98, %100
  br i1 %101, label %102, label %121

102:                                              ; preds = %97
  %103 = load float, float* %13, align 4
  %104 = load i32, i32* %9, align 4
  %105 = sitofp i32 %104 to float
  %106 = fcmp ole float %103, %105
  br i1 %106, label %107, label %121

107:                                              ; preds = %102
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 2
  %110 = load float, float* %109, align 4
  %111 = load float, float* %14, align 4
  %112 = load float, float* %12, align 4
  %113 = fsub float %111, %112
  %114 = fmul float %110, %113
  %115 = load float*, float** %8, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds float, float* %115, i64 %117
  %119 = load float, float* %118, align 4
  %120 = fadd float %119, %114
  store float %120, float* %118, align 4
  br label %161

121:                                              ; preds = %102, %97
  %122 = load float, float* %11, align 4
  %123 = load i32, i32* %9, align 4
  %124 = add nsw i32 %123, 1
  %125 = sitofp i32 %124 to float
  %126 = fcmp oge float %122, %125
  br i1 %126, label %127, label %134

127:                                              ; preds = %121
  %128 = load float, float* %13, align 4
  %129 = load i32, i32* %9, align 4
  %130 = add nsw i32 %129, 1
  %131 = sitofp i32 %130 to float
  %132 = fcmp oge float %128, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %127
  br label %160

134:                                              ; preds = %127, %121
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 2
  %137 = load float, float* %136, align 4
  %138 = load float, float* %14, align 4
  %139 = load float, float* %12, align 4
  %140 = fsub float %138, %139
  %141 = fmul float %137, %140
  %142 = load float, float* %11, align 4
  %143 = load i32, i32* %9, align 4
  %144 = sitofp i32 %143 to float
  %145 = fsub float %142, %144
  %146 = load float, float* %13, align 4
  %147 = load i32, i32* %9, align 4
  %148 = sitofp i32 %147 to float
  %149 = fsub float %146, %148
  %150 = fadd float %145, %149
  %151 = fdiv float %150, 2.000000e+00
  %152 = fsub float 1.000000e+00, %151
  %153 = fmul float %141, %152
  %154 = load float*, float** %8, align 8
  %155 = load i32, i32* %9, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds float, float* %154, i64 %156
  %158 = load float, float* %157, align 4
  %159 = fadd float %158, %153
  store float %159, float* %157, align 4
  br label %160

160:                                              ; preds = %134, %133
  br label %161

161:                                              ; preds = %18, %39, %46, %160, %107
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
