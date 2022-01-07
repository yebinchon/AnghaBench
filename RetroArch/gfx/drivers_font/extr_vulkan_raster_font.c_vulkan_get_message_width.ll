; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_vulkan_raster_font.c_vulkan_get_message_width.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_vulkan_raster_font.c_vulkan_get_message_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.font_glyph* (i32, i8)* }
%struct.font_glyph = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, float)* @vulkan_get_message_width to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vulkan_get_message_width(i8* %0, i8* %1, i32 %2, float %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.font_glyph*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store float %3, float* %9, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %10, align 8
  store i32 0, i32* %12, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %17 = icmp ne %struct.TYPE_5__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %75

19:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %20

20:                                               ; preds = %66, %19
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %69

24:                                               ; preds = %20
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.font_glyph* (i32, i8)*, %struct.font_glyph* (i32, i8)** %28, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load i32, i32* %11, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = call %struct.font_glyph* %29(i32 %32, i8 signext %37)
  store %struct.font_glyph* %38, %struct.font_glyph** %13, align 8
  %39 = load %struct.font_glyph*, %struct.font_glyph** %13, align 8
  %40 = icmp ne %struct.font_glyph* %39, null
  br i1 %40, label %51, label %41

41:                                               ; preds = %24
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load %struct.font_glyph* (i32, i8)*, %struct.font_glyph* (i32, i8)** %45, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call %struct.font_glyph* %46(i32 %49, i8 signext 63)
  store %struct.font_glyph* %50, %struct.font_glyph** %13, align 8
  br label %51

51:                                               ; preds = %41, %24
  %52 = load %struct.font_glyph*, %struct.font_glyph** %13, align 8
  %53 = icmp ne %struct.font_glyph* %52, null
  br i1 %53, label %54, label %65

54:                                               ; preds = %51
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %56 = load %struct.font_glyph*, %struct.font_glyph** %13, align 8
  %57 = call i32 @vulkan_raster_font_update_glyph(%struct.TYPE_5__* %55, %struct.font_glyph* %56)
  %58 = load %struct.font_glyph*, %struct.font_glyph** %13, align 8
  %59 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %62, %60
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %12, align 4
  br label %65

65:                                               ; preds = %54, %51
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %11, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %11, align 4
  br label %20

69:                                               ; preds = %20
  %70 = load i32, i32* %12, align 4
  %71 = sitofp i32 %70 to float
  %72 = load float, float* %9, align 4
  %73 = fmul float %71, %72
  %74 = fptosi float %73 to i32
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %69, %18
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @vulkan_raster_font_update_glyph(%struct.TYPE_5__*, %struct.font_glyph*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
