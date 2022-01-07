; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_chapters.c_chapter_refresh_list_ui.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_chapters.c_chapter_refresh_list_ui.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"chapters_list\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Duration\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Ticks\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @chapter_refresh_list_ui to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chapter_refresh_list_ui(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @GHB_WIDGET(i32 %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %17 = call i32* @GTK_LIST_BOX(i32 %16)
  store i32* %17, i32** %4, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32* @ghb_get_job_chapter_list(i32 %20)
  store i32* %21, i32** %3, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = call i64 @ghb_array_len(i32* %22)
  store i64 %23, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %24

24:                                               ; preds = %52, %1
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %55

28:                                               ; preds = %24
  store i32 0, i32* %11, align 4
  %29 = load i32*, i32** %3, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i32* @ghb_array_get(i32* %29, i64 %30)
  store i32* %31, i32** %8, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = call i8* @ghb_dict_get_string(i32* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %33, i8** %10, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = call i32* @ghb_dict_get(i32* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32* %35, i32** %9, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = call i32 @ghb_dict_get_int(i32* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %38 = sdiv i32 %37, 90000
  store i32 %38, i32* %12, align 4
  %39 = load i64, i64* %6, align 8
  %40 = add nsw i64 %39, 1
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i8*, i8** %10, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %45 = call i32* @create_chapter_row(i64 %40, i32 %41, i32 %42, i8* %43, %struct.TYPE_4__* %44)
  store i32* %45, i32** %5, align 8
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* %11, align 4
  %49 = load i32*, i32** %4, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @gtk_list_box_insert(i32* %49, i32* %50, i32 -1)
  br label %52

52:                                               ; preds = %28
  %53 = load i64, i64* %6, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %6, align 8
  br label %24

55:                                               ; preds = %24
  ret void
}

declare dso_local i32* @GTK_LIST_BOX(i32) #1

declare dso_local i32 @GHB_WIDGET(i32, i8*) #1

declare dso_local i32* @ghb_get_job_chapter_list(i32) #1

declare dso_local i64 @ghb_array_len(i32*) #1

declare dso_local i32* @ghb_array_get(i32*, i64) #1

declare dso_local i8* @ghb_dict_get_string(i32*, i8*) #1

declare dso_local i32* @ghb_dict_get(i32*, i8*) #1

declare dso_local i32 @ghb_dict_get_int(i32*, i8*) #1

declare dso_local i32* @create_chapter_row(i64, i32, i32, i8*, %struct.TYPE_4__*) #1

declare dso_local i32 @gtk_list_box_insert(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
