; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hpeldsp_msa.c_common_vt_bil_4w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hpeldsp_msa.c_common_vt_bil_4w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32)* @common_vt_bil_4w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_vt_bil_4w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = call i64 @LD_UB(i32* %19)
  store i64 %20, i64* %14, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  store i32* %24, i32** %6, align 8
  %25 = load i32, i32* %10, align 4
  %26 = ashr i32 %25, 1
  store i32 %26, i32* %11, align 4
  br label %27

27:                                               ; preds = %31, %5
  %28 = load i32, i32* %11, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %11, align 4
  %30 = icmp ne i32 %28, 0
  br i1 %30, label %31, label %70

31:                                               ; preds = %27
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i64, i64* %15, align 8
  %35 = load i64, i64* %16, align 8
  %36 = call i32 @LD_UB2(i32* %32, i32 %33, i64 %34, i64 %35)
  %37 = load i32, i32* %7, align 4
  %38 = mul nsw i32 2, %37
  %39 = load i32*, i32** %6, align 8
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  store i32* %41, i32** %6, align 8
  %42 = load i64, i64* %14, align 8
  %43 = load i64, i64* %15, align 8
  %44 = load i64, i64* %15, align 8
  %45 = load i64, i64* %16, align 8
  %46 = load i64, i64* %17, align 8
  %47 = load i64, i64* %18, align 8
  %48 = call i32 @AVER_UB2_UB(i64 %42, i64 %43, i64 %44, i64 %45, i64 %46, i64 %47)
  %49 = load i64, i64* %17, align 8
  %50 = trunc i64 %49 to i32
  %51 = call i32 @__msa_copy_u_w(i32 %50, i32 0)
  store i32 %51, i32* %12, align 4
  %52 = load i64, i64* %18, align 8
  %53 = trunc i64 %52 to i32
  %54 = call i32 @__msa_copy_u_w(i32 %53, i32 0)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load i32*, i32** %8, align 8
  %57 = call i32 @SW(i32 %55, i32* %56)
  %58 = load i32, i32* %9, align 4
  %59 = load i32*, i32** %8, align 8
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  store i32* %61, i32** %8, align 8
  %62 = load i32, i32* %13, align 4
  %63 = load i32*, i32** %8, align 8
  %64 = call i32 @SW(i32 %62, i32* %63)
  %65 = load i32, i32* %9, align 4
  %66 = load i32*, i32** %8, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  store i32* %68, i32** %8, align 8
  %69 = load i64, i64* %16, align 8
  store i64 %69, i64* %14, align 8
  br label %27

70:                                               ; preds = %27
  ret void
}

declare dso_local i64 @LD_UB(i32*) #1

declare dso_local i32 @LD_UB2(i32*, i32, i64, i64) #1

declare dso_local i32 @AVER_UB2_UB(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @__msa_copy_u_w(i32, i32) #1

declare dso_local i32 @SW(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
