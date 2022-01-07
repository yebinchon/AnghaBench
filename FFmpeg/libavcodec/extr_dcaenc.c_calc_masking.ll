; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dcaenc.c_calc_masking.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dcaenc.c_calc_masking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32**, i32, i32*, i32**, i32, i32*, i32* }

@SUBSUBFRAMES = common dso_local global i32 0, align 4
@update_band_masking = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32*)* @calc_masking to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calc_masking(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [512 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %36, %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 256
  br i1 %15, label %16, label %39

16:                                               ; preds = %13
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %32, %16
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @SUBSUBFRAMES, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %17
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32**, i32*** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32*, i32** %24, i64 %26
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32 -2047, i32* %31, align 4
  br label %32

32:                                               ; preds = %21
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %9, align 4
  br label %17

35:                                               ; preds = %17
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %13

39:                                               ; preds = %13
  store i32 0, i32* %9, align 4
  br label %40

40:                                               ; preds = %126, %39
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @SUBSUBFRAMES, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %129

44:                                               ; preds = %40
  store i32 0, i32* %8, align 4
  br label %45

45:                                               ; preds = %122, %44
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %125

51:                                               ; preds = %45
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %11, align 4
  store i32 0, i32* %5, align 4
  %59 = load i32, i32* %9, align 4
  %60 = mul nsw i32 256, %59
  %61 = add nsw i32 128, %60
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %80, %51
  %63 = load i32, i32* %6, align 4
  %64 = icmp slt i32 %63, 512
  br i1 %64, label %65, label %85

65:                                               ; preds = %62
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 3
  %68 = load i32**, i32*** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32*, i32** %68, i64 %70
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [512 x i32], [512 x i32]* %10, i64 0, i64 %78
  store i32 %76, i32* %79, align 4
  br label %80

80:                                               ; preds = %65
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %6, align 4
  br label %62

85:                                               ; preds = %62
  %86 = load i32, i32* %6, align 4
  %87 = sub nsw i32 %86, 512
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %106, %85
  %89 = load i32, i32* %5, align 4
  %90 = icmp slt i32 %89, 512
  br i1 %90, label %91, label %111

91:                                               ; preds = %88
  %92 = load i32*, i32** %4, align 8
  %93 = load i32, i32* %6, align 4
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = mul nsw i32 %93, %96
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %97, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %92, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [512 x i32], [512 x i32]* %10, i64 0, i64 %104
  store i32 %102, i32* %105, align 4
  br label %106

106:                                              ; preds = %91
  %107 = load i32, i32* %5, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %5, align 4
  %109 = load i32, i32* %6, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %6, align 4
  br label %88

111:                                              ; preds = %88
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %113 = getelementptr inbounds [512 x i32], [512 x i32]* %10, i64 0, i64 0
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32**, i32*** %115, align 8
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32*, i32** %116, i64 %118
  %120 = load i32*, i32** %119, align 8
  %121 = call i32 @adjust_jnd(%struct.TYPE_6__* %112, i32* %113, i32* %120)
  br label %122

122:                                              ; preds = %111
  %123 = load i32, i32* %8, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %8, align 4
  br label %45

125:                                              ; preds = %45
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %9, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %9, align 4
  br label %40

129:                                              ; preds = %40
  store i32 0, i32* %5, align 4
  br label %130

130:                                              ; preds = %176, %129
  %131 = load i32, i32* %5, align 4
  %132 = icmp slt i32 %131, 256
  br i1 %132, label %133, label %179

133:                                              ; preds = %130
  store i32 2048, i32* %12, align 4
  store i32 0, i32* %9, align 4
  br label %134

134:                                              ; preds = %165, %133
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* @SUBSUBFRAMES, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %168

138:                                              ; preds = %134
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i32**, i32*** %140, align 8
  %142 = load i32, i32* %9, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32*, i32** %141, i64 %143
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %5, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %12, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %164

152:                                              ; preds = %138
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = load i32**, i32*** %154, align 8
  %156 = load i32, i32* %9, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32*, i32** %155, i64 %157
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %5, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  store i32 %163, i32* %12, align 4
  br label %164

164:                                              ; preds = %152, %138
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %9, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %9, align 4
  br label %134

168:                                              ; preds = %134
  %169 = load i32, i32* %12, align 4
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 5
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* %5, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  store i32 %169, i32* %175, align 4
  br label %176

176:                                              ; preds = %168
  %177 = load i32, i32* %5, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %5, align 4
  br label %130

179:                                              ; preds = %130
  store i32 0, i32* %7, align 4
  br label %180

180:                                              ; preds = %198, %179
  %181 = load i32, i32* %7, align 4
  %182 = icmp slt i32 %181, 32
  br i1 %182, label %183, label %201

183:                                              ; preds = %180
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 6
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* %7, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  store i32 2048, i32* %189, align 4
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %191 = load i32, i32* %7, align 4
  %192 = load i32, i32* @update_band_masking, align 4
  %193 = call i32 @walk_band_low(%struct.TYPE_6__* %190, i32 %191, i32 0, i32 %192, i32* null)
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %195 = load i32, i32* %7, align 4
  %196 = load i32, i32* @update_band_masking, align 4
  %197 = call i32 @walk_band_high(%struct.TYPE_6__* %194, i32 %195, i32 0, i32 %196, i32* null)
  br label %198

198:                                              ; preds = %183
  %199 = load i32, i32* %7, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %7, align 4
  br label %180

201:                                              ; preds = %180
  ret void
}

declare dso_local i32 @adjust_jnd(%struct.TYPE_6__*, i32*, i32*) #1

declare dso_local i32 @walk_band_low(%struct.TYPE_6__*, i32, i32, i32, i32*) #1

declare dso_local i32 @walk_band_high(%struct.TYPE_6__*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
