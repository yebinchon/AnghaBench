; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_callbacks.c_destination_select_title.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_callbacks.c_destination_select_title.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@G_DIR_SEPARATOR = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @destination_select_title to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destination_select_title(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i8* @ghb_editable_get_text(i32* %6)
  store i8* %7, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i64 @strlen(i8* %8)
  %10 = sub i64 %9, 1
  store i64 %10, i64* %5, align 8
  br label %11

11:                                               ; preds = %23, %1
  %12 = load i64, i64* %5, align 8
  %13 = icmp ugt i64 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %11
  %15 = load i8*, i8** %3, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 46
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %26

22:                                               ; preds = %14
  br label %23

23:                                               ; preds = %22
  %24 = load i64, i64* %5, align 8
  %25 = add i64 %24, -1
  store i64 %25, i64* %5, align 8
  br label %11

26:                                               ; preds = %21, %11
  %27 = load i64, i64* %5, align 8
  store i64 %27, i64* %4, align 8
  br label %28

28:                                               ; preds = %44, %26
  %29 = load i64, i64* %4, align 8
  %30 = icmp uge i64 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %28
  %32 = load i8*, i8** %3, align 8
  %33 = load i64, i64* %4, align 8
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = load i8, i8* @G_DIR_SEPARATOR, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load i64, i64* %4, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %4, align 8
  br label %47

43:                                               ; preds = %31
  br label %44

44:                                               ; preds = %43
  %45 = load i64, i64* %4, align 8
  %46 = add i64 %45, -1
  store i64 %46, i64* %4, align 8
  br label %28

47:                                               ; preds = %40, %28
  %48 = load i64, i64* %4, align 8
  %49 = icmp ult i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i64 0, i64* %4, align 8
  br label %51

51:                                               ; preds = %50, %47
  %52 = load i64, i64* %4, align 8
  %53 = load i64, i64* %5, align 8
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = load i32*, i32** %2, align 8
  %57 = call i32 @GTK_EDITABLE(i32* %56)
  %58 = load i64, i64* %4, align 8
  %59 = load i64, i64* %5, align 8
  %60 = call i32 @gtk_editable_select_region(i32 %57, i64 %58, i64 %59)
  br label %61

61:                                               ; preds = %55, %51
  ret void
}

declare dso_local i8* @ghb_editable_get_text(i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @gtk_editable_select_region(i32, i64, i64) #1

declare dso_local i32 @GTK_EDITABLE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
