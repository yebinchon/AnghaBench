; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_ghbcompat.h_ghb_get_expand_fill.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_ghbcompat.h_ghb_get_expand_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GTK_ORIENTATION_HORIZONTAL = common dso_local global i64 0, align 8
@GTK_ALIGN_FILL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*)* @ghb_get_expand_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ghb_get_expand_fill(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call i32 @GTK_ORIENTABLE(i32* %9)
  %11 = call i64 @gtk_orientable_get_orientation(i32 %10)
  %12 = load i64, i64* @GTK_ORIENTATION_HORIZONTAL, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %4
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @gtk_widget_get_hexpand(i32* %15)
  %17 = load i32*, i32** %7, align 8
  store i32 %16, i32* %17, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = call i64 @gtk_widget_get_halign(i32* %18)
  %20 = load i64, i64* @GTK_ALIGN_FILL, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = load i32*, i32** %8, align 8
  store i32 %22, i32* %23, align 4
  br label %34

24:                                               ; preds = %4
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @gtk_widget_get_vexpand(i32* %25)
  %27 = load i32*, i32** %7, align 8
  store i32 %26, i32* %27, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = call i64 @gtk_widget_get_valign(i32* %28)
  %30 = load i64, i64* @GTK_ALIGN_FILL, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = load i32*, i32** %8, align 8
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %24, %14
  ret void
}

declare dso_local i64 @gtk_orientable_get_orientation(i32) #1

declare dso_local i32 @GTK_ORIENTABLE(i32*) #1

declare dso_local i32 @gtk_widget_get_hexpand(i32*) #1

declare dso_local i64 @gtk_widget_get_halign(i32*) #1

declare dso_local i32 @gtk_widget_get_vexpand(i32*) #1

declare dso_local i64 @gtk_widget_get_valign(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
