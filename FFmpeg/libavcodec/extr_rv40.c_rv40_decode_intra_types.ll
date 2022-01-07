; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rv40.c_rv40_decode_intra_types.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rv40.c_rv40_decode_intra_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@aic_top_vlc = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@AIC_TOP_BITS = common dso_local global i32 0, align 4
@MODE2_PATTERNS_NUM = common dso_local global i32 0, align 4
@rv40_aic_table_index = common dso_local global i32* null, align 8
@aic_mode2_vlc = common dso_local global %struct.TYPE_10__* null, align 8
@AIC_MODE2_BITS = common dso_local global i32 0, align 4
@aic_mode1_vlc = common dso_local global %struct.TYPE_11__* null, align 8
@AIC_MODE1_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i32*)* @rv40_decode_intra_types to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rv40_decode_intra_types(%struct.TYPE_7__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  store %struct.TYPE_8__* %18, %struct.TYPE_8__** %7, align 8
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %175, %3
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 4
  br i1 %21, label %22, label %184

22:                                               ; preds = %19
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %54, label %25

25:                                               ; preds = %22
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %54

30:                                               ; preds = %25
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aic_top_vlc, i32 0, i32 0), align 4
  %33 = load i32, i32* @AIC_TOP_BITS, align 4
  %34 = call i32 @get_vlc2(i32* %31, i32 %32, i32 %33, i32 1)
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %15, align 4
  %36 = ashr i32 %35, 2
  %37 = and i32 %36, 2
  %38 = load i32*, i32** %6, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %15, align 4
  %41 = ashr i32 %40, 1
  %42 = and i32 %41, 2
  %43 = load i32*, i32** %6, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %15, align 4
  %46 = and i32 %45, 2
  %47 = load i32*, i32** %6, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %15, align 4
  %50 = shl i32 %49, 1
  %51 = and i32 %50, 2
  %52 = load i32*, i32** %6, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 3
  store i32 %51, i32* %53, align 4
  br label %175

54:                                               ; preds = %25, %22
  %55 = load i32*, i32** %6, align 8
  store i32* %55, i32** %16, align 8
  store i32 0, i32* %9, align 4
  br label %56

56:                                               ; preds = %171, %54
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %57, 4
  br i1 %58, label %59, label %174

59:                                               ; preds = %56
  %60 = load i32*, i32** %16, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sub nsw i32 0, %63
  %65 = add nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %60, i64 %66
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %12, align 4
  %69 = load i32*, i32** %16, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sub nsw i32 0, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %69, i64 %74
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %13, align 4
  %77 = load i32*, i32** %16, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 -1
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %14, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %13, align 4
  %82 = mul nsw i32 %81, 16
  %83 = add nsw i32 %80, %82
  %84 = load i32, i32* %14, align 4
  %85 = mul nsw i32 %84, 256
  %86 = add nsw i32 %83, %85
  store i32 %86, i32* %15, align 4
  store i32 0, i32* %10, align 4
  br label %87

87:                                               ; preds = %101, %59
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* @MODE2_PATTERNS_NUM, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %104

91:                                               ; preds = %87
  %92 = load i32, i32* %15, align 4
  %93 = load i32*, i32** @rv40_aic_table_index, align 8
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %92, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  br label %104

100:                                              ; preds = %91
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %10, align 4
  br label %87

104:                                              ; preds = %99, %87
  %105 = load i32, i32* %9, align 4
  %106 = icmp slt i32 %105, 3
  br i1 %106, label %107, label %131

107:                                              ; preds = %104
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* @MODE2_PATTERNS_NUM, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %131

111:                                              ; preds = %107
  %112 = load i32*, i32** %5, align 8
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** @aic_mode2_vlc, align 8
  %114 = load i32, i32* %10, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @AIC_MODE2_BITS, align 4
  %120 = call i32 @get_vlc2(i32* %112, i32 %118, i32 %119, i32 2)
  store i32 %120, i32* %11, align 4
  %121 = load i32, i32* %11, align 4
  %122 = sdiv i32 %121, 9
  %123 = load i32*, i32** %16, align 8
  %124 = getelementptr inbounds i32, i32* %123, i32 1
  store i32* %124, i32** %16, align 8
  store i32 %122, i32* %123, align 4
  %125 = load i32, i32* %11, align 4
  %126 = srem i32 %125, 9
  %127 = load i32*, i32** %16, align 8
  %128 = getelementptr inbounds i32, i32* %127, i32 1
  store i32* %128, i32** %16, align 8
  store i32 %126, i32* %127, align 4
  %129 = load i32, i32* %9, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %9, align 4
  br label %170

131:                                              ; preds = %107, %104
  %132 = load i32, i32* %13, align 4
  %133 = icmp ne i32 %132, -1
  br i1 %133, label %134, label %150

134:                                              ; preds = %131
  %135 = load i32, i32* %14, align 4
  %136 = icmp ne i32 %135, -1
  br i1 %136, label %137, label %150

137:                                              ; preds = %134
  %138 = load i32*, i32** %5, align 8
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** @aic_mode1_vlc, align 8
  %140 = load i32, i32* %13, align 4
  %141 = load i32, i32* %14, align 4
  %142 = mul nsw i32 %141, 10
  %143 = add nsw i32 %140, %142
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @AIC_MODE1_BITS, align 4
  %149 = call i32 @get_vlc2(i32* %138, i32 %147, i32 %148, i32 1)
  store i32 %149, i32* %11, align 4
  br label %166

150:                                              ; preds = %134, %131
  store i32 0, i32* %11, align 4
  %151 = load i32, i32* %14, align 4
  switch i32 %151, label %165 [
    i32 -1, label %152
    i32 0, label %160
    i32 2, label %160
  ]

152:                                              ; preds = %150
  %153 = load i32, i32* %13, align 4
  %154 = icmp slt i32 %153, 2
  br i1 %154, label %155, label %159

155:                                              ; preds = %152
  %156 = load i32*, i32** %5, align 8
  %157 = call i32 @get_bits1(i32* %156)
  %158 = xor i32 %157, 1
  store i32 %158, i32* %11, align 4
  br label %159

159:                                              ; preds = %155, %152
  br label %165

160:                                              ; preds = %150, %150
  %161 = load i32*, i32** %5, align 8
  %162 = call i32 @get_bits1(i32* %161)
  %163 = xor i32 %162, 1
  %164 = shl i32 %163, 1
  store i32 %164, i32* %11, align 4
  br label %165

165:                                              ; preds = %150, %160, %159
  br label %166

166:                                              ; preds = %165, %137
  %167 = load i32, i32* %11, align 4
  %168 = load i32*, i32** %16, align 8
  %169 = getelementptr inbounds i32, i32* %168, i32 1
  store i32* %169, i32** %16, align 8
  store i32 %167, i32* %168, align 4
  br label %170

170:                                              ; preds = %166, %111
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %9, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %9, align 4
  br label %56

174:                                              ; preds = %56
  br label %175

175:                                              ; preds = %174, %30
  %176 = load i32, i32* %8, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %8, align 4
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32*, i32** %6, align 8
  %182 = sext i32 %180 to i64
  %183 = getelementptr inbounds i32, i32* %181, i64 %182
  store i32* %183, i32** %6, align 8
  br label %19

184:                                              ; preds = %19
  ret i32 0
}

declare dso_local i32 @get_vlc2(i32*, i32, i32, i32) #1

declare dso_local i32 @get_bits1(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
