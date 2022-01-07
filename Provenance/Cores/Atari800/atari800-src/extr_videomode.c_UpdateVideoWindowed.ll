; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_videomode.c_UpdateVideoWindowed.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_videomode.c_UpdateVideoWindowed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@window_resolution = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@VIDEOMODE_dest_width = common dso_local global i32 0, align 4
@VIDEOMODE_dest_height = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@VIDEOMODE_rotate90 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @UpdateVideoWindowed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @UpdateVideoWindowed(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.TYPE_9__, align 4
  %10 = alloca %struct.TYPE_9__, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %13 = call i32 (...) @CurrentDisplayMode()
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %4, align 4
  %15 = call %struct.TYPE_9__* (...) @PLATFORM_DesktopResolution()
  %16 = bitcast %struct.TYPE_9__* %9 to i8*
  %17 = bitcast %struct.TYPE_9__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 8, i1 false)
  %18 = bitcast %struct.TYPE_9__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 bitcast (%struct.TYPE_9__* @window_resolution to i8*), i64 8, i1 false)
  %19 = call i32 (...) @PLATFORM_WindowMaximised()
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = call i32 @RotateResolution(%struct.TYPE_9__* %10)
  br label %24

24:                                               ; preds = %22, %1
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @GetOutArea(i32* %5, i32* %6, i32 %25)
  %27 = call i32 (...) @UpdateCustomStretch()
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @ComputeVideoArea(%struct.TYPE_9__* %10, %struct.TYPE_9__* %9, i32 %28, i32 %29, i32 %30, double* %7, double* %8, i32 %31)
  %33 = load i32, i32* %2, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %24
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35, %24
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %11, align 8
  br label %40

39:                                               ; preds = %35
  store %struct.TYPE_9__* %9, %struct.TYPE_9__** %11, align 8
  br label %40

40:                                               ; preds = %39, %38
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %42 = load double, double* %7, align 8
  %43 = load double, double* %8, align 8
  %44 = call i32 @CropVideoArea(%struct.TYPE_9__* %41, i32* %5, i32* %6, double %42, double %43)
  %45 = load i32, i32* %2, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %40
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* @VIDEOMODE_dest_width, align 4
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* @VIDEOMODE_dest_height, align 4
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  store i32 %53, i32* %54, align 4
  br label %55

55:                                               ; preds = %50, %47, %40
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @TRUE, align 4
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @SetVideoMode(%struct.TYPE_9__* %10, i32 %56, i32 %57, i32 %58, i32 %59, i32 %60)
  %62 = load i32, i32* @TRUE, align 4
  ret i32 %62
}

declare dso_local i32 @CurrentDisplayMode(...) #1

declare dso_local %struct.TYPE_9__* @PLATFORM_DesktopResolution(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @PLATFORM_WindowMaximised(...) #1

declare dso_local i32 @RotateResolution(%struct.TYPE_9__*) #1

declare dso_local i32 @GetOutArea(i32*, i32*, i32) #1

declare dso_local i32 @UpdateCustomStretch(...) #1

declare dso_local i32 @ComputeVideoArea(%struct.TYPE_9__*, %struct.TYPE_9__*, i32, i32, i32, double*, double*, i32) #1

declare dso_local i32 @CropVideoArea(%struct.TYPE_9__*, i32*, i32*, double, double) #1

declare dso_local i32 @SetVideoMode(%struct.TYPE_9__*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
