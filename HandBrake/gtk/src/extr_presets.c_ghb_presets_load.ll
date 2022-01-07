; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_presets.c_ghb_presets_load.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_presets.c_ghb_presets_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"presets.json\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"hb_window\00", align 1
@.str.2 = private unnamed_addr constant [106 x i8] c"Presets found are newer than what is supported by this version of HandBrake!\0A\0AWould you like to continue?\00", align 1
@GTK_MESSAGE_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"Get me out of here!\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Load backup presets\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"presets.%d.%d.%d.json\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"Failed to read presets file, trying backup (%s)...\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"Failed to read backup presets, using defaults...\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"presets\00", align 1
@.str.9 = private unnamed_addr constant [57 x i8] c"Failed to read presets file, initailizing new presets...\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"PresetCategory\00", align 1
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ghb_presets_load(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %10 = call i64 @presets_add_config_file(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp eq i32 %12, -2
  br i1 %13, label %14, label %54

14:                                               ; preds = %1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @GHB_WIDGET(i32 %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %19 = call i32* @GTK_WINDOW(i32 %18)
  store i32* %19, i32** %4, align 8
  %20 = call i32 @_(i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.2, i64 0, i64 0))
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to i8*
  %23 = call i8* (i8*, ...) @g_strdup_printf(i8* %22)
  store i8* %23, i8** %5, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* @GTK_MESSAGE_WARNING, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %28 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %29 = call i32 @ghb_message_dialog(i32* %24, i32 %25, i8* %26, i32 %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %14
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @g_free(i8* %32)
  %34 = call i32 @exit(i32 1) #3
  unreachable

35:                                               ; preds = %14
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @g_free(i8* %36)
  %38 = call i32 @hb_presets_current_version(i32* %7, i32* %8, i32* %9)
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %39, i32 %40, i32 %41)
  store i8* %42, i8** %6, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 (i8*, ...) @ghb_log(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i8* %43)
  %45 = load i8*, i8** %6, align 8
  %46 = call i64 @presets_add_config_file(i8* %45)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %35
  %49 = call i32 (i8*, ...) @ghb_log(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0))
  %50 = call i32 (...) @hb_presets_builtin_update()
  br label %51

51:                                               ; preds = %48, %35
  %52 = load i8*, i8** %6, align 8
  %53 = call i32 @g_free(i8* %52)
  br label %66

54:                                               ; preds = %1
  %55 = load i32, i32* %3, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %54
  %58 = call i64 @presets_add_config_file(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = call i32 (i8*, ...) @ghb_log(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.9, i64 0, i64 0))
  %62 = call i32 (...) @hb_presets_builtin_update()
  %63 = call i32 (...) @store_presets()
  br label %64

64:                                               ; preds = %60, %57
  br label %65

65:                                               ; preds = %64, %54
  br label %66

66:                                               ; preds = %65, %51
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %68 = load i32, i32* @FALSE, align 4
  %69 = call i32 @ghb_update_ui_combo_box(%struct.TYPE_4__* %67, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32* null, i32 %68)
  ret void
}

declare dso_local i64 @presets_add_config_file(i8*) #1

declare dso_local i32* @GTK_WINDOW(i32) #1

declare dso_local i32 @GHB_WIDGET(i32, i8*) #1

declare dso_local i8* @g_strdup_printf(i8*, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @ghb_message_dialog(i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @g_free(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @hb_presets_current_version(i32*, i32*, i32*) #1

declare dso_local i32 @ghb_log(i8*, ...) #1

declare dso_local i32 @hb_presets_builtin_update(...) #1

declare dso_local i32 @store_presets(...) #1

declare dso_local i32 @ghb_update_ui_combo_box(%struct.TYPE_4__*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
