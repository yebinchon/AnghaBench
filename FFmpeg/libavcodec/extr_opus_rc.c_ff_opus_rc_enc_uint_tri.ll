; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opus_rc.c_ff_opus_rc_enc_uint_tri.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opus_rc.c_ff_opus_rc_enc_uint_tri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_opus_rc_enc_uint_tri(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = ashr i32 %10, 1
  %12 = add nsw i32 %11, 1
  %13 = load i32, i32* %6, align 4
  %14 = ashr i32 %13, 1
  %15 = add nsw i32 %14, 1
  %16 = mul nsw i32 %12, %15
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = ashr i32 %18, 1
  %20 = icmp sle i32 %17, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %3
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  %25 = mul nsw i32 %22, %24
  %26 = ashr i32 %25, 1
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %7, align 4
  br label %46

29:                                               ; preds = %3
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  %33 = load i32, i32* %5, align 4
  %34 = sub nsw i32 %32, %33
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 2
  %37 = load i32, i32* %5, align 4
  %38 = sub nsw i32 %36, %37
  %39 = mul nsw i32 %34, %38
  %40 = ashr i32 %39, 1
  %41 = sub nsw i32 %30, %40
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  %44 = load i32, i32* %5, align 4
  %45 = sub nsw i32 %43, %44
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %29, %21
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %49, %50
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @opus_rc_enc_update(i32* %47, i32 %48, i32 %51, i32 %52, i32 0)
  ret void
}

declare dso_local i32 @opus_rc_enc_update(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
