; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_go.c_check_ko.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_go.c_check_ko.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_ko(float* %0, float* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca [1083 x float], align 16
  store float* %0, float** %4, align 8
  store float* %1, float** %5, align 8
  %7 = load float*, float** %5, align 8
  %8 = icmp ne float* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %30

10:                                               ; preds = %2
  %11 = load float*, float** %4, align 8
  %12 = getelementptr inbounds [1083 x float], [1083 x float]* %6, i64 0, i64 0
  %13 = call i32 @copy_cpu(i32 1083, float* %11, i32 1, float* %12, i32 1)
  %14 = getelementptr inbounds [1083 x float], [1083 x float]* %6, i64 0, i64 722
  %15 = load float, float* %14, align 8
  %16 = load float*, float** %5, align 8
  %17 = getelementptr inbounds float, float* %16, i64 722
  %18 = load float, float* %17, align 4
  %19 = fcmp une float %15, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %10
  %21 = getelementptr inbounds [1083 x float], [1083 x float]* %6, i64 0, i64 0
  %22 = call i32 @flip_board(float* %21)
  br label %23

23:                                               ; preds = %20, %10
  %24 = getelementptr inbounds [1083 x float], [1083 x float]* %6, i64 0, i64 0
  %25 = load float*, float** %5, align 8
  %26 = call i64 @compare_board(float* %24, float* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 1, i32* %3, align 4
  br label %30

29:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %28, %9
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @copy_cpu(i32, float*, i32, float*, i32) #1

declare dso_local i32 @flip_board(float*) #1

declare dso_local i64 @compare_board(float*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
