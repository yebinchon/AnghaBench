; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxva2_hevc.c_dxva2_hevc_end_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxva2_hevc.c_dxva2_hevc_end_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.hevc_dxva2_picture_context* }
%struct.hevc_dxva2_picture_context = type { i64, i64, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@commit_bitstream_and_slice_buffer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @dxva2_hevc_end_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dxva2_hevc_end_frame(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.hevc_dxva2_picture_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %4, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load %struct.hevc_dxva2_picture_context*, %struct.hevc_dxva2_picture_context** %14, align 8
  store %struct.hevc_dxva2_picture_context* %15, %struct.hevc_dxva2_picture_context** %5, align 8
  %16 = load %struct.hevc_dxva2_picture_context*, %struct.hevc_dxva2_picture_context** %5, align 8
  %17 = getelementptr inbounds %struct.hevc_dxva2_picture_context, %struct.hevc_dxva2_picture_context* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 1
  store i32 %20, i32* %6, align 4
  %21 = load %struct.hevc_dxva2_picture_context*, %struct.hevc_dxva2_picture_context** %5, align 8
  %22 = getelementptr inbounds %struct.hevc_dxva2_picture_context, %struct.hevc_dxva2_picture_context* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sle i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %1
  %26 = load %struct.hevc_dxva2_picture_context*, %struct.hevc_dxva2_picture_context** %5, align 8
  %27 = getelementptr inbounds %struct.hevc_dxva2_picture_context, %struct.hevc_dxva2_picture_context* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp sle i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25, %1
  store i32 -1, i32* %2, align 4
  br label %56

31:                                               ; preds = %25
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.hevc_dxva2_picture_context*, %struct.hevc_dxva2_picture_context** %5, align 8
  %39 = getelementptr inbounds %struct.hevc_dxva2_picture_context, %struct.hevc_dxva2_picture_context* %38, i32 0, i32 3
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %31
  %43 = load %struct.hevc_dxva2_picture_context*, %struct.hevc_dxva2_picture_context** %5, align 8
  %44 = getelementptr inbounds %struct.hevc_dxva2_picture_context, %struct.hevc_dxva2_picture_context* %43, i32 0, i32 2
  br label %46

45:                                               ; preds = %31
  br label %46

46:                                               ; preds = %45, %42
  %47 = phi i32* [ %44, %42 ], [ null, %45 ]
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i64 4, i64 0
  %52 = trunc i64 %51 to i32
  %53 = load i32, i32* @commit_bitstream_and_slice_buffer, align 4
  %54 = call i32 @ff_dxva2_common_end_frame(%struct.TYPE_9__* %32, i32 %37, %struct.TYPE_10__* %39, i32 4, i32* %47, i32 %52, i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %46, %30
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @ff_dxva2_common_end_frame(%struct.TYPE_9__*, i32, %struct.TYPE_10__*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
