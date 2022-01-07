; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_hls.c_next_segment.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_hls.c_next_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.segment = type { i32 }
%struct.playlist = type { i32, i32, i32, %struct.segment** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.segment* (%struct.playlist*)* @next_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.segment* @next_segment(%struct.playlist* %0) #0 {
  %2 = alloca %struct.segment*, align 8
  %3 = alloca %struct.playlist*, align 8
  %4 = alloca i32, align 4
  store %struct.playlist* %0, %struct.playlist** %3, align 8
  %5 = load %struct.playlist*, %struct.playlist** %3, align 8
  %6 = getelementptr inbounds %struct.playlist, %struct.playlist* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.playlist*, %struct.playlist** %3, align 8
  %9 = getelementptr inbounds %struct.playlist, %struct.playlist* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = sub nsw i32 %7, %10
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.playlist*, %struct.playlist** %3, align 8
  %15 = getelementptr inbounds %struct.playlist, %struct.playlist* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = icmp sge i32 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store %struct.segment* null, %struct.segment** %2, align 8
  br label %27

19:                                               ; preds = %1
  %20 = load %struct.playlist*, %struct.playlist** %3, align 8
  %21 = getelementptr inbounds %struct.playlist, %struct.playlist* %20, i32 0, i32 3
  %22 = load %struct.segment**, %struct.segment*** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.segment*, %struct.segment** %22, i64 %24
  %26 = load %struct.segment*, %struct.segment** %25, align 8
  store %struct.segment* %26, %struct.segment** %2, align 8
  br label %27

27:                                               ; preds = %19, %18
  %28 = load %struct.segment*, %struct.segment** %2, align 8
  ret %struct.segment* %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
