; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_jpeg2000dwt.c_sr_1d97_int.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_jpeg2000dwt.c_sr_1d97_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@I_LFTG_K = common dso_local global i32 0, align 4
@I_LFTG_X = common dso_local global i32 0, align 4
@I_LFTG_DELTA = common dso_local global i32 0, align 4
@I_LFTG_GAMMA = common dso_local global i32 0, align 4
@I_LFTG_BETA = common dso_local global i32 0, align 4
@I_LFTG_ALPHA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @sr_1d97_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sr_1d97_int(i32* %0, i32 %1, i32 %2) #0 {
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
  %19 = load i32, i32* @I_LFTG_K, align 4
  %20 = mul nsw i32 %18, %19
  %21 = add nsw i32 %20, 65536
  %22 = ashr i32 %21, 17
  %23 = load i32*, i32** %4, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  store i32 %22, i32* %24, align 4
  br label %35

25:                                               ; preds = %12
  %26 = load i32*, i32** %4, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @I_LFTG_X, align 4
  %30 = mul nsw i32 %28, %29
  %31 = add nsw i32 %30, 32768
  %32 = ashr i32 %31, 16
  %33 = load i32*, i32** %4, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %25, %15
  br label %197

36:                                               ; preds = %3
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @extend97_int(i32* %37, i32 %38, i32 %39)
  %41 = load i32, i32* %5, align 4
  %42 = ashr i32 %41, 1
  %43 = sub nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %77, %36
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %6, align 4
  %47 = ashr i32 %46, 1
  %48 = add nsw i32 %47, 2
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %80

50:                                               ; preds = %44
  %51 = load i32, i32* @I_LFTG_DELTA, align 4
  %52 = load i32*, i32** %4, align 8
  %53 = load i32, i32* %7, align 4
  %54 = mul nsw i32 2, %53
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %52, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %4, align 8
  %60 = load i32, i32* %7, align 4
  %61 = mul nsw i32 2, %60
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %59, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %58, %65
  %67 = mul nsw i32 %51, %66
  %68 = add nsw i32 %67, 32768
  %69 = ashr i32 %68, 16
  %70 = load i32*, i32** %4, align 8
  %71 = load i32, i32* %7, align 4
  %72 = mul nsw i32 2, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = sub nsw i32 %75, %69
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %50
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %44

80:                                               ; preds = %44
  %81 = load i32, i32* %5, align 4
  %82 = ashr i32 %81, 1
  %83 = sub nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %117, %80
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %6, align 4
  %87 = ashr i32 %86, 1
  %88 = add nsw i32 %87, 1
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %120

90:                                               ; preds = %84
  %91 = load i32, i32* @I_LFTG_GAMMA, align 4
  %92 = load i32*, i32** %4, align 8
  %93 = load i32, i32* %7, align 4
  %94 = mul nsw i32 2, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %92, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %4, align 8
  %99 = load i32, i32* %7, align 4
  %100 = mul nsw i32 2, %99
  %101 = add nsw i32 %100, 2
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %98, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %97, %104
  %106 = mul nsw i32 %91, %105
  %107 = add nsw i32 %106, 32768
  %108 = ashr i32 %107, 16
  %109 = load i32*, i32** %4, align 8
  %110 = load i32, i32* %7, align 4
  %111 = mul nsw i32 2, %110
  %112 = add nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %109, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = sub nsw i32 %115, %108
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %90
  %118 = load i32, i32* %7, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %7, align 4
  br label %84

120:                                              ; preds = %84
  %121 = load i32, i32* %5, align 4
  %122 = ashr i32 %121, 1
  store i32 %122, i32* %7, align 4
  br label %123

123:                                              ; preds = %156, %120
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* %6, align 4
  %126 = ashr i32 %125, 1
  %127 = add nsw i32 %126, 1
  %128 = icmp slt i32 %124, %127
  br i1 %128, label %129, label %159

129:                                              ; preds = %123
  %130 = load i32, i32* @I_LFTG_BETA, align 4
  %131 = load i32*, i32** %4, align 8
  %132 = load i32, i32* %7, align 4
  %133 = mul nsw i32 2, %132
  %134 = sub nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %131, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = load i32*, i32** %4, align 8
  %139 = load i32, i32* %7, align 4
  %140 = mul nsw i32 2, %139
  %141 = add nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %138, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %137, %144
  %146 = mul nsw i32 %130, %145
  %147 = add nsw i32 %146, 32768
  %148 = ashr i32 %147, 16
  %149 = load i32*, i32** %4, align 8
  %150 = load i32, i32* %7, align 4
  %151 = mul nsw i32 2, %150
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %149, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 %154, %148
  store i32 %155, i32* %153, align 4
  br label %156

156:                                              ; preds = %129
  %157 = load i32, i32* %7, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %7, align 4
  br label %123

159:                                              ; preds = %123
  %160 = load i32, i32* %5, align 4
  %161 = ashr i32 %160, 1
  store i32 %161, i32* %7, align 4
  br label %162

162:                                              ; preds = %194, %159
  %163 = load i32, i32* %7, align 4
  %164 = load i32, i32* %6, align 4
  %165 = ashr i32 %164, 1
  %166 = icmp slt i32 %163, %165
  br i1 %166, label %167, label %197

167:                                              ; preds = %162
  %168 = load i32, i32* @I_LFTG_ALPHA, align 4
  %169 = load i32*, i32** %4, align 8
  %170 = load i32, i32* %7, align 4
  %171 = mul nsw i32 2, %170
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %169, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = load i32*, i32** %4, align 8
  %176 = load i32, i32* %7, align 4
  %177 = mul nsw i32 2, %176
  %178 = add nsw i32 %177, 2
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %175, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = add nsw i32 %174, %181
  %183 = mul nsw i32 %168, %182
  %184 = add nsw i32 %183, 32768
  %185 = ashr i32 %184, 16
  %186 = load i32*, i32** %4, align 8
  %187 = load i32, i32* %7, align 4
  %188 = mul nsw i32 2, %187
  %189 = add nsw i32 %188, 1
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %186, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = add nsw i32 %192, %185
  store i32 %193, i32* %191, align 4
  br label %194

194:                                              ; preds = %167
  %195 = load i32, i32* %7, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %7, align 4
  br label %162

197:                                              ; preds = %35, %162
  ret void
}

declare dso_local i32 @extend97_int(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
