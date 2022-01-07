; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_subtitle_track_opts_set.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_subtitle_track_opts_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"%d - %s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32*, i8*, i8*)* @subtitle_track_opts_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @subtitle_track_opts_set(%struct.TYPE_6__* %0, i32* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca [4 x i8], align 1
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %9, align 8
  store i64 0, i64* %14, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @GHB_WIDGET(i32 %23, i32* %24)
  %26 = call i32* @GTK_COMBO_BOX(i32 %25)
  store i32* %26, i32** %15, align 8
  %27 = load i32*, i32** %15, align 8
  %28 = call i32 @gtk_combo_box_get_model(i32* %27)
  %29 = call i32* @GTK_LIST_STORE(i32 %28)
  store i32* %29, i32** %11, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = call i32 @gtk_list_store_clear(i32* %30)
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %33 = icmp ne %struct.TYPE_7__* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @hb_list_count(i32 %37)
  store i64 %38, i64* %14, align 8
  br label %39

39:                                               ; preds = %34, %4
  store i64 0, i64* %13, align 8
  br label %40

40:                                               ; preds = %70, %39
  %41 = load i64, i64* %13, align 8
  %42 = load i64, i64* %14, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %73

44:                                               ; preds = %40
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* %13, align 8
  %49 = call %struct.TYPE_8__* @hb_list_item(i32 %47, i64 %48)
  store %struct.TYPE_8__* %49, %struct.TYPE_8__** %12, align 8
  %50 = load i64, i64* %13, align 8
  %51 = add nsw i64 %50, 1
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32* @g_strdup_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %51, i32 %54)
  store i32* %55, i32** %16, align 8
  %56 = getelementptr inbounds [4 x i8], [4 x i8]* %17, i64 0, i64 0
  %57 = load i64, i64* %13, align 8
  %58 = call i32 @snprintf(i8* %56, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 %57)
  %59 = load i32*, i32** %11, align 8
  %60 = call i32 @gtk_list_store_append(i32* %59, i32* %10)
  %61 = load i32*, i32** %11, align 8
  %62 = load i32*, i32** %16, align 8
  %63 = load i32, i32* @TRUE, align 4
  %64 = getelementptr inbounds [4 x i8], [4 x i8]* %17, i64 0, i64 0
  %65 = load i64, i64* %13, align 8
  %66 = sitofp i64 %65 to double
  %67 = call i32 @gtk_list_store_set(i32* %61, i32* %10, i32 0, i32* %62, i32 1, i32 %63, i32 2, i8* %64, i32 3, double %66, i32 -1)
  %68 = load i32*, i32** %16, align 8
  %69 = call i32 @g_free(i32* %68)
  br label %70

70:                                               ; preds = %44
  %71 = load i64, i64* %13, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %13, align 8
  br label %40

73:                                               ; preds = %40
  %74 = load i64, i64* %14, align 8
  %75 = icmp sle i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  %77 = load i32*, i32** %11, align 8
  %78 = call i32 @gtk_list_store_append(i32* %77, i32* %10)
  %79 = load i32*, i32** %11, align 8
  %80 = call i32* @_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %81 = load i32, i32* @TRUE, align 4
  %82 = call i32 @gtk_list_store_set(i32* %79, i32* %10, i32 0, i32* %80, i32 1, i32 %81, i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 3, double 0.000000e+00, i32 -1)
  br label %83

83:                                               ; preds = %76, %73
  %84 = load i32*, i32** %15, align 8
  %85 = call i32 @gtk_combo_box_set_active(i32* %84, i32 0)
  ret void
}

declare dso_local i32* @GTK_COMBO_BOX(i32) #1

declare dso_local i32 @GHB_WIDGET(i32, i32*) #1

declare dso_local i32* @GTK_LIST_STORE(i32) #1

declare dso_local i32 @gtk_combo_box_get_model(i32*) #1

declare dso_local i32 @gtk_list_store_clear(i32*) #1

declare dso_local i64 @hb_list_count(i32) #1

declare dso_local %struct.TYPE_8__* @hb_list_item(i32, i64) #1

declare dso_local i32* @g_strdup_printf(i8*, i64, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

declare dso_local i32 @gtk_list_store_append(i32*, i32*) #1

declare dso_local i32 @gtk_list_store_set(i32*, i32*, i32, i32*, i32, i32, i32, i8*, i32, double, i32) #1

declare dso_local i32 @g_free(i32*) #1

declare dso_local i32* @_(i8*) #1

declare dso_local i32 @gtk_combo_box_set_active(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
