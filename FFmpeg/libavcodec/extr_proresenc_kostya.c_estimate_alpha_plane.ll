; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_proresenc_kostya.c_estimate_alpha_plane.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_proresenc_kostya.c_estimate_alpha_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32, i32, i32*)* @estimate_alpha_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @estimate_alpha_plane(%struct.TYPE_3__* %0, i32* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = shl i32 1, %22
  %24 = sub nsw i32 %23, 1
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %9, align 4
  %26 = mul nsw i32 %25, 256
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %12, align 4
  store i32 %27, i32* %14, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %28 = load i32*, i32** %10, align 8
  %29 = load i32, i32* %16, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %16, align 4
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @est_alpha_diff(i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* %18, align 4
  %38 = load i32, i32* %15, align 4
  store i32 %38, i32* %14, align 4
  br label %39

39:                                               ; preds = %77, %5
  %40 = load i32*, i32** %10, align 8
  %41 = load i32, i32* %16, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %16, align 4
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* %14, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %73

49:                                               ; preds = %39
  %50 = load i32, i32* %17, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %18, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %18, align 4
  br label %65

55:                                               ; preds = %49
  %56 = load i32, i32* %17, align 4
  %57 = icmp slt i32 %56, 16
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* %18, align 4
  %60 = add nsw i32 %59, 4
  store i32 %60, i32* %18, align 4
  br label %64

61:                                               ; preds = %55
  %62 = load i32, i32* %18, align 4
  %63 = add nsw i32 %62, 15
  store i32 %63, i32* %18, align 4
  br label %64

64:                                               ; preds = %61, %58
  br label %65

65:                                               ; preds = %64, %52
  %66 = load i32, i32* %15, align 4
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @est_alpha_diff(i32 %66, i32 %67, i32 %68)
  %70 = load i32, i32* %18, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %18, align 4
  %72 = load i32, i32* %15, align 4
  store i32 %72, i32* %14, align 4
  store i32 0, i32* %17, align 4
  br label %76

73:                                               ; preds = %39
  %74 = load i32, i32* %17, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %17, align 4
  br label %76

76:                                               ; preds = %73, %65
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %16, align 4
  %79 = load i32, i32* %13, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %39, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* %17, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %81
  %85 = load i32, i32* %17, align 4
  %86 = icmp slt i32 %85, 16
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32, i32* %18, align 4
  %89 = add nsw i32 %88, 4
  store i32 %89, i32* %18, align 4
  br label %93

90:                                               ; preds = %84
  %91 = load i32, i32* %18, align 4
  %92 = add nsw i32 %91, 15
  store i32 %92, i32* %18, align 4
  br label %93

93:                                               ; preds = %90, %87
  br label %94

94:                                               ; preds = %93, %81
  %95 = load i32, i32* %18, align 4
  ret i32 %95
}

declare dso_local i32 @est_alpha_diff(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
