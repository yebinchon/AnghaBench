; ModuleID = '/home/carl/AnghaBench/esp-idf/tools/kconfig/lxdialog/extr_util.c_print_title.c'
source_filename = "/home/carl/AnghaBench/esp-idf/tools/kconfig/lxdialog/extr_util.c_print_title.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@dlg = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_title(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %36

10:                                               ; preds = %3
  %11 = load i32, i32* %6, align 4
  %12 = sub nsw i32 %11, 2
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @strlen(i8* %13)
  %15 = call i32 @MIN(i32 %12, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dlg, i32 0, i32 0, i32 0), align 4
  %18 = call i32 @wattrset(i32* %16, i32 %17)
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = sub nsw i32 %20, %21
  %23 = sdiv i32 %22, 2
  %24 = sub nsw i32 %23, 1
  %25 = call i32 @mvwaddch(i32* %19, i32 0, i32 %24, i8 signext 32)
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = sub nsw i32 %27, %28
  %30 = sdiv i32 %29, 2
  %31 = load i8*, i8** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @mvwaddnstr(i32* %26, i32 0, i32 %30, i8* %31, i32 %32)
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @waddch(i32* %34, i8 signext 32)
  br label %36

36:                                               ; preds = %10, %3
  ret void
}

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @wattrset(i32*, i32) #1

declare dso_local i32 @mvwaddch(i32*, i32, i32, i8 signext) #1

declare dso_local i32 @mvwaddnstr(i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @waddch(i32*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
