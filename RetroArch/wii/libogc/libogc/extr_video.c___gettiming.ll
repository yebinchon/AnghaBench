; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_video.c___gettiming.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_video.c___gettiming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._timing = type { i32 }

@video_timing = common dso_local global %struct._timing* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct._timing* (i32)* @__gettiming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct._timing* @__gettiming(i32 %0) #0 {
  %2 = alloca %struct._timing*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %41 [
    i32 132, label %5
    i32 133, label %8
    i32 129, label %11
    i32 130, label %14
    i32 138, label %17
    i32 139, label %20
    i32 135, label %23
    i32 136, label %26
    i32 131, label %29
    i32 128, label %32
    i32 137, label %35
    i32 134, label %38
  ]

5:                                                ; preds = %1
  %6 = load %struct._timing*, %struct._timing** @video_timing, align 8
  %7 = getelementptr inbounds %struct._timing, %struct._timing* %6, i64 0
  store %struct._timing* %7, %struct._timing** %2, align 8
  br label %42

8:                                                ; preds = %1
  %9 = load %struct._timing*, %struct._timing** @video_timing, align 8
  %10 = getelementptr inbounds %struct._timing, %struct._timing* %9, i64 1
  store %struct._timing* %10, %struct._timing** %2, align 8
  br label %42

11:                                               ; preds = %1
  %12 = load %struct._timing*, %struct._timing** @video_timing, align 8
  %13 = getelementptr inbounds %struct._timing, %struct._timing* %12, i64 2
  store %struct._timing* %13, %struct._timing** %2, align 8
  br label %42

14:                                               ; preds = %1
  %15 = load %struct._timing*, %struct._timing** @video_timing, align 8
  %16 = getelementptr inbounds %struct._timing, %struct._timing* %15, i64 3
  store %struct._timing* %16, %struct._timing** %2, align 8
  br label %42

17:                                               ; preds = %1
  %18 = load %struct._timing*, %struct._timing** @video_timing, align 8
  %19 = getelementptr inbounds %struct._timing, %struct._timing* %18, i64 0
  store %struct._timing* %19, %struct._timing** %2, align 8
  br label %42

20:                                               ; preds = %1
  %21 = load %struct._timing*, %struct._timing** @video_timing, align 8
  %22 = getelementptr inbounds %struct._timing, %struct._timing* %21, i64 1
  store %struct._timing* %22, %struct._timing** %2, align 8
  br label %42

23:                                               ; preds = %1
  %24 = load %struct._timing*, %struct._timing** @video_timing, align 8
  %25 = getelementptr inbounds %struct._timing, %struct._timing* %24, i64 4
  store %struct._timing* %25, %struct._timing** %2, align 8
  br label %42

26:                                               ; preds = %1
  %27 = load %struct._timing*, %struct._timing** @video_timing, align 8
  %28 = getelementptr inbounds %struct._timing, %struct._timing* %27, i64 5
  store %struct._timing* %28, %struct._timing** %2, align 8
  br label %42

29:                                               ; preds = %1
  %30 = load %struct._timing*, %struct._timing** @video_timing, align 8
  %31 = getelementptr inbounds %struct._timing, %struct._timing* %30, i64 6
  store %struct._timing* %31, %struct._timing** %2, align 8
  br label %42

32:                                               ; preds = %1
  %33 = load %struct._timing*, %struct._timing** @video_timing, align 8
  %34 = getelementptr inbounds %struct._timing, %struct._timing* %33, i64 7
  store %struct._timing* %34, %struct._timing** %2, align 8
  br label %42

35:                                               ; preds = %1
  %36 = load %struct._timing*, %struct._timing** @video_timing, align 8
  %37 = getelementptr inbounds %struct._timing, %struct._timing* %36, i64 6
  store %struct._timing* %37, %struct._timing** %2, align 8
  br label %42

38:                                               ; preds = %1
  %39 = load %struct._timing*, %struct._timing** @video_timing, align 8
  %40 = getelementptr inbounds %struct._timing, %struct._timing* %39, i64 6
  store %struct._timing* %40, %struct._timing** %2, align 8
  br label %42

41:                                               ; preds = %1
  store %struct._timing* null, %struct._timing** %2, align 8
  br label %42

42:                                               ; preds = %41, %38, %35, %32, %29, %26, %23, %20, %17, %14, %11, %8, %5
  %43 = load %struct._timing*, %struct._timing** %2, align 8
  ret %struct._timing* %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
