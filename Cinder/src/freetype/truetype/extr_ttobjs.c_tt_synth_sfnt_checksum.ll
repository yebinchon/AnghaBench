; ModuleID = '/home/carl/AnghaBench/Cinder/src/freetype/truetype/extr_ttobjs.c_tt_synth_sfnt_checksum.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/freetype/truetype/extr_ttobjs.c_tt_synth_sfnt_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @tt_synth_sfnt_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tt_synth_sfnt_checksum(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i64 @FT_FRAME_ENTER(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %45

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %22, %13
  %15 = load i32, i32* %5, align 4
  %16 = icmp sgt i32 %15, 3
  br i1 %16, label %17, label %25

17:                                               ; preds = %14
  %18 = call i64 (...) @FT_GET_ULONG()
  %19 = trunc i64 %18 to i32
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %20, %19
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %17
  %23 = load i32, i32* %5, align 4
  %24 = sub nsw i32 %23, 4
  store i32 %24, i32* %5, align 4
  br label %14

25:                                               ; preds = %14
  store i32 3, i32* %8, align 4
  br label %26

26:                                               ; preds = %37, %25
  %27 = load i32, i32* %5, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %26
  %30 = call i64 (...) @FT_GET_BYTE()
  %31 = trunc i64 %30 to i32
  %32 = load i32, i32* %8, align 4
  %33 = mul nsw i32 %32, 8
  %34 = shl i32 %31, %33
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, %34
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %29
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %8, align 4
  br label %26

42:                                               ; preds = %26
  %43 = call i32 (...) @FT_FRAME_EXIT()
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %42, %12
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i64 @FT_FRAME_ENTER(i32) #1

declare dso_local i64 @FT_GET_ULONG(...) #1

declare dso_local i64 @FT_GET_BYTE(...) #1

declare dso_local i32 @FT_FRAME_EXIT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
