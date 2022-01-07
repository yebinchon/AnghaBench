; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_jpeg2000dwt.c_sd_1d97_int.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_jpeg2000dwt.c_sd_1d97_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@I_LFTG_X = common dso_local global i32 0, align 4
@I_LFTG_K = common dso_local global i32 0, align 4
@I_LFTG_ALPHA = common dso_local global i32 0, align 4
@I_LFTG_BETA = common dso_local global i32 0, align 4
@I_LFTG_GAMMA = common dso_local global i32 0, align 4
@I_LFTG_DELTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @sd_1d97_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_1d97_int(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = add nsw i32 %9, 1
  %11 = icmp sle i32 %8, %10
  br i1 %11, label %12, label %36

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %25

15:                                               ; preds = %12
  %16 = load i32*, i32** %4, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @I_LFTG_X, align 4
  %20 = mul nsw i32 %18, %19
  %21 = add nsw i32 %20, 16384
  %22 = ashr i32 %21, 15
  %23 = load i32*, i32** %4, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  store i32 %22, i32* %24, align 4
  br label %35

25:                                               ; preds = %12
  %26 = load i32*, i32** %4, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @I_LFTG_K, align 4
  %30 = mul nsw i32 %28, %29
  %31 = add nsw i32 %30, 32768
  %32 = ashr i32 %31, 16
  %33 = load i32*, i32** %4, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %25, %15
  br label %201

36:                                               ; preds = %3
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @extend97_int(i32* %37, i32 %38, i32 %39)
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %5, align 4
  %46 = ashr i32 %45, 1
  %47 = sub nsw i32 %46, 2
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %81, %36
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %6, align 4
  %51 = ashr i32 %50, 1
  %52 = add nsw i32 %51, 1
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %84

54:                                               ; preds = %48
  %55 = load i32, i32* @I_LFTG_ALPHA, align 4
  %56 = load i32*, i32** %4, align 8
  %57 = load i32, i32* %7, align 4
  %58 = mul nsw i32 2, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %4, align 8
  %63 = load i32, i32* %7, align 4
  %64 = mul nsw i32 2, %63
  %65 = add nsw i32 %64, 2
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %62, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %61, %68
  %70 = mul nsw i32 %55, %69
  %71 = add nsw i32 %70, 32768
  %72 = ashr i32 %71, 16
  %73 = load i32*, i32** %4, align 8
  %74 = load i32, i32* %7, align 4
  %75 = mul nsw i32 2, %74
  %76 = add nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %73, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = sub nsw i32 %79, %72
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %54
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  br label %48

84:                                               ; preds = %48
  %85 = load i32, i32* %5, align 4
  %86 = ashr i32 %85, 1
  %87 = sub nsw i32 %86, 1
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %121, %84
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %6, align 4
  %91 = ashr i32 %90, 1
  %92 = add nsw i32 %91, 1
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %124

94:                                               ; preds = %88
  %95 = load i32, i32* @I_LFTG_BETA, align 4
  %96 = load i32*, i32** %4, align 8
  %97 = load i32, i32* %7, align 4
  %98 = mul nsw i32 2, %97
  %99 = sub nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %96, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** %4, align 8
  %104 = load i32, i32* %7, align 4
  %105 = mul nsw i32 2, %104
  %106 = add nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %103, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %102, %109
  %111 = mul nsw i32 %95, %110
  %112 = add nsw i32 %111, 32768
  %113 = ashr i32 %112, 16
  %114 = load i32*, i32** %4, align 8
  %115 = load i32, i32* %7, align 4
  %116 = mul nsw i32 2, %115
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %114, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = sub nsw i32 %119, %113
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %94
  %122 = load i32, i32* %7, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %7, align 4
  br label %88

124:                                              ; preds = %88
  %125 = load i32, i32* %5, align 4
  %126 = ashr i32 %125, 1
  %127 = sub nsw i32 %126, 1
  store i32 %127, i32* %7, align 4
  br label %128

128:                                              ; preds = %160, %124
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* %6, align 4
  %131 = ashr i32 %130, 1
  %132 = icmp slt i32 %129, %131
  br i1 %132, label %133, label %163

133:                                              ; preds = %128
  %134 = load i32, i32* @I_LFTG_GAMMA, align 4
  %135 = load i32*, i32** %4, align 8
  %136 = load i32, i32* %7, align 4
  %137 = mul nsw i32 2, %136
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %135, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = load i32*, i32** %4, align 8
  %142 = load i32, i32* %7, align 4
  %143 = mul nsw i32 2, %142
  %144 = add nsw i32 %143, 2
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %141, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %140, %147
  %149 = mul nsw i32 %134, %148
  %150 = add nsw i32 %149, 32768
  %151 = ashr i32 %150, 16
  %152 = load i32*, i32** %4, align 8
  %153 = load i32, i32* %7, align 4
  %154 = mul nsw i32 2, %153
  %155 = add nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %152, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %158, %151
  store i32 %159, i32* %157, align 4
  br label %160

160:                                              ; preds = %133
  %161 = load i32, i32* %7, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %7, align 4
  br label %128

163:                                              ; preds = %128
  %164 = load i32, i32* %5, align 4
  %165 = ashr i32 %164, 1
  store i32 %165, i32* %7, align 4
  br label %166

166:                                              ; preds = %198, %163
  %167 = load i32, i32* %7, align 4
  %168 = load i32, i32* %6, align 4
  %169 = ashr i32 %168, 1
  %170 = icmp slt i32 %167, %169
  br i1 %170, label %171, label %201

171:                                              ; preds = %166
  %172 = load i32, i32* @I_LFTG_DELTA, align 4
  %173 = load i32*, i32** %4, align 8
  %174 = load i32, i32* %7, align 4
  %175 = mul nsw i32 2, %174
  %176 = sub nsw i32 %175, 1
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %173, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = load i32*, i32** %4, align 8
  %181 = load i32, i32* %7, align 4
  %182 = mul nsw i32 2, %181
  %183 = add nsw i32 %182, 1
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %180, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = add nsw i32 %179, %186
  %188 = mul nsw i32 %172, %187
  %189 = add nsw i32 %188, 32768
  %190 = ashr i32 %189, 16
  %191 = load i32*, i32** %4, align 8
  %192 = load i32, i32* %7, align 4
  %193 = mul nsw i32 2, %192
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %191, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = add nsw i32 %196, %190
  store i32 %197, i32* %195, align 4
  br label %198

198:                                              ; preds = %171
  %199 = load i32, i32* %7, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %7, align 4
  br label %166

201:                                              ; preds = %35, %166
  ret void
}

declare dso_local i32 @extend97_int(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
