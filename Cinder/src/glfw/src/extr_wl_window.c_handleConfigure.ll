; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_wl_window.c_handleConfigure.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_wl_window.c_handleConfigure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl_shell_surface = type { i32 }
%struct.TYPE_5__ = type { i64, i64, i64, i64, i64, i64, i32 }

@GLFW_DONT_CARE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wl_shell_surface*, i32, float, float)* @handleConfigure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handleConfigure(i8* %0, %struct.wl_shell_surface* %1, i32 %2, float %3, float %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.wl_shell_surface*, align 8
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  store i8* %0, i8** %6, align 8
  store %struct.wl_shell_surface* %1, %struct.wl_shell_surface** %7, align 8
  store i32 %2, i32* %8, align 4
  store float %3, float* %9, align 4
  store float %4, float* %10, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %11, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %137, label %20

20:                                               ; preds = %5
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @GLFW_DONT_CARE, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %62

26:                                               ; preds = %20
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @GLFW_DONT_CARE, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %62

32:                                               ; preds = %26
  %33 = load float, float* %9, align 4
  %34 = load float, float* %10, align 4
  %35 = fdiv float %33, %34
  store float %35, float* %12, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = sitofp i64 %38 to float
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = sitofp i64 %42 to float
  %44 = fdiv float %39, %43
  store float %44, float* %13, align 4
  %45 = load float, float* %12, align 4
  %46 = load float, float* %13, align 4
  %47 = fcmp olt float %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %32
  %49 = load float, float* %9, align 4
  %50 = load float, float* %13, align 4
  %51 = fdiv float %49, %50
  store float %51, float* %10, align 4
  br label %61

52:                                               ; preds = %32
  %53 = load float, float* %12, align 4
  %54 = load float, float* %13, align 4
  %55 = fcmp ogt float %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load float, float* %10, align 4
  %58 = load float, float* %13, align 4
  %59 = fmul float %57, %58
  store float %59, float* %9, align 4
  br label %60

60:                                               ; preds = %56, %52
  br label %61

61:                                               ; preds = %60, %48
  br label %62

62:                                               ; preds = %61, %26, %20
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @GLFW_DONT_CARE, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %62
  %69 = load float, float* %9, align 4
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = sitofp i64 %72 to float
  %74 = fcmp olt float %69, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %68
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = sitofp i64 %78 to float
  store float %79, float* %9, align 4
  br label %99

80:                                               ; preds = %68, %62
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @GLFW_DONT_CARE, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %98

86:                                               ; preds = %80
  %87 = load float, float* %9, align 4
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = sitofp i64 %90 to float
  %92 = fcmp ogt float %87, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %86
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = sitofp i64 %96 to float
  store float %97, float* %9, align 4
  br label %98

98:                                               ; preds = %93, %86, %80
  br label %99

99:                                               ; preds = %98, %75
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 4
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @GLFW_DONT_CARE, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %117

105:                                              ; preds = %99
  %106 = load float, float* %10, align 4
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = sitofp i64 %109 to float
  %111 = fcmp olt float %106, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %105
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 4
  %115 = load i64, i64* %114, align 8
  %116 = sitofp i64 %115 to float
  store float %116, float* %10, align 4
  br label %136

117:                                              ; preds = %105, %99
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 5
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @GLFW_DONT_CARE, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %135

123:                                              ; preds = %117
  %124 = load float, float* %10, align 4
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 5
  %127 = load i64, i64* %126, align 8
  %128 = sitofp i64 %127 to float
  %129 = fcmp ogt float %124, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %123
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 5
  %133 = load i64, i64* %132, align 8
  %134 = sitofp i64 %133 to float
  store float %134, float* %10, align 4
  br label %135

135:                                              ; preds = %130, %123, %117
  br label %136

136:                                              ; preds = %135, %112
  br label %137

137:                                              ; preds = %136, %5
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %139 = load float, float* %9, align 4
  %140 = load float, float* %10, align 4
  %141 = call i32 @_glfwInputWindowSize(%struct.TYPE_5__* %138, float %139, float %140)
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %143 = load float, float* %9, align 4
  %144 = load float, float* %10, align 4
  %145 = call i32 @_glfwPlatformSetWindowSize(%struct.TYPE_5__* %142, float %143, float %144)
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %147 = call i32 @_glfwInputWindowDamage(%struct.TYPE_5__* %146)
  ret void
}

declare dso_local i32 @_glfwInputWindowSize(%struct.TYPE_5__*, float, float) #1

declare dso_local i32 @_glfwPlatformSetWindowSize(%struct.TYPE_5__*, float, float) #1

declare dso_local i32 @_glfwInputWindowDamage(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
