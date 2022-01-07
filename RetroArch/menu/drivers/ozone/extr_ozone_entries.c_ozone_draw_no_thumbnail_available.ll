; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/ozone/extr_ozone_entries.c_ozone_draw_no_thumbnail_available.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/ozone/extr_ozone_entries.c_ozone_draw_no_thumbnail_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_15__*, %struct.TYPE_14__, i32*, %struct.TYPE_13__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_16__ = type { i32, i32 }

@OZONE_ENTRIES_ICONS_TEXTURE_CORE_INFO = common dso_local global i32 0, align 4
@MSG_NO_THUMBNAIL_AVAILABLE = common dso_local global i32 0, align 4
@FONT_SIZE_FOOTER = common dso_local global i32 0, align 4
@TEXT_ALIGN_CENTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, %struct.TYPE_16__*, i32, i32, i32)* @ozone_draw_no_thumbnail_available to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ozone_draw_no_thumbnail_available(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* @OZONE_ENTRIES_ICONS_TEXTURE_CORE_INFO, align 4
  store i32 %14, i32* %11, align 4
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = sitofp i64 %18 to float
  %20 = fmul float %19, 1.500000e+00
  %21 = fptoui float %20 to i32
  store i32 %21, i32* %12, align 4
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @font_driver_get_line_height(i32 %25, float 1.000000e+00)
  store i32 %26, i32* %13, align 4
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %28 = call i32 @menu_display_blend_begin(%struct.TYPE_16__* %27)
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %11, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = udiv i32 %40, 2
  %42 = add i32 %39, %41
  %43 = load i32, i32* %12, align 4
  %44 = udiv i32 %43, 2
  %45 = sub i32 %42, %44
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sdiv i32 %48, 2
  %50 = load i32, i32* %12, align 4
  %51 = udiv i32 %50, 2
  %52 = sub i32 %49, %51
  %53 = load i32, i32* %10, align 4
  %54 = sub i32 %52, %53
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @ozone_draw_icon(%struct.TYPE_16__* %29, i32 %30, i32 %31, i32 %38, i32 %45, i32 %54, i32 %57, i32 %60, i32 0, i32 1, i32 %65)
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %68 = call i32 @menu_display_blend_end(%struct.TYPE_16__* %67)
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %71 = load i32, i32* @MSG_NO_THUMBNAIL_AVAILABLE, align 4
  %72 = call i32 @msg_hash_to_str(i32 %71)
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %9, align 4
  %75 = udiv i32 %74, 2
  %76 = add i32 %73, %75
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = sdiv i32 %79, 2
  %81 = load i32, i32* %12, align 4
  %82 = udiv i32 %81, 2
  %83 = sub i32 %80, %82
  %84 = load i32, i32* %13, align 4
  %85 = mul i32 %84, 3
  %86 = add i32 %83, %85
  %87 = load i32, i32* @FONT_SIZE_FOOTER, align 4
  %88 = add i32 %86, %87
  %89 = load i32, i32* %10, align 4
  %90 = sub i32 %88, %89
  %91 = load i32, i32* @TEXT_ALIGN_CENTER, align 4
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @ozone_draw_text(%struct.TYPE_16__* %69, %struct.TYPE_17__* %70, i32 %72, i32 %76, i32 %90, i32 %91, i32 %94, i32 %97, i32 %101, i32 %106, i32 1)
  ret void
}

declare dso_local i32 @font_driver_get_line_height(i32, float) #1

declare dso_local i32 @menu_display_blend_begin(%struct.TYPE_16__*) #1

declare dso_local i32 @ozone_draw_icon(%struct.TYPE_16__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @menu_display_blend_end(%struct.TYPE_16__*) #1

declare dso_local i32 @ozone_draw_text(%struct.TYPE_16__*, %struct.TYPE_17__*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
