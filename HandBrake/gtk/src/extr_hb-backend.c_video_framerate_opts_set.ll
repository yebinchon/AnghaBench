; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_video_framerate_opts_set.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_video_framerate_opts_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i8*, i64 }

@.str = private unnamed_addr constant [15 x i8] c"Same as source\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"23.976\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"(NTSC Film)\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"25\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"(PAL Film/Video)\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"29.97\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"(NTSC Video)\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i8*, i8*, i8*)* @video_framerate_opts_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @video_framerate_opts_set(%struct.TYPE_6__* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @GHB_WIDGET(i32 %19, i8* %20)
  %22 = call i32* @GTK_COMBO_BOX(i32 %21)
  store i32* %22, i32** %11, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = call i32 @gtk_combo_box_get_model(i32* %23)
  %25 = call i32* @GTK_LIST_STORE(i32 %24)
  store i32* %25, i32** %10, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = call i32 @gtk_list_store_clear(i32* %26)
  %28 = load i32*, i32** %10, align 8
  %29 = call i32 @gtk_list_store_append(i32* %28, i32* %9)
  %30 = load i32*, i32** %10, align 8
  %31 = call i8* @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @TRUE, align 4
  %33 = call i32 @gtk_list_store_set(i32* %30, i32* %9, i32 0, i8* %31, i32 1, i32 %32, i32 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 3, double 0.000000e+00, i32 -1)
  %34 = call %struct.TYPE_7__* @hb_video_framerate_get_next(%struct.TYPE_7__* null)
  store %struct.TYPE_7__* %34, %struct.TYPE_7__** %12, align 8
  br label %35

35:                                               ; preds = %85, %4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %37 = icmp ne %struct.TYPE_7__* %36, null
  br i1 %37, label %38, label %88

38:                                               ; preds = %35
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** %13, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i64 @strcmp(i8* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = call i8* @_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  store i8* %45, i8** %13, align 8
  br label %64

46:                                               ; preds = %38
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i64 @strcmp(i8* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = call i8* @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  store i8* %53, i8** %13, align 8
  br label %63

54:                                               ; preds = %46
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i64 @strcmp(i8* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = call i8* @_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  store i8* %61, i8** %13, align 8
  br label %62

62:                                               ; preds = %60, %54
  br label %63

63:                                               ; preds = %62, %52
  br label %64

64:                                               ; preds = %63, %44
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = load i8*, i8** %13, align 8
  %69 = call i8* @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* %67, i8* %68)
  store i8* %69, i8** %14, align 8
  %70 = load i32*, i32** %10, align 8
  %71 = call i32 @gtk_list_store_append(i32* %70, i32* %9)
  %72 = load i32*, i32** %10, align 8
  %73 = load i8*, i8** %14, align 8
  %74 = load i32, i32* @TRUE, align 4
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = sitofp i64 %80 to double
  %82 = call i32 @gtk_list_store_set(i32* %72, i32* %9, i32 0, i8* %73, i32 1, i32 %74, i32 2, i8* %77, i32 3, double %81, i32 -1)
  %83 = load i8*, i8** %14, align 8
  %84 = call i32 @g_free(i8* %83)
  br label %85

85:                                               ; preds = %64
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %87 = call %struct.TYPE_7__* @hb_video_framerate_get_next(%struct.TYPE_7__* %86)
  store %struct.TYPE_7__* %87, %struct.TYPE_7__** %12, align 8
  br label %35

88:                                               ; preds = %35
  ret void
}

declare dso_local i32* @GTK_COMBO_BOX(i32) #1

declare dso_local i32 @GHB_WIDGET(i32, i8*) #1

declare dso_local i32* @GTK_LIST_STORE(i32) #1

declare dso_local i32 @gtk_combo_box_get_model(i32*) #1

declare dso_local i32 @gtk_list_store_clear(i32*) #1

declare dso_local i32 @gtk_list_store_append(i32*, i32*) #1

declare dso_local i32 @gtk_list_store_set(i32*, i32*, i32, i8*, i32, i32, i32, i8*, i32, double, i32) #1

declare dso_local i8* @_(i8*) #1

declare dso_local %struct.TYPE_7__* @hb_video_framerate_get_next(%struct.TYPE_7__*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @g_strdup_printf(i8*, i8*, i8*) #1

declare dso_local i32 @g_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
