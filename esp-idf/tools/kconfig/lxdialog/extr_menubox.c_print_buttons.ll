; ModuleID = '/home/carl/AnghaBench/esp-idf/tools/kconfig/lxdialog/extr_menubox.c_print_buttons.c'
source_filename = "/home/carl/AnghaBench/esp-idf/tools/kconfig/lxdialog/extr_menubox.c_print_buttons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"Select\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c" Exit \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c" Help \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c" Save \00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c" Load \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32)* @print_buttons to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_buttons(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = sdiv i32 %11, 2
  %13 = sub nsw i32 %12, 28
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %6, align 4
  %15 = sub nsw i32 %14, 2
  store i32 %15, i32* %10, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @print_button(i32* %16, i32 %17, i32 %18, i32 %19, i32 %22)
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %27, 12
  %29 = load i32, i32* %8, align 4
  %30 = icmp eq i32 %29, 1
  %31 = zext i1 %30 to i32
  %32 = call i32 @print_button(i32* %24, i32 %25, i32 %26, i32 %28, i32 %31)
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 24
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i32
  %41 = call i32 @print_button(i32* %33, i32 %34, i32 %35, i32 %37, i32 %40)
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 36
  %47 = load i32, i32* %8, align 4
  %48 = icmp eq i32 %47, 3
  %49 = zext i1 %48 to i32
  %50 = call i32 @print_button(i32* %42, i32 %43, i32 %44, i32 %46, i32 %49)
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 48
  %56 = load i32, i32* %8, align 4
  %57 = icmp eq i32 %56, 4
  %58 = zext i1 %57 to i32
  %59 = call i32 @print_button(i32* %51, i32 %52, i32 %53, i32 %55, i32 %58)
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  %64 = load i32, i32* %8, align 4
  %65 = mul nsw i32 12, %64
  %66 = add nsw i32 %63, %65
  %67 = call i32 @wmove(i32* %60, i32 %61, i32 %66)
  %68 = load i32*, i32** %5, align 8
  %69 = call i32 @wrefresh(i32* %68)
  ret void
}

declare dso_local i32 @print_button(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @gettext(i8*) #1

declare dso_local i32 @wmove(i32*, i32, i32) #1

declare dso_local i32 @wrefresh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
