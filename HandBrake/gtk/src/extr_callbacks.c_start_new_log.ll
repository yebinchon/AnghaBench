; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_callbacks.c_start_new_log.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_callbacks.c_start_new_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.tm = type { i32, i32, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"destination\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"EncodeLogLocation\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"EncodeLogs\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"%s/%s %d-%02d-%02d %02d-%02d-%02d.log\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"Handbrake Version: %s (%d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"ActivityFilename\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32*)* @start_new_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_new_log(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tm*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = call i32 @ghb_queue_select_log(%struct.TYPE_4__* %13)
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @gtk_text_buffer_set_text(i32 %17, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0)
  %19 = call i32 @time(i32* null)
  store i32 %19, i32* %5, align 4
  %20 = call %struct.tm* @localtime(i32* %5)
  store %struct.tm* %20, %struct.tm** %6, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i64* @ghb_dict_get_string(i32* %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i64* %22, i64** %11, align 8
  %23 = load i64*, i64** %11, align 8
  %24 = call i64* @g_path_get_basename(i64* %23)
  store i64* %24, i64** %9, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @ghb_dict_get_bool(i32 %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = load i64*, i64** %11, align 8
  %32 = call i64* @g_path_get_dirname(i64* %31)
  store i64* %32, i64** %10, align 8
  br label %35

33:                                               ; preds = %2
  %34 = call i64* @ghb_get_user_config_dir(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store i64* %34, i64** %10, align 8
  br label %35

35:                                               ; preds = %33, %30
  %36 = load i64*, i64** %9, align 8
  %37 = call i64* @g_strrstr(i64* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i64* %37, i64** %8, align 8
  %38 = load i64*, i64** %8, align 8
  %39 = icmp ne i64* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i64*, i64** %8, align 8
  store i64 0, i64* %41, align 8
  br label %42

42:                                               ; preds = %40, %35
  %43 = load i64*, i64** %10, align 8
  %44 = ptrtoint i64* %43 to i32
  %45 = load i64*, i64** %9, align 8
  %46 = ptrtoint i64* %45 to i32
  %47 = load %struct.tm*, %struct.tm** %6, align 8
  %48 = getelementptr inbounds %struct.tm, %struct.tm* %47, i32 0, i32 5
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 1900
  %51 = load %struct.tm*, %struct.tm** %6, align 8
  %52 = getelementptr inbounds %struct.tm, %struct.tm* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, 1
  %55 = load %struct.tm*, %struct.tm** %6, align 8
  %56 = getelementptr inbounds %struct.tm, %struct.tm* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.tm*, %struct.tm** %6, align 8
  %59 = getelementptr inbounds %struct.tm, %struct.tm* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.tm*, %struct.tm** %6, align 8
  %62 = getelementptr inbounds %struct.tm, %struct.tm* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.tm*, %struct.tm** %6, align 8
  %65 = getelementptr inbounds %struct.tm, %struct.tm* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i64* (i8*, i32, i32, ...) @g_strdup_printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %44, i32 %46, i64 %50, i64 %54, i32 %57, i32 %60, i32 %63, i32 %66)
  store i64* %67, i64** %7, align 8
  %68 = load i64*, i64** %9, align 8
  %69 = call i32 @g_free(i64* %68)
  %70 = load i64*, i64** %10, align 8
  %71 = call i32 @g_free(i64* %70)
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %42
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @g_io_channel_unref(i64 %79)
  br label %81

81:                                               ; preds = %76, %42
  %82 = load i64*, i64** %7, align 8
  %83 = call i64 @g_io_channel_new_file(i64* %82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32* null)
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %104

90:                                               ; preds = %81
  %91 = call i32 @hb_get_version(i32* null)
  %92 = call i32 @hb_get_build(i32* null)
  %93 = call i64* (i8*, i32, i32, ...) @g_strdup_printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %91, i32 %92)
  store i64* %93, i64** %12, align 8
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64*, i64** %12, align 8
  %98 = call i32 @g_io_channel_write_chars(i64 %96, i64* %97, i32 -1, i32* null, i32* null)
  %99 = load i64*, i64** %12, align 8
  %100 = call i32 @g_free(i64* %99)
  %101 = load i32*, i32** %4, align 8
  %102 = load i64*, i64** %7, align 8
  %103 = call i32 @ghb_dict_set_string(i32* %101, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i64* %102)
  br label %104

104:                                              ; preds = %90, %81
  %105 = load i64*, i64** %7, align 8
  %106 = call i32 @g_free(i64* %105)
  ret void
}

declare dso_local i32 @ghb_queue_select_log(%struct.TYPE_4__*) #1

declare dso_local i32 @gtk_text_buffer_set_text(i32, i8*, i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local %struct.tm* @localtime(i32*) #1

declare dso_local i64* @ghb_dict_get_string(i32*, i8*) #1

declare dso_local i64* @g_path_get_basename(i64*) #1

declare dso_local i64 @ghb_dict_get_bool(i32, i8*) #1

declare dso_local i64* @g_path_get_dirname(i64*) #1

declare dso_local i64* @ghb_get_user_config_dir(i8*) #1

declare dso_local i64* @g_strrstr(i64*, i8*) #1

declare dso_local i64* @g_strdup_printf(i8*, i32, i32, ...) #1

declare dso_local i32 @g_free(i64*) #1

declare dso_local i32 @g_io_channel_unref(i64) #1

declare dso_local i64 @g_io_channel_new_file(i64*, i8*, i32*) #1

declare dso_local i32 @hb_get_version(i32*) #1

declare dso_local i32 @hb_get_build(i32*) #1

declare dso_local i32 @g_io_channel_write_chars(i64, i64*, i32, i32*, i32*) #1

declare dso_local i32 @ghb_dict_set_string(i32*, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
