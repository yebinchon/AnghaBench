; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_work.c_hb_audio_encoder.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_work.c_hb_audio_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HB_ACODEC_FF_MASK = common dso_local global i32 0, align 4
@WORK_ENCAVCODEC_AUDIO = common dso_local global i32 0, align 4
@WORK_ENCVORBIS = common dso_local global i32 0, align 4
@WORK_ENC_CA_AAC = common dso_local global i32 0, align 4
@WORK_ENC_CA_HAAC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @hb_audio_encoder(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @HB_ACODEC_FF_MASK, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* @WORK_ENCAVCODEC_AUDIO, align 4
  %13 = call i32* @hb_get_work(i32* %11, i32 %12)
  store i32* %13, i32** %3, align 8
  br label %34

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %32 [
    i32 132, label %16
    i32 129, label %16
    i32 128, label %20
    i32 131, label %24
    i32 130, label %28
  ]

16:                                               ; preds = %14, %14
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* @WORK_ENCAVCODEC_AUDIO, align 4
  %19 = call i32* @hb_get_work(i32* %17, i32 %18)
  store i32* %19, i32** %3, align 8
  br label %34

20:                                               ; preds = %14
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* @WORK_ENCVORBIS, align 4
  %23 = call i32* @hb_get_work(i32* %21, i32 %22)
  store i32* %23, i32** %3, align 8
  br label %34

24:                                               ; preds = %14
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* @WORK_ENC_CA_AAC, align 4
  %27 = call i32* @hb_get_work(i32* %25, i32 %26)
  store i32* %27, i32** %3, align 8
  br label %34

28:                                               ; preds = %14
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* @WORK_ENC_CA_HAAC, align 4
  %31 = call i32* @hb_get_work(i32* %29, i32 %30)
  store i32* %31, i32** %3, align 8
  br label %34

32:                                               ; preds = %14
  br label %33

33:                                               ; preds = %32
  store i32* null, i32** %3, align 8
  br label %34

34:                                               ; preds = %33, %28, %24, %20, %16, %10
  %35 = load i32*, i32** %3, align 8
  ret i32* %35
}

declare dso_local i32* @hb_get_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
