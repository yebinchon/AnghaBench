; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_chapters.c_chapter_changed_cb.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_chapters.c_chapter_changed_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*)* @chapter_changed_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chapter_changed_cb(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @GTK_WIDGET(i32* %10)
  %12 = call i32* @list_box_get_row(i32 %11)
  store i32* %12, i32** %5, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %39

16:                                               ; preds = %2
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @gtk_list_box_row_get_index(i32* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = call i8* @ghb_editable_get_text(i32* %19)
  store i8* %20, i8** %6, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %39

24:                                               ; preds = %16
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32* @ghb_get_job_chapter_list(i32 %27)
  store i32* %28, i32** %8, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32* @ghb_array_get(i32* %29, i32 %30)
  store i32* %31, i32** %9, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  br label %39

35:                                               ; preds = %24
  %36 = load i32*, i32** %9, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @ghb_dict_set_string(i32* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %37)
  br label %39

39:                                               ; preds = %35, %34, %23, %15
  ret void
}

declare dso_local i32* @list_box_get_row(i32) #1

declare dso_local i32 @GTK_WIDGET(i32*) #1

declare dso_local i32 @gtk_list_box_row_get_index(i32*) #1

declare dso_local i8* @ghb_editable_get_text(i32*) #1

declare dso_local i32* @ghb_get_job_chapter_list(i32) #1

declare dso_local i32* @ghb_array_get(i32*, i32) #1

declare dso_local i32 @ghb_dict_set_string(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
