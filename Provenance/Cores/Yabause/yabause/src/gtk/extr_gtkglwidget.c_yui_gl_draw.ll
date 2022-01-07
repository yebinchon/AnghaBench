; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_gtkglwidget.c_yui_gl_draw.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_gtkglwidget.c_yui_gl_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 (i32*, i32*)* }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }

@VIDCore = common dso_local global %struct.TYPE_12__* null, align 8
@dispbuffer = common dso_local global i32* null, align 8
@GDK_COLORSPACE_RGB = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@X_NOSCALE = common dso_local global i32 0, align 4
@Y_NOSCALE = common dso_local global i32 0, align 4
@GDK_RGB_DITHER_NONE = common dso_local global i32 0, align 4
@GDK_INTERP_NEAREST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @yui_gl_draw(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** @VIDCore, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %9 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %8, align 8
  %10 = call i32 %9(i32* %3, i32* %4)
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %12 = call %struct.TYPE_11__* @GTK_WIDGET(%struct.TYPE_10__* %11)
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %19 = call %struct.TYPE_11__* @GTK_WIDGET(%struct.TYPE_10__* %18)
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %27, 4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = srem i32 %33, 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %1
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = srem i32 %39, 4
  %41 = sub nsw i32 4, %40
  br label %43

42:                                               ; preds = %1
  br label %43

43:                                               ; preds = %42, %36
  %44 = phi i32 [ %41, %36 ], [ 0, %42 ]
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load i32*, i32** @dispbuffer, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %128

52:                                               ; preds = %43
  %53 = load i32*, i32** @dispbuffer, align 8
  %54 = load i32, i32* @GDK_COLORSPACE_RGB, align 4
  %55 = load i32, i32* @TRUE, align 4
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* %3, align 4
  %59 = mul nsw i32 %58, 4
  %60 = call i32* @gdk_pixbuf_new_from_data(i32* %53, i32 %54, i32 %55, i32 8, i32 %56, i32 %57, i32 %59, i32* null, i32* null)
  store i32* %60, i32** %5, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @X_NOSCALE, align 4
  %66 = add nsw i32 %64, %65
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %98

68:                                               ; preds = %52
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @Y_NOSCALE, align 4
  %74 = add nsw i32 %72, %73
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %98

76:                                               ; preds = %68
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %78 = call %struct.TYPE_11__* @GTK_WIDGET(%struct.TYPE_10__* %77)
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %5, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %3, align 4
  %86 = sub nsw i32 %84, %85
  %87 = sdiv i32 %86, 2
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %4, align 4
  %92 = sub nsw i32 %90, %91
  %93 = sdiv i32 %92, 2
  %94 = load i32, i32* %3, align 4
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* @GDK_RGB_DITHER_NONE, align 4
  %97 = call i32 @gdk_draw_pixbuf(i32 %80, i32* null, i32* %81, i32 0, i32 0, i32 %87, i32 %93, i32 %94, i32 %95, i32 %96, i32 0, i32 0)
  br label %123

98:                                               ; preds = %68, %52
  %99 = load i32*, i32** %5, align 8
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @GDK_INTERP_NEAREST, align 4
  %107 = call i32* @gdk_pixbuf_scale_simple(i32* %99, i32 %102, i32 %105, i32 %106)
  store i32* %107, i32** %6, align 8
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %109 = call %struct.TYPE_11__* @GTK_WIDGET(%struct.TYPE_10__* %108)
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32*, i32** %6, align 8
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @GDK_RGB_DITHER_NONE, align 4
  %120 = call i32 @gdk_draw_pixbuf(i32 %111, i32* null, i32* %112, i32 0, i32 0, i32 0, i32 0, i32 %115, i32 %118, i32 %119, i32 0, i32 0)
  %121 = load i32*, i32** %6, align 8
  %122 = call i32 @g_object_unref(i32* %121)
  br label %123

123:                                              ; preds = %98, %76
  %124 = load i32*, i32** %5, align 8
  %125 = call i32 @g_object_unref(i32* %124)
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 3
  store i32 1, i32* %127, align 4
  br label %128

128:                                              ; preds = %123, %51
  ret void
}

declare dso_local %struct.TYPE_11__* @GTK_WIDGET(%struct.TYPE_10__*) #1

declare dso_local i32* @gdk_pixbuf_new_from_data(i32*, i32, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @gdk_draw_pixbuf(i32, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32* @gdk_pixbuf_scale_simple(i32*, i32, i32, i32) #1

declare dso_local i32 @g_object_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
