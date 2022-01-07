; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_plat_sdl.c_rgb565_to_uyvy.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_plat_sdl.c_rgb565_to_uyvy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@yuv_u = common dso_local global i8* null, align 8
@yuv_v = common dso_local global i8* null, align 8
@yuv_ry = common dso_local global i32* null, align 8
@yuv_gy = common dso_local global i32* null, align 8
@yuv_by = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rgb565_to_uyvy(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i16*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
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
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %21 = load i8*, i8** %4, align 8
  %22 = bitcast i8* %21 to i32*
  store i32* %22, i32** %7, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = bitcast i8* %23 to i16*
  store i16* %24, i16** %8, align 8
  %25 = load i8*, i8** @yuv_u, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 32
  store i8* %26, i8** %9, align 8
  %27 = load i8*, i8** @yuv_v, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 32
  store i8* %28, i8** %10, align 8
  br label %29

29:                                               ; preds = %138, %3
  %30 = load i32, i32* %6, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %145

32:                                               ; preds = %29
  %33 = load i16*, i16** %8, align 8
  %34 = getelementptr inbounds i16, i16* %33, i64 0
  %35 = load i16, i16* %34, align 2
  %36 = zext i16 %35 to i32
  %37 = ashr i32 %36, 11
  %38 = and i32 %37, 31
  store i32 %38, i32* %11, align 4
  %39 = load i16*, i16** %8, align 8
  %40 = getelementptr inbounds i16, i16* %39, i64 0
  %41 = load i16, i16* %40, align 2
  %42 = zext i16 %41 to i32
  %43 = ashr i32 %42, 6
  %44 = and i32 %43, 31
  store i32 %44, i32* %12, align 4
  %45 = load i16*, i16** %8, align 8
  %46 = getelementptr inbounds i16, i16* %45, i64 0
  %47 = load i16, i16* %46, align 2
  %48 = zext i16 %47 to i32
  %49 = and i32 %48, 31
  store i32 %49, i32* %13, align 4
  %50 = load i16*, i16** %8, align 8
  %51 = getelementptr inbounds i16, i16* %50, i64 1
  %52 = load i16, i16* %51, align 2
  %53 = zext i16 %52 to i32
  %54 = ashr i32 %53, 11
  %55 = and i32 %54, 31
  store i32 %55, i32* %14, align 4
  %56 = load i16*, i16** %8, align 8
  %57 = getelementptr inbounds i16, i16* %56, i64 1
  %58 = load i16, i16* %57, align 2
  %59 = zext i16 %58 to i32
  %60 = ashr i32 %59, 6
  %61 = and i32 %60, 31
  store i32 %61, i32* %15, align 4
  %62 = load i16*, i16** %8, align 8
  %63 = getelementptr inbounds i16, i16* %62, i64 1
  %64 = load i16, i16* %63, align 2
  %65 = zext i16 %64 to i32
  %66 = and i32 %65, 31
  store i32 %66, i32* %16, align 4
  %67 = load i32*, i32** @yuv_ry, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** @yuv_gy, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %71, %76
  %78 = load i32*, i32** @yuv_by, align 8
  %79 = load i32, i32* %13, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %77, %82
  %84 = ashr i32 %83, 16
  store i32 %84, i32* %17, align 4
  %85 = load i32*, i32** @yuv_ry, align 8
  %86 = load i32, i32* %14, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** @yuv_gy, align 8
  %91 = load i32, i32* %15, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %89, %94
  %96 = load i32*, i32** @yuv_by, align 8
  %97 = load i32, i32* %16, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %95, %100
  %102 = ashr i32 %101, 16
  store i32 %102, i32* %18, align 4
  %103 = load i8*, i8** %9, align 8
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* %17, align 4
  %106 = sub nsw i32 %104, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %103, i64 %107
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  store i32 %110, i32* %19, align 4
  %111 = load i8*, i8** %10, align 8
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* %17, align 4
  %114 = sub nsw i32 %112, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %111, i64 %115
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  store i32 %118, i32* %20, align 4
  %119 = load i32, i32* %17, align 4
  %120 = mul nsw i32 219, %119
  %121 = sdiv i32 %120, 31
  %122 = add nsw i32 16, %121
  store i32 %122, i32* %17, align 4
  %123 = load i32, i32* %18, align 4
  %124 = mul nsw i32 219, %123
  %125 = sdiv i32 %124, 31
  %126 = add nsw i32 16, %125
  store i32 %126, i32* %18, align 4
  %127 = load i32, i32* %18, align 4
  %128 = shl i32 %127, 24
  %129 = load i32, i32* %20, align 4
  %130 = shl i32 %129, 16
  %131 = or i32 %128, %130
  %132 = load i32, i32* %17, align 4
  %133 = shl i32 %132, 8
  %134 = or i32 %131, %133
  %135 = load i32, i32* %19, align 4
  %136 = or i32 %134, %135
  %137 = load i32*, i32** %7, align 8
  store i32 %136, i32* %137, align 4
  br label %138

138:                                              ; preds = %32
  %139 = load i16*, i16** %8, align 8
  %140 = getelementptr inbounds i16, i16* %139, i64 2
  store i16* %140, i16** %8, align 8
  %141 = load i32*, i32** %7, align 8
  %142 = getelementptr inbounds i32, i32* %141, i32 1
  store i32* %142, i32** %7, align 8
  %143 = load i32, i32* %6, align 4
  %144 = sub nsw i32 %143, 2
  store i32 %144, i32* %6, align 4
  br label %29

145:                                              ; preds = %29
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
