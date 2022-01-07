; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/linux/extr_blit.c_bgr444_to_rgb32_sh.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/linux/extr_blit.c_bgr444_to_rgb32_sh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bgr444_to_rgb32_sh(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to i16*
  store i16* %9, i16** %5, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %6, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 64
  store i32* %13, i32** %6, align 8
  store i32 64, i32* %7, align 4
  br label %14

14:                                               ; preds = %49, %2
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %56

17:                                               ; preds = %14
  %18 = load i16*, i16** %5, align 8
  %19 = load i16, i16* %18, align 2
  %20 = zext i16 %19 to i32
  %21 = shl i32 %20, 20
  %22 = and i32 %21, 14680064
  %23 = load i16*, i16** %5, align 8
  %24 = load i16, i16* %23, align 2
  %25 = zext i16 %24 to i32
  %26 = shl i32 %25, 8
  %27 = and i32 %26, 57344
  %28 = or i32 %22, %27
  %29 = load i16*, i16** %5, align 8
  %30 = load i16, i16* %29, align 2
  %31 = zext i16 %30 to i32
  %32 = ashr i32 %31, 4
  %33 = and i32 %32, 224
  %34 = or i32 %28, %33
  %35 = load i32*, i32** %6, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %36, align 4
  %38 = lshr i32 %37, 1
  store i32 %38, i32* %36, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %39, align 4
  %41 = lshr i32 %40, 3
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %41
  store i32 %44, i32* %42, align 4
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %6, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 128
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %17
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %7, align 4
  %52 = load i16*, i16** %5, align 8
  %53 = getelementptr inbounds i16, i16* %52, i32 1
  store i16* %53, i16** %5, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %6, align 8
  br label %14

56:                                               ; preds = %14
  %57 = load i16*, i16** %5, align 8
  %58 = getelementptr inbounds i16, i16* %57, i64 -64
  store i16* %58, i16** %5, align 8
  store i32 64, i32* %7, align 4
  br label %59

59:                                               ; preds = %81, %56
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %88

62:                                               ; preds = %59
  %63 = load i16*, i16** %5, align 8
  %64 = load i16, i16* %63, align 2
  %65 = zext i16 %64 to i32
  %66 = shl i32 %65, 20
  %67 = and i32 %66, 14680064
  %68 = load i16*, i16** %5, align 8
  %69 = load i16, i16* %68, align 2
  %70 = zext i16 %69 to i32
  %71 = shl i32 %70, 8
  %72 = and i32 %71, 57344
  %73 = or i32 %67, %72
  %74 = load i16*, i16** %5, align 8
  %75 = load i16, i16* %74, align 2
  %76 = zext i16 %75 to i32
  %77 = ashr i32 %76, 4
  %78 = and i32 %77, 224
  %79 = or i32 %73, %78
  %80 = load i32*, i32** %6, align 8
  store i32 %79, i32* %80, align 4
  br label %81

81:                                               ; preds = %62
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %7, align 4
  %84 = load i16*, i16** %5, align 8
  %85 = getelementptr inbounds i16, i16* %84, i32 1
  store i16* %85, i16** %5, align 8
  %86 = load i32*, i32** %6, align 8
  %87 = getelementptr inbounds i32, i32* %86, i32 1
  store i32* %87, i32** %6, align 8
  br label %59

88:                                               ; preds = %59
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
