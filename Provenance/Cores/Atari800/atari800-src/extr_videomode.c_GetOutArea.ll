; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_videomode.c_GetOutArea.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_videomode.c_GetOutArea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 (i32)*, i32 }

@VIDEOMODE_horizontal_area = common dso_local global i32 0, align 4
@VIDEOMODE_custom_horizontal_area = common dso_local global i32 0, align 4
@VIDEOMODE_MAX_HORIZONTAL_AREA = common dso_local global i32 0, align 4
@display_modes = common dso_local global %struct.TYPE_2__* null, align 8
@VIDEOMODE_vertical_area = common dso_local global i32 0, align 4
@VIDEOMODE_custom_vertical_area = common dso_local global i32 0, align 4
@Atari800_tv_mode = common dso_local global i32 0, align 4
@Atari800_TV_NTSC = common dso_local global i32 0, align 4
@VIDEOMODE_MAX_VERTICAL_AREA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i64)* @GetOutArea to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GetOutArea(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i32, i32* @VIDEOMODE_horizontal_area, align 4
  switch i32 %7, label %12 [
    i32 132, label %8
    i32 131, label %9
    i32 133, label %10
  ]

8:                                                ; preds = %3
  store i32 320, i32* @VIDEOMODE_custom_horizontal_area, align 4
  br label %12

9:                                                ; preds = %3
  store i32 336, i32* @VIDEOMODE_custom_horizontal_area, align 4
  br label %12

10:                                               ; preds = %3
  %11 = load i32, i32* @VIDEOMODE_MAX_HORIZONTAL_AREA, align 4
  store i32 %11, i32* @VIDEOMODE_custom_horizontal_area, align 4
  br label %12

12:                                               ; preds = %3, %10, %9, %8
  %13 = load i32, i32* @VIDEOMODE_custom_horizontal_area, align 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @display_modes, align 8
  %15 = load i64, i64* %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = mul i32 %13, %18
  %20 = load i32*, i32** %4, align 8
  store i32 %19, i32* %20, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @display_modes, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ugt i32 %22, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %12
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @display_modes, align 8
  %31 = load i64, i64* %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %4, align 8
  store i32 %34, i32* %35, align 4
  br label %36

36:                                               ; preds = %29, %12
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @display_modes, align 8
  %38 = load i64, i64* %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i32 (i32)*, i32 (i32)** %40, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* %42, align 4
  %44 = call i32 %41(i32 %43)
  %45 = load i32*, i32** %4, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* @VIDEOMODE_vertical_area, align 4
  switch i32 %46, label %57 [
    i32 129, label %47
    i32 128, label %48
    i32 130, label %55
  ]

47:                                               ; preds = %36
  store i32 200, i32* @VIDEOMODE_custom_vertical_area, align 4
  br label %57

48:                                               ; preds = %36
  %49 = load i32, i32* @Atari800_tv_mode, align 4
  %50 = load i32, i32* @Atari800_TV_NTSC, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 224, i32* @VIDEOMODE_custom_vertical_area, align 4
  br label %54

53:                                               ; preds = %48
  store i32 240, i32* @VIDEOMODE_custom_vertical_area, align 4
  br label %54

54:                                               ; preds = %53, %52
  br label %57

55:                                               ; preds = %36
  %56 = load i32, i32* @VIDEOMODE_MAX_VERTICAL_AREA, align 4
  store i32 %56, i32* @VIDEOMODE_custom_vertical_area, align 4
  br label %57

57:                                               ; preds = %36, %55, %54, %47
  %58 = load i32, i32* @VIDEOMODE_custom_vertical_area, align 4
  %59 = load i32*, i32** %5, align 8
  store i32 %58, i32* %59, align 4
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @display_modes, align 8
  %63 = load i64, i64* %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = icmp ugt i32 %61, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %57
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @display_modes, align 8
  %70 = load i64, i64* %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = load i32*, i32** %5, align 8
  store i32 %73, i32* %74, align 4
  br label %75

75:                                               ; preds = %68, %57
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
