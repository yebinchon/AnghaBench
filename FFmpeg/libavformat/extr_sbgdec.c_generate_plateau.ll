; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_sbgdec.c_generate_plateau.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_sbgdec.c_generate_plateau.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbg_script = type { %struct.sbg_script_synth* }
%struct.sbg_script_synth = type { i32 }
%struct.ws_intervals = type { i32 }
%struct.sbg_script_event = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sbg_script*, %struct.ws_intervals*, %struct.sbg_script_event*)* @generate_plateau to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generate_plateau(i8* %0, %struct.sbg_script* %1, %struct.ws_intervals* %2, %struct.sbg_script_event* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sbg_script*, align 8
  %8 = alloca %struct.ws_intervals*, align 8
  %9 = alloca %struct.sbg_script_event*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sbg_script_synth*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.sbg_script* %1, %struct.sbg_script** %7, align 8
  store %struct.ws_intervals* %2, %struct.ws_intervals** %8, align 8
  store %struct.sbg_script_event* %3, %struct.sbg_script_event** %9, align 8
  %15 = load %struct.sbg_script_event*, %struct.sbg_script_event** %9, align 8
  %16 = getelementptr inbounds %struct.sbg_script_event, %struct.sbg_script_event* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  %18 = load %struct.sbg_script_event*, %struct.sbg_script_event** %9, align 8
  %19 = getelementptr inbounds %struct.sbg_script_event, %struct.sbg_script_event* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %21

21:                                               ; preds = %51, %4
  %22 = load i32, i32* %12, align 4
  %23 = load %struct.sbg_script_event*, %struct.sbg_script_event** %9, align 8
  %24 = getelementptr inbounds %struct.sbg_script_event, %struct.sbg_script_event* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %54

27:                                               ; preds = %21
  %28 = load %struct.sbg_script*, %struct.sbg_script** %7, align 8
  %29 = getelementptr inbounds %struct.sbg_script, %struct.sbg_script* %28, i32 0, i32 0
  %30 = load %struct.sbg_script_synth*, %struct.sbg_script_synth** %29, align 8
  %31 = load %struct.sbg_script_event*, %struct.sbg_script_event** %9, align 8
  %32 = getelementptr inbounds %struct.sbg_script_event, %struct.sbg_script_event* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %12, align 4
  %35 = add nsw i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.sbg_script_synth, %struct.sbg_script_synth* %30, i64 %36
  store %struct.sbg_script_synth* %37, %struct.sbg_script_synth** %14, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = load %struct.sbg_script*, %struct.sbg_script** %7, align 8
  %40 = load %struct.ws_intervals*, %struct.ws_intervals** %8, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.sbg_script_synth*, %struct.sbg_script_synth** %14, align 8
  %44 = load %struct.sbg_script_synth*, %struct.sbg_script_synth** %14, align 8
  %45 = call i32 @generate_interval(i8* %38, %struct.sbg_script* %39, %struct.ws_intervals* %40, i32 %41, i32 %42, %struct.sbg_script_synth* %43, %struct.sbg_script_synth* %44, i32 0)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %27
  %49 = load i32, i32* %13, align 4
  store i32 %49, i32* %5, align 4
  br label %55

50:                                               ; preds = %27
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %12, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %12, align 4
  br label %21

54:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %54, %48
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @generate_interval(i8*, %struct.sbg_script*, %struct.ws_intervals*, i32, i32, %struct.sbg_script_synth*, %struct.sbg_script_synth*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
