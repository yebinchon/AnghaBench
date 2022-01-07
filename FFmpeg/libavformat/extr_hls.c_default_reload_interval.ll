; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_hls.c_default_reload_interval.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_hls.c_default_reload_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.playlist = type { i32, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.playlist*)* @default_reload_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @default_reload_interval(%struct.playlist* %0) #0 {
  %2 = alloca %struct.playlist*, align 8
  store %struct.playlist* %0, %struct.playlist** %2, align 8
  %3 = load %struct.playlist*, %struct.playlist** %2, align 8
  %4 = getelementptr inbounds %struct.playlist, %struct.playlist* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %1
  %8 = load %struct.playlist*, %struct.playlist** %2, align 8
  %9 = getelementptr inbounds %struct.playlist, %struct.playlist* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %9, align 8
  %11 = load %struct.playlist*, %struct.playlist** %2, align 8
  %12 = getelementptr inbounds %struct.playlist, %struct.playlist* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sub nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %10, i64 %15
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  br label %24

20:                                               ; preds = %1
  %21 = load %struct.playlist*, %struct.playlist** %2, align 8
  %22 = getelementptr inbounds %struct.playlist, %struct.playlist* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  br label %24

24:                                               ; preds = %20, %7
  %25 = phi i32 [ %19, %7 ], [ %23, %20 ]
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
