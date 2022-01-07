; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_common.c_hb_audio_encoder_get_fallback_for_passthru.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_common.c_hb_audio_encoder_get_fallback_for_passthru.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@HB_GID_ACODEC_AAC = common dso_local global i32 0, align 4
@HB_GID_ACODEC_AC3 = common dso_local global i32 0, align 4
@HB_GID_ACODEC_EAC3 = common dso_local global i32 0, align 4
@HB_GID_ACODEC_FLAC = common dso_local global i32 0, align 4
@HB_GID_ACODEC_MP3 = common dso_local global i32 0, align 4
@HB_ACODEC_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hb_audio_encoder_get_fallback_for_passthru(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %5, align 8
  %6 = load i32, i32* %3, align 4
  switch i32 %6, label %17 [
    i32 132, label %7
    i32 131, label %9
    i32 130, label %11
    i32 129, label %13
    i32 128, label %15
  ]

7:                                                ; preds = %1
  %8 = load i32, i32* @HB_GID_ACODEC_AAC, align 4
  store i32 %8, i32* %4, align 4
  br label %19

9:                                                ; preds = %1
  %10 = load i32, i32* @HB_GID_ACODEC_AC3, align 4
  store i32 %10, i32* %4, align 4
  br label %19

11:                                               ; preds = %1
  %12 = load i32, i32* @HB_GID_ACODEC_EAC3, align 4
  store i32 %12, i32* %4, align 4
  br label %19

13:                                               ; preds = %1
  %14 = load i32, i32* @HB_GID_ACODEC_FLAC, align 4
  store i32 %14, i32* %4, align 4
  br label %19

15:                                               ; preds = %1
  %16 = load i32, i32* @HB_GID_ACODEC_MP3, align 4
  store i32 %16, i32* %4, align 4
  br label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @HB_ACODEC_INVALID, align 4
  store i32 %18, i32* %2, align 4
  br label %38

19:                                               ; preds = %15, %13, %11, %9, %7
  br label %20

20:                                               ; preds = %35, %19
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = call %struct.TYPE_5__* @hb_audio_encoder_get_next(%struct.TYPE_5__* %21)
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %5, align 8
  %23 = icmp ne %struct.TYPE_5__* %22, null
  br i1 %23, label %24, label %36

24:                                               ; preds = %20
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %26 = bitcast %struct.TYPE_5__* %25 to %struct.TYPE_6__*
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %2, align 4
  br label %38

35:                                               ; preds = %24
  br label %20

36:                                               ; preds = %20
  %37 = load i32, i32* @HB_ACODEC_INVALID, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %36, %31, %17
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.TYPE_5__* @hb_audio_encoder_get_next(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
