; ModuleID = '/home/carl/AnghaBench/RetroArch/cores/libretro-ffmpeg/extr_ffmpeg_core.c_set_colorspace.c'
source_filename = "/home/carl/AnghaBench/RetroArch/cores/libretro-ffmpeg/extr_ffmpeg_core.c_set_colorspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SwsContext = type { i32 }

@colorspace = common dso_local global i64 0, align 8
@AVCOL_SPC_UNSPECIFIED = common dso_local global i64 0, align 8
@AVCOL_SPC_BT709 = common dso_local global i64 0, align 8
@AVCOL_SPC_BT470BG = common dso_local global i64 0, align 8
@AVCOL_RANGE_UNSPECIFIED = common dso_local global i32 0, align 4
@AVCOL_RANGE_JPEG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SwsContext*, i32, i32, i32, i32)* @set_colorspace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_colorspace(%struct.SwsContext* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.SwsContext*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  store %struct.SwsContext* %0, %struct.SwsContext** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32* null, i32** %11, align 8
  %19 = load i64, i64* @colorspace, align 8
  %20 = load i64, i64* @AVCOL_SPC_UNSPECIFIED, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %45

22:                                               ; preds = %5
  %23 = load i32, i32* %9, align 4
  %24 = zext i32 %23 to i64
  %25 = load i64, i64* @AVCOL_SPC_UNSPECIFIED, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32, i32* %9, align 4
  %29 = zext i32 %28 to i64
  %30 = call i32* @sws_getCoefficients(i64 %29)
  store i32* %30, i32** %11, align 8
  br label %44

31:                                               ; preds = %22
  %32 = load i32, i32* %7, align 4
  %33 = icmp uge i32 %32, 1280
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %8, align 4
  %36 = icmp ugt i32 %35, 576
  br i1 %36, label %37, label %40

37:                                               ; preds = %34, %31
  %38 = load i64, i64* @AVCOL_SPC_BT709, align 8
  %39 = call i32* @sws_getCoefficients(i64 %38)
  store i32* %39, i32** %11, align 8
  br label %43

40:                                               ; preds = %34
  %41 = load i64, i64* @AVCOL_SPC_BT470BG, align 8
  %42 = call i32* @sws_getCoefficients(i64 %41)
  store i32* %42, i32** %11, align 8
  br label %43

43:                                               ; preds = %40, %37
  br label %44

44:                                               ; preds = %43, %27
  br label %48

45:                                               ; preds = %5
  %46 = load i64, i64* @colorspace, align 8
  %47 = call i32* @sws_getCoefficients(i64 %46)
  store i32* %47, i32** %11, align 8
  br label %48

48:                                               ; preds = %45, %44
  %49 = load i32*, i32** %11, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %73

51:                                               ; preds = %48
  %52 = load %struct.SwsContext*, %struct.SwsContext** %6, align 8
  %53 = call i32 @sws_getColorspaceDetails(%struct.SwsContext* %52, i32** %17, i32* %12, i32** %18, i32* %13, i32* %14, i32* %15, i32* %16)
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @AVCOL_RANGE_UNSPECIFIED, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @AVCOL_RANGE_JPEG, align 4
  %60 = icmp eq i32 %58, %59
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %12, align 4
  br label %62

62:                                               ; preds = %57, %51
  %63 = load i32*, i32** %11, align 8
  store i32* %63, i32** %17, align 8
  %64 = load %struct.SwsContext*, %struct.SwsContext** %6, align 8
  %65 = load i32*, i32** %17, align 8
  %66 = load i32, i32* %12, align 4
  %67 = load i32*, i32** %18, align 8
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* %16, align 4
  %72 = call i32 @sws_setColorspaceDetails(%struct.SwsContext* %64, i32* %65, i32 %66, i32* %67, i32 %68, i32 %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %62, %48
  ret void
}

declare dso_local i32* @sws_getCoefficients(i64) #1

declare dso_local i32 @sws_getColorspaceDetails(%struct.SwsContext*, i32**, i32*, i32**, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @sws_setColorspaceDetails(%struct.SwsContext*, i32*, i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
