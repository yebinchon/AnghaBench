; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_nvenc.c_nvenc_map_preset.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_nvenc.c_nvenc_map_preset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }

@DEFAULT = common dso_local global i32 0, align 4
@HP = common dso_local global i32 0, align 4
@HQ = common dso_local global i32 0, align 4
@BD = common dso_local global i32 0, align 4
@SLOW = common dso_local global i32 0, align 4
@NVENC_TWO_PASSES = common dso_local global i32 0, align 4
@MEDIUM = common dso_local global i32 0, align 4
@NVENC_ONE_PASS = common dso_local global i32 0, align 4
@FAST = common dso_local global i32 0, align 4
@LOW_LATENCY_DEFAULT = common dso_local global i32 0, align 4
@NVENC_LOWLATENCY = common dso_local global i32 0, align 4
@LOW_LATENCY_HP = common dso_local global i32 0, align 4
@LOW_LATENCY_HQ = common dso_local global i32 0, align 4
@LOSSLESS_DEFAULT = common dso_local global i32 0, align 4
@NVENC_LOSSLESS = common dso_local global i32 0, align 4
@LOSSLESS_HP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @nvenc_map_preset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvenc_map_preset(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca [12 x %struct.TYPE_9__], align 16
  %4 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %5 = getelementptr inbounds [12 x %struct.TYPE_9__], [12 x %struct.TYPE_9__]* %3, i64 0, i64 0
  %6 = load i32, i32* @DEFAULT, align 4
  %7 = call i64 (i32, ...) @PRESET(i32 %6)
  %8 = bitcast %struct.TYPE_9__* %5 to i64*
  store i64 %7, i64* %8, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i64 1
  %10 = load i32, i32* @HP, align 4
  %11 = call i64 (i32, ...) @PRESET(i32 %10)
  %12 = bitcast %struct.TYPE_9__* %9 to i64*
  store i64 %11, i64* %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i64 1
  %14 = load i32, i32* @HQ, align 4
  %15 = call i64 (i32, ...) @PRESET(i32 %14)
  %16 = bitcast %struct.TYPE_9__* %13 to i64*
  store i64 %15, i64* %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i64 1
  %18 = load i32, i32* @BD, align 4
  %19 = call i64 (i32, ...) @PRESET(i32 %18)
  %20 = bitcast %struct.TYPE_9__* %17 to i64*
  store i64 %19, i64* %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i64 1
  %22 = load i32, i32* @SLOW, align 4
  %23 = load i32, i32* @HQ, align 4
  %24 = load i32, i32* @NVENC_TWO_PASSES, align 4
  %25 = call i64 @PRESET_ALIAS(i32 %22, i32 %23, i32 %24)
  %26 = bitcast %struct.TYPE_9__* %21 to i64*
  store i64 %25, i64* %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i64 1
  %28 = load i32, i32* @MEDIUM, align 4
  %29 = load i32, i32* @HQ, align 4
  %30 = load i32, i32* @NVENC_ONE_PASS, align 4
  %31 = call i64 @PRESET_ALIAS(i32 %28, i32 %29, i32 %30)
  %32 = bitcast %struct.TYPE_9__* %27 to i64*
  store i64 %31, i64* %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i64 1
  %34 = load i32, i32* @FAST, align 4
  %35 = load i32, i32* @HP, align 4
  %36 = load i32, i32* @NVENC_ONE_PASS, align 4
  %37 = call i64 @PRESET_ALIAS(i32 %34, i32 %35, i32 %36)
  %38 = bitcast %struct.TYPE_9__* %33 to i64*
  store i64 %37, i64* %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i64 1
  %40 = load i32, i32* @LOW_LATENCY_DEFAULT, align 4
  %41 = load i32, i32* @NVENC_LOWLATENCY, align 4
  %42 = call i64 (i32, ...) @PRESET(i32 %40, i32 %41)
  %43 = bitcast %struct.TYPE_9__* %39 to i64*
  store i64 %42, i64* %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i64 1
  %45 = load i32, i32* @LOW_LATENCY_HP, align 4
  %46 = load i32, i32* @NVENC_LOWLATENCY, align 4
  %47 = call i64 (i32, ...) @PRESET(i32 %45, i32 %46)
  %48 = bitcast %struct.TYPE_9__* %44 to i64*
  store i64 %47, i64* %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i64 1
  %50 = load i32, i32* @LOW_LATENCY_HQ, align 4
  %51 = load i32, i32* @NVENC_LOWLATENCY, align 4
  %52 = call i64 (i32, ...) @PRESET(i32 %50, i32 %51)
  %53 = bitcast %struct.TYPE_9__* %49 to i64*
  store i64 %52, i64* %53, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i64 1
  %55 = load i32, i32* @LOSSLESS_DEFAULT, align 4
  %56 = load i32, i32* @NVENC_LOSSLESS, align 4
  %57 = call i64 (i32, ...) @PRESET(i32 %55, i32 %56)
  %58 = bitcast %struct.TYPE_9__* %54 to i64*
  store i64 %57, i64* %58, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i64 1
  %60 = load i32, i32* @LOSSLESS_HP, align 4
  %61 = load i32, i32* @NVENC_LOSSLESS, align 4
  %62 = call i64 (i32, ...) @PRESET(i32 %60, i32 %61)
  %63 = bitcast %struct.TYPE_9__* %59 to i64*
  store i64 %62, i64* %63, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds [12 x %struct.TYPE_9__], [12 x %struct.TYPE_9__]* %3, i64 0, i64 %66
  store %struct.TYPE_9__* %67, %struct.TYPE_9__** %4, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 4
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 8
  ret void
}

declare dso_local i64 @PRESET(i32, ...) #1

declare dso_local i64 @PRESET_ALIAS(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
