; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_hlsenc.c_hls_free_variant_streams.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_hlsenc.c_hls_free_variant_streams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.HLSContext = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.HLSContext*)* @hls_free_variant_streams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hls_free_variant_streams(%struct.HLSContext* %0) #0 {
  %2 = alloca %struct.HLSContext*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  store %struct.HLSContext* %0, %struct.HLSContext** %2, align 8
  store i32 0, i32* %3, align 4
  store i32* null, i32** %4, align 8
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %5, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %70, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.HLSContext*, %struct.HLSContext** %2, align 8
  %9 = getelementptr inbounds %struct.HLSContext, %struct.HLSContext* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %73

12:                                               ; preds = %6
  %13 = load %struct.HLSContext*, %struct.HLSContext** %2, align 8
  %14 = getelementptr inbounds %struct.HLSContext, %struct.HLSContext* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  store %struct.TYPE_2__* %18, %struct.TYPE_2__** %5, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 14
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %4, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 13
  %24 = call i32 @av_freep(i32* %23)
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 12
  %27 = call i32 @av_freep(i32* %26)
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 11
  %30 = call i32 @av_freep(i32* %29)
  %31 = load i32*, i32** %4, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %12
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 10
  %36 = call i32 @av_freep(i32* %35)
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 9
  %39 = call i32 @av_freep(i32* %38)
  br label %40

40:                                               ; preds = %33, %12
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 8
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @hls_free_segments(i32 %43)
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 7
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @hls_free_segments(i32 %47)
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 6
  %51 = call i32 @av_freep(i32* %50)
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 5
  %54 = call i32 @av_freep(i32* %53)
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 4
  %57 = call i32 @av_freep(i32* %56)
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 3
  %60 = call i32 @av_freep(i32* %59)
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  %63 = call i32 @av_freep(i32* %62)
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = call i32 @av_freep(i32* %65)
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = call i32 @av_freep(i32* %68)
  br label %70

70:                                               ; preds = %40
  %71 = load i32, i32* %3, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %3, align 4
  br label %6

73:                                               ; preds = %6
  ret void
}

declare dso_local i32 @av_freep(i32*) #1

declare dso_local i32 @hls_free_segments(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
