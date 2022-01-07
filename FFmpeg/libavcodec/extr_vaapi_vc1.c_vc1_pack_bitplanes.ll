; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vaapi_vc1.c_vc1_pack_bitplanes.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vaapi_vc1.c_vc1_pack_bitplanes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**, i32, i32, i32)* @vc1_pack_bitplanes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vc1_pack_bitplanes(i32* %0, i32 %1, i32** %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32** %2, i32*** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load i32, i32* %8, align 4
  %17 = sdiv i32 %16, 2
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* %12, align 4
  %20 = mul nsw i32 %18, %19
  %21 = load i32, i32* %10, align 4
  %22 = add nsw i32 %20, %21
  store i32 %22, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %23 = load i32**, i32*** %9, align 8
  %24 = getelementptr inbounds i32*, i32** %23, i64 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %6
  %28 = load i32**, i32*** %9, align 8
  %29 = getelementptr inbounds i32*, i32** %28, i64 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %14, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %15, align 4
  br label %35

35:                                               ; preds = %27, %6
  %36 = load i32**, i32*** %9, align 8
  %37 = getelementptr inbounds i32*, i32** %36, i64 1
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %51

40:                                               ; preds = %35
  %41 = load i32**, i32*** %9, align 8
  %42 = getelementptr inbounds i32*, i32** %41, i64 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %14, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 1
  %49 = load i32, i32* %15, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %15, align 4
  br label %51

51:                                               ; preds = %40, %35
  %52 = load i32**, i32*** %9, align 8
  %53 = getelementptr inbounds i32*, i32** %52, i64 2
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %67

56:                                               ; preds = %51
  %57 = load i32**, i32*** %9, align 8
  %58 = getelementptr inbounds i32*, i32** %57, i64 2
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %14, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = shl i32 %63, 2
  %65 = load i32, i32* %15, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %15, align 4
  br label %67

67:                                               ; preds = %56, %51
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = shl i32 %72, 4
  %74 = load i32, i32* %15, align 4
  %75 = or i32 %73, %74
  %76 = load i32*, i32** %7, align 8
  %77 = load i32, i32* %13, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 %75, i32* %79, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
