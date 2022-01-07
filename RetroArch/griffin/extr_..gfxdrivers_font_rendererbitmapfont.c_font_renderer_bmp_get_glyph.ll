; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..gfxdrivers_font_rendererbitmapfont.c_font_renderer_bmp_get_glyph.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..gfxdrivers_font_rendererbitmapfont.c_font_renderer_bmp_get_glyph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.font_glyph = type { i32 }
%struct.TYPE_2__ = type { %struct.font_glyph* }

@BMP_ATLAS_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.font_glyph* (i8*, i64)* @font_renderer_bmp_get_glyph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.font_glyph* @font_renderer_bmp_get_glyph(i8* %0, i64 %1) #0 {
  %3 = alloca %struct.font_glyph*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %8, %struct.TYPE_2__** %6, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.font_glyph* null, %struct.font_glyph** %3, align 8
  br label %25

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @BMP_ATLAS_SIZE, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.font_glyph*, %struct.font_glyph** %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %19, i64 %20
  br label %23

22:                                               ; preds = %12
  br label %23

23:                                               ; preds = %22, %16
  %24 = phi %struct.font_glyph* [ %21, %16 ], [ null, %22 ]
  store %struct.font_glyph* %24, %struct.font_glyph** %3, align 8
  br label %25

25:                                               ; preds = %23, %11
  %26 = load %struct.font_glyph*, %struct.font_glyph** %3, align 8
  ret %struct.font_glyph* %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
