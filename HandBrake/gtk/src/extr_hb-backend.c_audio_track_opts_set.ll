; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_audio_track_opts_set.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_audio_track_opts_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"<small>%s</small>\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"No Audio\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"<small>%d - %s</small>\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @audio_track_opts_set(%struct.TYPE_8__* %0, i32* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca [4 x i8], align 1
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %9, align 8
  store i64 0, i64* %14, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @GHB_WIDGET(i32 %23, i32* %24)
  %26 = call i32* @GTK_COMBO_BOX(i32 %25)
  store i32* %26, i32** %16, align 8
  %27 = load i32*, i32** %16, align 8
  %28 = call i32 @gtk_combo_box_get_model(i32* %27)
  %29 = call i32* @GTK_LIST_STORE(i32 %28)
  store i32* %29, i32** %11, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = call i32 @gtk_list_store_clear(i32* %30)
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %33 = icmp ne %struct.TYPE_9__* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @hb_list_count(i32 %37)
  store i64 %38, i64* %14, align 8
  br label %39

39:                                               ; preds = %34, %4
  %40 = load i64, i64* %14, align 8
  %41 = icmp sle i64 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %39
  %43 = call i32 @_(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %44 = sext i32 %43 to i64
  %45 = call i32* (i8*, i64, ...) @g_strdup_printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %44)
  store i32* %45, i32** %15, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = call i32 @gtk_list_store_append(i32* %46, i32* %10)
  %48 = load i32*, i32** %11, align 8
  %49 = load i32*, i32** %15, align 8
  %50 = load i32, i32* @TRUE, align 4
  %51 = call i32 @gtk_list_store_set(i32* %48, i32* %10, i32 0, i32* %49, i32 1, i32 %50, i32 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 3, double -1.000000e+00, i32 -1)
  %52 = load i32*, i32** %15, align 8
  %53 = call i32 @g_free(i32* %52)
  br label %92

54:                                               ; preds = %39
  store i64 0, i64* %13, align 8
  br label %55

55:                                               ; preds = %86, %54
  %56 = load i64, i64* %13, align 8
  %57 = load i64, i64* %14, align 8
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %59, label %89

59:                                               ; preds = %55
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i64, i64* %13, align 8
  %64 = call %struct.TYPE_10__* @hb_list_audio_config_item(i32 %62, i64 %63)
  store %struct.TYPE_10__* %64, %struct.TYPE_10__** %12, align 8
  %65 = load i64, i64* %13, align 8
  %66 = add nsw i64 %65, 1
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32* (i8*, i64, ...) @g_strdup_printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i64 %66, i32 %70)
  store i32* %71, i32** %15, align 8
  %72 = getelementptr inbounds [4 x i8], [4 x i8]* %17, i64 0, i64 0
  %73 = load i64, i64* %13, align 8
  %74 = call i32 @snprintf(i8* %72, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i64 %73)
  %75 = load i32*, i32** %11, align 8
  %76 = call i32 @gtk_list_store_append(i32* %75, i32* %10)
  %77 = load i32*, i32** %11, align 8
  %78 = load i32*, i32** %15, align 8
  %79 = load i32, i32* @TRUE, align 4
  %80 = getelementptr inbounds [4 x i8], [4 x i8]* %17, i64 0, i64 0
  %81 = load i64, i64* %13, align 8
  %82 = sitofp i64 %81 to double
  %83 = call i32 @gtk_list_store_set(i32* %77, i32* %10, i32 0, i32* %78, i32 1, i32 %79, i32 2, i8* %80, i32 3, double %82, i32 -1)
  %84 = load i32*, i32** %15, align 8
  %85 = call i32 @g_free(i32* %84)
  br label %86

86:                                               ; preds = %59
  %87 = load i64, i64* %13, align 8
  %88 = add nsw i64 %87, 1
  store i64 %88, i64* %13, align 8
  br label %55

89:                                               ; preds = %55
  %90 = load i32*, i32** %16, align 8
  %91 = call i32 @gtk_combo_box_set_active(i32* %90, i32 0)
  br label %92

92:                                               ; preds = %89, %42
  ret void
}

declare dso_local i32* @GTK_COMBO_BOX(i32) #1

declare dso_local i32 @GHB_WIDGET(i32, i32*) #1

declare dso_local i32* @GTK_LIST_STORE(i32) #1

declare dso_local i32 @gtk_combo_box_get_model(i32*) #1

declare dso_local i32 @gtk_list_store_clear(i32*) #1

declare dso_local i64 @hb_list_count(i32) #1

declare dso_local i32* @g_strdup_printf(i8*, i64, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @gtk_list_store_append(i32*, i32*) #1

declare dso_local i32 @gtk_list_store_set(i32*, i32*, i32, i32*, i32, i32, i32, i8*, i32, double, i32) #1

declare dso_local i32 @g_free(i32*) #1

declare dso_local %struct.TYPE_10__* @hb_list_audio_config_item(i32, i64) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

declare dso_local i32 @gtk_combo_box_set_active(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
