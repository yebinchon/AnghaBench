; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dss_sp.c_dss_sp_add_pulses.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dss_sp.c_dss_sp_add_pulses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DssSpSubframe = type { i64*, i64, i64* }

@dss_sp_fixed_cb_gain = common dso_local global i32* null, align 8
@dss_sp_pulse_val = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.DssSpSubframe*)* @dss_sp_add_pulses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dss_sp_add_pulses(i32* %0, %struct.DssSpSubframe* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.DssSpSubframe*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.DssSpSubframe* %1, %struct.DssSpSubframe** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %40, %2
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 7
  br i1 %8, label %9, label %43

9:                                                ; preds = %6
  %10 = load i32*, i32** @dss_sp_fixed_cb_gain, align 8
  %11 = load %struct.DssSpSubframe*, %struct.DssSpSubframe** %4, align 8
  %12 = getelementptr inbounds %struct.DssSpSubframe, %struct.DssSpSubframe* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds i32, i32* %10, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** @dss_sp_pulse_val, align 8
  %17 = load %struct.DssSpSubframe*, %struct.DssSpSubframe** %4, align 8
  %18 = getelementptr inbounds %struct.DssSpSubframe, %struct.DssSpSubframe* %17, i32 0, i32 2
  %19 = load i64*, i64** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds i32, i32* %16, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %15, %25
  %27 = add nsw i32 %26, 16384
  %28 = ashr i32 %27, 15
  %29 = load i32*, i32** %3, align 8
  %30 = load %struct.DssSpSubframe*, %struct.DssSpSubframe** %4, align 8
  %31 = getelementptr inbounds %struct.DssSpSubframe, %struct.DssSpSubframe* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i32, i32* %29, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, %28
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %9
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %6

43:                                               ; preds = %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
