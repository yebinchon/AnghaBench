; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/dnn/extr_dnn_backend_tf.c_allocate_input_tensor.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/dnn/extr_dnn_backend_tf.c_allocate_input_tensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@TF_FLOAT = common dso_local global i32 0, align 4
@TF_UINT8 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"should not reach here\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*)* @allocate_input_tensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @allocate_input_tensor(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca [4 x i32], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %6 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  store i32 1, i32* %6, align 4
  %7 = getelementptr inbounds i32, i32* %6, i64 1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %7, align 4
  %11 = getelementptr inbounds i32, i32* %7, i64 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %11, align 4
  %15 = getelementptr inbounds i32, i32* %11, i64 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %15, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %26 [
    i32 129, label %22
    i32 128, label %24
  ]

22:                                               ; preds = %1
  %23 = load i32, i32* @TF_FLOAT, align 4
  store i32 %23, i32* %3, align 4
  store i64 4, i64* %4, align 8
  br label %28

24:                                               ; preds = %1
  %25 = load i32, i32* @TF_UINT8, align 4
  store i32 %25, i32* %3, align 4
  store i64 1, i64* %4, align 8
  br label %28

26:                                               ; preds = %1
  %27 = call i32 @av_assert0(i32 0)
  br label %28

28:                                               ; preds = %26, %24, %22
  %29 = load i32, i32* %3, align 4
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2
  %34 = load i32, i32* %33, align 8
  %35 = mul nsw i32 %32, %34
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 3
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %35, %37
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* %4, align 8
  %41 = mul i64 %39, %40
  %42 = trunc i64 %41 to i32
  %43 = call i32* @TF_AllocateTensor(i32 %29, i32* %30, i32 4, i32 %42)
  ret i32* %43
}

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32* @TF_AllocateTensor(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
