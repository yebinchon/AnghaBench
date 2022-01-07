; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngvalid.c_image_transform_png_set_shift_mod.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngvalid.c_image_transform_png_set_shift_mod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_10__*, %struct.TYPE_9__*, i32, i32*)* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32 }

@PNG_COLOR_TYPE_PALETTE = common dso_local global i32 0, align 4
@data = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_9__*, i32, i32*)* @image_transform_png_set_shift_mod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @image_transform_png_set_shift_mod(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @PNG_COLOR_TYPE_PALETTE, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %44

14:                                               ; preds = %4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  store i32 1, i32* %16, align 4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 2
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %14
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @data, i32 0, i32 4), align 4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @data, i32 0, i32 3), align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @data, i32 0, i32 2), align 4
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  br label %40

32:                                               ; preds = %14
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @data, i32 0, i32 1), align 4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 4
  store i32 %33, i32* %37, align 4
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 5
  store i32 %33, i32* %39, align 4
  br label %40

40:                                               ; preds = %32, %22
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @data, i32 0, i32 0), align 4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %40, %4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32 (%struct.TYPE_10__*, %struct.TYPE_9__*, i32, i32*)*, i32 (%struct.TYPE_10__*, %struct.TYPE_9__*, i32, i32*)** %48, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i32*, i32** %8, align 8
  %56 = call i32 %49(%struct.TYPE_10__* %52, %struct.TYPE_9__* %53, i32 %54, i32* %55)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
