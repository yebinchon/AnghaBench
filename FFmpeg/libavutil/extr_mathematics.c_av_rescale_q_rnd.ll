; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_mathematics.c_av_rescale_q_rnd.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_mathematics.c_av_rescale_q_rnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av_rescale_q_rnd(i32 %0, i32 %1, i64 %2, i32 %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_4__, align 8
  %8 = alloca %struct.TYPE_4__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = bitcast %struct.TYPE_4__* %7 to { i32, i64 }*
  %14 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %13, i32 0, i32 0
  store i32 %1, i32* %14, align 8
  %15 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %13, i32 0, i32 1
  store i64 %2, i64* %15, align 8
  %16 = bitcast %struct.TYPE_4__* %8 to { i32, i64 }*
  %17 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %16, i32 0, i32 0
  store i32 %3, i32* %17, align 8
  %18 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %16, i32 0, i32 1
  store i64 %4, i64* %18, align 8
  store i32 %0, i32* %9, align 4
  store i32 %5, i32* %10, align 4
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = mul nsw i32 %20, %23
  store i32 %24, i32* %11, align 4
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = mul nsw i32 %26, %29
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @av_rescale_rnd(i32 %31, i32 %32, i32 %33, i32 %34)
  ret i32 %35
}

declare dso_local i32 @av_rescale_rnd(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
