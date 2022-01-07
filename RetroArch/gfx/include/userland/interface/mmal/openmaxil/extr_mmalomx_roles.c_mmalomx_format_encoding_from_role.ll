; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/openmaxil/extr_mmalomx_roles.c_mmalomx_format_encoding_from_role.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/openmaxil/extr_mmalomx_roles.c_mmalomx_format_encoding_from_role.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MMAL_ENCODING_MP4V = common dso_local global i32 0, align 4
@MMAL_ES_TYPE_VIDEO = common dso_local global i32 0, align 4
@MMAL_ENCODING_H264 = common dso_local global i32 0, align 4
@MMAL_ENCODING_MP2V = common dso_local global i32 0, align 4
@MMAL_ENCODING_WMV3 = common dso_local global i32 0, align 4
@MMAL_ENCODING_VP8 = common dso_local global i32 0, align 4
@MMAL_ENCODING_H263 = common dso_local global i32 0, align 4
@MMAL_ENCODING_MP4A = common dso_local global i32 0, align 4
@MMAL_ES_TYPE_AUDIO = common dso_local global i32 0, align 4
@MMAL_ENCODING_MPGA = common dso_local global i32 0, align 4
@MMAL_ENCODING_AC3 = common dso_local global i32 0, align 4
@MMAL_ENCODING_UNKNOWN = common dso_local global i32 0, align 4
@MMAL_ES_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*, i32*)* @mmalomx_format_encoding_from_role to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmalomx_format_encoding_from_role(i32 %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %55 [
    i32 133, label %10
    i32 128, label %10
    i32 136, label %15
    i32 130, label %15
    i32 134, label %20
    i32 131, label %25
    i32 132, label %30
    i32 135, label %35
    i32 129, label %35
    i32 141, label %40
    i32 139, label %45
    i32 138, label %45
    i32 137, label %45
    i32 140, label %50
  ]

10:                                               ; preds = %4, %4
  %11 = load i32, i32* @MMAL_ENCODING_MP4V, align 4
  %12 = load i32*, i32** %6, align 8
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @MMAL_ES_TYPE_VIDEO, align 4
  %14 = load i32*, i32** %7, align 8
  store i32 %13, i32* %14, align 4
  br label %60

15:                                               ; preds = %4, %4
  %16 = load i32, i32* @MMAL_ENCODING_H264, align 4
  %17 = load i32*, i32** %6, align 8
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @MMAL_ES_TYPE_VIDEO, align 4
  %19 = load i32*, i32** %7, align 8
  store i32 %18, i32* %19, align 4
  br label %60

20:                                               ; preds = %4
  %21 = load i32, i32* @MMAL_ENCODING_MP2V, align 4
  %22 = load i32*, i32** %6, align 8
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @MMAL_ES_TYPE_VIDEO, align 4
  %24 = load i32*, i32** %7, align 8
  store i32 %23, i32* %24, align 4
  br label %60

25:                                               ; preds = %4
  %26 = load i32, i32* @MMAL_ENCODING_WMV3, align 4
  %27 = load i32*, i32** %6, align 8
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @MMAL_ES_TYPE_VIDEO, align 4
  %29 = load i32*, i32** %7, align 8
  store i32 %28, i32* %29, align 4
  br label %60

30:                                               ; preds = %4
  %31 = load i32, i32* @MMAL_ENCODING_VP8, align 4
  %32 = load i32*, i32** %6, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* @MMAL_ES_TYPE_VIDEO, align 4
  %34 = load i32*, i32** %7, align 8
  store i32 %33, i32* %34, align 4
  br label %60

35:                                               ; preds = %4, %4
  %36 = load i32, i32* @MMAL_ENCODING_H263, align 4
  %37 = load i32*, i32** %6, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* @MMAL_ES_TYPE_VIDEO, align 4
  %39 = load i32*, i32** %7, align 8
  store i32 %38, i32* %39, align 4
  br label %60

40:                                               ; preds = %4
  %41 = load i32, i32* @MMAL_ENCODING_MP4A, align 4
  %42 = load i32*, i32** %6, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* @MMAL_ES_TYPE_AUDIO, align 4
  %44 = load i32*, i32** %7, align 8
  store i32 %43, i32* %44, align 4
  br label %60

45:                                               ; preds = %4, %4, %4
  %46 = load i32, i32* @MMAL_ENCODING_MPGA, align 4
  %47 = load i32*, i32** %6, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* @MMAL_ES_TYPE_AUDIO, align 4
  %49 = load i32*, i32** %7, align 8
  store i32 %48, i32* %49, align 4
  br label %60

50:                                               ; preds = %4
  %51 = load i32, i32* @MMAL_ENCODING_AC3, align 4
  %52 = load i32*, i32** %6, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* @MMAL_ES_TYPE_AUDIO, align 4
  %54 = load i32*, i32** %7, align 8
  store i32 %53, i32* %54, align 4
  br label %60

55:                                               ; preds = %4
  %56 = load i32, i32* @MMAL_ENCODING_UNKNOWN, align 4
  %57 = load i32*, i32** %6, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* @MMAL_ES_TYPE_UNKNOWN, align 4
  %59 = load i32*, i32** %7, align 8
  store i32 %58, i32* %59, align 4
  br label %60

60:                                               ; preds = %55, %50, %45, %40, %35, %30, %25, %20, %15, %10
  %61 = load i32, i32* %5, align 4
  switch i32 %61, label %64 [
    i32 129, label %62
    i32 128, label %62
    i32 130, label %62
  ]

62:                                               ; preds = %60, %60, %60
  %63 = load i32*, i32** %8, align 8
  store i32 1, i32* %63, align 4
  br label %66

64:                                               ; preds = %60
  %65 = load i32*, i32** %8, align 8
  store i32 0, i32* %65, align 4
  br label %66

66:                                               ; preds = %64, %62
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
