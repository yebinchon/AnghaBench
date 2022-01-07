; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vdpau_h264.c_vdpau_h264_decode_slice.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vdpau_h264.c_vdpau_h264_decode_slice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.vdpau_picture_context* }
%struct.vdpau_picture_context = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@start_code_prefix = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32*, i32)* @vdpau_h264_decode_slice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdpau_h264_decode_slice(%struct.TYPE_11__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.vdpau_picture_context*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %8, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %9, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load %struct.vdpau_picture_context*, %struct.vdpau_picture_context** %19, align 8
  store %struct.vdpau_picture_context* %20, %struct.vdpau_picture_context** %10, align 8
  %21 = load %struct.vdpau_picture_context*, %struct.vdpau_picture_context** %10, align 8
  %22 = load i32*, i32** @start_code_prefix, align 8
  %23 = call i32 @ff_vdpau_add_buffer(%struct.vdpau_picture_context* %21, i32* %22, i32 3)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* %11, align 4
  store i32 %27, i32* %4, align 4
  br label %44

28:                                               ; preds = %3
  %29 = load %struct.vdpau_picture_context*, %struct.vdpau_picture_context** %10, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @ff_vdpau_add_buffer(%struct.vdpau_picture_context* %29, i32* %30, i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* %11, align 4
  store i32 %36, i32* %4, align 4
  br label %44

37:                                               ; preds = %28
  %38 = load %struct.vdpau_picture_context*, %struct.vdpau_picture_context** %10, align 8
  %39 = getelementptr inbounds %struct.vdpau_picture_context, %struct.vdpau_picture_context* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %37, %35, %26
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @ff_vdpau_add_buffer(%struct.vdpau_picture_context*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
