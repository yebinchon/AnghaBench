; ModuleID = '/home/carl/AnghaBench/Craft/src/extr_main.c_update_player.c'
source_filename = "/home/carl/AnghaBench/Craft/src/extr_main.c_update_player.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, %struct.TYPE_6__, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { float, float, float, float, float, i32 }

@PI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_player(%struct.TYPE_7__* %0, float %1, float %2, float %3, float %4, float %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_6__*, align 8
  %16 = alloca %struct.TYPE_6__*, align 8
  %17 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store float %1, float* %9, align 4
  store float %2, float* %10, align 4
  store float %3, float* %11, align 4
  store float %4, float* %12, align 4
  store float %5, float* %13, align 4
  store i32 %6, i32* %14, align 4
  %18 = load i32, i32* %14, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %84

20:                                               ; preds = %7
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 3
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %15, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 2
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %16, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %27 = call i32 @memcpy(%struct.TYPE_6__* %25, %struct.TYPE_6__* %26, i32 24)
  %28 = load float, float* %9, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store float %28, float* %30, align 4
  %31 = load float, float* %10, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  store float %31, float* %33, align 4
  %34 = load float, float* %11, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  store float %34, float* %36, align 4
  %37 = load float, float* %12, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 3
  store float %37, float* %39, align 4
  %40 = load float, float* %13, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 4
  store float %40, float* %42, align 4
  %43 = call i32 (...) @glfwGetTime()
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 3
  %48 = load float, float* %47, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 3
  %51 = load float, float* %50, align 4
  %52 = fsub float %48, %51
  %53 = load i32, i32* @PI, align 4
  %54 = sitofp i32 %53 to float
  %55 = fcmp ogt float %52, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %20
  %57 = load i32, i32* @PI, align 4
  %58 = mul nsw i32 2, %57
  %59 = sitofp i32 %58 to float
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 3
  %62 = load float, float* %61, align 4
  %63 = fadd float %62, %59
  store float %63, float* %61, align 4
  br label %64

64:                                               ; preds = %56, %20
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 3
  %67 = load float, float* %66, align 4
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 3
  %70 = load float, float* %69, align 4
  %71 = fsub float %67, %70
  %72 = load i32, i32* @PI, align 4
  %73 = sitofp i32 %72 to float
  %74 = fcmp ogt float %71, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %64
  %76 = load i32, i32* @PI, align 4
  %77 = mul nsw i32 2, %76
  %78 = sitofp i32 %77 to float
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 3
  %81 = load float, float* %80, align 4
  %82 = fsub float %81, %78
  store float %82, float* %80, align 4
  br label %83

83:                                               ; preds = %75, %64
  br label %124

84:                                               ; preds = %7
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  store %struct.TYPE_6__* %86, %struct.TYPE_6__** %17, align 8
  %87 = load float, float* %9, align 4
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  store float %87, float* %89, align 4
  %90 = load float, float* %10, align 4
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  store float %90, float* %92, align 4
  %93 = load float, float* %11, align 4
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 2
  store float %93, float* %95, align 4
  %96 = load float, float* %12, align 4
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 3
  store float %96, float* %98, align 4
  %99 = load float, float* %13, align 4
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 4
  store float %99, float* %101, align 4
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @del_buffer(i32 %104)
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load float, float* %107, align 4
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = load float, float* %110, align 4
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 2
  %114 = load float, float* %113, align 4
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 3
  %117 = load float, float* %116, align 4
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 4
  %120 = load float, float* %119, align 4
  %121 = call i32 @gen_player_buffer(float %108, float %111, float %114, float %117, float %120)
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 4
  br label %124

124:                                              ; preds = %84, %83
  ret void
}

declare dso_local i32 @memcpy(%struct.TYPE_6__*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @glfwGetTime(...) #1

declare dso_local i32 @del_buffer(i32) #1

declare dso_local i32 @gen_player_buffer(float, float, float, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
