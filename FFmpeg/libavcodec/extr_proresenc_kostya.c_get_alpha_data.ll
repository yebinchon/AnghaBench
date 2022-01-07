; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_proresenc_kostya.c_get_alpha_data.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_proresenc_kostya.c_get_alpha_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i32, i32, i32, i32*, i32, i32)* @get_alpha_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_alpha_data(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32* %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32* %7, i32** %18, align 8
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %26 = load i32, i32* %19, align 4
  %27 = mul nsw i32 16, %26
  store i32 %27, i32* %21, align 4
  %28 = load i32, i32* %16, align 4
  %29 = load i32, i32* %14, align 4
  %30 = sub nsw i32 %28, %29
  %31 = load i32, i32* %21, align 4
  %32 = call i32 @FFMIN(i32 %30, i32 %31)
  store i32 %32, i32* %24, align 4
  %33 = load i32, i32* %17, align 4
  %34 = load i32, i32* %15, align 4
  %35 = sub nsw i32 %33, %34
  %36 = call i32 @FFMIN(i32 %35, i32 16)
  store i32 %36, i32* %25, align 4
  store i32 0, i32* %22, align 4
  br label %37

37:                                               ; preds = %124, %10
  %38 = load i32, i32* %22, align 4
  %39 = load i32, i32* %25, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %127

41:                                               ; preds = %37
  %42 = load i32*, i32** %18, align 8
  %43 = load i32*, i32** %12, align 8
  %44 = load i32, i32* %24, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 %45, 4
  %47 = trunc i64 %46 to i32
  %48 = call i32 @memcpy(i32* %42, i32* %43, i32 %47)
  %49 = load i32, i32* %20, align 4
  %50 = icmp eq i32 %49, 8
  br i1 %50, label %51, label %67

51:                                               ; preds = %41
  store i32 0, i32* %23, align 4
  br label %52

52:                                               ; preds = %63, %51
  %53 = load i32, i32* %23, align 4
  %54 = load i32, i32* %24, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %52
  %57 = load i32*, i32** %18, align 8
  %58 = load i32, i32* %23, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = ashr i32 %61, 2
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %56
  %64 = load i32, i32* %23, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %23, align 4
  br label %52

66:                                               ; preds = %52
  br label %94

67:                                               ; preds = %41
  store i32 0, i32* %23, align 4
  br label %68

68:                                               ; preds = %90, %67
  %69 = load i32, i32* %23, align 4
  %70 = load i32, i32* %24, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %93

72:                                               ; preds = %68
  %73 = load i32*, i32** %18, align 8
  %74 = load i32, i32* %23, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = shl i32 %77, 6
  %79 = load i32*, i32** %18, align 8
  %80 = load i32, i32* %23, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = ashr i32 %83, 4
  %85 = or i32 %78, %84
  %86 = load i32*, i32** %18, align 8
  %87 = load i32, i32* %23, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32 %85, i32* %89, align 4
  br label %90

90:                                               ; preds = %72
  %91 = load i32, i32* %23, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %23, align 4
  br label %68

93:                                               ; preds = %68
  br label %94

94:                                               ; preds = %93, %66
  %95 = load i32, i32* %24, align 4
  store i32 %95, i32* %23, align 4
  br label %96

96:                                               ; preds = %111, %94
  %97 = load i32, i32* %23, align 4
  %98 = load i32, i32* %21, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %114

100:                                              ; preds = %96
  %101 = load i32*, i32** %18, align 8
  %102 = load i32, i32* %24, align 4
  %103 = sub nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %101, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** %18, align 8
  %108 = load i32, i32* %23, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  store i32 %106, i32* %110, align 4
  br label %111

111:                                              ; preds = %100
  %112 = load i32, i32* %23, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %23, align 4
  br label %96

114:                                              ; preds = %96
  %115 = load i32, i32* %21, align 4
  %116 = load i32*, i32** %18, align 8
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  store i32* %118, i32** %18, align 8
  %119 = load i32, i32* %13, align 4
  %120 = ashr i32 %119, 1
  %121 = load i32*, i32** %12, align 8
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  store i32* %123, i32** %12, align 8
  br label %124

124:                                              ; preds = %114
  %125 = load i32, i32* %22, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %22, align 4
  br label %37

127:                                              ; preds = %37
  br label %128

128:                                              ; preds = %147, %127
  %129 = load i32, i32* %22, align 4
  %130 = icmp slt i32 %129, 16
  br i1 %130, label %131, label %150

131:                                              ; preds = %128
  %132 = load i32*, i32** %18, align 8
  %133 = load i32*, i32** %18, align 8
  %134 = load i32, i32* %21, align 4
  %135 = sext i32 %134 to i64
  %136 = sub i64 0, %135
  %137 = getelementptr inbounds i32, i32* %133, i64 %136
  %138 = load i32, i32* %21, align 4
  %139 = sext i32 %138 to i64
  %140 = mul i64 %139, 4
  %141 = trunc i64 %140 to i32
  %142 = call i32 @memcpy(i32* %132, i32* %137, i32 %141)
  %143 = load i32, i32* %21, align 4
  %144 = load i32*, i32** %18, align 8
  %145 = sext i32 %143 to i64
  %146 = getelementptr inbounds i32, i32* %144, i64 %145
  store i32* %146, i32** %18, align 8
  br label %147

147:                                              ; preds = %131
  %148 = load i32, i32* %22, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %22, align 4
  br label %128

150:                                              ; preds = %128
  ret void
}

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
