; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuiinputentry.c_yui_input_entry_update.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuiinputentry.c_yui_input_entry_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 (i64, i8*, i32)*, i32 }
%struct.TYPE_9__ = type { i8*, i32 }
%struct.TYPE_10__ = type { i32* }

@.str = private unnamed_addr constant [9 x i8] c"GtkEntry\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"GtkLabel\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%s.%s.1\00", align 1
@PERCore = common dso_local global %struct.TYPE_11__* null, align 8
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @yui_input_entry_update(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [100 x i8], align 16
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %8 = call i32 @GTK_CONTAINER(%struct.TYPE_9__* %7)
  %9 = call %struct.TYPE_10__* @gtk_container_get_children(i32 %8)
  store %struct.TYPE_10__* %9, %struct.TYPE_10__** %3, align 8
  store i32* null, i32** %5, align 8
  br label %10

10:                                               ; preds = %65, %1
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %12 = icmp ne %struct.TYPE_10__* %11, null
  br i1 %12, label %13, label %68

13:                                               ; preds = %10
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @gtk_widget_get_name(i32* %16)
  %18 = call i64 @strcmp(i32 %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %5, align 8
  br label %24

24:                                               ; preds = %20, %13
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @gtk_widget_get_name(i32* %27)
  %29 = call i64 @strcmp(i32 %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %65

31:                                               ; preds = %24
  %32 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = call i8* @gtk_label_get_text(i32* %38)
  %40 = call i32 @sprintf(i8* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %35, i8* %39)
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** @PERCore, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %48 = call i64 @g_key_file_get_integer(i32 %43, i32 %46, i8* %47, i32 0)
  store i64 %48, i64* %4, align 8
  %49 = load i64, i64* %4, align 8
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %31
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** @PERCore, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i32 (i64, i8*, i32)*, i32 (i64, i8*, i32)** %53, align 8
  %55 = load i64, i64* %4, align 8
  %56 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %57 = call i32 %54(i64 %55, i8* %56, i32 100)
  %58 = load i32*, i32** %5, align 8
  %59 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %60 = call i32 @gtk_entry_set_text(i32* %58, i8* %59)
  br label %64

61:                                               ; preds = %31
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @gtk_entry_set_text(i32* %62, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  br label %64

64:                                               ; preds = %61, %51
  br label %65

65:                                               ; preds = %64, %24
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %67 = call %struct.TYPE_10__* @g_list_next(%struct.TYPE_10__* %66)
  store %struct.TYPE_10__* %67, %struct.TYPE_10__** %3, align 8
  br label %10

68:                                               ; preds = %10
  ret void
}

declare dso_local %struct.TYPE_10__* @gtk_container_get_children(i32) #1

declare dso_local i32 @GTK_CONTAINER(%struct.TYPE_9__*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @gtk_widget_get_name(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i8* @gtk_label_get_text(i32*) #1

declare dso_local i64 @g_key_file_get_integer(i32, i32, i8*, i32) #1

declare dso_local i32 @gtk_entry_set_text(i32*, i8*) #1

declare dso_local %struct.TYPE_10__* @g_list_next(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
