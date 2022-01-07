; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_vulkan_raster_font.c_vulkan_raster_font_get_glyph.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_vulkan_raster_font.c_vulkan_raster_font_get_glyph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.font_glyph = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.font_glyph* (i8*, i32)*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.font_glyph* (i8*, i32)* @vulkan_raster_font_get_glyph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.font_glyph* @vulkan_raster_font_get_glyph(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.font_glyph*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.font_glyph*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %7, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %11 = icmp ne %struct.TYPE_5__* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %12, %2
  store %struct.font_glyph* null, %struct.font_glyph** %3, align 8
  br label %46

18:                                               ; preds = %12
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  store %struct.font_glyph* null, %struct.font_glyph** %3, align 8
  br label %46

26:                                               ; preds = %18
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.font_glyph* (i8*, i32)*, %struct.font_glyph* (i8*, i32)** %30, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = bitcast %struct.TYPE_4__* %34 to i8*
  %36 = load i32, i32* %5, align 4
  %37 = call %struct.font_glyph* %31(i8* %35, i32 %36)
  store %struct.font_glyph* %37, %struct.font_glyph** %6, align 8
  %38 = load %struct.font_glyph*, %struct.font_glyph** %6, align 8
  %39 = icmp ne %struct.font_glyph* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %26
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %42 = load %struct.font_glyph*, %struct.font_glyph** %6, align 8
  %43 = call i32 @vulkan_raster_font_update_glyph(%struct.TYPE_5__* %41, %struct.font_glyph* %42)
  br label %44

44:                                               ; preds = %40, %26
  %45 = load %struct.font_glyph*, %struct.font_glyph** %6, align 8
  store %struct.font_glyph* %45, %struct.font_glyph** %3, align 8
  br label %46

46:                                               ; preds = %44, %25, %17
  %47 = load %struct.font_glyph*, %struct.font_glyph** %3, align 8
  ret %struct.font_glyph* %47
}

declare dso_local i32 @vulkan_raster_font_update_glyph(%struct.TYPE_5__*, %struct.font_glyph*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
