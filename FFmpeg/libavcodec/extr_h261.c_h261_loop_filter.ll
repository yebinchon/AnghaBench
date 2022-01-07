; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h261.c_h261_loop_filter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h261.c_h261_loop_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @h261_loop_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @h261_loop_filter(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [64 x i32], align 16
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %36, %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 8
  br i1 %12, label %13, label %39

13:                                               ; preds = %10
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 4, %18
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 %21
  store i32 %19, i32* %22, align 4
  %23 = load i32*, i32** %3, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %4, align 4
  %26 = mul nsw i32 7, %25
  %27 = add nsw i32 %24, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %23, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 4, %30
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 56
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 %34
  store i32 %31, i32* %35, align 4
  br label %36

36:                                               ; preds = %13
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %10

39:                                               ; preds = %10
  store i32 1, i32* %6, align 4
  br label %40

40:                                               ; preds = %86, %39
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 7
  br i1 %42, label %43, label %89

43:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %82, %43
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %45, 8
  br i1 %46, label %47, label %85

47:                                               ; preds = %44
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %4, align 4
  %50 = mul nsw i32 %48, %49
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %50, %51
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %6, align 4
  %54 = mul nsw i32 %53, 8
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %54, %55
  store i32 %56, i32* %8, align 4
  %57 = load i32*, i32** %3, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %4, align 4
  %60 = sub nsw i32 %58, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %57, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %3, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 2, %68
  %70 = add nsw i32 %63, %69
  %71 = load i32*, i32** %3, align 8
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %71, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %70, %77
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 %80
  store i32 %78, i32* %81, align 4
  br label %82

82:                                               ; preds = %47
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %5, align 4
  br label %44

85:                                               ; preds = %44
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %6, align 4
  br label %40

89:                                               ; preds = %40
  store i32 0, i32* %6, align 4
  br label %90

90:                                               ; preds = %162, %89
  %91 = load i32, i32* %6, align 4
  %92 = icmp slt i32 %91, 8
  br i1 %92, label %93, label %165

93:                                               ; preds = %90
  %94 = load i32, i32* %6, align 4
  %95 = mul nsw i32 %94, 8
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 2
  %100 = ashr i32 %99, 2
  %101 = load i32*, i32** %3, align 8
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* %4, align 4
  %104 = mul nsw i32 %102, %103
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %101, i64 %105
  store i32 %100, i32* %106, align 4
  %107 = load i32, i32* %6, align 4
  %108 = mul nsw i32 %107, 8
  %109 = add nsw i32 %108, 7
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, 2
  %114 = ashr i32 %113, 2
  %115 = load i32*, i32** %3, align 8
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* %4, align 4
  %118 = mul nsw i32 %116, %117
  %119 = add nsw i32 %118, 7
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %115, i64 %120
  store i32 %114, i32* %121, align 4
  store i32 1, i32* %5, align 4
  br label %122

122:                                              ; preds = %158, %93
  %123 = load i32, i32* %5, align 4
  %124 = icmp slt i32 %123, 7
  br i1 %124, label %125, label %161

125:                                              ; preds = %122
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* %4, align 4
  %128 = mul nsw i32 %126, %127
  %129 = load i32, i32* %5, align 4
  %130 = add nsw i32 %128, %129
  store i32 %130, i32* %7, align 4
  %131 = load i32, i32* %6, align 4
  %132 = mul nsw i32 %131, 8
  %133 = load i32, i32* %5, align 4
  %134 = add nsw i32 %132, %133
  store i32 %134, i32* %8, align 4
  %135 = load i32, i32* %8, align 4
  %136 = sub nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %8, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = mul nsw i32 2, %143
  %145 = add nsw i32 %139, %144
  %146 = load i32, i32* %8, align 4
  %147 = add nsw i32 %146, 1
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %145, %150
  %152 = add nsw i32 %151, 8
  %153 = ashr i32 %152, 4
  %154 = load i32*, i32** %3, align 8
  %155 = load i32, i32* %7, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  store i32 %153, i32* %157, align 4
  br label %158

158:                                              ; preds = %125
  %159 = load i32, i32* %5, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %5, align 4
  br label %122

161:                                              ; preds = %122
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %6, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %6, align 4
  br label %90

165:                                              ; preds = %90
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
