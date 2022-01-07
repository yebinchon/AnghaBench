; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_snow_dwt.c_spatial_decompose97i.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_snow_dwt.c_spatial_decompose97i.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i32)* @spatial_decompose97i to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spatial_decompose97i(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %9, align 4
  %20 = sub nsw i32 %19, 1
  %21 = call i32 @avpriv_mirror(i32 -5, i32 %20)
  %22 = load i32, i32* %10, align 4
  %23 = mul nsw i32 %21, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %18, i64 %24
  store i32* %25, i32** %12, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sub nsw i32 %27, 1
  %29 = call i32 @avpriv_mirror(i32 -4, i32 %28)
  %30 = load i32, i32* %10, align 4
  %31 = mul nsw i32 %29, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %26, i64 %32
  store i32* %33, i32** %13, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sub nsw i32 %35, 1
  %37 = call i32 @avpriv_mirror(i32 -3, i32 %36)
  %38 = load i32, i32* %10, align 4
  %39 = mul nsw i32 %37, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %34, i64 %40
  store i32* %41, i32** %14, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sub nsw i32 %43, 1
  %45 = call i32 @avpriv_mirror(i32 -2, i32 %44)
  %46 = load i32, i32* %10, align 4
  %47 = mul nsw i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %42, i64 %48
  store i32* %49, i32** %15, align 8
  store i32 -4, i32* %11, align 4
  br label %50

50:                                               ; preds = %143, %5
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %146

54:                                               ; preds = %50
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %56, 3
  %58 = load i32, i32* %9, align 4
  %59 = sub nsw i32 %58, 1
  %60 = call i32 @avpriv_mirror(i32 %57, i32 %59)
  %61 = load i32, i32* %10, align 4
  %62 = mul nsw i32 %60, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %55, i64 %63
  store i32* %64, i32** %16, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, 4
  %68 = load i32, i32* %9, align 4
  %69 = sub nsw i32 %68, 1
  %70 = call i32 @avpriv_mirror(i32 %67, i32 %69)
  %71 = load i32, i32* %10, align 4
  %72 = mul nsw i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %65, i64 %73
  store i32* %74, i32** %17, align 8
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, 3
  %77 = load i32, i32* %9, align 4
  %78 = icmp ult i32 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %54
  %80 = load i32*, i32** %16, align 8
  %81 = load i32*, i32** %7, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @horizontal_decompose97i(i32* %80, i32* %81, i32 %82)
  br label %84

84:                                               ; preds = %79, %54
  %85 = load i32, i32* %11, align 4
  %86 = add nsw i32 %85, 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp ult i32 %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = load i32*, i32** %17, align 8
  %91 = load i32*, i32** %7, align 8
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @horizontal_decompose97i(i32* %90, i32* %91, i32 %92)
  br label %94

94:                                               ; preds = %89, %84
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %95, 3
  %97 = load i32, i32* %9, align 4
  %98 = icmp ult i32 %96, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %94
  %100 = load i32*, i32** %15, align 8
  %101 = load i32*, i32** %16, align 8
  %102 = load i32*, i32** %17, align 8
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @vertical_decompose97iH0(i32* %100, i32* %101, i32* %102, i32 %103)
  br label %105

105:                                              ; preds = %99, %94
  %106 = load i32, i32* %11, align 4
  %107 = add nsw i32 %106, 2
  %108 = load i32, i32* %9, align 4
  %109 = icmp ult i32 %107, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %105
  %111 = load i32*, i32** %14, align 8
  %112 = load i32*, i32** %15, align 8
  %113 = load i32*, i32** %16, align 8
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @vertical_decompose97iL0(i32* %111, i32* %112, i32* %113, i32 %114)
  br label %116

116:                                              ; preds = %110, %105
  %117 = load i32, i32* %11, align 4
  %118 = add nsw i32 %117, 1
  %119 = load i32, i32* %9, align 4
  %120 = icmp ult i32 %118, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %116
  %122 = load i32*, i32** %13, align 8
  %123 = load i32*, i32** %14, align 8
  %124 = load i32*, i32** %15, align 8
  %125 = load i32, i32* %8, align 4
  %126 = call i32 @vertical_decompose97iH1(i32* %122, i32* %123, i32* %124, i32 %125)
  br label %127

127:                                              ; preds = %121, %116
  %128 = load i32, i32* %11, align 4
  %129 = add nsw i32 %128, 0
  %130 = load i32, i32* %9, align 4
  %131 = icmp ult i32 %129, %130
  br i1 %131, label %132, label %138

132:                                              ; preds = %127
  %133 = load i32*, i32** %12, align 8
  %134 = load i32*, i32** %13, align 8
  %135 = load i32*, i32** %14, align 8
  %136 = load i32, i32* %8, align 4
  %137 = call i32 @vertical_decompose97iL1(i32* %133, i32* %134, i32* %135, i32 %136)
  br label %138

138:                                              ; preds = %132, %127
  %139 = load i32*, i32** %14, align 8
  store i32* %139, i32** %12, align 8
  %140 = load i32*, i32** %15, align 8
  store i32* %140, i32** %13, align 8
  %141 = load i32*, i32** %16, align 8
  store i32* %141, i32** %14, align 8
  %142 = load i32*, i32** %17, align 8
  store i32* %142, i32** %15, align 8
  br label %143

143:                                              ; preds = %138
  %144 = load i32, i32* %11, align 4
  %145 = add nsw i32 %144, 2
  store i32 %145, i32* %11, align 4
  br label %50

146:                                              ; preds = %50
  ret void
}

declare dso_local i32 @avpriv_mirror(i32, i32) #1

declare dso_local i32 @horizontal_decompose97i(i32*, i32*, i32) #1

declare dso_local i32 @vertical_decompose97iH0(i32*, i32*, i32*, i32) #1

declare dso_local i32 @vertical_decompose97iL0(i32*, i32*, i32*, i32) #1

declare dso_local i32 @vertical_decompose97iH1(i32*, i32*, i32*, i32) #1

declare dso_local i32 @vertical_decompose97iL1(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
