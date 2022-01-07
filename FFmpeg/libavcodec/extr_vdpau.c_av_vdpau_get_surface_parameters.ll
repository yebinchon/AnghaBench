; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vdpau.c_av_vdpau_get_surface_parameters.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vdpau.c_av_vdpau_get_surface_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@VDP_CHROMA_TYPE_420 = common dso_local global i32 0, align 4
@VDP_CHROMA_TYPE_422 = common dso_local global i32 0, align 4
@VDP_CHROMA_TYPE_444 = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av_vdpau_get_surface_parameters(%struct.TYPE_3__* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %11, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %12, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %43 [
    i32 133, label %22
    i32 130, label %22
    i32 132, label %30
    i32 129, label %30
    i32 131, label %38
    i32 128, label %38
  ]

22:                                               ; preds = %4, %4
  %23 = load i32, i32* @VDP_CHROMA_TYPE_420, align 4
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %11, align 4
  %25 = add nsw i32 %24, 1
  %26 = and i32 %25, -2
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %12, align 4
  %28 = add nsw i32 %27, 3
  %29 = and i32 %28, -4
  store i32 %29, i32* %12, align 4
  br label %46

30:                                               ; preds = %4, %4
  %31 = load i32, i32* @VDP_CHROMA_TYPE_422, align 4
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %11, align 4
  %33 = add nsw i32 %32, 1
  %34 = and i32 %33, -2
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %12, align 4
  %36 = add nsw i32 %35, 1
  %37 = and i32 %36, -2
  store i32 %37, i32* %12, align 4
  br label %46

38:                                               ; preds = %4, %4
  %39 = load i32, i32* @VDP_CHROMA_TYPE_444, align 4
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %12, align 4
  %41 = add nsw i32 %40, 1
  %42 = and i32 %41, -2
  store i32 %42, i32* %12, align 4
  br label %46

43:                                               ; preds = %4
  %44 = load i32, i32* @ENOSYS, align 4
  %45 = call i32 @AVERROR(i32 %44)
  store i32 %45, i32* %5, align 4
  br label %65

46:                                               ; preds = %38, %30, %22
  %47 = load i32*, i32** %7, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* %10, align 4
  %51 = load i32*, i32** %7, align 8
  store i32 %50, i32* %51, align 4
  br label %52

52:                                               ; preds = %49, %46
  %53 = load i32*, i32** %8, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* %11, align 4
  %57 = load i32*, i32** %8, align 8
  store i32 %56, i32* %57, align 4
  br label %58

58:                                               ; preds = %55, %52
  %59 = load i32*, i32** %9, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32, i32* %12, align 4
  %63 = load i32*, i32** %9, align 8
  store i32 %62, i32* %63, align 4
  br label %64

64:                                               ; preds = %61, %58
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %64, %43
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
