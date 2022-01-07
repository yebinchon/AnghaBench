; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/gfx/scaler/extr_scaler_int.c_scaler_argb8888_point_special.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/gfx/scaler/extr_scaler_int.c_scaler_argb8888_point_special.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scaler_ctx = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scaler_argb8888_point_special(%struct.scaler_ctx* %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.scaler_ctx*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
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
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  store %struct.scaler_ctx* %0, %struct.scaler_ctx** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %29 = load i32, i32* %15, align 4
  %30 = mul nsw i32 32768, %29
  %31 = load i32, i32* %13, align 4
  %32 = sdiv i32 %30, %31
  %33 = sub nsw i32 %32, 32768
  store i32 %33, i32* %21, align 4
  %34 = load i32, i32* %15, align 4
  %35 = mul nsw i32 65536, %34
  %36 = load i32, i32* %13, align 4
  %37 = sdiv i32 %35, %36
  store i32 %37, i32* %22, align 4
  %38 = load i32, i32* %16, align 4
  %39 = mul nsw i32 32768, %38
  %40 = load i32, i32* %14, align 4
  %41 = sdiv i32 %39, %40
  %42 = sub nsw i32 %41, 32768
  store i32 %42, i32* %23, align 4
  %43 = load i32, i32* %16, align 4
  %44 = mul nsw i32 65536, %43
  %45 = load i32, i32* %14, align 4
  %46 = sdiv i32 %44, %45
  store i32 %46, i32* %24, align 4
  %47 = load i8*, i8** %12, align 8
  %48 = bitcast i8* %47 to i32*
  store i32* %48, i32** %25, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = bitcast i8* %49 to i32*
  store i32* %50, i32** %26, align 8
  %51 = load i32, i32* %21, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %9
  store i32 0, i32* %21, align 4
  br label %54

54:                                               ; preds = %53, %9
  %55 = load i32, i32* %23, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i32 0, i32* %23, align 4
  br label %58

58:                                               ; preds = %57, %54
  store i32 0, i32* %19, align 4
  br label %59

59:                                               ; preds = %95, %58
  %60 = load i32, i32* %19, align 4
  %61 = load i32, i32* %14, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %106

63:                                               ; preds = %59
  %64 = load i32, i32* %21, align 4
  store i32 %64, i32* %27, align 4
  %65 = load i32*, i32** %25, align 8
  %66 = load i32, i32* %23, align 4
  %67 = ashr i32 %66, 16
  %68 = load i32, i32* %18, align 4
  %69 = ashr i32 %68, 2
  %70 = mul nsw i32 %67, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %65, i64 %71
  store i32* %72, i32** %28, align 8
  store i32 0, i32* %20, align 4
  br label %73

73:                                               ; preds = %88, %63
  %74 = load i32, i32* %20, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %94

77:                                               ; preds = %73
  %78 = load i32*, i32** %28, align 8
  %79 = load i32, i32* %27, align 4
  %80 = ashr i32 %79, 16
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %26, align 8
  %85 = load i32, i32* %20, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 %83, i32* %87, align 4
  br label %88

88:                                               ; preds = %77
  %89 = load i32, i32* %20, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %20, align 4
  %91 = load i32, i32* %22, align 4
  %92 = load i32, i32* %27, align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* %27, align 4
  br label %73

94:                                               ; preds = %73
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %19, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %19, align 4
  %98 = load i32, i32* %24, align 4
  %99 = load i32, i32* %23, align 4
  %100 = add nsw i32 %99, %98
  store i32 %100, i32* %23, align 4
  %101 = load i32, i32* %17, align 4
  %102 = ashr i32 %101, 2
  %103 = load i32*, i32** %26, align 8
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  store i32* %105, i32** %26, align 8
  br label %59

106:                                              ; preds = %59
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
