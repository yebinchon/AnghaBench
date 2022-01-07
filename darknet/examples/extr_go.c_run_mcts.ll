; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_go.c_run_mcts.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_go.c_run_mcts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @run_mcts(%struct.TYPE_6__* %0, i32* %1, float* %2, float* %3, i32 %4, i32 %5, float %6, float %7) #0 {
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %9, align 8
  store i32* %1, i32** %10, align 8
  store float* %2, float** %11, align 8
  store float* %3, float** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store float %6, float* %15, align 4
  store float %7, float* %16, align 4
  %20 = call double (...) @what_time_is_it_now()
  store double %20, double* %18, align 8
  %21 = load i32, i32* %13, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %8
  %24 = load float*, float** %11, align 8
  %25 = call i32 @flip_board(float* %24)
  br label %26

26:                                               ; preds = %23, %8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %28 = icmp ne %struct.TYPE_6__* %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %26
  %30 = load float*, float** %11, align 8
  %31 = call i32 @copy_board(float* %30)
  %32 = load float*, float** %12, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = call %struct.TYPE_6__* @expand(i32 %31, float* %32, i32* %33)
  store %struct.TYPE_6__* %34, %struct.TYPE_6__** %9, align 8
  br label %35

35:                                               ; preds = %29, %26
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load float*, float** %11, align 8
  %40 = call i32 @compare_board(i32 %38, float* %39)
  %41 = call i32 @assert(i32 %40)
  store i32 0, i32* %17, align 4
  br label %42

42:                                               ; preds = %78, %35
  %43 = load i32, i32* %17, align 4
  %44 = load i32, i32* %14, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %81

46:                                               ; preds = %42
  %47 = load float, float* %16, align 4
  %48 = fcmp ogt float %47, 0.000000e+00
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = call double (...) @what_time_is_it_now()
  %51 = load double, double* %18, align 8
  %52 = fsub double %50, %51
  %53 = load float, float* %16, align 4
  %54 = fpext float %53 to double
  %55 = fcmp ogt double %52, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %81

57:                                               ; preds = %49, %46
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @max_int_index(i32* %60, i32 362)
  store i32 %61, i32* %19, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %19, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %14, align 4
  %70 = icmp sge i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %57
  br label %81

72:                                               ; preds = %57
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %74 = load i32*, i32** %10, align 8
  %75 = load float*, float** %12, align 8
  %76 = load float, float* %15, align 4
  %77 = call i32 @select_mcts(%struct.TYPE_6__* %73, i32* %74, float* %75, float %76)
  br label %78

78:                                               ; preds = %72
  %79 = load i32, i32* %17, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %17, align 4
  br label %42

81:                                               ; preds = %71, %56, %42
  %82 = load i32, i32* %13, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load float*, float** %11, align 8
  %86 = call i32 @flip_board(float* %85)
  br label %87

87:                                               ; preds = %84, %81
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  ret %struct.TYPE_6__* %88
}

declare dso_local double @what_time_is_it_now(...) #1

declare dso_local i32 @flip_board(float*) #1

declare dso_local %struct.TYPE_6__* @expand(i32, float*, i32*) #1

declare dso_local i32 @copy_board(float*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @compare_board(i32, float*) #1

declare dso_local i32 @max_int_index(i32*, i32) #1

declare dso_local i32 @select_mcts(%struct.TYPE_6__*, i32*, float*, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
