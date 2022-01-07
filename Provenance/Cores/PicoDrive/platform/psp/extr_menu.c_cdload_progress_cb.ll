; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_menu.c_cdload_progress_cb.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_menu.c_cdload_progress_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lcdr_line = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Processing CD image / MP3s\00", align 1
@romFileName = common dso_local global i32 0, align 4
@menu_screen = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @cdload_progress_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdload_progress_cb(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i16*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = mul nsw i32 %6, 480
  %8 = sdiv i32 %7, 100
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @lcdr_line, align 4
  %10 = icmp sle i32 %9, 2
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = load i32, i32* @lcdr_line, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* @lcdr_line, align 4
  %14 = load i32, i32* @lcdr_line, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* @lcdr_line, align 4
  %16 = mul nsw i32 %14, 10
  %17 = call i32 @smalltext_out16(i32 1, i32 %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 65535)
  %18 = load i32, i32* @lcdr_line, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* @lcdr_line, align 4
  %20 = mul nsw i32 %18, 10
  %21 = load i32, i32* @romFileName, align 4
  %22 = call i32 @smalltext_out16_lim(i32 1, i32 %20, i32 %21, i32 65535, i32 80)
  br label %23

23:                                               ; preds = %11, %1
  %24 = load i64, i64* @menu_screen, align 8
  %25 = inttoptr i64 %24 to i16*
  %26 = load i32, i32* @lcdr_line, align 4
  %27 = mul nsw i32 5120, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i16, i16* %25, i64 %28
  store i16* %29, i16** %5, align 8
  %30 = load i32, i32* %4, align 4
  %31 = icmp sgt i32 %30, 480
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  store i32 480, i32* %4, align 4
  br label %33

33:                                               ; preds = %32, %23
  store i32 8, i32* %3, align 4
  br label %34

34:                                               ; preds = %42, %33
  %35 = load i32, i32* %3, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %34
  %38 = load i16*, i16** %5, align 8
  %39 = load i32, i32* %4, align 4
  %40 = mul nsw i32 %39, 2
  %41 = call i32 @memset(i16* %38, i32 255, i32 %40)
  br label %42

42:                                               ; preds = %37
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %3, align 4
  %45 = load i16*, i16** %5, align 8
  %46 = getelementptr inbounds i16, i16* %45, i64 512
  store i16* %46, i16** %5, align 8
  br label %34

47:                                               ; preds = %34
  ret void
}

declare dso_local i32 @smalltext_out16(i32, i32, i8*, i32) #1

declare dso_local i32 @smalltext_out16_lim(i32, i32, i32, i32, i32) #1

declare dso_local i32 @memset(i16*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
