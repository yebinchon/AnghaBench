; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mmaldec.c_ffmmal_set_ref.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mmaldec.c_ffmmal_set_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32**, i32, i32* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32*, %struct.TYPE_8__* }

@ENOMEM = common dso_local global i32 0, align 4
@ffmmal_release_frame = common dso_local global i32 0, align 4
@AV_BUFFER_FLAG_READONLY = common dso_local global i32 0, align 4
@memory_order_relaxed = common dso_local global i32 0, align 4
@AV_PIX_FMT_MMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_8__*, i32*)* @ffmmal_set_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffmmal_set_ref(%struct.TYPE_10__* %0, %struct.TYPE_8__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = call %struct.TYPE_9__* @av_mallocz(i32 16)
  store %struct.TYPE_9__* %9, %struct.TYPE_9__** %8, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %11 = icmp ne %struct.TYPE_9__* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = call i32 @AVERROR(i32 %13)
  store i32 %14, i32* %4, align 4
  br label %61

15:                                               ; preds = %3
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %18, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  store i32* %19, i32** %21, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %23 = bitcast %struct.TYPE_9__* %22 to i8*
  %24 = load i32, i32* @ffmmal_release_frame, align 4
  %25 = load i32, i32* @AV_BUFFER_FLAG_READONLY, align 4
  %26 = call i32 @av_buffer_create(i8* %23, i32 16, i32 %24, i32* null, i32 %25)
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32 %26, i32* %30, align 4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %15
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %39 = call i32 @av_free(%struct.TYPE_9__* %38)
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = call i32 @AVERROR(i32 %40)
  store i32 %41, i32* %4, align 4
  br label %61

42:                                               ; preds = %15
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* @memory_order_relaxed, align 4
  %48 = call i32 @atomic_fetch_add_explicit(i32* %46, i32 1, i32 %47)
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @mmal_buffer_header_acquire(i32* %49)
  %51 = load i32, i32* @AV_PIX_FMT_MMAL, align 4
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i32**, i32*** %58, align 8
  %60 = getelementptr inbounds i32*, i32** %59, i64 3
  store i32* %56, i32** %60, align 8
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %42, %37, %12
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.TYPE_9__* @av_mallocz(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_buffer_create(i8*, i32, i32, i32*, i32) #1

declare dso_local i32 @av_free(%struct.TYPE_9__*) #1

declare dso_local i32 @atomic_fetch_add_explicit(i32*, i32, i32) #1

declare dso_local i32 @mmal_buffer_header_acquire(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
