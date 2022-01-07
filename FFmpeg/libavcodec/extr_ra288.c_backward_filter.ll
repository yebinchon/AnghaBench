; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ra288.c_backward_filter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ra288.c_backward_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (float*, float*, float*, i32)* }

@MAX_BACKWARD_FILTER_ORDER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, float*, float*, float*, float*, float*, i32, i32, i32, i32)* @backward_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @backward_filter(%struct.TYPE_6__* %0, float* %1, float* %2, float* %3, float* %4, float* %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %11, align 8
  store float* %1, float** %12, align 8
  store float* %2, float** %13, align 8
  store float* %3, float** %14, align 8
  store float* %4, float** %15, align 8
  store float* %5, float** %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %23 = load i32, i32* @MAX_BACKWARD_FILTER_ORDER, align 4
  %24 = add nsw i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %21, align 8
  %27 = alloca float, i64 %25, align 16
  store i64 %25, i64* %22, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %29 = load i32, i32* %17, align 4
  %30 = load i32, i32* %18, align 4
  %31 = load i32, i32* %19, align 4
  %32 = load float*, float** %12, align 8
  %33 = load float*, float** %13, align 8
  %34 = load float*, float** %14, align 8
  %35 = call i32 @do_hybrid_window(%struct.TYPE_6__* %28, i32 %29, i32 %30, i32 %31, float* %27, float* %32, float* %33, float* %34)
  %36 = load i32, i32* %17, align 4
  %37 = load float*, float** %15, align 8
  %38 = call i32 @compute_lpc_coefs(float* %27, i32 %36, float* %37, i32 0, i32 1, i32 1)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %52, label %40

40:                                               ; preds = %10
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32 (float*, float*, float*, i32)*, i32 (float*, float*, float*, i32)** %44, align 8
  %46 = load float*, float** %15, align 8
  %47 = load float*, float** %15, align 8
  %48 = load float*, float** %16, align 8
  %49 = load i32, i32* %17, align 4
  %50 = call i32 @FFALIGN(i32 %49, i32 16)
  %51 = call i32 %45(float* %46, float* %47, float* %48, i32 %50)
  br label %52

52:                                               ; preds = %40, %10
  %53 = load float*, float** %12, align 8
  %54 = load float*, float** %12, align 8
  %55 = load i32, i32* %18, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds float, float* %54, i64 %56
  %58 = load i32, i32* %20, align 4
  %59 = sext i32 %58 to i64
  %60 = mul i64 %59, 4
  %61 = trunc i64 %60 to i32
  %62 = call i32 @memmove(float* %53, float* %57, i32 %61)
  %63 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %63)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @do_hybrid_window(%struct.TYPE_6__*, i32, i32, i32, float*, float*, float*, float*) #2

declare dso_local i32 @compute_lpc_coefs(float*, i32, float*, i32, i32, i32) #2

declare dso_local i32 @FFALIGN(i32, i32) #2

declare dso_local i32 @memmove(float*, float*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
