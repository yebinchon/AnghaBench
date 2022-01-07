; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_lightmaps.c_AllocLMBlock.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_lightmaps.c_AllocLMBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LIGHTMAP_HEIGHT = common dso_local global i32 0, align 4
@LIGHTMAP_WIDTH = common dso_local global i32 0, align 4
@allocated = common dso_local global i32* null, align 8
@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AllocLMBlock(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i32, i32* @LIGHTMAP_HEIGHT, align 4
  store i32 %14, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %69, %4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @LIGHTMAP_WIDTH, align 4
  %18 = load i32, i32* %6, align 4
  %19 = sub nsw i32 %17, %18
  %20 = icmp sle i32 %16, %19
  br i1 %20, label %21, label %72

21:                                               ; preds = %15
  store i32 0, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %22

22:                                               ; preds = %56, %21
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %59

26:                                               ; preds = %22
  %27 = load i32*, i32** @allocated, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %11, align 4
  %30 = add nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %27, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp sge i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  br label %59

37:                                               ; preds = %26
  %38 = load i32*, i32** @allocated, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = add nsw i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %38, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %37
  %48 = load i32*, i32** @allocated, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %48, i64 %52
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %13, align 4
  br label %55

55:                                               ; preds = %47, %37
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %11, align 4
  br label %22

59:                                               ; preds = %36, %22
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load i32, i32* %10, align 4
  %65 = load i32*, i32** %8, align 8
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* %13, align 4
  store i32 %66, i32* %12, align 4
  %67 = load i32*, i32** %9, align 8
  store i32 %66, i32* %67, align 4
  br label %68

68:                                               ; preds = %63, %59
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %10, align 4
  br label %15

72:                                               ; preds = %15
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %73, %74
  %76 = load i32, i32* @LIGHTMAP_HEIGHT, align 4
  %77 = icmp sgt i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = load i32, i32* @qfalse, align 4
  store i32 %79, i32* %5, align 4
  br label %101

80:                                               ; preds = %72
  store i32 0, i32* %10, align 4
  br label %81

81:                                               ; preds = %96, %80
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %99

85:                                               ; preds = %81
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %86, %87
  %89 = load i32*, i32** @allocated, align 8
  %90 = load i32*, i32** %8, align 8
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %91, %92
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %89, i64 %94
  store i32 %88, i32* %95, align 4
  br label %96

96:                                               ; preds = %85
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %10, align 4
  br label %81

99:                                               ; preds = %81
  %100 = load i32, i32* @qtrue, align 4
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %99, %78
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
