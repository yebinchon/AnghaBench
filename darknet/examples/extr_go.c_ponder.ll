; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_go.c_ponder.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_go.c_ponder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Pondered %d moves...\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @ponder(%struct.TYPE_6__* %0, i32* %1, float* %2, float* %3, i32 %4, float %5) #0 {
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i32* %1, i32** %8, align 8
  store float* %2, float** %9, align 8
  store float* %3, float** %10, align 8
  store i32 %4, i32* %11, align 4
  store float %5, float* %12, align 4
  %15 = call double (...) @what_time_is_it_now()
  store double %15, double* %13, align 8
  store i32 0, i32* %14, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %17 = icmp ne %struct.TYPE_6__* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %6
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %14, align 4
  br label %22

22:                                               ; preds = %18, %6
  br label %23

23:                                               ; preds = %33, %22
  %24 = call i32 (...) @stdin_ready()
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  br i1 %26, label %27, label %41

27:                                               ; preds = %23
  %28 = call double (...) @what_time_is_it_now()
  %29 = load double, double* %13, align 8
  %30 = fsub double %28, %29
  %31 = fcmp ogt double %30, 1.200000e+02
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %41

33:                                               ; preds = %27
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = load float*, float** %9, align 8
  %37 = load float*, float** %10, align 8
  %38 = load i32, i32* %11, align 4
  %39 = load float, float* %12, align 4
  %40 = call %struct.TYPE_6__* @run_mcts(%struct.TYPE_6__* %34, i32* %35, float* %36, float* %37, i32 %38, i32 100000, float %39, double 1.000000e-01)
  store %struct.TYPE_6__* %40, %struct.TYPE_6__** %7, align 8
  br label %23

41:                                               ; preds = %32, %23
  %42 = load i32, i32* @stderr, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %14, align 4
  %47 = sub nsw i32 %45, %46
  %48 = call i32 @fprintf(i32 %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  ret %struct.TYPE_6__* %49
}

declare dso_local double @what_time_is_it_now(...) #1

declare dso_local i32 @stdin_ready(...) #1

declare dso_local %struct.TYPE_6__* @run_mcts(%struct.TYPE_6__*, i32*, float*, float*, i32, i32, float, double) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
