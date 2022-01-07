; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_queuehandler.c_ghb_queue_update_status_icon.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_queuehandler.c_ghb_queue_update_status_icon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"uiSettings\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"job_status\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"hb-start\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"hb-source\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"hb-stop\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"hb-complete\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"queue_list\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"queue_item_status\00", align 1
@GHB_ICON_SIZE_BUTTON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ghb_queue_update_status_icon(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ghb_array_len(i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %2
  br label %73

24:                                               ; preds = %19
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32* @ghb_array_get(i32 %27, i32 %28)
  store i32* %29, i32** %6, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %73

33:                                               ; preds = %24
  %34 = load i32*, i32** %6, align 8
  %35 = call i32* @ghb_dict_get(i32* %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32* %35, i32** %7, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %73

39:                                               ; preds = %33
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @ghb_dict_get_int(i32* %40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  switch i32 %42, label %47 [
    i32 128, label %43
    i32 129, label %44
    i32 130, label %45
    i32 132, label %45
    i32 131, label %46
  ]

43:                                               ; preds = %39
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  br label %48

44:                                               ; preds = %39
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  br label %48

45:                                               ; preds = %39, %39
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  br label %48

46:                                               ; preds = %39
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %48

47:                                               ; preds = %39
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  br label %48

48:                                               ; preds = %47, %46, %45, %44, %43
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @GHB_WIDGET(i32 %51, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %53 = call i32* @GTK_LIST_BOX(i32 %52)
  store i32* %53, i32** %10, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i32* @gtk_list_box_get_row_at_index(i32* %54, i32 %55)
  store i32* %56, i32** %11, align 8
  %57 = load i32*, i32** %11, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %48
  br label %73

60:                                               ; preds = %48
  %61 = load i32*, i32** %11, align 8
  %62 = call i32 @GTK_WIDGET(i32* %61)
  %63 = call i32 @find_widget(i32 %62, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %64 = call i32* @GTK_IMAGE(i32 %63)
  store i32* %64, i32** %12, align 8
  %65 = load i32*, i32** %12, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %73

68:                                               ; preds = %60
  %69 = load i32*, i32** %12, align 8
  %70 = load i8*, i8** %9, align 8
  %71 = load i32, i32* @GHB_ICON_SIZE_BUTTON, align 4
  %72 = call i32 @ghb_image_set_from_icon_name(i32* %69, i8* %70, i32 %71)
  br label %73

73:                                               ; preds = %68, %67, %59, %38, %32, %23
  ret void
}

declare dso_local i32 @ghb_array_len(i32) #1

declare dso_local i32* @ghb_array_get(i32, i32) #1

declare dso_local i32* @ghb_dict_get(i32*, i8*) #1

declare dso_local i32 @ghb_dict_get_int(i32*, i8*) #1

declare dso_local i32* @GTK_LIST_BOX(i32) #1

declare dso_local i32 @GHB_WIDGET(i32, i8*) #1

declare dso_local i32* @gtk_list_box_get_row_at_index(i32*, i32) #1

declare dso_local i32* @GTK_IMAGE(i32) #1

declare dso_local i32 @find_widget(i32, i8*) #1

declare dso_local i32 @GTK_WIDGET(i32*) #1

declare dso_local i32 @ghb_image_set_from_icon_name(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
