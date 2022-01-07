; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_go.c_legal_go.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_go.c_legal_go.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @legal_go(float* %0, float* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [1083 x float], align 16
  store float* %0, float** %7, align 8
  store float* %1, float** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load float*, float** %7, align 8
  %14 = load i32, i32* %10, align 4
  %15 = mul nsw i32 %14, 19
  %16 = load i32, i32* %11, align 4
  %17 = add nsw i32 %15, %16
  %18 = call i64 @occupied(float* %13, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %44

21:                                               ; preds = %5
  %22 = load float*, float** %7, align 8
  %23 = getelementptr inbounds [1083 x float], [1083 x float]* %12, i64 0, i64 0
  %24 = call i32 @copy_cpu(i32 1083, float* %22, i32 1, float* %23, i32 1)
  %25 = getelementptr inbounds [1083 x float], [1083 x float]* %12, i64 0, i64 0
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @move_go(float* %25, i32 %26, i32 %27, i32 %28)
  %30 = getelementptr inbounds [1083 x float], [1083 x float]* %12, i64 0, i64 0
  %31 = load float*, float** %8, align 8
  %32 = call i64 @check_ko(float* %30, float* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %44

35:                                               ; preds = %21
  %36 = load float*, float** %7, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i64 @suicide_go(float* %36, i32 %37, i32 %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %44

43:                                               ; preds = %35
  store i32 1, i32* %6, align 4
  br label %44

44:                                               ; preds = %43, %42, %34, %20
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local i64 @occupied(float*, i32) #1

declare dso_local i32 @copy_cpu(i32, float*, i32, float*, i32) #1

declare dso_local i32 @move_go(float*, i32, i32, i32) #1

declare dso_local i64 @check_ko(float*, float*) #1

declare dso_local i64 @suicide_go(float*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
