; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_subtitlehandler.c_ghb_subtitle_title_change.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_subtitlehandler.c_ghb_subtitle_title_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"subtitle_add\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"subtitle_add_all\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"subtitle_reset\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"SubtitleImportDisable\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ghb_subtitle_title_change(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32* @GHB_WIDGET(i32 %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32* %11, i32** %5, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @gtk_widget_set_sensitive(i32* %12, i32 %13)
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32* @GHB_WIDGET(i32 %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32* %18, i32** %5, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @gtk_widget_set_sensitive(i32* %19, i32 %20)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32* @GHB_WIDGET(i32 %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store i32* %25, i32** %5, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @gtk_widget_set_sensitive(i32* %26, i32 %27)
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ghb_dict_get_int(i32 %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call %struct.TYPE_6__* @ghb_lookup_title(i32 %33, i32* null)
  store %struct.TYPE_6__* %34, %struct.TYPE_6__** %7, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %36 = icmp ne %struct.TYPE_6__* %35, null
  br i1 %36, label %37, label %52

37:                                               ; preds = %2
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32* @GHB_WIDGET(i32 %40, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  store i32* %41, i32** %5, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @hb_list_count(i32 %45)
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i32 @gtk_widget_set_sensitive(i32* %42, i32 %50)
  br label %52

52:                                               ; preds = %37, %2
  ret void
}

declare dso_local i32* @GHB_WIDGET(i32, i8*) #1

declare dso_local i32 @gtk_widget_set_sensitive(i32*, i32) #1

declare dso_local i32 @ghb_dict_get_int(i32, i8*) #1

declare dso_local %struct.TYPE_6__* @ghb_lookup_title(i32, i32*) #1

declare dso_local i32 @hb_list_count(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
