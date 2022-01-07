; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroska.c_ff_mkv_stereo3d_conv.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroska.c_ff_mkv_stereo3d_conv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@AV_STEREO3D_2D = common dso_local global i32 0, align 4
@AV_STEREO3D_FLAG_INVERT = common dso_local global i32 0, align 4
@AV_STEREO3D_SIDEBYSIDE = common dso_local global i32 0, align 4
@AV_STEREO3D_TOPBOTTOM = common dso_local global i32 0, align 4
@AV_STEREO3D_CHECKERBOARD = common dso_local global i32 0, align 4
@AV_STEREO3D_LINES = common dso_local global i32 0, align 4
@AV_STEREO3D_COLUMNS = common dso_local global i32 0, align 4
@AV_STEREO3D_FRAMESEQUENCE = common dso_local global i32 0, align 4
@AV_PKT_DATA_STEREO3D = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_mkv_stereo3d_conv(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = call %struct.TYPE_4__* (...) @av_stereo3d_alloc()
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %6, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %10 = icmp ne %struct.TYPE_4__* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = call i32 @AVERROR(i32 %12)
  store i32 %13, i32* %3, align 4
  br label %92

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %80 [
    i32 132, label %16
    i32 131, label %20
    i32 133, label %26
    i32 138, label %30
    i32 128, label %36
    i32 136, label %40
    i32 137, label %46
    i32 129, label %50
    i32 130, label %56
    i32 134, label %60
    i32 135, label %66
    i32 139, label %70
    i32 140, label %76
  ]

16:                                               ; preds = %14
  %17 = load i32, i32* @AV_STEREO3D_2D, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  br label %80

20:                                               ; preds = %14
  %21 = load i32, i32* @AV_STEREO3D_FLAG_INVERT, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %14, %20
  %27 = load i32, i32* @AV_STEREO3D_SIDEBYSIDE, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %80

30:                                               ; preds = %14
  %31 = load i32, i32* @AV_STEREO3D_FLAG_INVERT, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %14, %30
  %37 = load i32, i32* @AV_STEREO3D_TOPBOTTOM, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  br label %80

40:                                               ; preds = %14
  %41 = load i32, i32* @AV_STEREO3D_FLAG_INVERT, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %14, %40
  %47 = load i32, i32* @AV_STEREO3D_CHECKERBOARD, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  br label %80

50:                                               ; preds = %14
  %51 = load i32, i32* @AV_STEREO3D_FLAG_INVERT, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %14, %50
  %57 = load i32, i32* @AV_STEREO3D_LINES, align 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  br label %80

60:                                               ; preds = %14
  %61 = load i32, i32* @AV_STEREO3D_FLAG_INVERT, align 4
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %14, %60
  %67 = load i32, i32* @AV_STEREO3D_COLUMNS, align 4
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  br label %80

70:                                               ; preds = %14
  %71 = load i32, i32* @AV_STEREO3D_FLAG_INVERT, align 4
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %14, %70
  %77 = load i32, i32* @AV_STEREO3D_FRAMESEQUENCE, align 4
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  br label %80

80:                                               ; preds = %14, %76, %66, %56, %46, %36, %26, %16
  %81 = load i32*, i32** %4, align 8
  %82 = load i32, i32* @AV_PKT_DATA_STEREO3D, align 4
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %84 = bitcast %struct.TYPE_4__* %83 to i32*
  %85 = call i32 @av_stream_add_side_data(i32* %81, i32 %82, i32* %84, i32 8)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %80
  %89 = call i32 @av_freep(%struct.TYPE_4__** %6)
  %90 = load i32, i32* %7, align 4
  store i32 %90, i32* %3, align 4
  br label %92

91:                                               ; preds = %80
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %91, %88, %11
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local %struct.TYPE_4__* @av_stereo3d_alloc(...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_stream_add_side_data(i32*, i32, i32*, i32) #1

declare dso_local i32 @av_freep(%struct.TYPE_4__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
