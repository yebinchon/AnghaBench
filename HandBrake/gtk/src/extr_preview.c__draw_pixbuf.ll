; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_preview.c__draw_pixbuf.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_preview.c__draw_pixbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@CAIRO_OPERATOR_CLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*, i32*)* @_draw_pixbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_draw_pixbuf(%struct.TYPE_5__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @cairo_save(i32* %11)
  %13 = load i32*, i32** %5, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @cairo_rectangle(i32* %13, i32 0, i32 0, i32 %18, i32 %23)
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* @CAIRO_OPERATOR_CLEAR, align 4
  %27 = call i32 @cairo_set_operator(i32* %25, i32 %26)
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @cairo_fill(i32* %28)
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @cairo_restore(i32* %30)
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @gdk_pixbuf_get_width(i32* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @gdk_pixbuf_get_height(i32* %34)
  store i32 %35, i32* %8, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %7, align 4
  %42 = sub nsw i32 %40, %41
  %43 = sdiv i32 %42, 2
  %44 = call i32 @MAX(i32 %43, i32 0)
  store i32 %44, i32* %9, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %8, align 4
  %51 = sub nsw i32 %49, %50
  %52 = sdiv i32 %51, 2
  %53 = call i32 @MAX(i32 %52, i32 0)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %3
  %57 = load i32, i32* %9, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %56, %3
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @cairo_translate(i32* %60, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %59, %56
  %65 = load i32*, i32** %5, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = call i32 @gdk_cairo_set_source_pixbuf(i32* %65, i32* %66, i32 0, i32 0)
  %68 = load i32*, i32** %5, align 8
  %69 = call i32 @cairo_paint(i32* %68)
  ret void
}

declare dso_local i32 @cairo_save(i32*) #1

declare dso_local i32 @cairo_rectangle(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @cairo_set_operator(i32*, i32) #1

declare dso_local i32 @cairo_fill(i32*) #1

declare dso_local i32 @cairo_restore(i32*) #1

declare dso_local i32 @gdk_pixbuf_get_width(i32*) #1

declare dso_local i32 @gdk_pixbuf_get_height(i32*) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @cairo_translate(i32*, i32, i32) #1

declare dso_local i32 @gdk_cairo_set_source_pixbuf(i32*, i32*, i32, i32) #1

declare dso_local i32 @cairo_paint(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
