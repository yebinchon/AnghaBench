; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_hls.c_get_timebase.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_hls.c_get_timebase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.playlist = type { %struct.TYPE_6__, %struct.TYPE_5__*, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32 }

@MPEG_TIME_BASE_Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.playlist*)* @get_timebase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_timebase(%struct.playlist* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.playlist*, align 8
  store %struct.playlist* %0, %struct.playlist** %3, align 8
  %4 = load %struct.playlist*, %struct.playlist** %3, align 8
  %5 = getelementptr inbounds %struct.playlist, %struct.playlist* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @MPEG_TIME_BASE_Q, align 4
  store i32 %9, i32* %2, align 4
  br label %24

10:                                               ; preds = %1
  %11 = load %struct.playlist*, %struct.playlist** %3, align 8
  %12 = getelementptr inbounds %struct.playlist, %struct.playlist* %11, i32 0, i32 1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %14, align 8
  %16 = load %struct.playlist*, %struct.playlist** %3, align 8
  %17 = getelementptr inbounds %struct.playlist, %struct.playlist* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %15, i64 %19
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %10, %8
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
