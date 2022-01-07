; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_qpeldsp_msa.c_avg_width8_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_qpeldsp_msa.c_avg_width8_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32)* @avg_width8_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @avg_width8_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = sdiv i32 %24, 4
  store i32 %25, i32* %11, align 4
  br label %26

26:                                               ; preds = %30, %5
  %27 = load i32, i32* %11, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %11, align 4
  %29 = icmp ne i32 %27, 0
  br i1 %29, label %30, label %87

30:                                               ; preds = %26
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i64, i64* %16, align 8
  %34 = load i64, i64* %17, align 8
  %35 = load i64, i64* %18, align 8
  %36 = load i64, i64* %19, align 8
  %37 = call i32 @LD_UB4(i32* %31, i32 %32, i64 %33, i64 %34, i64 %35, i64 %36)
  %38 = load i32, i32* %7, align 4
  %39 = mul nsw i32 4, %38
  %40 = load i32*, i32** %6, align 8
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  store i32* %42, i32** %6, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i64, i64* %20, align 8
  %46 = load i64, i64* %21, align 8
  %47 = load i64, i64* %22, align 8
  %48 = load i64, i64* %23, align 8
  %49 = call i32 @LD_UB4(i32* %43, i32 %44, i64 %45, i64 %46, i64 %47, i64 %48)
  %50 = load i64, i64* %16, align 8
  %51 = load i64, i64* %20, align 8
  %52 = load i64, i64* %17, align 8
  %53 = load i64, i64* %21, align 8
  %54 = load i64, i64* %18, align 8
  %55 = load i64, i64* %22, align 8
  %56 = load i64, i64* %19, align 8
  %57 = load i64, i64* %23, align 8
  %58 = load i64, i64* %20, align 8
  %59 = load i64, i64* %21, align 8
  %60 = load i64, i64* %22, align 8
  %61 = load i64, i64* %23, align 8
  %62 = call i32 @AVER_UB4_UB(i64 %50, i64 %51, i64 %52, i64 %53, i64 %54, i64 %55, i64 %56, i64 %57, i64 %58, i64 %59, i64 %60, i64 %61)
  %63 = load i64, i64* %20, align 8
  %64 = trunc i64 %63 to i32
  %65 = call i32 @__msa_copy_u_d(i32 %64, i32 0)
  store i32 %65, i32* %12, align 4
  %66 = load i64, i64* %21, align 8
  %67 = trunc i64 %66 to i32
  %68 = call i32 @__msa_copy_u_d(i32 %67, i32 0)
  store i32 %68, i32* %13, align 4
  %69 = load i64, i64* %22, align 8
  %70 = trunc i64 %69 to i32
  %71 = call i32 @__msa_copy_u_d(i32 %70, i32 0)
  store i32 %71, i32* %14, align 4
  %72 = load i64, i64* %23, align 8
  %73 = trunc i64 %72 to i32
  %74 = call i32 @__msa_copy_u_d(i32 %73, i32 0)
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* %15, align 4
  %79 = load i32*, i32** %8, align 8
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @SD4(i32 %75, i32 %76, i32 %77, i32 %78, i32* %79, i32 %80)
  %82 = load i32, i32* %9, align 4
  %83 = mul nsw i32 4, %82
  %84 = load i32*, i32** %8, align 8
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  store i32* %86, i32** %8, align 8
  br label %26

87:                                               ; preds = %26
  ret void
}

declare dso_local i32 @LD_UB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @AVER_UB4_UB(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @__msa_copy_u_d(i32, i32) #1

declare dso_local i32 @SD4(i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
