; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_callbacks.c_prune_logs.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_callbacks.c_prune_logs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"LogLongevity\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"EncodeLogs\00", align 1
@G_FILE_TEST_IS_DIR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @prune_logs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prune_logs(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.stat, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ghb_settings_combo_int(i32 %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp sgt i32 %15, 365
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %65

18:                                               ; preds = %1
  %19 = call i32* @ghb_get_user_config_dir(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32* %19, i32** %3, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* @G_FILE_TEST_IS_DIR, align 4
  %22 = call i64 @g_file_test(i32* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %60

24:                                               ; preds = %18
  %25 = load i32, i32* %4, align 4
  %26 = mul nsw i32 %25, 24
  %27 = mul nsw i32 %26, 60
  %28 = mul nsw i32 %27, 60
  store i32 %28, i32* %6, align 4
  %29 = load i32*, i32** %3, align 8
  %30 = call i32* @g_dir_open(i32* %29, i32 0, i32* null)
  store i32* %30, i32** %7, align 8
  %31 = call i32 @time(i32* null)
  store i32 %31, i32* %8, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = call i32* @g_dir_read_name(i32* %32)
  store i32* %33, i32** %5, align 8
  br label %34

34:                                               ; preds = %52, %24
  %35 = load i32*, i32** %5, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %57

37:                                               ; preds = %34
  %38 = load i32*, i32** %3, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = call i32* @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %38, i32* %39)
  store i32* %40, i32** %9, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = call i32 @g_stat(i32* %41, %struct.stat* %10)
  %43 = load i32, i32* %8, align 4
  %44 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %43, %45
  %47 = load i32, i32* %6, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %37
  %50 = load i32*, i32** %9, align 8
  %51 = call i32 @g_unlink(i32* %50)
  br label %52

52:                                               ; preds = %49, %37
  %53 = load i32*, i32** %9, align 8
  %54 = call i32 @g_free(i32* %53)
  %55 = load i32*, i32** %7, align 8
  %56 = call i32* @g_dir_read_name(i32* %55)
  store i32* %56, i32** %5, align 8
  br label %34

57:                                               ; preds = %34
  %58 = load i32*, i32** %7, align 8
  %59 = call i32 @g_dir_close(i32* %58)
  br label %60

60:                                               ; preds = %57, %18
  %61 = load i32*, i32** %3, align 8
  %62 = call i32 @g_free(i32* %61)
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %64 = call i32 @ghb_preview_cleanup(%struct.TYPE_4__* %63)
  br label %65

65:                                               ; preds = %60, %17
  ret void
}

declare dso_local i32 @ghb_settings_combo_int(i32, i8*) #1

declare dso_local i32* @ghb_get_user_config_dir(i8*) #1

declare dso_local i64 @g_file_test(i32*, i32) #1

declare dso_local i32* @g_dir_open(i32*, i32, i32*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32* @g_dir_read_name(i32*) #1

declare dso_local i32* @g_strdup_printf(i8*, i32*, i32*) #1

declare dso_local i32 @g_stat(i32*, %struct.stat*) #1

declare dso_local i32 @g_unlink(i32*) #1

declare dso_local i32 @g_free(i32*) #1

declare dso_local i32 @g_dir_close(i32*) #1

declare dso_local i32 @ghb_preview_cleanup(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
