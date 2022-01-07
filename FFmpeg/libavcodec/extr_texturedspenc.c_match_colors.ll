; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_texturedspenc.c_match_colors.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_texturedspenc.c_match_colors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@match_colors.indexMap = internal constant [8 x i32] [i32 0, i32 -2147483648, i32 0, i32 -2147483648, i32 -1073741824, i32 -1073741824, i32 1073741824, i32 1073741824], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32)* @match_colors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_colors(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [16 x i32], align 16
  %14 = alloca [4 x i32], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [16 x i32], align 16
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %17, align 4
  %24 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 0
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @rgb5652rgb(i32* %25, i32 %26)
  %28 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 0
  %29 = getelementptr inbounds i32, i32* %28, i64 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @rgb5652rgb(i32* %29, i32 %30)
  %32 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 0
  %33 = getelementptr inbounds i32, i32* %32, i64 8
  %34 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 0
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 0
  %37 = getelementptr inbounds i32, i32* %36, i64 4
  %38 = call i32 @lerp13rgb(i32* %33, i32* %35, i32* %37)
  %39 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 0
  %40 = getelementptr inbounds i32, i32* %39, i64 12
  %41 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 0
  %42 = getelementptr inbounds i32, i32* %41, i64 4
  %43 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 0
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = call i32 @lerp13rgb(i32* %40, i32* %42, i32* %44)
  %46 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 0
  %47 = load i32, i32* %46, align 16
  %48 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 4
  %49 = load i32, i32* %48, align 16
  %50 = sub nsw i32 %47, %49
  store i32 %50, i32* %10, align 4
  %51 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 5
  %54 = load i32, i32* %53, align 4
  %55 = sub nsw i32 %52, %54
  store i32 %55, i32* %11, align 4
  %56 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 2
  %57 = load i32, i32* %56, align 8
  %58 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 6
  %59 = load i32, i32* %58, align 8
  %60 = sub nsw i32 %57, %59
  store i32 %60, i32* %12, align 4
  store i32 0, i32* %16, align 4
  br label %61

61:                                               ; preds = %147, %4
  %62 = load i32, i32* %16, align 4
  %63 = icmp slt i32 %62, 4
  br i1 %63, label %64, label %150

64:                                               ; preds = %61
  store i32 0, i32* %15, align 4
  br label %65

65:                                               ; preds = %114, %64
  %66 = load i32, i32* %15, align 4
  %67 = icmp slt i32 %66, 4
  br i1 %67, label %68, label %117

68:                                               ; preds = %65
  %69 = load i32*, i32** %5, align 8
  %70 = load i32, i32* %15, align 4
  %71 = mul nsw i32 %70, 4
  %72 = add nsw i32 0, %71
  %73 = load i32, i32* %16, align 4
  %74 = load i32, i32* %6, align 4
  %75 = mul nsw i32 %73, %74
  %76 = add nsw i32 %72, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %69, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %10, align 4
  %81 = mul nsw i32 %79, %80
  %82 = load i32*, i32** %5, align 8
  %83 = load i32, i32* %15, align 4
  %84 = mul nsw i32 %83, 4
  %85 = add nsw i32 1, %84
  %86 = load i32, i32* %16, align 4
  %87 = load i32, i32* %6, align 4
  %88 = mul nsw i32 %86, %87
  %89 = add nsw i32 %85, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %82, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %11, align 4
  %94 = mul nsw i32 %92, %93
  %95 = add nsw i32 %81, %94
  %96 = load i32*, i32** %5, align 8
  %97 = load i32, i32* %15, align 4
  %98 = mul nsw i32 %97, 4
  %99 = add nsw i32 2, %98
  %100 = load i32, i32* %16, align 4
  %101 = load i32, i32* %6, align 4
  %102 = mul nsw i32 %100, %101
  %103 = add nsw i32 %99, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %96, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %12, align 4
  %108 = mul nsw i32 %106, %107
  %109 = add nsw i32 %95, %108
  %110 = load i32, i32* %17, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %17, align 4
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 %112
  store i32 %109, i32* %113, align 4
  br label %114

114:                                              ; preds = %68
  %115 = load i32, i32* %15, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %15, align 4
  br label %65

117:                                              ; preds = %65
  %118 = load i32, i32* %16, align 4
  %119 = mul nsw i32 %118, 4
  %120 = add nsw i32 0, %119
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %10, align 4
  %125 = mul nsw i32 %123, %124
  %126 = load i32, i32* %16, align 4
  %127 = mul nsw i32 %126, 4
  %128 = add nsw i32 1, %127
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %11, align 4
  %133 = mul nsw i32 %131, %132
  %134 = add nsw i32 %125, %133
  %135 = load i32, i32* %16, align 4
  %136 = mul nsw i32 %135, 4
  %137 = add nsw i32 2, %136
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %12, align 4
  %142 = mul nsw i32 %140, %141
  %143 = add nsw i32 %134, %142
  %144 = load i32, i32* %16, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %145
  store i32 %143, i32* %146, align 4
  br label %147

147:                                              ; preds = %117
  %148 = load i32, i32* %16, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %16, align 4
  br label %61

150:                                              ; preds = %61
  %151 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 1
  %152 = load i32, i32* %151, align 4
  %153 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 3
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 %152, %154
  %156 = ashr i32 %155, 1
  store i32 %156, i32* %18, align 4
  %157 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 3
  %158 = load i32, i32* %157, align 4
  %159 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 2
  %160 = load i32, i32* %159, align 8
  %161 = add nsw i32 %158, %160
  %162 = ashr i32 %161, 1
  store i32 %162, i32* %19, align 4
  %163 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 2
  %164 = load i32, i32* %163, align 8
  %165 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %166 = load i32, i32* %165, align 16
  %167 = add nsw i32 %164, %166
  %168 = ashr i32 %167, 1
  store i32 %168, i32* %20, align 4
  store i32 0, i32* %15, align 4
  br label %169

169:                                              ; preds = %202, %150
  %170 = load i32, i32* %15, align 4
  %171 = icmp slt i32 %170, 16
  br i1 %171, label %172, label %205

172:                                              ; preds = %169
  %173 = load i32, i32* %15, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 %174
  %176 = load i32, i32* %175, align 4
  store i32 %176, i32* %22, align 4
  %177 = load i32, i32* %22, align 4
  %178 = load i32, i32* %19, align 4
  %179 = icmp slt i32 %177, %178
  %180 = zext i1 %179 to i64
  %181 = select i1 %179, i32 4, i32 0
  %182 = load i32, i32* %22, align 4
  %183 = load i32, i32* %18, align 4
  %184 = icmp slt i32 %182, %183
  %185 = zext i1 %184 to i64
  %186 = select i1 %184, i32 2, i32 0
  %187 = or i32 %181, %186
  %188 = load i32, i32* %22, align 4
  %189 = load i32, i32* %20, align 4
  %190 = icmp slt i32 %188, %189
  %191 = zext i1 %190 to i64
  %192 = select i1 %190, i32 1, i32 0
  %193 = or i32 %187, %192
  store i32 %193, i32* %23, align 4
  %194 = load i32, i32* %9, align 4
  %195 = ashr i32 %194, 2
  store i32 %195, i32* %9, align 4
  %196 = load i32, i32* %23, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [8 x i32], [8 x i32]* @match_colors.indexMap, i64 0, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* %9, align 4
  %201 = or i32 %200, %199
  store i32 %201, i32* %9, align 4
  br label %202

202:                                              ; preds = %172
  %203 = load i32, i32* %15, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %15, align 4
  br label %169

205:                                              ; preds = %169
  %206 = load i32, i32* %9, align 4
  ret i32 %206
}

declare dso_local i32 @rgb5652rgb(i32*, i32) #1

declare dso_local i32 @lerp13rgb(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
