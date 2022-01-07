; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_emu.c_emu_osd_text16.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_emu.c_emu_osd_text16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_screen_width = common dso_local global i32 0, align 4
@g_screen_ptr = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emu_osd_text16(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i16*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @strlen(i8* %11)
  %13 = mul nsw i32 %12, 8
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 %16, %17
  %19 = load i32, i32* @g_screen_width, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load i32, i32* @g_screen_width, align 4
  %23 = load i32, i32* %4, align 4
  %24 = sub nsw i32 %22, %23
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %21, %3
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %60, %25
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 8
  br i1 %28, label %29, label %63

29:                                               ; preds = %26
  %30 = load i64, i64* @g_screen_ptr, align 8
  %31 = inttoptr i64 %30 to i16*
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i16, i16* %31, i64 %33
  %35 = load i32, i32* @g_screen_width, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %36, %37
  %39 = mul nsw i32 %35, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i16, i16* %34, i64 %40
  store i16* %41, i16** %10, align 8
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %54, %29
  %44 = load i32, i32* %8, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %43
  %47 = load i16*, i16** %10, align 8
  %48 = load i16, i16* %47, align 2
  %49 = zext i16 %48 to i32
  %50 = ashr i32 %49, 2
  %51 = and i32 %50, 14823
  %52 = trunc i32 %51 to i16
  %53 = load i16*, i16** %10, align 8
  store i16 %52, i16* %53, align 2
  br label %54

54:                                               ; preds = %46
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %8, align 4
  %57 = load i16*, i16** %10, align 8
  %58 = getelementptr inbounds i16, i16* %57, i32 1
  store i16* %58, i16** %10, align 8
  br label %43

59:                                               ; preds = %43
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  br label %26

63:                                               ; preds = %26
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 @emu_text_out16(i32 %64, i32 %65, i8* %66)
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @emu_text_out16(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
