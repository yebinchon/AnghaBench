; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_image.c_R_LightScaleTexture.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_image.c_R_LightScaleTexture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@glConfig = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@s_gammatable = common dso_local global i64* null, align 8
@s_intensitytable = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_LightScaleTexture(i32* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %15 = load i64, i64* %8, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %62

17:                                               ; preds = %4
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @glConfig, i32 0, i32 0), align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %61, label %20

20:                                               ; preds = %17
  %21 = load i32*, i32** %5, align 8
  %22 = bitcast i32* %21 to i64*
  store i64* %22, i64** %11, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = mul nsw i32 %23, %24
  store i32 %25, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %55, %20
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %60

30:                                               ; preds = %26
  %31 = load i64*, i64** @s_gammatable, align 8
  %32 = load i64*, i64** %11, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i64, i64* %31, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load i64*, i64** %11, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 0
  store i64 %36, i64* %38, align 8
  %39 = load i64*, i64** @s_gammatable, align 8
  %40 = load i64*, i64** %11, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 1
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i64, i64* %39, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load i64*, i64** %11, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 1
  store i64 %44, i64* %46, align 8
  %47 = load i64*, i64** @s_gammatable, align 8
  %48 = load i64*, i64** %11, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 2
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i64, i64* %47, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = load i64*, i64** %11, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 2
  store i64 %52, i64* %54, align 8
  br label %55

55:                                               ; preds = %30
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  %58 = load i64*, i64** %11, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 4
  store i64* %59, i64** %11, align 8
  br label %26

60:                                               ; preds = %26
  br label %61

61:                                               ; preds = %60, %17
  br label %152

62:                                               ; preds = %4
  %63 = load i32*, i32** %5, align 8
  %64 = bitcast i32* %63 to i64*
  store i64* %64, i64** %14, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %7, align 4
  %67 = mul nsw i32 %65, %66
  store i32 %67, i32* %13, align 4
  %68 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @glConfig, i32 0, i32 0), align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %106

70:                                               ; preds = %62
  store i32 0, i32* %12, align 4
  br label %71

71:                                               ; preds = %100, %70
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %13, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %105

75:                                               ; preds = %71
  %76 = load i64*, i64** @s_intensitytable, align 8
  %77 = load i64*, i64** %14, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 0
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds i64, i64* %76, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = load i64*, i64** %14, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 0
  store i64 %81, i64* %83, align 8
  %84 = load i64*, i64** @s_intensitytable, align 8
  %85 = load i64*, i64** %14, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 1
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds i64, i64* %84, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = load i64*, i64** %14, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 1
  store i64 %89, i64* %91, align 8
  %92 = load i64*, i64** @s_intensitytable, align 8
  %93 = load i64*, i64** %14, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 2
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds i64, i64* %92, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = load i64*, i64** %14, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 2
  store i64 %97, i64* %99, align 8
  br label %100

100:                                              ; preds = %75
  %101 = load i32, i32* %12, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %12, align 4
  %103 = load i64*, i64** %14, align 8
  %104 = getelementptr inbounds i64, i64* %103, i64 4
  store i64* %104, i64** %14, align 8
  br label %71

105:                                              ; preds = %71
  br label %151

106:                                              ; preds = %62
  store i32 0, i32* %12, align 4
  br label %107

107:                                              ; preds = %145, %106
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* %13, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %150

111:                                              ; preds = %107
  %112 = load i64*, i64** @s_gammatable, align 8
  %113 = load i64*, i64** @s_intensitytable, align 8
  %114 = load i64*, i64** %14, align 8
  %115 = getelementptr inbounds i64, i64* %114, i64 0
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds i64, i64* %113, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds i64, i64* %112, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = load i64*, i64** %14, align 8
  %122 = getelementptr inbounds i64, i64* %121, i64 0
  store i64 %120, i64* %122, align 8
  %123 = load i64*, i64** @s_gammatable, align 8
  %124 = load i64*, i64** @s_intensitytable, align 8
  %125 = load i64*, i64** %14, align 8
  %126 = getelementptr inbounds i64, i64* %125, i64 1
  %127 = load i64, i64* %126, align 8
  %128 = getelementptr inbounds i64, i64* %124, i64 %127
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds i64, i64* %123, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = load i64*, i64** %14, align 8
  %133 = getelementptr inbounds i64, i64* %132, i64 1
  store i64 %131, i64* %133, align 8
  %134 = load i64*, i64** @s_gammatable, align 8
  %135 = load i64*, i64** @s_intensitytable, align 8
  %136 = load i64*, i64** %14, align 8
  %137 = getelementptr inbounds i64, i64* %136, i64 2
  %138 = load i64, i64* %137, align 8
  %139 = getelementptr inbounds i64, i64* %135, i64 %138
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds i64, i64* %134, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = load i64*, i64** %14, align 8
  %144 = getelementptr inbounds i64, i64* %143, i64 2
  store i64 %142, i64* %144, align 8
  br label %145

145:                                              ; preds = %111
  %146 = load i32, i32* %12, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %12, align 4
  %148 = load i64*, i64** %14, align 8
  %149 = getelementptr inbounds i64, i64* %148, i64 4
  store i64* %149, i64** %14, align 8
  br label %107

150:                                              ; preds = %107
  br label %151

151:                                              ; preds = %150, %105
  br label %152

152:                                              ; preds = %151, %61
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
