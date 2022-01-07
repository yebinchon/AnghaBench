; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_subtitlehandler.c_subtitle_update_pref_lang.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_subtitlehandler.c_subtitle_update_pref_lang.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i8*, i8*, i8* }

@.str = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"und\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"subtitle_preferred_language\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Preferred Language: %s\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"PreferredLanguage\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"SubtitleAddForeignAudioSubtitle\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"Add %s subtitle track if default audio is not %s\00", align 1
@.str.7 = private unnamed_addr constant [67 x i8] c"Add subtitle track if default audio is not your preferred language\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"SubtitleAddForeignAudioSearch\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, %struct.TYPE_6__*)* @subtitle_update_pref_lang to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @subtitle_update_pref_lang(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %11 = call i8* @_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %11, i8** %8, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @GHB_WIDGET(i32 %14, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %16 = call i32* @GTK_LABEL(i32 %15)
  store i32* %16, i32** %5, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = icmp ne %struct.TYPE_6__* %17, null
  br i1 %18, label %19, label %50

19:                                               ; preds = %2
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %9, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = call i64 @strncmp(i8* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %49

26:                                               ; preds = %19
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %43

31:                                               ; preds = %26
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  br label %47

43:                                               ; preds = %31, %26
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  %46 = load i8*, i8** %45, align 8
  br label %47

47:                                               ; preds = %43, %39
  %48 = phi i8* [ %42, %39 ], [ %46, %43 ]
  store i8* %48, i8** %8, align 8
  br label %49

49:                                               ; preds = %47, %19
  br label %50

50:                                               ; preds = %49, %2
  %51 = call i8* @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %52 = load i8*, i8** %8, align 8
  %53 = call i32* (i8*, ...) @g_strdup_printf(i8* %51, i8* %52)
  store i32* %53, i32** %7, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 @gtk_label_set_text(i32* %54, i32* %55)
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @g_free(i32* %57)
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i8*, i8** %9, align 8
  %63 = call i32 @ghb_dict_set_string(i32 %61, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %62)
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %65 = icmp eq %struct.TYPE_6__* %64, null
  br i1 %65, label %71, label %66

66:                                               ; preds = %50
  %67 = load i8*, i8** %9, align 8
  %68 = call i64 @strncmp(i8* %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %69 = icmp ne i64 %68, 0
  %70 = xor i1 %69, true
  br label %71

71:                                               ; preds = %66, %50
  %72 = phi i1 [ true, %50 ], [ %70, %66 ]
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  store i32 %74, i32* %10, align 4
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @GHB_WIDGET(i32 %77, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %79 = call i32* @GTK_BUTTON(i32 %78)
  store i32* %79, i32** %6, align 8
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %71
  %83 = call i8* @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0))
  %84 = load i8*, i8** %8, align 8
  %85 = load i8*, i8** %8, align 8
  %86 = call i32* (i8*, ...) @g_strdup_printf(i8* %83, i8* %84, i8* %85)
  store i32* %86, i32** %7, align 8
  br label %90

87:                                               ; preds = %71
  %88 = call i8* @_(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.7, i64 0, i64 0))
  %89 = call i32* (i8*, ...) @g_strdup_printf(i8* %88)
  store i32* %89, i32** %7, align 8
  br label %90

90:                                               ; preds = %87, %82
  %91 = load i32*, i32** %6, align 8
  %92 = load i32*, i32** %7, align 8
  %93 = call i32 @gtk_button_set_label(i32* %91, i32* %92)
  %94 = load i32*, i32** %7, align 8
  %95 = call i32 @g_free(i32* %94)
  %96 = load i32*, i32** %6, align 8
  %97 = call i32 @GTK_WIDGET(i32* %96)
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @gtk_widget_set_sensitive(i32 %97, i32 %98)
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @GHB_WIDGET(i32 %102, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  %104 = call i32* @GTK_BUTTON(i32 %103)
  store i32* %104, i32** %6, align 8
  %105 = load i32*, i32** %6, align 8
  %106 = call i32 @GTK_WIDGET(i32* %105)
  %107 = load i32, i32* %10, align 4
  %108 = call i32 @gtk_widget_set_sensitive(i32 %106, i32 %107)
  ret void
}

declare dso_local i8* @_(i8*) #1

declare dso_local i32* @GTK_LABEL(i32) #1

declare dso_local i32 @GHB_WIDGET(i32, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32* @g_strdup_printf(i8*, ...) #1

declare dso_local i32 @gtk_label_set_text(i32*, i32*) #1

declare dso_local i32 @g_free(i32*) #1

declare dso_local i32 @ghb_dict_set_string(i32, i8*, i8*) #1

declare dso_local i32* @GTK_BUTTON(i32) #1

declare dso_local i32 @gtk_button_set_label(i32*, i32*) #1

declare dso_local i32 @gtk_widget_set_sensitive(i32, i32) #1

declare dso_local i32 @GTK_WIDGET(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
