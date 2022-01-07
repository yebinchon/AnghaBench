; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_emu.c_osd_text8.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_emu.c_osd_text8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_screen_width = common dso_local global i32 0, align 4
@g_screen_ptr = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*)* @osd_text8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @osd_text8(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @strlen(i8* %12)
  %14 = mul nsw i32 %13, 8
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = add nsw i32 %15, 3
  %17 = ashr i32 %16, 2
  store i32 %17, i32* %7, align 4
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %48, %3
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %19, 8
  br i1 %20, label %21, label %51

21:                                               ; preds = %18
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @g_screen_width, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %10, align 4
  %26 = add nsw i32 %24, %25
  %27 = mul nsw i32 %23, %26
  %28 = add nsw i32 %22, %27
  %29 = and i32 %28, -4
  store i32 %29, i32* %11, align 4
  %30 = load i64, i64* @g_screen_ptr, align 8
  %31 = inttoptr i64 %30 to i8*
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = bitcast i8* %34 to i32*
  store i32* %35, i32** %8, align 8
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %42, %21
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i32*, i32** %8, align 8
  store i32 -522133280, i32* %41, align 4
  br label %42

42:                                               ; preds = %40
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %9, align 4
  %45 = load i32*, i32** %8, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %8, align 8
  br label %37

47:                                               ; preds = %37
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %10, align 4
  br label %18

51:                                               ; preds = %18
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i8*, i8** %6, align 8
  %55 = call i32 @emu_text_out8(i32 %52, i32 %53, i8* %54)
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @emu_text_out8(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
