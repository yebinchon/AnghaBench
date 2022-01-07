; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswresample/extr_soxr_resample.c_flush.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswresample/extr_soxr_resample.c_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SwrContext = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SwrContext*)* @flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flush(%struct.SwrContext* %0) #0 {
  %2 = alloca %struct.SwrContext*, align 8
  %3 = alloca float, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.SwrContext* %0, %struct.SwrContext** %2, align 8
  %6 = load %struct.SwrContext*, %struct.SwrContext** %2, align 8
  %7 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = trunc i64 %8 to i32
  %10 = call i64 @soxr_delay(i32 %9)
  %11 = load %struct.SwrContext*, %struct.SwrContext** %2, align 8
  %12 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %11, i32 0, i32 1
  store i64 %10, i64* %12, align 8
  %13 = load %struct.SwrContext*, %struct.SwrContext** %2, align 8
  %14 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = trunc i64 %15 to i32
  %17 = call i32 @soxr_process(i32 %16, float* null, i32 0, i64* null, float* null, i32 0, i64* null)
  %18 = load %struct.SwrContext*, %struct.SwrContext** %2, align 8
  %19 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = call i32 @soxr_process(i32 %21, float* %3, i32 0, i64* %4, float* %3, i32 0, i64* %5)
  %23 = load %struct.SwrContext*, %struct.SwrContext** %2, align 8
  %24 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i64 @soxr_delay(i32 %26)
  %28 = load %struct.SwrContext*, %struct.SwrContext** %2, align 8
  %29 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %30, %27
  store i64 %31, i64* %29, align 8
  ret i32 0
}

declare dso_local i64 @soxr_delay(i32) #1

declare dso_local i32 @soxr_process(i32, float*, i32, i64*, float*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
