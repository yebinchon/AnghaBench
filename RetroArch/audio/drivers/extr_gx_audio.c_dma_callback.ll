; ModuleID = '/home/carl/AnghaBench/RetroArch/audio/drivers/extr_gx_audio.c_dma_callback.c'
source_filename = "/home/carl/AnghaBench/RetroArch/audio/drivers/extr_gx_audio.c_dma_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64* }

@gx_audio_data = common dso_local global i64 0, align 8
@stop_audio = common dso_local global i64 0, align 8
@CHUNK_SIZE = common dso_local global i32 0, align 4
@BLOCKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dma_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_callback() #0 {
  %1 = alloca %struct.TYPE_2__*, align 8
  %2 = load i64, i64* @gx_audio_data, align 8
  %3 = inttoptr i64 %2 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %3, %struct.TYPE_2__** %1, align 8
  %4 = load i64, i64* @stop_audio, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %54

7:                                                ; preds = %0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  %10 = load i64*, i64** %9, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds i64, i64* %10, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* @CHUNK_SIZE, align 4
  %17 = call i32 @memset(i64 %15, i32 0, i32 %16)
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = add i64 %25, 1
  %27 = load i32, i32* @BLOCKS, align 4
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = and i64 %26, %29
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i64 %30, i64* %32, align 8
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i64*, i64** %34, align 8
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i64, i64* %35, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* @CHUNK_SIZE, align 4
  %42 = call i32 @DCFlushRange(i64 %40, i32 %41)
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i64*, i64** %44, align 8
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i64, i64* %45, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = load i32, i32* @CHUNK_SIZE, align 4
  %53 = call i32 @AIInitDMA(i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %7, %6
  ret void
}

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @DCFlushRange(i64, i32) #1

declare dso_local i32 @AIInitDMA(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
