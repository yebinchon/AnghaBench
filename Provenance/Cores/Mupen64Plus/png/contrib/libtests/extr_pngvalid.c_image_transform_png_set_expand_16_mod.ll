; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngvalid.c_image_transform_png_set_expand_16_mod.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngvalid.c_image_transform_png_set_expand_16_mod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_15__*, %struct.TYPE_14__*, i32, %struct.TYPE_12__*)* }
%struct.TYPE_14__ = type { i64, i32, i32, i64 }
%struct.TYPE_12__ = type { i32 }

@PNG_COLOR_TYPE_PALETTE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, %struct.TYPE_14__*, i32, %struct.TYPE_12__*)* @image_transform_png_set_expand_16_mod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @image_transform_png_set_expand_16_mod(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1, i32 %2, %struct.TYPE_12__* %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %8, align 8
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PNG_COLOR_TYPE_PALETTE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %16 = call i32 @image_pixel_convert_PLTE(%struct.TYPE_14__* %15)
  br label %17

17:                                               ; preds = %14, %4
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = call i32 @image_pixel_add_alpha(%struct.TYPE_14__* %23, i32* %25, i32 0)
  br label %27

27:                                               ; preds = %22, %17
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %30, 16
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 1
  store i32 16, i32* %34, align 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 2
  store i32 16, i32* %36, align 4
  br label %37

37:                                               ; preds = %32, %27
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load i32 (%struct.TYPE_15__*, %struct.TYPE_14__*, i32, %struct.TYPE_12__*)*, i32 (%struct.TYPE_15__*, %struct.TYPE_14__*, i32, %struct.TYPE_12__*)** %41, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %44, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %49 = call i32 %42(%struct.TYPE_15__* %45, %struct.TYPE_14__* %46, i32 %47, %struct.TYPE_12__* %48)
  ret void
}

declare dso_local i32 @image_pixel_convert_PLTE(%struct.TYPE_14__*) #1

declare dso_local i32 @image_pixel_add_alpha(%struct.TYPE_14__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
