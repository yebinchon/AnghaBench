; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_dropout_layer.c_forward_dropout_layer.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_dropout_layer.c_forward_dropout_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, float*, float, i32 }
%struct.TYPE_5__ = type { i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @forward_dropout_layer(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__, align 8
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = bitcast %struct.TYPE_5__* %4 to { i32*, i32 }*
  %8 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %7, i32 0, i32 0
  store i32* %1, i32** %8, align 8
  %9 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %7, i32 0, i32 1
  store i32 %2, i32* %9, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %55

14:                                               ; preds = %3
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %52, %14
  %16 = load i32, i32* %5, align 4
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %18, %20
  %22 = icmp slt i32 %16, %21
  br i1 %22, label %23, label %55

23:                                               ; preds = %15
  %24 = call float @rand_uniform(i32 0, i32 1)
  store float %24, float* %6, align 4
  %25 = load float, float* %6, align 4
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %27 = load float*, float** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds float, float* %27, i64 %29
  store float %25, float* %30, align 4
  %31 = load float, float* %6, align 4
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  %33 = load float, float* %32, align 8
  %34 = fcmp olt float %31, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %23
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 0, i32* %40, align 4
  br label %51

41:                                               ; preds = %23
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 %49, %43
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %41, %35
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %15

55:                                               ; preds = %13, %15
  ret void
}

declare dso_local float @rand_uniform(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
