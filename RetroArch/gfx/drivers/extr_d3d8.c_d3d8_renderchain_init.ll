; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_d3d8.c_d3d8_renderchain_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_d3d8.c_d3d8_renderchain_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }
%struct.LinkInfo = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i8* }
%struct.video_viewport = type { i32, i32 }

@RETRO_PIXEL_FORMAT_XRGB8888 = common dso_local global i32 0, align 4
@RETRO_PIXEL_FORMAT_RGB565 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i8*, i32)* @d3d8_renderchain_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d3d8_renderchain_init(i8* %0, i8* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.LinkInfo*, align 8
  %18 = alloca %struct.TYPE_6__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.video_viewport*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %14, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %15, align 4
  %26 = load i8*, i8** %8, align 8
  %27 = bitcast i8* %26 to i32*
  store i32* %27, i32** %16, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = bitcast i8* %28 to %struct.LinkInfo*
  store %struct.LinkInfo* %29, %struct.LinkInfo** %17, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %33, %struct.TYPE_6__** %18, align 8
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %5
  %37 = load i32, i32* @RETRO_PIXEL_FORMAT_XRGB8888, align 4
  br label %40

38:                                               ; preds = %5
  %39 = load i32, i32* @RETRO_PIXEL_FORMAT_RGB565, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  store i32 %41, i32* %19, align 4
  %42 = call %struct.video_viewport* (...) @video_viewport_get_custom()
  store %struct.video_viewport* %42, %struct.video_viewport** %20, align 8
  %43 = call i32 @video_driver_get_size(i32* %12, i32* %13)
  %44 = load i8*, i8** %9, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 3
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* %19, align 4
  %48 = load i32, i32* @RETRO_PIXEL_FORMAT_RGB565, align 4
  %49 = icmp eq i32 %47, %48
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 2, i32 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.LinkInfo*, %struct.LinkInfo** %17, align 8
  %55 = getelementptr inbounds %struct.LinkInfo, %struct.LinkInfo* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load %struct.LinkInfo*, %struct.LinkInfo** %17, align 8
  %60 = getelementptr inbounds %struct.LinkInfo, %struct.LinkInfo* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %66 = load i32*, i32** %16, align 8
  %67 = call i32 @d3d8_renderchain_create_first_pass(%struct.TYPE_5__* %64, %struct.TYPE_6__* %65, i32* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %40
  store i32 0, i32* %6, align 4
  br label %89

70:                                               ; preds = %40
  %71 = load %struct.video_viewport*, %struct.video_viewport** %20, align 8
  %72 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load i32, i32* %12, align 4
  %77 = load %struct.video_viewport*, %struct.video_viewport** %20, align 8
  %78 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  br label %79

79:                                               ; preds = %75, %70
  %80 = load %struct.video_viewport*, %struct.video_viewport** %20, align 8
  %81 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load i32, i32* %13, align 4
  %86 = load %struct.video_viewport*, %struct.video_viewport** %20, align 8
  %87 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %84, %79
  store i32 1, i32* %6, align 4
  br label %89

89:                                               ; preds = %88, %69
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local %struct.video_viewport* @video_viewport_get_custom(...) #1

declare dso_local i32 @video_driver_get_size(i32*, i32*) #1

declare dso_local i32 @d3d8_renderchain_create_first_pass(%struct.TYPE_5__*, %struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
