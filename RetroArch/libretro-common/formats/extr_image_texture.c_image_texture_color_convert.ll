; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/formats/extr_image_texture.c_image_texture_color_convert.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/formats/extr_image_texture.c_image_texture_color_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.texture_image = type { i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @image_texture_color_convert(i32 %0, i32 %1, i32 %2, i32 %3, %struct.texture_image* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.texture_image*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.texture_image* %4, %struct.texture_image** %11, align 8
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 24
  br i1 %21, label %31, label %22

22:                                               ; preds = %5
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 16
  br i1 %24, label %31, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 8
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %87

31:                                               ; preds = %28, %25, %22, %5
  %32 = load %struct.texture_image*, %struct.texture_image** %11, align 8
  %33 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.texture_image*, %struct.texture_image** %11, align 8
  %36 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = mul i64 %34, %37
  store i64 %38, i64* %13, align 8
  %39 = load %struct.texture_image*, %struct.texture_image** %11, align 8
  %40 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i64*
  store i64* %42, i64** %14, align 8
  store i64 0, i64* %12, align 8
  br label %43

43:                                               ; preds = %83, %31
  %44 = load i64, i64* %12, align 8
  %45 = load i64, i64* %13, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %86

47:                                               ; preds = %43
  %48 = load i64*, i64** %14, align 8
  %49 = load i64, i64* %12, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %15, align 8
  %52 = load i64, i64* %15, align 8
  %53 = lshr i64 %52, 24
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %16, align 4
  %55 = load i64, i64* %15, align 8
  %56 = lshr i64 %55, 16
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %17, align 4
  %58 = load i64, i64* %15, align 8
  %59 = lshr i64 %58, 8
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %18, align 4
  %61 = load i64, i64* %15, align 8
  %62 = lshr i64 %61, 0
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %19, align 4
  %64 = load i32, i32* %16, align 4
  %65 = load i32, i32* %10, align 4
  %66 = shl i32 %64, %65
  %67 = load i32, i32* %17, align 4
  %68 = load i32, i32* %7, align 4
  %69 = shl i32 %67, %68
  %70 = or i32 %66, %69
  %71 = load i32, i32* %18, align 4
  %72 = load i32, i32* %8, align 4
  %73 = shl i32 %71, %72
  %74 = or i32 %70, %73
  %75 = load i32, i32* %19, align 4
  %76 = load i32, i32* %9, align 4
  %77 = shl i32 %75, %76
  %78 = or i32 %74, %77
  %79 = zext i32 %78 to i64
  %80 = load i64*, i64** %14, align 8
  %81 = load i64, i64* %12, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  store i64 %79, i64* %82, align 8
  br label %83

83:                                               ; preds = %47
  %84 = load i64, i64* %12, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %12, align 8
  br label %43

86:                                               ; preds = %43
  store i32 1, i32* %6, align 4
  br label %88

87:                                               ; preds = %28
  store i32 0, i32* %6, align 4
  br label %88

88:                                               ; preds = %87, %86
  %89 = load i32, i32* %6, align 4
  ret i32 %89
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
