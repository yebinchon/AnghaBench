; ModuleID = '/home/carl/AnghaBench/FFmpeg/tests/checkasm/extr_vp8dsp.c_wht4x4.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tests/checkasm/extr_vp8dsp.c_wht4x4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @wht4x4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wht4x4(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %88, %1
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %15, 4
  br i1 %16, label %17, label %91

17:                                               ; preds = %14
  %18 = load i32*, i32** %2, align 8
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 0, %19
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %4, align 4
  %24 = load i32*, i32** %2, align 8
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 4, %25
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %5, align 4
  %30 = load i32*, i32** %2, align 8
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 8, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %6, align 4
  %36 = load i32*, i32** %2, align 8
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 12, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %7, align 4
  %47 = sub nsw i32 %46, %45
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %7, align 4
  %50 = sub nsw i32 %48, %49
  %51 = ashr i32 %50, 1
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %5, align 4
  %54 = sub nsw i32 %52, %53
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %6, align 4
  %57 = sub nsw i32 %55, %56
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %4, align 4
  %60 = sub nsw i32 %59, %58
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, %61
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %4, align 4
  %65 = load i32*, i32** %2, align 8
  %66 = load i32, i32* %3, align 4
  %67 = add nsw i32 0, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  store i32 %64, i32* %69, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load i32*, i32** %2, align 8
  %72 = load i32, i32* %3, align 4
  %73 = add nsw i32 4, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  store i32 %70, i32* %75, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load i32*, i32** %2, align 8
  %78 = load i32, i32* %3, align 4
  %79 = add nsw i32 8, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %77, i64 %80
  store i32 %76, i32* %81, align 4
  %82 = load i32, i32* %5, align 4
  %83 = load i32*, i32** %2, align 8
  %84 = load i32, i32* %3, align 4
  %85 = add nsw i32 12, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  store i32 %82, i32* %87, align 4
  br label %88

88:                                               ; preds = %17
  %89 = load i32, i32* %3, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %3, align 4
  br label %14

91:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %178, %91
  %93 = load i32, i32* %3, align 4
  %94 = icmp slt i32 %93, 4
  br i1 %94, label %95, label %181

95:                                               ; preds = %92
  %96 = load i32*, i32** %2, align 8
  %97 = load i32, i32* %3, align 4
  %98 = mul nsw i32 %97, 4
  %99 = add nsw i32 %98, 0
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %96, i64 %100
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %9, align 4
  %103 = load i32*, i32** %2, align 8
  %104 = load i32, i32* %3, align 4
  %105 = mul nsw i32 %104, 4
  %106 = add nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %103, i64 %107
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %10, align 4
  %110 = load i32*, i32** %2, align 8
  %111 = load i32, i32* %3, align 4
  %112 = mul nsw i32 %111, 4
  %113 = add nsw i32 %112, 2
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %110, i64 %114
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %11, align 4
  %117 = load i32*, i32** %2, align 8
  %118 = load i32, i32* %3, align 4
  %119 = mul nsw i32 %118, 4
  %120 = add nsw i32 %119, 3
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %117, i64 %121
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %12, align 4
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* %9, align 4
  %126 = add nsw i32 %125, %124
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* %12, align 4
  %129 = sub nsw i32 %128, %127
  store i32 %129, i32* %12, align 4
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* %12, align 4
  %132 = sub nsw i32 %130, %131
  %133 = ashr i32 %132, 1
  store i32 %133, i32* %13, align 4
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* %10, align 4
  %136 = sub nsw i32 %134, %135
  store i32 %136, i32* %10, align 4
  %137 = load i32, i32* %13, align 4
  %138 = load i32, i32* %11, align 4
  %139 = sub nsw i32 %137, %138
  store i32 %139, i32* %11, align 4
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* %9, align 4
  %142 = sub nsw i32 %141, %140
  store i32 %142, i32* %9, align 4
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* %12, align 4
  %145 = add nsw i32 %144, %143
  store i32 %145, i32* %12, align 4
  %146 = load i32, i32* %9, align 4
  %147 = mul nsw i32 %146, 2
  %148 = load i32*, i32** %2, align 8
  %149 = load i32, i32* %3, align 4
  %150 = mul nsw i32 %149, 4
  %151 = add nsw i32 %150, 0
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %148, i64 %152
  store i32 %147, i32* %153, align 4
  %154 = load i32, i32* %11, align 4
  %155 = mul nsw i32 %154, 2
  %156 = load i32*, i32** %2, align 8
  %157 = load i32, i32* %3, align 4
  %158 = mul nsw i32 %157, 4
  %159 = add nsw i32 %158, 1
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %156, i64 %160
  store i32 %155, i32* %161, align 4
  %162 = load i32, i32* %12, align 4
  %163 = mul nsw i32 %162, 2
  %164 = load i32*, i32** %2, align 8
  %165 = load i32, i32* %3, align 4
  %166 = mul nsw i32 %165, 4
  %167 = add nsw i32 %166, 2
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %164, i64 %168
  store i32 %163, i32* %169, align 4
  %170 = load i32, i32* %10, align 4
  %171 = mul nsw i32 %170, 2
  %172 = load i32*, i32** %2, align 8
  %173 = load i32, i32* %3, align 4
  %174 = mul nsw i32 %173, 4
  %175 = add nsw i32 %174, 3
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %172, i64 %176
  store i32 %171, i32* %177, align 4
  br label %178

178:                                              ; preds = %95
  %179 = load i32, i32* %3, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %3, align 4
  br label %92

181:                                              ; preds = %92
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
