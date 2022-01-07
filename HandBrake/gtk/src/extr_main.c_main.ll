; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8* }
%struct.TYPE_8__ = type { i64, %struct.TYPE_8__*, %struct.TYPE_8__*, i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"fr.handbrake.ghb\00", align 1
@G_APPLICATION_NON_UNIQUE = common dso_local global i32 0, align 4
@G_APPLICATION_HANDLES_OPEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"activate\00", align 1
@ghb_activate_cb = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@ghb_open_file_cb = common dso_local global i64 0, align 8
@entries = common dso_local global i32 0, align 4
@ATTACH_PARENT_PROCESS = common dso_local global i32 0, align 4
@GETTEXT_PACKAGE = common dso_local global i32 0, align 4
@PACKAGE_LOCALE_DIR = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i8* null, align 8
@STDOUT_FILENO = common dso_local global i8* null, align 8
@stderr = common dso_local global %struct.TYPE_9__* null, align 8
@stdout = common dso_local global %struct.TYPE_9__* null, align 8
@win32_console = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = call i32 (...) @ghb_ui_register_resource()
  %9 = call %struct.TYPE_8__* @g_malloc0(i32 88)
  store %struct.TYPE_8__* %9, %struct.TYPE_8__** %7, align 8
  %10 = load i32, i32* @G_APPLICATION_NON_UNIQUE, align 4
  %11 = load i32, i32* @G_APPLICATION_HANDLES_OPEN, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @gtk_application_new(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 12
  store i32 %13, i32* %15, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 12
  %18 = load i32, i32* %17, align 8
  %19 = load i64, i64* @ghb_activate_cb, align 8
  %20 = trunc i64 %19 to i32
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %22 = call i32 @g_signal_connect(i32 %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %20, %struct.TYPE_8__* %21)
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 12
  %25 = load i32, i32* %24, align 8
  %26 = load i64, i64* @ghb_open_file_cb, align 8
  %27 = trunc i64 %26 to i32
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %29 = call i32 @g_signal_connect(i32 %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %27, %struct.TYPE_8__* %28)
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 12
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @G_APPLICATION(i32 %32)
  %34 = load i32, i32* @entries, align 4
  %35 = call i32 @g_application_add_main_option_entries(i32 %33, i32 %34)
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 12
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @G_APPLICATION(i32 %38)
  %40 = load i32, i32* %4, align 4
  %41 = load i8**, i8*** %5, align 8
  %42 = call i32 @g_application_run(i32 %39, i32 %40, i8** %41)
  store i32 %42, i32* %6, align 4
  %43 = call i32 (...) @ghb_backend_close()
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %2
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @g_source_remove(i64 %51)
  br label %53

53:                                               ; preds = %48, %2
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 11
  %56 = call i32 @ghb_value_free(i32* %55)
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 10
  %59 = call i32 @ghb_value_free(i32* %58)
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 9
  %62 = call i32 @ghb_value_free(i32* %61)
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 8
  %65 = call i32 @ghb_value_free(i32* %64)
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 7
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %75

70:                                               ; preds = %53
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 7
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @g_io_channel_unref(i32* %73)
  br label %75

75:                                               ; preds = %70, %53
  %76 = call i32 (...) @ghb_settings_close()
  %77 = call i32 (...) @ghb_resource_free()
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 6
  %80 = load i32*, i32** %79, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %87

82:                                               ; preds = %75
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 6
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @g_object_unref(i32* %85)
  br label %87

87:                                               ; preds = %82, %75
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 5
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @g_object_unref(i32* %90)
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 4
  %94 = load i32*, i32** %93, align 8
  %95 = call i32 @g_object_unref(i32* %94)
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 3
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @g_object_unref(i32* %98)
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 2
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = call i32 @g_free(%struct.TYPE_8__* %102)
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %105, align 8
  %107 = call i32 @g_free(%struct.TYPE_8__* %106)
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %109 = call i32 @g_free(%struct.TYPE_8__* %108)
  %110 = load i32, i32* %6, align 4
  ret i32 %110
}

declare dso_local i32 @ghb_ui_register_resource(...) #1

declare dso_local %struct.TYPE_8__* @g_malloc0(i32) #1

declare dso_local i32 @gtk_application_new(i8*, i32) #1

declare dso_local i32 @g_signal_connect(i32, i8*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @g_application_add_main_option_entries(i32, i32) #1

declare dso_local i32 @G_APPLICATION(i32) #1

declare dso_local i32 @g_application_run(i32, i32, i8**) #1

declare dso_local i32 @ghb_backend_close(...) #1

declare dso_local i32 @g_source_remove(i64) #1

declare dso_local i32 @ghb_value_free(i32*) #1

declare dso_local i32 @g_io_channel_unref(i32*) #1

declare dso_local i32 @ghb_settings_close(...) #1

declare dso_local i32 @ghb_resource_free(...) #1

declare dso_local i32 @g_object_unref(i32*) #1

declare dso_local i32 @g_free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
