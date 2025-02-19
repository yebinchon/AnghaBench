; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_blockdsp_msa.c_copy_8bit_value_width16_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_blockdsp_msa.c_copy_8bit_value_width16_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32)* @copy_8bit_value_width16_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_8bit_value_width16_msa(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i64 @__msa_fill_b(i32 %11)
  store i64 %12, i64* %10, align 8
  %13 = load i32, i32* %8, align 4
  %14 = ashr i32 %13, 3
  store i32 %14, i32* %9, align 4
  br label %15

15:                                               ; preds = %19, %4
  %16 = load i32, i32* %9, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %9, align 4
  %18 = icmp ne i32 %16, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %15
  %20 = load i64, i64* %10, align 8
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* %10, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @ST_UB8(i64 %20, i64 %21, i64 %22, i64 %23, i64 %24, i64 %25, i64 %26, i64 %27, i32* %28, i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = mul nsw i32 8, %31
  %33 = load i32*, i32** %5, align 8
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  store i32* %35, i32** %5, align 8
  br label %15

36:                                               ; preds = %15
  ret void
}

declare dso_local i64 @__msa_fill_b(i32) #1

declare dso_local i32 @ST_UB8(i64, i64, i64, i64, i64, i64, i64, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
