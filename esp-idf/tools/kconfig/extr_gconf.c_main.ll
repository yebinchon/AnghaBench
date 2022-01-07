; ModuleID = '/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_gconf.c_main.c'
source_filename = "/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_gconf.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PACKAGE = common dso_local global i32 0, align 4
@LOCALEDIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@SRCTREE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"/scripts/kconfig/gconf.glade\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c".glade\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"%s [-s] <config>\0A\00", align 1
@rootmenu = common dso_local global i32 0, align 4
@view_mode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* @PACKAGE, align 4
  %10 = load i32, i32* @LOCALEDIR, align 4
  %11 = call i32 @bindtextdomain(i32 %9, i32 %10)
  %12 = load i32, i32* @PACKAGE, align 4
  %13 = call i32 @bind_textdomain_codeset(i32 %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @PACKAGE, align 4
  %15 = call i32 @textdomain(i32 %14)
  %16 = call i32 (...) @gtk_set_locale()
  %17 = call i32 @gtk_init(i32* %4, i8*** %5)
  %18 = call i32 (...) @glade_init()
  %19 = load i32, i32* @SRCTREE, align 4
  %20 = call i8* @getenv(i32 %19)
  store i8* %20, i8** %7, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i8*, i8** %7, align 8
  %25 = call i32* (i8*, i8*, i8*, ...) @g_strconcat(i8* %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* null)
  store i32* %25, i32** %8, align 8
  br label %48

26:                                               ; preds = %2
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 0
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 47
  br i1 %33, label %34, label %39

34:                                               ; preds = %26
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32* (i8*, i8*, i8*, ...) @g_strconcat(i8* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* null)
  store i32* %38, i32** %8, align 8
  br label %47

39:                                               ; preds = %26
  %40 = call i32 (...) @g_get_current_dir()
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to i8*
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32* (i8*, i8*, i8*, ...) @g_strconcat(i8* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* null)
  store i32* %46, i32** %8, align 8
  br label %47

47:                                               ; preds = %39, %34
  br label %48

48:                                               ; preds = %47, %23
  %49 = load i32, i32* %4, align 4
  %50 = icmp sgt i32 %49, 1
  br i1 %50, label %51, label %79

51:                                               ; preds = %48
  %52 = load i8**, i8*** %5, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 1
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 45
  br i1 %58, label %59, label %79

59:                                               ; preds = %51
  %60 = load i8**, i8*** %5, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 1
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  switch i32 %65, label %75 [
    i32 97, label %66
    i32 115, label %67
    i32 104, label %69
    i32 63, label %69
  ]

66:                                               ; preds = %59
  br label %75

67:                                               ; preds = %59
  %68 = call i32 @conf_set_message_callback(i32* null)
  br label %75

69:                                               ; preds = %59, %59
  %70 = load i8**, i8*** %5, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %72)
  %74 = call i32 @exit(i32 0) #3
  unreachable

75:                                               ; preds = %59, %67, %66
  %76 = load i8**, i8*** %5, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i64 2
  %78 = load i8*, i8** %77, align 8
  store i8* %78, i8** %6, align 8
  br label %83

79:                                               ; preds = %51, %48
  %80 = load i8**, i8*** %5, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 1
  %82 = load i8*, i8** %81, align 8
  store i8* %82, i8** %6, align 8
  br label %83

83:                                               ; preds = %79, %75
  %84 = load i8*, i8** %6, align 8
  %85 = call i32 @conf_parse(i8* %84)
  %86 = call i32 @fixup_rootmenu(i32* @rootmenu)
  %87 = call i32 @conf_read(i32* null)
  %88 = load i32*, i32** %8, align 8
  %89 = call i32 @init_main_window(i32* %88)
  %90 = call i32 (...) @init_tree_model()
  %91 = call i32 (...) @init_left_tree()
  %92 = call i32 (...) @init_right_tree()
  %93 = load i32, i32* @view_mode, align 4
  switch i32 %93, label %100 [
    i32 129, label %94
    i32 128, label %96
    i32 130, label %98
  ]

94:                                               ; preds = %83
  %95 = call i32 (...) @display_tree_part()
  br label %100

96:                                               ; preds = %83
  %97 = call i32 (...) @display_list()
  br label %100

98:                                               ; preds = %83
  %99 = call i32 @display_tree(i32* @rootmenu)
  br label %100

100:                                              ; preds = %83, %98, %96, %94
  %101 = call i32 (...) @gtk_main()
  ret i32 0
}

declare dso_local i32 @bindtextdomain(i32, i32) #1

declare dso_local i32 @bind_textdomain_codeset(i32, i8*) #1

declare dso_local i32 @textdomain(i32) #1

declare dso_local i32 @gtk_set_locale(...) #1

declare dso_local i32 @gtk_init(i32*, i8***) #1

declare dso_local i32 @glade_init(...) #1

declare dso_local i8* @getenv(i32) #1

declare dso_local i32* @g_strconcat(i8*, i8*, i8*, ...) #1

declare dso_local i32 @g_get_current_dir(...) #1

declare dso_local i32 @conf_set_message_callback(i32*) #1

declare dso_local i32 @printf(i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @conf_parse(i8*) #1

declare dso_local i32 @fixup_rootmenu(i32*) #1

declare dso_local i32 @conf_read(i32*) #1

declare dso_local i32 @init_main_window(i32*) #1

declare dso_local i32 @init_tree_model(...) #1

declare dso_local i32 @init_left_tree(...) #1

declare dso_local i32 @init_right_tree(...) #1

declare dso_local i32 @display_tree_part(...) #1

declare dso_local i32 @display_list(...) #1

declare dso_local i32 @display_tree(i32*) #1

declare dso_local i32 @gtk_main(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
