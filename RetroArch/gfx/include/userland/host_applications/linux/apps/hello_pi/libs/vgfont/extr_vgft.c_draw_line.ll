; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/libs/vgfont/extr_vgft.c_draw_line.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/libs/vgfont/extr_vgft.c_draw_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VG_GLYPH_ORIGIN = common dso_local global i32 0, align 4
@CHAR_COUNT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i8*, i32, i32)* @draw_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_line(i32* %0, i32 %1, i32 %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [2 x i32], align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %6
  br label %52

19:                                               ; preds = %6
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds i32, i32* %20, i64 1
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %22, align 4
  %24 = load i32, i32* @VG_GLYPH_ORIGIN, align 4
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %26 = call i32 @vgSetfv(i32 %24, i32 2, i32* %25)
  %27 = load i8*, i8** %10, align 8
  store i8* %27, i8** %14, align 8
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* %15, align 4
  br label %29

29:                                               ; preds = %33, %19
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* @CHAR_COUNT_MAX, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %29
  %34 = load i32*, i32** %7, align 8
  %35 = load i8*, i8** %14, align 8
  %36 = load i32, i32* @CHAR_COUNT_MAX, align 4
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @draw_chars(i32* %34, i8* %35, i32 %36, i32 %37, i32 1)
  %39 = load i32, i32* @CHAR_COUNT_MAX, align 4
  %40 = load i32, i32* %15, align 4
  %41 = sub nsw i32 %40, %39
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* @CHAR_COUNT_MAX, align 4
  %43 = load i8*, i8** %14, align 8
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  store i8* %45, i8** %14, align 8
  br label %29

46:                                               ; preds = %29
  %47 = load i32*, i32** %7, align 8
  %48 = load i8*, i8** %14, align 8
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @draw_chars(i32* %47, i8* %48, i32 %49, i32 %50, i32 0)
  br label %52

52:                                               ; preds = %46, %18
  ret void
}

declare dso_local i32 @vgSetfv(i32, i32, i32*) #1

declare dso_local i32 @draw_chars(i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
