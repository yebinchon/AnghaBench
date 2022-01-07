; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_hqdn3d.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_hqdn3d.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, %struct.TYPE_10__*, %struct.TYPE_12__** }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_13__*, i32, %struct.TYPE_11__*, i32*, i32)* }
%struct.TYPE_11__ = type { i32, i32*, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@do_denoise = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_12__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  store %struct.TYPE_13__* %13, %struct.TYPE_13__** %6, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %16, i64 0
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %7, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = call i64 @av_frame_is_writable(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  %27 = xor i1 %26, true
  br label %28

28:                                               ; preds = %22, %2
  %29 = phi i1 [ false, %2 ], [ %27, %22 ]
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32*, i32** %5, align 8
  store i32* %34, i32** %8, align 8
  br label %54

35:                                               ; preds = %28
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32* @ff_get_video_buffer(%struct.TYPE_12__* %36, i32 %39, i32 %42)
  store i32* %43, i32** %8, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %35
  %47 = call i32 @av_frame_free(i32** %5)
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = call i32 @AVERROR(i32 %48)
  store i32 %49, i32* %3, align 4
  br label %87

50:                                               ; preds = %35
  %51 = load i32*, i32** %8, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @av_frame_copy_props(i32* %51, i32* %52)
  br label %54

54:                                               ; preds = %50, %33
  %55 = load i32*, i32** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 2
  store i32* %55, i32** %56, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  store i32* %57, i32** %58, align 8
  %59 = load i32, i32* %9, align 4
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  store i32 %59, i32* %60, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i32 (%struct.TYPE_13__*, i32, %struct.TYPE_11__*, i32*, i32)*, i32 (%struct.TYPE_13__*, i32, %struct.TYPE_11__*, i32*, i32)** %64, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %67 = load i32, i32* @do_denoise, align 4
  %68 = call i32 %65(%struct.TYPE_13__* %66, i32 %67, %struct.TYPE_11__* %10, i32* null, i32 3)
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %54
  %74 = call i32 @av_frame_free(i32** %8)
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %76 = load i32*, i32** %5, align 8
  %77 = call i32 @ff_filter_frame(%struct.TYPE_12__* %75, i32* %76)
  store i32 %77, i32* %3, align 4
  br label %87

78:                                               ; preds = %54
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %78
  %82 = call i32 @av_frame_free(i32** %5)
  br label %83

83:                                               ; preds = %81, %78
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %85 = load i32*, i32** %8, align 8
  %86 = call i32 @ff_filter_frame(%struct.TYPE_12__* %84, i32* %85)
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %83, %73, %46
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i64 @av_frame_is_writable(i32*) #1

declare dso_local i32* @ff_get_video_buffer(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @av_frame_free(i32**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_copy_props(i32*, i32*) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_12__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
