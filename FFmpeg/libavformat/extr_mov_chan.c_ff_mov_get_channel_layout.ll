; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov_chan.c_ff_mov_get_channel_layout.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov_chan.c_ff_mov_get_channel_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MovChannelLayoutMap = type { i32, i32 }

@MOV_CH_LAYOUT_USE_DESCRIPTIONS = common dso_local global i32 0, align 4
@MOV_CH_LAYOUT_USE_BITMAP = common dso_local global i32 0, align 4
@mov_ch_layout_map = common dso_local global %struct.MovChannelLayoutMap** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_mov_get_channel_layout(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.MovChannelLayoutMap*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @MOV_CH_LAYOUT_USE_DESCRIPTIONS, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %66

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @MOV_CH_LAYOUT_USE_BITMAP, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 262144
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i32, i32* %5, align 4
  br label %23

22:                                               ; preds = %17
  br label %23

23:                                               ; preds = %22, %20
  %24 = phi i32 [ %21, %20 ], [ 0, %22 ]
  store i32 %24, i32* %3, align 4
  br label %66

25:                                               ; preds = %13
  %26 = load i32, i32* %4, align 4
  %27 = and i32 %26, 65535
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp sgt i32 %28, 9
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %30, %25
  %32 = load %struct.MovChannelLayoutMap**, %struct.MovChannelLayoutMap*** @mov_ch_layout_map, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.MovChannelLayoutMap*, %struct.MovChannelLayoutMap** %32, i64 %34
  %36 = load %struct.MovChannelLayoutMap*, %struct.MovChannelLayoutMap** %35, align 8
  store %struct.MovChannelLayoutMap* %36, %struct.MovChannelLayoutMap** %8, align 8
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %56, %31
  %38 = load %struct.MovChannelLayoutMap*, %struct.MovChannelLayoutMap** %8, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.MovChannelLayoutMap, %struct.MovChannelLayoutMap* %38, i64 %40
  %42 = getelementptr inbounds %struct.MovChannelLayoutMap, %struct.MovChannelLayoutMap* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %37
  %46 = load %struct.MovChannelLayoutMap*, %struct.MovChannelLayoutMap** %8, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.MovChannelLayoutMap, %struct.MovChannelLayoutMap* %46, i64 %48
  %50 = getelementptr inbounds %struct.MovChannelLayoutMap, %struct.MovChannelLayoutMap* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  br label %59

55:                                               ; preds = %45
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %37

59:                                               ; preds = %54, %37
  %60 = load %struct.MovChannelLayoutMap*, %struct.MovChannelLayoutMap** %8, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.MovChannelLayoutMap, %struct.MovChannelLayoutMap* %60, i64 %62
  %64 = getelementptr inbounds %struct.MovChannelLayoutMap, %struct.MovChannelLayoutMap* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %59, %23, %12
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
