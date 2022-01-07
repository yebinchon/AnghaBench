; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h263dsp.c_h263_h_loop_filter_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h263dsp.c_h263_h_loop_filter_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_h263_loop_filter_strength = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @h263_h_loop_filter_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @h263_h_loop_filter_c(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %17 = load i32*, i32** @ff_h263_loop_filter_strength, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %172, %3
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 8
  br i1 %24, label %25, label %175

25:                                               ; preds = %22
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %5, align 4
  %29 = mul nsw i32 %27, %28
  %30 = sub nsw i32 %29, 2
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %26, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %12, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %5, align 4
  %37 = mul nsw i32 %35, %36
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %34, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %13, align 4
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %5, align 4
  %45 = mul nsw i32 %43, %44
  %46 = add nsw i32 %45, 0
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %42, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %14, align 4
  %50 = load i32*, i32** %4, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %5, align 4
  %53 = mul nsw i32 %51, %52
  %54 = add nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %50, i64 %55
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %15, align 4
  %60 = sub nsw i32 %58, %59
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %13, align 4
  %63 = sub nsw i32 %61, %62
  %64 = mul nsw i32 4, %63
  %65 = add nsw i32 %60, %64
  %66 = sdiv i32 %65, 8
  store i32 %66, i32* %16, align 4
  %67 = load i32, i32* %16, align 4
  %68 = load i32, i32* %8, align 4
  %69 = mul nsw i32 -2, %68
  %70 = icmp slt i32 %67, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %25
  store i32 0, i32* %9, align 4
  br label %102

72:                                               ; preds = %25
  %73 = load i32, i32* %16, align 4
  %74 = load i32, i32* %8, align 4
  %75 = sub nsw i32 0, %74
  %76 = icmp slt i32 %73, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load i32, i32* %8, align 4
  %79 = mul nsw i32 -2, %78
  %80 = load i32, i32* %16, align 4
  %81 = sub nsw i32 %79, %80
  store i32 %81, i32* %9, align 4
  br label %101

82:                                               ; preds = %72
  %83 = load i32, i32* %16, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = load i32, i32* %16, align 4
  store i32 %87, i32* %9, align 4
  br label %100

88:                                               ; preds = %82
  %89 = load i32, i32* %16, align 4
  %90 = load i32, i32* %8, align 4
  %91 = mul nsw i32 2, %90
  %92 = icmp slt i32 %89, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load i32, i32* %8, align 4
  %95 = mul nsw i32 2, %94
  %96 = load i32, i32* %16, align 4
  %97 = sub nsw i32 %95, %96
  store i32 %97, i32* %9, align 4
  br label %99

98:                                               ; preds = %88
  store i32 0, i32* %9, align 4
  br label %99

99:                                               ; preds = %98, %93
  br label %100

100:                                              ; preds = %99, %86
  br label %101

101:                                              ; preds = %100, %77
  br label %102

102:                                              ; preds = %101, %71
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %13, align 4
  %105 = add nsw i32 %104, %103
  store i32 %105, i32* %13, align 4
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %14, align 4
  %108 = sub nsw i32 %107, %106
  store i32 %108, i32* %14, align 4
  %109 = load i32, i32* %13, align 4
  %110 = and i32 %109, 256
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %102
  %113 = load i32, i32* %13, align 4
  %114 = ashr i32 %113, 31
  %115 = xor i32 %114, -1
  store i32 %115, i32* %13, align 4
  br label %116

116:                                              ; preds = %112, %102
  %117 = load i32, i32* %14, align 4
  %118 = and i32 %117, 256
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %116
  %121 = load i32, i32* %14, align 4
  %122 = ashr i32 %121, 31
  %123 = xor i32 %122, -1
  store i32 %123, i32* %14, align 4
  br label %124

124:                                              ; preds = %120, %116
  %125 = load i32, i32* %13, align 4
  %126 = load i32*, i32** %4, align 8
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* %5, align 4
  %129 = mul nsw i32 %127, %128
  %130 = sub nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %126, i64 %131
  store i32 %125, i32* %132, align 4
  %133 = load i32, i32* %14, align 4
  %134 = load i32*, i32** %4, align 8
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* %5, align 4
  %137 = mul nsw i32 %135, %136
  %138 = add nsw i32 %137, 0
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %134, i64 %139
  store i32 %133, i32* %140, align 4
  %141 = load i32, i32* %9, align 4
  %142 = call i32 @FFABS(i32 %141)
  %143 = ashr i32 %142, 1
  store i32 %143, i32* %11, align 4
  %144 = load i32, i32* %12, align 4
  %145 = load i32, i32* %15, align 4
  %146 = sub nsw i32 %144, %145
  %147 = sdiv i32 %146, 4
  %148 = load i32, i32* %11, align 4
  %149 = sub nsw i32 0, %148
  %150 = load i32, i32* %11, align 4
  %151 = call i32 @av_clip(i32 %147, i32 %149, i32 %150)
  store i32 %151, i32* %10, align 4
  %152 = load i32, i32* %12, align 4
  %153 = load i32, i32* %10, align 4
  %154 = sub nsw i32 %152, %153
  %155 = load i32*, i32** %4, align 8
  %156 = load i32, i32* %7, align 4
  %157 = load i32, i32* %5, align 4
  %158 = mul nsw i32 %156, %157
  %159 = sub nsw i32 %158, 2
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %155, i64 %160
  store i32 %154, i32* %161, align 4
  %162 = load i32, i32* %15, align 4
  %163 = load i32, i32* %10, align 4
  %164 = add nsw i32 %162, %163
  %165 = load i32*, i32** %4, align 8
  %166 = load i32, i32* %7, align 4
  %167 = load i32, i32* %5, align 4
  %168 = mul nsw i32 %166, %167
  %169 = add nsw i32 %168, 1
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %165, i64 %170
  store i32 %164, i32* %171, align 4
  br label %172

172:                                              ; preds = %124
  %173 = load i32, i32* %7, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %7, align 4
  br label %22

175:                                              ; preds = %22
  ret void
}

declare dso_local i32 @FFABS(i32) #1

declare dso_local i32 @av_clip(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
