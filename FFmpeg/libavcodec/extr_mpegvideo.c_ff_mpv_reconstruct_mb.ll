; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegvideo.c_ff_mpv_reconstruct_mb.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegvideo.c_ff_mpv_reconstruct_mb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@FMT_MPEG1 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_mpv_reconstruct_mb(%struct.TYPE_6__* %0, [64 x i32]* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca [64 x i32]*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store [64 x i32]* %1, [64 x i32]** %4, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @FMT_MPEG1, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %28

10:                                               ; preds = %2
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %10
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = load [64 x i32]*, [64 x i32]** %4, align 8
  %20 = bitcast [64 x i32]* %19 to i32**
  %21 = call i32 @mpv_reconstruct_mb_internal(%struct.TYPE_6__* %18, i32** %20, i32 1, i32 1)
  br label %27

22:                                               ; preds = %10
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = load [64 x i32]*, [64 x i32]** %4, align 8
  %25 = bitcast [64 x i32]* %24 to i32**
  %26 = call i32 @mpv_reconstruct_mb_internal(%struct.TYPE_6__* %23, i32** %25, i32 0, i32 1)
  br label %27

27:                                               ; preds = %22, %17
  br label %46

28:                                               ; preds = %2
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %37 = load [64 x i32]*, [64 x i32]** %4, align 8
  %38 = bitcast [64 x i32]* %37 to i32**
  %39 = call i32 @mpv_reconstruct_mb_internal(%struct.TYPE_6__* %36, i32** %38, i32 1, i32 0)
  br label %45

40:                                               ; preds = %28
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %42 = load [64 x i32]*, [64 x i32]** %4, align 8
  %43 = bitcast [64 x i32]* %42 to i32**
  %44 = call i32 @mpv_reconstruct_mb_internal(%struct.TYPE_6__* %41, i32** %43, i32 0, i32 0)
  br label %45

45:                                               ; preds = %40, %35
  br label %46

46:                                               ; preds = %45, %27
  ret void
}

declare dso_local i32 @mpv_reconstruct_mb_internal(%struct.TYPE_6__*, i32**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
