; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uni_msa.c_copy_width48_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uni_msa.c_copy_width48_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32)* @copy_width48_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_width48_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
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
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = ashr i32 %24, 2
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
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* %15, align 4
  %37 = call i32 @LD_UB4(i32* %31, i32 %32, i32 %33, i32 %34, i32 %35, i32 %36)
  %38 = load i32*, i32** %6, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 16
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %16, align 4
  %42 = load i32, i32* %17, align 4
  %43 = load i32, i32* %18, align 4
  %44 = load i32, i32* %19, align 4
  %45 = call i32 @LD_UB4(i32* %39, i32 %40, i32 %41, i32 %42, i32 %43, i32 %44)
  %46 = load i32*, i32** %6, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 32
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %20, align 4
  %50 = load i32, i32* %21, align 4
  %51 = load i32, i32* %22, align 4
  %52 = load i32, i32* %23, align 4
  %53 = call i32 @LD_UB4(i32* %47, i32 %48, i32 %49, i32 %50, i32 %51, i32 %52)
  %54 = load i32, i32* %7, align 4
  %55 = mul nsw i32 4, %54
  %56 = load i32*, i32** %6, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32* %58, i32** %6, align 8
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %15, align 4
  %63 = load i32*, i32** %8, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @ST_UB4(i32 %59, i32 %60, i32 %61, i32 %62, i32* %63, i32 %64)
  %66 = load i32, i32* %16, align 4
  %67 = load i32, i32* %17, align 4
  %68 = load i32, i32* %18, align 4
  %69 = load i32, i32* %19, align 4
  %70 = load i32*, i32** %8, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 16
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @ST_UB4(i32 %66, i32 %67, i32 %68, i32 %69, i32* %71, i32 %72)
  %74 = load i32, i32* %20, align 4
  %75 = load i32, i32* %21, align 4
  %76 = load i32, i32* %22, align 4
  %77 = load i32, i32* %23, align 4
  %78 = load i32*, i32** %8, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 32
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @ST_UB4(i32 %74, i32 %75, i32 %76, i32 %77, i32* %79, i32 %80)
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

declare dso_local i32 @LD_UB4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_UB4(i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
