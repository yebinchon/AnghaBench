; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_fieldmatch.c_create_weave_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_fieldmatch.c_create_weave_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__**, i32* }
%struct.TYPE_5__ = type { i32, i32 }

@mC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_6__*, i32, i32, i32*, i32*, i32*)* @create_weave_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @create_weave_frame(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %15, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @mC, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %6
  %24 = load i32*, i32** %12, align 8
  %25 = call i32* @av_frame_clone(i32* %24)
  store i32* %25, i32** %14, align 8
  br label %99

26:                                               ; preds = %6
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %29, i64 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  store %struct.TYPE_5__* %31, %struct.TYPE_5__** %16, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32* @ff_get_video_buffer(%struct.TYPE_5__* %32, i32 %35, i32 %38)
  store i32* %39, i32** %14, align 8
  %40 = load i32*, i32** %14, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %26
  store i32* null, i32** %7, align 8
  br label %101

43:                                               ; preds = %26
  %44 = load i32*, i32** %14, align 8
  %45 = load i32*, i32** %12, align 8
  %46 = call i32 @av_frame_copy_props(i32* %44, i32* %45)
  %47 = load i32, i32* %9, align 4
  switch i32 %47, label %96 [
    i32 129, label %48
    i32 130, label %60
    i32 131, label %72
    i32 128, label %84
  ]

48:                                               ; preds = %43
  %49 = load i32*, i32** %15, align 8
  %50 = load i32*, i32** %14, align 8
  %51 = load i32*, i32** %12, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sub nsw i32 1, %52
  %54 = call i32 @copy_fields(i32* %49, i32* %50, i32* %51, i32 %53)
  %55 = load i32*, i32** %15, align 8
  %56 = load i32*, i32** %14, align 8
  %57 = load i32*, i32** %11, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @copy_fields(i32* %55, i32* %56, i32* %57, i32 %58)
  br label %98

60:                                               ; preds = %43
  %61 = load i32*, i32** %15, align 8
  %62 = load i32*, i32** %14, align 8
  %63 = load i32*, i32** %12, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sub nsw i32 1, %64
  %66 = call i32 @copy_fields(i32* %61, i32* %62, i32* %63, i32 %65)
  %67 = load i32*, i32** %15, align 8
  %68 = load i32*, i32** %14, align 8
  %69 = load i32*, i32** %13, align 8
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @copy_fields(i32* %67, i32* %68, i32* %69, i32 %70)
  br label %98

72:                                               ; preds = %43
  %73 = load i32*, i32** %15, align 8
  %74 = load i32*, i32** %14, align 8
  %75 = load i32*, i32** %12, align 8
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @copy_fields(i32* %73, i32* %74, i32* %75, i32 %76)
  %78 = load i32*, i32** %15, align 8
  %79 = load i32*, i32** %14, align 8
  %80 = load i32*, i32** %11, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sub nsw i32 1, %81
  %83 = call i32 @copy_fields(i32* %78, i32* %79, i32* %80, i32 %82)
  br label %98

84:                                               ; preds = %43
  %85 = load i32*, i32** %15, align 8
  %86 = load i32*, i32** %14, align 8
  %87 = load i32*, i32** %12, align 8
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @copy_fields(i32* %85, i32* %86, i32* %87, i32 %88)
  %90 = load i32*, i32** %15, align 8
  %91 = load i32*, i32** %14, align 8
  %92 = load i32*, i32** %13, align 8
  %93 = load i32, i32* %10, align 4
  %94 = sub nsw i32 1, %93
  %95 = call i32 @copy_fields(i32* %90, i32* %91, i32* %92, i32 %94)
  br label %98

96:                                               ; preds = %43
  %97 = call i32 @av_assert0(i32 0)
  br label %98

98:                                               ; preds = %96, %84, %72, %60, %48
  br label %99

99:                                               ; preds = %98, %23
  %100 = load i32*, i32** %14, align 8
  store i32* %100, i32** %7, align 8
  br label %101

101:                                              ; preds = %99, %42
  %102 = load i32*, i32** %7, align 8
  ret i32* %102
}

declare dso_local i32* @av_frame_clone(i32*) #1

declare dso_local i32* @ff_get_video_buffer(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @av_frame_copy_props(i32*, i32*) #1

declare dso_local i32 @copy_fields(i32*, i32*, i32*, i32) #1

declare dso_local i32 @av_assert0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
