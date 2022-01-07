; ModuleID = '/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_gconf.c_set_node.c'
source_filename = "/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_gconf.c_set_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.menu = type { i32 }

@COL_PIXBUF = common dso_local global i64 0, align 8
@COL_COLOR = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@tree = common dso_local global i32 0, align 4
@COL_OPTION = common dso_local global i64 0, align 8
@COL_NAME = common dso_local global i64 0, align 8
@COL_NO = common dso_local global i64 0, align 8
@COL_MOD = common dso_local global i64 0, align 8
@COL_YES = common dso_local global i64 0, align 8
@COL_VALUE = common dso_local global i64 0, align 8
@COL_MENU = common dso_local global i32 0, align 4
@COL_EDIT = common dso_local global i64 0, align 8
@COL_PIXVIS = common dso_local global i64 0, align 8
@COL_BTNVIS = common dso_local global i64 0, align 8
@COL_BTNACT = common dso_local global i64 0, align 8
@COL_BTNINC = common dso_local global i64 0, align 8
@COL_BTNRAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.menu*, i32**)* @set_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_node(i32* %0, %struct.menu* %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.menu*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.menu* %1, %struct.menu** %5, align 8
  store i32** %2, i32*** %6, align 8
  %10 = load i32**, i32*** %6, align 8
  %11 = load i64, i64* @COL_PIXBUF, align 8
  %12 = getelementptr inbounds i32*, i32** %10, i64 %11
  %13 = load i32*, i32** %12, align 8
  %14 = bitcast i32* %13 to i8**
  %15 = call i32* @gdk_pixbuf_new_from_xpm_data(i8** %14)
  store i32* %15, i32** %9, align 8
  %16 = load i32**, i32*** %6, align 8
  %17 = load i64, i64* @COL_COLOR, align 8
  %18 = getelementptr inbounds i32*, i32** %16, i64 %17
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @gdk_color_parse(i32* %19, i32* %7)
  %21 = call i32 (...) @gdk_colormap_get_system()
  %22 = load i32, i32* @FALSE, align 4
  %23 = load i32, i32* @FALSE, align 4
  %24 = call i32 @gdk_colormap_alloc_colors(i32 %21, i32* %7, i32 1, i32 %22, i32 %23, i32* %8)
  %25 = load i32, i32* @tree, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = load i64, i64* @COL_OPTION, align 8
  %28 = load i32**, i32*** %6, align 8
  %29 = load i64, i64* @COL_OPTION, align 8
  %30 = getelementptr inbounds i32*, i32** %28, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* @COL_NAME, align 8
  %33 = load i32**, i32*** %6, align 8
  %34 = load i64, i64* @COL_NAME, align 8
  %35 = getelementptr inbounds i32*, i32** %33, i64 %34
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* @COL_NO, align 8
  %38 = load i32**, i32*** %6, align 8
  %39 = load i64, i64* @COL_NO, align 8
  %40 = getelementptr inbounds i32*, i32** %38, i64 %39
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* @COL_MOD, align 8
  %43 = load i32**, i32*** %6, align 8
  %44 = load i64, i64* @COL_MOD, align 8
  %45 = getelementptr inbounds i32*, i32** %43, i64 %44
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* @COL_YES, align 8
  %48 = load i32**, i32*** %6, align 8
  %49 = load i64, i64* @COL_YES, align 8
  %50 = getelementptr inbounds i32*, i32** %48, i64 %49
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* @COL_VALUE, align 8
  %53 = load i32**, i32*** %6, align 8
  %54 = load i64, i64* @COL_VALUE, align 8
  %55 = getelementptr inbounds i32*, i32** %53, i64 %54
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* @COL_MENU, align 4
  %58 = load %struct.menu*, %struct.menu** %5, align 8
  %59 = ptrtoint %struct.menu* %58 to i32
  %60 = load i64, i64* @COL_COLOR, align 8
  %61 = load i64, i64* @COL_EDIT, align 8
  %62 = load i32**, i32*** %6, align 8
  %63 = load i64, i64* @COL_EDIT, align 8
  %64 = getelementptr inbounds i32*, i32** %62, i64 %63
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @GPOINTER_TO_INT(i32* %65)
  %67 = load i64, i64* @COL_PIXBUF, align 8
  %68 = load i32*, i32** %9, align 8
  %69 = load i64, i64* @COL_PIXVIS, align 8
  %70 = load i32**, i32*** %6, align 8
  %71 = load i64, i64* @COL_PIXVIS, align 8
  %72 = getelementptr inbounds i32*, i32** %70, i64 %71
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @GPOINTER_TO_INT(i32* %73)
  %75 = load i64, i64* @COL_BTNVIS, align 8
  %76 = load i32**, i32*** %6, align 8
  %77 = load i64, i64* @COL_BTNVIS, align 8
  %78 = getelementptr inbounds i32*, i32** %76, i64 %77
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @GPOINTER_TO_INT(i32* %79)
  %81 = load i64, i64* @COL_BTNACT, align 8
  %82 = load i32**, i32*** %6, align 8
  %83 = load i64, i64* @COL_BTNACT, align 8
  %84 = getelementptr inbounds i32*, i32** %82, i64 %83
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @GPOINTER_TO_INT(i32* %85)
  %87 = load i64, i64* @COL_BTNINC, align 8
  %88 = load i32**, i32*** %6, align 8
  %89 = load i64, i64* @COL_BTNINC, align 8
  %90 = getelementptr inbounds i32*, i32** %88, i64 %89
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @GPOINTER_TO_INT(i32* %91)
  %93 = load i64, i64* @COL_BTNRAD, align 8
  %94 = load i32**, i32*** %6, align 8
  %95 = load i64, i64* @COL_BTNRAD, align 8
  %96 = getelementptr inbounds i32*, i32** %94, i64 %95
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @GPOINTER_TO_INT(i32* %97)
  %99 = call i32 @gtk_tree_store_set(i32 %25, i32* %26, i64 %27, i32* %31, i64 %32, i32* %36, i64 %37, i32* %41, i64 %42, i32* %46, i64 %47, i32* %51, i64 %52, i32* %56, i32 %57, i32 %59, i64 %60, i32* %7, i64 %61, i32 %66, i64 %67, i32* %68, i64 %69, i32 %74, i64 %75, i32 %80, i64 %81, i32 %86, i64 %87, i32 %92, i64 %93, i32 %98, i32 -1)
  %100 = load i32*, i32** %9, align 8
  %101 = call i32 @g_object_unref(i32* %100)
  ret void
}

declare dso_local i32* @gdk_pixbuf_new_from_xpm_data(i8**) #1

declare dso_local i32 @gdk_color_parse(i32*, i32*) #1

declare dso_local i32 @gdk_colormap_alloc_colors(i32, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @gdk_colormap_get_system(...) #1

declare dso_local i32 @gtk_tree_store_set(i32, i32*, i64, i32*, i64, i32*, i64, i32*, i64, i32*, i64, i32*, i64, i32*, i32, i32, i64, i32*, i64, i32, i64, i32*, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i32) #1

declare dso_local i32 @GPOINTER_TO_INT(i32*) #1

declare dso_local i32 @g_object_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
