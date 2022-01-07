; ModuleID = '/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_nconf.c_show_menu.c'
source_filename = "/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_nconf.c_show_menu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@current_instructions = common dso_local global i8* null, align 8
@main_window = common dso_local global i32 0, align 4
@attributes = common dso_local global i32* null, align 8
@NORMAL = common dso_local global i64 0, align 8
@stdscr = common dso_local global i32 0, align 4
@menu_backtitle = common dso_local global i32 0, align 4
@MAIN_HEADING = common dso_local global i64 0, align 8
@MAIN_MENU_BOX = common dso_local global i64 0, align 8
@MAIN_MENU_HEADING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c" %s \00", align 1
@curses_menu = common dso_local global i32 0, align 4
@curses_menu_items = common dso_local global i32 0, align 4
@mwin_max_cols = common dso_local global i32 0, align 4
@mwin_max_lines = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i32*)* @show_menu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_menu(i8* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %12 = load i8*, i8** %6, align 8
  store i8* %12, i8** @current_instructions, align 8
  %13 = call i32 (...) @clear()
  %14 = load i32, i32* @main_window, align 4
  %15 = load i32*, i32** @attributes, align 8
  %16 = load i64, i64* @NORMAL, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @wattrset(i32 %14, i32 %18)
  %20 = load i32, i32* @stdscr, align 4
  %21 = load i32, i32* @stdscr, align 4
  %22 = call i32 @getmaxx(i32 %21)
  %23 = load i32, i32* @menu_backtitle, align 4
  %24 = load i32*, i32** @attributes, align 8
  %25 = load i64, i64* @MAIN_HEADING, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @print_in_middle(i32 %20, i32 1, i32 0, i32 %22, i32 %23, i32 %27)
  %29 = load i32, i32* @main_window, align 4
  %30 = load i32*, i32** @attributes, align 8
  %31 = load i64, i64* @MAIN_MENU_BOX, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @wattrset(i32 %29, i32 %33)
  %35 = load i32, i32* @main_window, align 4
  %36 = call i32 @box(i32 %35, i32 0, i32 0)
  %37 = load i32, i32* @main_window, align 4
  %38 = load i32*, i32** @attributes, align 8
  %39 = load i64, i64* @MAIN_MENU_HEADING, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @wattrset(i32 %37, i32 %41)
  %43 = load i32, i32* @main_window, align 4
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @mvwprintw(i32 %43, i32 0, i32 3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %44)
  %46 = load i32, i32* @main_window, align 4
  %47 = load i32*, i32** @attributes, align 8
  %48 = load i64, i64* @NORMAL, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @wattrset(i32 %46, i32 %50)
  %52 = load i32, i32* @curses_menu, align 4
  %53 = load i32, i32* @curses_menu_items, align 4
  %54 = call i32 @set_menu_items(i32 %52, i32 %53)
  %55 = load i32, i32* @curses_menu, align 4
  %56 = call i32 @scale_menu(i32 %55, i32* %10, i32* %9)
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @mwin_max_cols, align 4
  %59 = sub nsw i32 %58, 2
  %60 = call i32 @min(i32 %57, i32 %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* @mwin_max_lines, align 4
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* @main_window, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @mwin_max_cols, align 4
  %66 = load i32, i32* %9, align 4
  %67 = sub nsw i32 %65, %66
  %68 = sdiv i32 %67, 2
  %69 = call i32* @derwin(i32 %62, i32 %63, i32 %64, i32 2, i32 %68)
  store i32* %69, i32** %11, align 8
  %70 = load i32*, i32** %11, align 8
  %71 = load i32, i32* @TRUE, align 4
  %72 = call i32 @keypad(i32* %70, i32 %71)
  %73 = load i32, i32* @curses_menu, align 4
  %74 = load i32*, i32** %11, align 8
  %75 = call i32 @set_menu_win(i32 %73, i32* %74)
  %76 = load i32, i32* @curses_menu, align 4
  %77 = load i32*, i32** %11, align 8
  %78 = call i32 @set_menu_sub(i32 %76, i32* %77)
  %79 = load i32, i32* @curses_menu, align 4
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @set_menu_format(i32 %79, i32 %80, i32 1)
  %82 = load i32, i32* %7, align 4
  %83 = load i32*, i32** %8, align 8
  %84 = call i32 @center_item(i32 %82, i32* %83)
  %85 = load i32, i32* @curses_menu, align 4
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @set_menu_format(i32 %85, i32 %86, i32 1)
  %88 = call i32 (...) @print_function_line()
  %89 = load i32, i32* @curses_menu, align 4
  %90 = call i32 @post_menu(i32 %89)
  %91 = load i32, i32* @main_window, align 4
  %92 = call i32 @refresh_all_windows(i32 %91)
  ret void
}

declare dso_local i32 @clear(...) #1

declare dso_local i32 @wattrset(i32, i32) #1

declare dso_local i32 @print_in_middle(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @getmaxx(i32) #1

declare dso_local i32 @box(i32, i32, i32) #1

declare dso_local i32 @mvwprintw(i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @set_menu_items(i32, i32) #1

declare dso_local i32 @scale_menu(i32, i32*, i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32* @derwin(i32, i32, i32, i32, i32) #1

declare dso_local i32 @keypad(i32*, i32) #1

declare dso_local i32 @set_menu_win(i32, i32*) #1

declare dso_local i32 @set_menu_sub(i32, i32*) #1

declare dso_local i32 @set_menu_format(i32, i32, i32) #1

declare dso_local i32 @center_item(i32, i32*) #1

declare dso_local i32 @print_function_line(...) #1

declare dso_local i32 @post_menu(i32) #1

declare dso_local i32 @refresh_all_windows(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
