; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_colorspace.c_apply_lut.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_colorspace.c_apply_lut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64**, i32, i32, i32, i64*)* @apply_lut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_lut(i64** %0, i32 %1, i32 %2, i32 %3, i64* %4) #0 {
  %6 = alloca i64**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  store i64** %0, i64*** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64* %4, i64** %10, align 8
  store i32 0, i32* %13, align 4
  br label %15

15:                                               ; preds = %60, %5
  %16 = load i32, i32* %13, align 4
  %17 = icmp slt i32 %16, 3
  br i1 %17, label %18, label %63

18:                                               ; preds = %15
  %19 = load i64**, i64*** %6, align 8
  %20 = load i32, i32* %13, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64*, i64** %19, i64 %21
  %23 = load i64*, i64** %22, align 8
  store i64* %23, i64** %14, align 8
  store i32 0, i32* %11, align 4
  br label %24

24:                                               ; preds = %56, %18
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %59

28:                                               ; preds = %24
  store i32 0, i32* %12, align 4
  br label %29

29:                                               ; preds = %48, %28
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %51

33:                                               ; preds = %29
  %34 = load i64*, i64** %10, align 8
  %35 = load i64*, i64** %14, align 8
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 2048, %39
  %41 = call i64 @av_clip_uintp2(i64 %40, i32 15)
  %42 = getelementptr inbounds i64, i64* %34, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = load i64*, i64** %14, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  store i64 %43, i64* %47, align 8
  br label %48

48:                                               ; preds = %33
  %49 = load i32, i32* %12, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %12, align 4
  br label %29

51:                                               ; preds = %29
  %52 = load i32, i32* %7, align 4
  %53 = load i64*, i64** %14, align 8
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  store i64* %55, i64** %14, align 8
  br label %56

56:                                               ; preds = %51
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %11, align 4
  br label %24

59:                                               ; preds = %24
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %13, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %13, align 4
  br label %15

63:                                               ; preds = %15
  ret void
}

declare dso_local i64 @av_clip_uintp2(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
