; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacenc.c_put_audio_specific_config.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacenc.c_put_audio_specific_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@AOT_SBR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @put_audio_specific_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @put_audio_specific_config(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %5, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 8
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 1, i32 0
  %26 = sub nsw i32 %19, %25
  %27 = mul nsw i32 %16, %26
  store i32 %27, i32* %6, align 4
  store i32 32, i32* %7, align 4
  %28 = call i32 @av_mallocz(i32 32)
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %1
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = call i32 @AVERROR(i32 %36)
  store i32 %37, i32* %2, align 4
  br label %74

38:                                               ; preds = %1
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @init_put_bits(i32* %4, i32 %41, i32 32)
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  %47 = call i32 @put_bits(i32* %4, i32 5, i32 %46)
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @put_bits(i32* %4, i32 4, i32 %50)
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @put_bits(i32* %4, i32 4, i32 %52)
  %54 = call i32 @put_bits(i32* %4, i32 1, i32 0)
  %55 = call i32 @put_bits(i32* %4, i32 1, i32 0)
  %56 = call i32 @put_bits(i32* %4, i32 1, i32 0)
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %38
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %63 = call i32 @put_pce(i32* %4, %struct.TYPE_5__* %62)
  br label %64

64:                                               ; preds = %61, %38
  %65 = call i32 @put_bits(i32* %4, i32 11, i32 695)
  %66 = load i32, i32* @AOT_SBR, align 4
  %67 = call i32 @put_bits(i32* %4, i32 5, i32 %66)
  %68 = call i32 @put_bits(i32* %4, i32 1, i32 0)
  %69 = call i32 @flush_put_bits(i32* %4)
  %70 = call i32 @put_bits_count(i32* %4)
  %71 = ashr i32 %70, 3
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %64, %35
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @av_mallocz(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @init_put_bits(i32*, i32, i32) #1

declare dso_local i32 @put_bits(i32*, i32, i32) #1

declare dso_local i32 @put_pce(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @flush_put_bits(i32*) #1

declare dso_local i32 @put_bits_count(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
