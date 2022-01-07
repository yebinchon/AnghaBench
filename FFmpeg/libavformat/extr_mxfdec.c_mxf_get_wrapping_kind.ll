; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfdec.c_mxf_get_wrapping_kind.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfdec.c_mxf_get_wrapping_kind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32* }

@mxf_picture_essence_container_uls = common dso_local global i32 0, align 4
@mxf_sound_essence_container_uls = common dso_local global i32 0, align 4
@mxf_data_essence_container_uls = common dso_local global i32 0, align 4
@UnknownWrapped = common dso_local global i32 0, align 4
@FrameWrapped = common dso_local global i32 0, align 4
@ClipWrapped = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**)* @mxf_get_wrapping_kind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxf_get_wrapping_kind(i32** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  store i32** %0, i32*** %3, align 8
  %6 = load i32, i32* @mxf_picture_essence_container_uls, align 4
  %7 = load i32**, i32*** %3, align 8
  %8 = call %struct.TYPE_3__* @mxf_get_codec_ul(i32 %6, i32** %7)
  store %struct.TYPE_3__* %8, %struct.TYPE_3__** %5, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @mxf_sound_essence_container_uls, align 4
  %17 = load i32**, i32*** %3, align 8
  %18 = call %struct.TYPE_3__* @mxf_get_codec_ul(i32 %16, i32** %17)
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %5, align 8
  br label %19

19:                                               ; preds = %15, %1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @mxf_data_essence_container_uls, align 4
  %28 = load i32**, i32*** %3, align 8
  %29 = call %struct.TYPE_3__* @mxf_get_codec_ul(i32 %27, i32** %28)
  store %struct.TYPE_3__* %29, %struct.TYPE_3__** %5, align 8
  br label %30

30:                                               ; preds = %26, %19
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %37, %30
  %43 = load i32, i32* @UnknownWrapped, align 4
  store i32 %43, i32* %2, align 4
  br label %85

44:                                               ; preds = %37
  %45 = load i32**, i32*** %3, align 8
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %4, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  switch i32 %54, label %73 [
    i32 128, label %55
    i32 129, label %58
    i32 130, label %68
  ]

55:                                               ; preds = %44
  %56 = load i32, i32* %4, align 4
  %57 = srem i32 %56, 4
  store i32 %57, i32* %4, align 4
  br label %73

58:                                               ; preds = %44
  %59 = load i32, i32* %4, align 4
  %60 = icmp eq i32 %59, 3
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %4, align 4
  %63 = icmp eq i32 %62, 4
  br i1 %63, label %64, label %67

64:                                               ; preds = %61, %58
  %65 = load i32, i32* %4, align 4
  %66 = sub nsw i32 %65, 2
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %64, %61
  br label %73

68:                                               ; preds = %44
  %69 = load i32, i32* %4, align 4
  %70 = icmp eq i32 %69, 2
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  store i32 1, i32* %4, align 4
  br label %72

72:                                               ; preds = %71, %68
  br label %73

73:                                               ; preds = %44, %72, %67, %55
  %74 = load i32, i32* %4, align 4
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = load i32, i32* @FrameWrapped, align 4
  store i32 %77, i32* %2, align 4
  br label %85

78:                                               ; preds = %73
  %79 = load i32, i32* %4, align 4
  %80 = icmp eq i32 %79, 2
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load i32, i32* @ClipWrapped, align 4
  store i32 %82, i32* %2, align 4
  br label %85

83:                                               ; preds = %78
  %84 = load i32, i32* @UnknownWrapped, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %83, %81, %76, %42
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local %struct.TYPE_3__* @mxf_get_codec_ul(i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
