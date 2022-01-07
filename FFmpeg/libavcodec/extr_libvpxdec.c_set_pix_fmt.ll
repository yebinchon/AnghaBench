; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libvpxdec.c_set_pix_fmt.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libvpxdec.c_set_pix_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64, i32, i8* }
%struct.vpx_image = type { i64, i64, i32, i32 }

@set_pix_fmt.colorspaces = internal constant [8 x i32] [i32 136, i32 142, i32 141, i32 138, i32 137, i32 143, i32 140, i32 139], align 16
@AV_CODEC_ID_VP8 = common dso_local global i64 0, align 8
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_CODEC_ID_VP9 = common dso_local global i64 0, align 8
@FF_PROFILE_VP9_0 = common dso_local global i8* null, align 8
@AV_PIX_FMT_YUVA420P = common dso_local global i32 0, align 4
@AV_PIX_FMT_YUV420P = common dso_local global i32 0, align 4
@AV_PIX_FMT_GBRP = common dso_local global i32 0, align 4
@AV_PIX_FMT_GBRP10 = common dso_local global i32 0, align 4
@AV_PIX_FMT_GBRP12 = common dso_local global i32 0, align 4
@AV_PIX_FMT_YUV420P10 = common dso_local global i32 0, align 4
@AV_PIX_FMT_YUV420P12 = common dso_local global i32 0, align 4
@AV_PIX_FMT_YUV422P = common dso_local global i32 0, align 4
@AV_PIX_FMT_YUV422P10 = common dso_local global i32 0, align 4
@AV_PIX_FMT_YUV422P12 = common dso_local global i32 0, align 4
@AV_PIX_FMT_YUV440P = common dso_local global i32 0, align 4
@AV_PIX_FMT_YUV440P10 = common dso_local global i32 0, align 4
@AV_PIX_FMT_YUV440P12 = common dso_local global i32 0, align 4
@AV_PIX_FMT_YUV444P = common dso_local global i32 0, align 4
@AV_PIX_FMT_YUV444P10 = common dso_local global i32 0, align 4
@AV_PIX_FMT_YUV444P12 = common dso_local global i32 0, align 4
@FF_PROFILE_VP9_1 = common dso_local global i8* null, align 8
@FF_PROFILE_VP9_2 = common dso_local global i8* null, align 8
@FF_PROFILE_VP9_3 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, %struct.vpx_image*, i32)* @set_pix_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_pix_fmt(%struct.TYPE_3__* %0, %struct.vpx_image* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.vpx_image*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store %struct.vpx_image* %1, %struct.vpx_image** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.vpx_image*, %struct.vpx_image** %6, align 8
  %9 = getelementptr inbounds %struct.vpx_image, %struct.vpx_image* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds [8 x i32], [8 x i32]* @set_pix_fmt.colorspaces, i64 0, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @AV_CODEC_ID_VP8, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %3
  %21 = load %struct.vpx_image*, %struct.vpx_image** %6, align 8
  %22 = getelementptr inbounds %struct.vpx_image, %struct.vpx_image* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 135
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %26, i32* %4, align 4
  br label %54

27:                                               ; preds = %20, %3
  %28 = load %struct.vpx_image*, %struct.vpx_image** %6, align 8
  %29 = getelementptr inbounds %struct.vpx_image, %struct.vpx_image* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %52 [
    i32 135, label %31
  ]

31:                                               ; preds = %27
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @AV_CODEC_ID_VP9, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load i8*, i8** @FF_PROFILE_VP9_0, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 4
  store i8* %38, i8** %40, align 8
  br label %41

41:                                               ; preds = %37, %31
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* @AV_PIX_FMT_YUVA420P, align 4
  br label %48

46:                                               ; preds = %41
  %47 = load i32, i32* @AV_PIX_FMT_YUV420P, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 8
  store i32 0, i32* %4, align 4
  br label %54

52:                                               ; preds = %27
  %53 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %52, %48, %25
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
