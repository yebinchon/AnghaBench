; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libgsmenc.c_libgsm_encode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libgsmenc.c_libgsm_encode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, %struct.gsm_state* }
%struct.gsm_state = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i64* }

@GSM_FRAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_9__*, %struct.TYPE_10__*, i32*)* @libgsm_encode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @libgsm_encode_frame(%struct.TYPE_11__* %0, %struct.TYPE_9__* %1, %struct.TYPE_10__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.gsm_state*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i32*
  store i32* %18, i32** %11, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 2
  %21 = load %struct.gsm_state*, %struct.gsm_state** %20, align 8
  store %struct.gsm_state* %21, %struct.gsm_state** %12, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ff_alloc_packet2(%struct.TYPE_11__* %22, %struct.TYPE_9__* %23, i32 %26, i32 0)
  store i32 %27, i32* %10, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %5, align 4
  br label %61

31:                                               ; preds = %4
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %59 [
    i32 129, label %35
    i32 128, label %42
  ]

35:                                               ; preds = %31
  %36 = load %struct.gsm_state*, %struct.gsm_state** %12, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @gsm_encode(%struct.gsm_state* %36, i32* %37, i32 %40)
  br label %59

42:                                               ; preds = %31
  %43 = load %struct.gsm_state*, %struct.gsm_state** %12, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @gsm_encode(%struct.gsm_state* %43, i32* %44, i32 %47)
  %49 = load %struct.gsm_state*, %struct.gsm_state** %12, align 8
  %50 = load i32*, i32** %11, align 8
  %51 = load i32, i32* @GSM_FRAME_SIZE, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 32
  %58 = call i32 @gsm_encode(%struct.gsm_state* %49, i32* %53, i32 %57)
  br label %59

59:                                               ; preds = %42, %31, %35
  %60 = load i32*, i32** %9, align 8
  store i32 1, i32* %60, align 4
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %59, %29
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @ff_alloc_packet2(%struct.TYPE_11__*, %struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @gsm_encode(%struct.gsm_state*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
