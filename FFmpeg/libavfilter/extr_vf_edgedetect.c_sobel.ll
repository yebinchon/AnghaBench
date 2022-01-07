; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_edgedetect.c_sobel.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_edgedetect.c_sobel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i64*, i32, i32*, i32, i32*, i32)* @sobel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sobel(i32 %0, i32 %1, i64* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i64* %2, i64** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32 %7, i32* %16, align 4
  store i32 1, i32* %18, align 4
  br label %21

21:                                               ; preds = %182, %8
  %22 = load i32, i32* %18, align 4
  %23 = load i32, i32* %10, align 4
  %24 = sub nsw i32 %23, 1
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %185

26:                                               ; preds = %21
  %27 = load i32, i32* %12, align 4
  %28 = load i64*, i64** %11, align 8
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  store i64* %30, i64** %11, align 8
  %31 = load i32, i32* %14, align 4
  %32 = load i32*, i32** %13, align 8
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  store i32* %34, i32** %13, align 8
  %35 = load i32, i32* %16, align 4
  %36 = load i32*, i32** %15, align 8
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  store i32* %38, i32** %15, align 8
  store i32 1, i32* %17, align 4
  br label %39

39:                                               ; preds = %178, %26
  %40 = load i32, i32* %17, align 4
  %41 = load i32, i32* %9, align 4
  %42 = sub nsw i32 %41, 1
  %43 = icmp slt i32 %40, %42
  br i1 %43, label %44, label %181

44:                                               ; preds = %39
  %45 = load i32*, i32** %15, align 8
  %46 = load i32, i32* %16, align 4
  %47 = sub nsw i32 0, %46
  %48 = load i32, i32* %17, align 4
  %49 = add nsw i32 %47, %48
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %45, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 -1, %53
  %55 = load i32*, i32** %15, align 8
  %56 = load i32, i32* %16, align 4
  %57 = sub nsw i32 0, %56
  %58 = load i32, i32* %17, align 4
  %59 = add nsw i32 %57, %58
  %60 = add nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %55, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 1, %63
  %65 = add nsw i32 %54, %64
  %66 = load i32*, i32** %15, align 8
  %67 = load i32, i32* %17, align 4
  %68 = sub nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = mul nsw i32 2, %71
  %73 = sub nsw i32 %65, %72
  %74 = load i32*, i32** %15, align 8
  %75 = load i32, i32* %17, align 4
  %76 = add nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = mul nsw i32 2, %79
  %81 = add nsw i32 %73, %80
  %82 = load i32*, i32** %15, align 8
  %83 = load i32, i32* %16, align 4
  %84 = load i32, i32* %17, align 4
  %85 = add nsw i32 %83, %84
  %86 = sub nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %82, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = mul nsw i32 1, %89
  %91 = sub nsw i32 %81, %90
  %92 = load i32*, i32** %15, align 8
  %93 = load i32, i32* %16, align 4
  %94 = load i32, i32* %17, align 4
  %95 = add nsw i32 %93, %94
  %96 = add nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %92, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = mul nsw i32 1, %99
  %101 = add nsw i32 %91, %100
  store i32 %101, i32* %19, align 4
  %102 = load i32*, i32** %15, align 8
  %103 = load i32, i32* %16, align 4
  %104 = sub nsw i32 0, %103
  %105 = load i32, i32* %17, align 4
  %106 = add nsw i32 %104, %105
  %107 = sub nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %102, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = mul nsw i32 -1, %110
  %112 = load i32*, i32** %15, align 8
  %113 = load i32, i32* %16, align 4
  %114 = load i32, i32* %17, align 4
  %115 = add nsw i32 %113, %114
  %116 = sub nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %112, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = mul nsw i32 1, %119
  %121 = add nsw i32 %111, %120
  %122 = load i32*, i32** %15, align 8
  %123 = load i32, i32* %16, align 4
  %124 = sub nsw i32 0, %123
  %125 = load i32, i32* %17, align 4
  %126 = add nsw i32 %124, %125
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %122, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = mul nsw i32 2, %129
  %131 = sub nsw i32 %121, %130
  %132 = load i32*, i32** %15, align 8
  %133 = load i32, i32* %16, align 4
  %134 = load i32, i32* %17, align 4
  %135 = add nsw i32 %133, %134
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %132, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = mul nsw i32 2, %138
  %140 = add nsw i32 %131, %139
  %141 = load i32*, i32** %15, align 8
  %142 = load i32, i32* %16, align 4
  %143 = sub nsw i32 0, %142
  %144 = load i32, i32* %17, align 4
  %145 = add nsw i32 %143, %144
  %146 = add nsw i32 %145, 1
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %141, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = mul nsw i32 1, %149
  %151 = sub nsw i32 %140, %150
  %152 = load i32*, i32** %15, align 8
  %153 = load i32, i32* %16, align 4
  %154 = load i32, i32* %17, align 4
  %155 = add nsw i32 %153, %154
  %156 = add nsw i32 %155, 1
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %152, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = mul nsw i32 1, %159
  %161 = add nsw i32 %151, %160
  store i32 %161, i32* %20, align 4
  %162 = load i32, i32* %19, align 4
  %163 = call i64 @FFABS(i32 %162)
  %164 = load i32, i32* %20, align 4
  %165 = call i64 @FFABS(i32 %164)
  %166 = add nsw i64 %163, %165
  %167 = load i64*, i64** %11, align 8
  %168 = load i32, i32* %17, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i64, i64* %167, i64 %169
  store i64 %166, i64* %170, align 8
  %171 = load i32, i32* %19, align 4
  %172 = load i32, i32* %20, align 4
  %173 = call i32 @get_rounded_direction(i32 %171, i32 %172)
  %174 = load i32*, i32** %13, align 8
  %175 = load i32, i32* %17, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  store i32 %173, i32* %177, align 4
  br label %178

178:                                              ; preds = %44
  %179 = load i32, i32* %17, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %17, align 4
  br label %39

181:                                              ; preds = %39
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %18, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %18, align 4
  br label %21

185:                                              ; preds = %21
  ret void
}

declare dso_local i64 @FFABS(i32) #1

declare dso_local i32 @get_rounded_direction(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
