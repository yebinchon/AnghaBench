; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gizmondo/extr_menu.c_draw_menu_tray.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gizmondo/extr_menu.c_draw_menu_tray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"The unit is about to\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"close the CD tray.\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Load new CD image\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Insert nothing\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c">\00", align 1
@menuErrorMsg = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @draw_menu_tray to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_menu_tray(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 70, i32* %3, align 4
  store i32 90, i32* %4, align 4
  %6 = call i32 @menu_draw_begin(i32 1)
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @text_out16(i32 %7, i32 20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @text_out16(i32 %9, i32 30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @text_out16(i32 %12, i32 %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %16, 10
  store i32 %17, i32* %5, align 4
  %18 = call i32 @text_out16(i32 %15, i32 %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %19 = load i32, i32* %3, align 4
  %20 = sub nsw i32 %19, 16
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %2, align 4
  %23 = mul nsw i32 %22, 10
  %24 = add nsw i32 %21, %23
  %25 = call i32 @text_out16(i32 %20, i32 %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %26 = load i8*, i8** @menuErrorMsg, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = icmp ne i8 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %1
  %31 = load i8*, i8** @menuErrorMsg, align 8
  %32 = call i32 @text_out16(i32 5, i32 226, i8* %31)
  br label %33

33:                                               ; preds = %30, %1
  %34 = call i32 (...) @menu_draw_end()
  ret void
}

declare dso_local i32 @menu_draw_begin(i32) #1

declare dso_local i32 @text_out16(i32, i32, i8*) #1

declare dso_local i32 @menu_draw_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
