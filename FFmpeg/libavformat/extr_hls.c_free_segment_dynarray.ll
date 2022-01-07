; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_hls.c_free_segment_dynarray.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_hls.c_free_segment_dynarray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.segment = type { %struct.segment*, %struct.segment* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.segment**, i32)* @free_segment_dynarray to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_segment_dynarray(%struct.segment** %0, i32 %1) #0 {
  %3 = alloca %struct.segment**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.segment** %0, %struct.segment*** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %30, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %33

10:                                               ; preds = %6
  %11 = load %struct.segment**, %struct.segment*** %3, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.segment*, %struct.segment** %11, i64 %13
  %15 = load %struct.segment*, %struct.segment** %14, align 8
  %16 = getelementptr inbounds %struct.segment, %struct.segment* %15, i32 0, i32 1
  %17 = call i32 @av_freep(%struct.segment** %16)
  %18 = load %struct.segment**, %struct.segment*** %3, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.segment*, %struct.segment** %18, i64 %20
  %22 = load %struct.segment*, %struct.segment** %21, align 8
  %23 = getelementptr inbounds %struct.segment, %struct.segment* %22, i32 0, i32 0
  %24 = call i32 @av_freep(%struct.segment** %23)
  %25 = load %struct.segment**, %struct.segment*** %3, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.segment*, %struct.segment** %25, i64 %27
  %29 = call i32 @av_freep(%struct.segment** %28)
  br label %30

30:                                               ; preds = %10
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %6

33:                                               ; preds = %6
  ret void
}

declare dso_local i32 @av_freep(%struct.segment**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
