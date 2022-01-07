; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_showcqt.c_init_axis_from_file.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_showcqt.c_init_axis_from_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__*, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @init_axis_from_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_axis_from_file(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca [4 x i32*], align 16
  %5 = alloca [4 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %10 = bitcast [4 x i32*]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 32, i1 false)
  %11 = getelementptr inbounds [4 x i32*], [4 x i32*]* %4, i64 0, i64 0
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ff_load_image(i32** %11, i32* %12, i32* %7, i32* %8, i32* %6, i32 %15, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %87

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = call i32 @AVERROR(i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = call %struct.TYPE_6__* (...) @av_frame_alloc()
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %27, align 8
  %28 = icmp ne %struct.TYPE_6__* %25, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  br label %87

30:                                               ; preds = %22
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @convert_axis_pixel_format(i32 %49)
  %51 = getelementptr inbounds [4 x i32*], [4 x i32*]* %4, i64 0, i64 0
  %52 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ff_scale_image(i32 %35, i32 %40, i32 %43, i32 %46, i32 %50, i32** %51, i32* %52, i32 %53, i32 %54, i32 %55, i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %30
  br label %87

62:                                               ; preds = %30
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  store i32 %65, i32* %69, align 4
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  store i32 %72, i32* %76, align 4
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @convert_axis_pixel_format(i32 %79)
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  store i32 %80, i32* %84, align 4
  %85 = getelementptr inbounds [4 x i32*], [4 x i32*]* %4, i64 0, i64 0
  %86 = call i32 @av_freep(i32** %85)
  store i32 0, i32* %2, align 4
  br label %94

87:                                               ; preds = %61, %29, %21
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = call i32 @av_frame_free(%struct.TYPE_6__** %89)
  %91 = getelementptr inbounds [4 x i32*], [4 x i32*]* %4, i64 0, i64 0
  %92 = call i32 @av_freep(i32** %91)
  %93 = load i32, i32* %9, align 4
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %87, %62
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ff_load_image(i32**, i32*, i32*, i32*, i32*, i32, i32) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local %struct.TYPE_6__* @av_frame_alloc(...) #2

declare dso_local i32 @ff_scale_image(i32, i32, i32, i32, i32, i32**, i32*, i32, i32, i32, i32) #2

declare dso_local i32 @convert_axis_pixel_format(i32) #2

declare dso_local i32 @av_freep(i32**) #2

declare dso_local i32 @av_frame_free(%struct.TYPE_6__**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
