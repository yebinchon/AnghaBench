; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_spp.c_add_block.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_spp.c_add_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*)* @add_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_block(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %84, %3
  %9 = load i32, i32* %7, align 4
  %10 = icmp slt i32 %9, 8
  br i1 %10, label %11, label %87

11:                                               ; preds = %8
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = mul nsw i32 %13, 8
  %15 = add nsw i32 0, %14
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %12, i64 %16
  %18 = bitcast i32* %17 to i64*
  %19 = load i64, i64* %18, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = mul nsw i32 %21, %22
  %24 = add nsw i32 0, %23
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %20, i64 %25
  %27 = bitcast i32* %26 to i64*
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, %19
  store i64 %29, i64* %27, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = mul nsw i32 %31, 8
  %33 = add nsw i32 2, %32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %30, i64 %34
  %36 = bitcast i32* %35 to i64*
  %37 = load i64, i64* %36, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %5, align 4
  %41 = mul nsw i32 %39, %40
  %42 = add nsw i32 2, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %38, i64 %43
  %45 = bitcast i32* %44 to i64*
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, %37
  store i64 %47, i64* %45, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = mul nsw i32 %49, 8
  %51 = add nsw i32 4, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %48, i64 %52
  %54 = bitcast i32* %53 to i64*
  %55 = load i64, i64* %54, align 8
  %56 = load i32*, i32** %4, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %5, align 4
  %59 = mul nsw i32 %57, %58
  %60 = add nsw i32 4, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %56, i64 %61
  %63 = bitcast i32* %62 to i64*
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, %55
  store i64 %65, i64* %63, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = mul nsw i32 %67, 8
  %69 = add nsw i32 6, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %66, i64 %70
  %72 = bitcast i32* %71 to i64*
  %73 = load i64, i64* %72, align 8
  %74 = load i32*, i32** %4, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %5, align 4
  %77 = mul nsw i32 %75, %76
  %78 = add nsw i32 6, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %74, i64 %79
  %81 = bitcast i32* %80 to i64*
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, %73
  store i64 %83, i64* %81, align 8
  br label %84

84:                                               ; preds = %11
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %7, align 4
  br label %8

87:                                               ; preds = %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
