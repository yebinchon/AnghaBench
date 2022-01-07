; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vdpau.c_ff_vdpau_common_end_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vdpau.c_ff_vdpau_common_end_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__*, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_11__*, i32*, i8*, i32, i32)*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 (i32, i32, i32*, i32, i32)* }
%struct.vdpau_picture_context = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_vdpau_common_end_frame(%struct.TYPE_11__* %0, i32* %1, %struct.vdpau_picture_context* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.vdpau_picture_context*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.vdpau_picture_context* %2, %struct.vdpau_picture_context** %7, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %8, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %9, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @ff_vdpau_get_surface_id(i32* %21)
  store i32 %22, i32* %10, align 4
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %24 = call i32 @ff_vdpau_common_reinit(%struct.TYPE_11__* %23)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* %12, align 4
  store i32 %28, i32* %4, align 4
  br label %81

29:                                               ; preds = %3
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %31 = icmp ne %struct.TYPE_10__* %30, null
  br i1 %31, label %32, label %58

32:                                               ; preds = %29
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %58, label %37

37:                                               ; preds = %32
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32 (%struct.TYPE_11__*, i32*, i8*, i32, i32)*, i32 (%struct.TYPE_11__*, i32*, i8*, i32, i32)** %39, align 8
  %41 = icmp ne i32 (%struct.TYPE_11__*, i32*, i8*, i32, i32)* %40, null
  br i1 %41, label %42, label %58

42:                                               ; preds = %37
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32 (%struct.TYPE_11__*, i32*, i8*, i32, i32)*, i32 (%struct.TYPE_11__*, i32*, i8*, i32, i32)** %44, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = load %struct.vdpau_picture_context*, %struct.vdpau_picture_context** %7, align 8
  %49 = getelementptr inbounds %struct.vdpau_picture_context, %struct.vdpau_picture_context* %48, i32 0, i32 2
  %50 = bitcast i32* %49 to i8*
  %51 = load %struct.vdpau_picture_context*, %struct.vdpau_picture_context** %7, align 8
  %52 = getelementptr inbounds %struct.vdpau_picture_context, %struct.vdpau_picture_context* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.vdpau_picture_context*, %struct.vdpau_picture_context** %7, align 8
  %55 = getelementptr inbounds %struct.vdpau_picture_context, %struct.vdpau_picture_context* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 %45(%struct.TYPE_11__* %46, i32* %47, i8* %50, i32 %53, i32 %56)
  store i32 %57, i32* %11, align 4
  br label %75

58:                                               ; preds = %37, %32, %29
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load i32 (i32, i32, i32*, i32, i32)*, i32 (i32, i32, i32*, i32, i32)** %60, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.vdpau_picture_context*, %struct.vdpau_picture_context** %7, align 8
  %67 = getelementptr inbounds %struct.vdpau_picture_context, %struct.vdpau_picture_context* %66, i32 0, i32 2
  %68 = load %struct.vdpau_picture_context*, %struct.vdpau_picture_context** %7, align 8
  %69 = getelementptr inbounds %struct.vdpau_picture_context, %struct.vdpau_picture_context* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.vdpau_picture_context*, %struct.vdpau_picture_context** %7, align 8
  %72 = getelementptr inbounds %struct.vdpau_picture_context, %struct.vdpau_picture_context* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 %61(i32 %64, i32 %65, i32* %67, i32 %70, i32 %73)
  store i32 %74, i32* %11, align 4
  br label %75

75:                                               ; preds = %58, %42
  %76 = load %struct.vdpau_picture_context*, %struct.vdpau_picture_context** %7, align 8
  %77 = getelementptr inbounds %struct.vdpau_picture_context, %struct.vdpau_picture_context* %76, i32 0, i32 0
  %78 = call i32 @av_freep(i32* %77)
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @vdpau_error(i32 %79)
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %75, %27
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @ff_vdpau_get_surface_id(i32*) #1

declare dso_local i32 @ff_vdpau_common_reinit(%struct.TYPE_11__*) #1

declare dso_local i32 @av_freep(i32*) #1

declare dso_local i32 @vdpau_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
