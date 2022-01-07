; ModuleID = '/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_nconf.c_main.c'
source_filename = "/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_nconf.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PACKAGE = common dso_local global i32 0, align 4
@LOCALEDIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"NCONFIG_MODE\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"single_menu\00", align 1
@single_menu_mode = common dso_local global i32 0, align 4
@stdscr = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [60 x i8] c"Your terminal should have at least 20 lines and 75 columns\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@ESCDELAY = common dso_local global i32 0, align 4
@curses_menu_items = common dso_local global i32 0, align 4
@curses_menu = common dso_local global i32 0, align 4
@O_SHOWDESC = common dso_local global i32 0, align 4
@O_SHOWMATCH = common dso_local global i32 0, align 4
@O_ONEVALUE = common dso_local global i32 0, align 4
@O_NONCYCLIC = common dso_local global i32 0, align 4
@O_IGNORECASE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c" \00", align 1
@attributes = common dso_local global i32* null, align 8
@MAIN_MENU_FORE = common dso_local global i64 0, align 8
@MAIN_MENU_BACK = common dso_local global i64 0, align 8
@MAIN_MENU_GREY = common dso_local global i64 0, align 8
@main_window = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"Instructions\00", align 1
@menu_no_f_instructions = common dso_local global i8* null, align 8
@conf_message_callback = common dso_local global i32* null, align 8
@global_exit = common dso_local global i32 0, align 4
@rootmenu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* @LC_ALL, align 4
  %10 = call i32 @setlocale(i32 %9, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @PACKAGE, align 4
  %12 = load i32, i32* @LOCALEDIR, align 4
  %13 = call i32 @bindtextdomain(i32 %11, i32 %12)
  %14 = load i32, i32* @PACKAGE, align 4
  %15 = call i32 @textdomain(i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %28

18:                                               ; preds = %2
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  %21 = load i8*, i8** %20, align 8
  %22 = call i64 @strcmp(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = call i32 @conf_set_message_callback(i32* null)
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i32 1
  store i8** %27, i8*** %5, align 8
  br label %28

28:                                               ; preds = %24, %18, %2
  %29 = load i8**, i8*** %5, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 1
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @conf_parse(i8* %31)
  %33 = call i32 @conf_read(i32* null)
  %34 = call i8* @getenv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i8* %34, i8** %8, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %28
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 @strcasecmp(i8* %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  store i32 1, i32* @single_menu_mode, align 4
  br label %42

42:                                               ; preds = %41, %37
  br label %43

43:                                               ; preds = %42, %28
  %44 = call i32 (...) @initscr()
  %45 = call i32 (...) @set_colors()
  %46 = call i32 (...) @cbreak()
  %47 = call i32 (...) @noecho()
  %48 = load i32, i32* @stdscr, align 4
  %49 = load i32, i32* @TRUE, align 4
  %50 = call i32 @keypad(i32 %48, i32 %49)
  %51 = call i32 @curs_set(i32 0)
  %52 = load i32, i32* @stdscr, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @getmaxyx(i32 %52, i32 %53, i32 %54)
  %56 = load i32, i32* %7, align 4
  %57 = icmp slt i32 %56, 75
  br i1 %57, label %61, label %58

58:                                               ; preds = %43
  %59 = load i32, i32* %6, align 4
  %60 = icmp slt i32 %59, 20
  br i1 %60, label %61, label %64

61:                                               ; preds = %58, %43
  %62 = call i32 (...) @endwin()
  %63 = call i32 @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %144

64:                                               ; preds = %58
  %65 = load i32, i32* @stdscr, align 4
  %66 = load i64, i64* @FALSE, align 8
  %67 = call i32 @notimeout(i32 %65, i64 %66)
  store i32 1, i32* @ESCDELAY, align 4
  %68 = load i32, i32* @curses_menu_items, align 4
  %69 = call i32 @new_menu(i32 %68)
  store i32 %69, i32* @curses_menu, align 4
  %70 = load i32, i32* @curses_menu, align 4
  %71 = load i32, i32* @O_SHOWDESC, align 4
  %72 = call i32 @menu_opts_off(i32 %70, i32 %71)
  %73 = load i32, i32* @curses_menu, align 4
  %74 = load i32, i32* @O_SHOWMATCH, align 4
  %75 = call i32 @menu_opts_on(i32 %73, i32 %74)
  %76 = load i32, i32* @curses_menu, align 4
  %77 = load i32, i32* @O_ONEVALUE, align 4
  %78 = call i32 @menu_opts_on(i32 %76, i32 %77)
  %79 = load i32, i32* @curses_menu, align 4
  %80 = load i32, i32* @O_NONCYCLIC, align 4
  %81 = call i32 @menu_opts_on(i32 %79, i32 %80)
  %82 = load i32, i32* @curses_menu, align 4
  %83 = load i32, i32* @O_IGNORECASE, align 4
  %84 = call i32 @menu_opts_on(i32 %82, i32 %83)
  %85 = load i32, i32* @curses_menu, align 4
  %86 = call i32 @set_menu_mark(i32 %85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %87 = load i32, i32* @curses_menu, align 4
  %88 = load i32*, i32** @attributes, align 8
  %89 = load i64, i64* @MAIN_MENU_FORE, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @set_menu_fore(i32 %87, i32 %91)
  %93 = load i32, i32* @curses_menu, align 4
  %94 = load i32*, i32** @attributes, align 8
  %95 = load i64, i64* @MAIN_MENU_BACK, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @set_menu_back(i32 %93, i32 %97)
  %99 = load i32, i32* @curses_menu, align 4
  %100 = load i32*, i32** @attributes, align 8
  %101 = load i64, i64* @MAIN_MENU_GREY, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @set_menu_grey(i32 %99, i32 %103)
  %105 = call i32 (...) @conf_get_configname()
  %106 = call i32 @set_config_filename(i32 %105)
  %107 = call i32 (...) @setup_windows()
  %108 = call i32 @KEY_F(i32 1)
  %109 = call i64 @has_key(i32 %108)
  %110 = load i64, i64* @FALSE, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %118

112:                                              ; preds = %64
  %113 = load i32, i32* @main_window, align 4
  %114 = call i32 @_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %115 = load i8*, i8** @menu_no_f_instructions, align 8
  %116 = call i32 @_(i8* %115)
  %117 = call i32 @show_scroll_win(i32 %113, i32 %114, i32 %116)
  br label %118

118:                                              ; preds = %112, %64
  %119 = load i32*, i32** @conf_message_callback, align 8
  %120 = call i32 @conf_set_message_callback(i32* %119)
  br label %121

121:                                              ; preds = %133, %118
  %122 = load i32, i32* @global_exit, align 4
  %123 = icmp ne i32 %122, 0
  %124 = xor i1 %123, true
  br i1 %124, label %125, label %134

125:                                              ; preds = %121
  %126 = call i32 @conf(i32* @rootmenu)
  %127 = load i32, i32* @global_exit, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %125
  %130 = call i64 (...) @do_exit()
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  br label %134

133:                                              ; preds = %129, %125
  br label %121

134:                                              ; preds = %132, %121
  %135 = load i32, i32* @curses_menu, align 4
  %136 = call i32 @unpost_menu(i32 %135)
  %137 = load i32, i32* @curses_menu, align 4
  %138 = call i32 @free_menu(i32 %137)
  %139 = load i32, i32* @main_window, align 4
  %140 = call i32 @delwin(i32 %139)
  %141 = call i32 (...) @clear()
  %142 = call i32 (...) @refresh()
  %143 = call i32 (...) @endwin()
  store i32 0, i32* %3, align 4
  br label %144

144:                                              ; preds = %134, %61
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @bindtextdomain(i32, i32) #1

declare dso_local i32 @textdomain(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @conf_set_message_callback(i32*) #1

declare dso_local i32 @conf_parse(i8*) #1

declare dso_local i32 @conf_read(i32*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @initscr(...) #1

declare dso_local i32 @set_colors(...) #1

declare dso_local i32 @cbreak(...) #1

declare dso_local i32 @noecho(...) #1

declare dso_local i32 @keypad(i32, i32) #1

declare dso_local i32 @curs_set(i32) #1

declare dso_local i32 @getmaxyx(i32, i32, i32) #1

declare dso_local i32 @endwin(...) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @notimeout(i32, i64) #1

declare dso_local i32 @new_menu(i32) #1

declare dso_local i32 @menu_opts_off(i32, i32) #1

declare dso_local i32 @menu_opts_on(i32, i32) #1

declare dso_local i32 @set_menu_mark(i32, i8*) #1

declare dso_local i32 @set_menu_fore(i32, i32) #1

declare dso_local i32 @set_menu_back(i32, i32) #1

declare dso_local i32 @set_menu_grey(i32, i32) #1

declare dso_local i32 @set_config_filename(i32) #1

declare dso_local i32 @conf_get_configname(...) #1

declare dso_local i32 @setup_windows(...) #1

declare dso_local i64 @has_key(i32) #1

declare dso_local i32 @KEY_F(i32) #1

declare dso_local i32 @show_scroll_win(i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @conf(i32*) #1

declare dso_local i64 @do_exit(...) #1

declare dso_local i32 @unpost_menu(i32) #1

declare dso_local i32 @free_menu(i32) #1

declare dso_local i32 @delwin(i32) #1

declare dso_local i32 @clear(...) #1

declare dso_local i32 @refresh(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
