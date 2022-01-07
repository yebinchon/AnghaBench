; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dvdsubdec.c_guess_palette.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dvdsubdec.c_guess_palette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64*, i64*, i32*, i64 }

@guess_palette.level_map = internal constant [4 x [4 x i64]] [[4 x i64] [i64 255, i64 0, i64 0, i64 0], [4 x i64] [i64 0, i64 255, i64 0, i64 0], [4 x i64] [i64 0, i64 128, i64 255, i64 0], [4 x i64] [i64 0, i64 85, i64 170, i64 255]], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, i32)* @guess_palette to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @guess_palette(%struct.TYPE_3__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [16 x i64], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %17 = bitcast [16 x i64]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %17, i8 0, i64 128, i1 false)
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  store i64* %20, i64** %15, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i64*, i64** %22, align 8
  store i64* %23, i64** %16, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %62

28:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %58, %28
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %30, 4
  br i1 %31, label %32, label %61

32:                                               ; preds = %29
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = load i64*, i64** %15, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i32, i32* %35, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 16777215
  %44 = sext i32 %43 to i64
  %45 = load i64*, i64** %16, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = mul i64 %49, 17
  %51 = shl i64 %50, 24
  %52 = or i64 %44, %51
  %53 = trunc i64 %52 to i32
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 %53, i32* %57, align 4
  br label %58

58:                                               ; preds = %32
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %29

61:                                               ; preds = %29
  br label %225

62:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %63

63:                                               ; preds = %71, %62
  %64 = load i32, i32* %9, align 4
  %65 = icmp slt i32 %64, 4
  br i1 %65, label %66, label %74

66:                                               ; preds = %63
  %67 = load i32*, i32** %5, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 0, i32* %70, align 4
  br label %71

71:                                               ; preds = %66
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %9, align 4
  br label %63

74:                                               ; preds = %63
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %75

75:                                               ; preds = %104, %74
  %76 = load i32, i32* %9, align 4
  %77 = icmp slt i32 %76, 4
  br i1 %77, label %78, label %107

78:                                               ; preds = %75
  %79 = load i64*, i64** %16, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %103

85:                                               ; preds = %78
  %86 = load i64*, i64** %15, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds [16 x i64], [16 x i64]* %7, i64 0, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %103, label %94

94:                                               ; preds = %85
  %95 = load i64*, i64** %15, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds [16 x i64], [16 x i64]* %7, i64 0, i64 %99
  store i64 1, i64* %100, align 8
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %8, align 4
  br label %103

103:                                              ; preds = %94, %85, %78
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %9, align 4
  br label %75

107:                                              ; preds = %75
  %108 = load i32, i32* %8, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  br label %225

111:                                              ; preds = %107
  store i32 0, i32* %11, align 4
  %112 = getelementptr inbounds [16 x i64], [16 x i64]* %7, i64 0, i64 0
  %113 = call i32 @memset(i64* %112, i32 0, i32 16)
  store i32 0, i32* %9, align 4
  br label %114

114:                                              ; preds = %222, %111
  %115 = load i32, i32* %9, align 4
  %116 = icmp slt i32 %115, 4
  br i1 %116, label %117, label %225

117:                                              ; preds = %114
  %118 = load i64*, i64** %16, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %118, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %221

124:                                              ; preds = %117
  %125 = load i64*, i64** %15, align 8
  %126 = load i32, i32* %9, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i64, i64* %125, i64 %127
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds [16 x i64], [16 x i64]* %7, i64 0, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %193, label %133

133:                                              ; preds = %124
  %134 = load i32, i32* %8, align 4
  %135 = sub nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* @guess_palette.level_map, i64 0, i64 %136
  %138 = load i32, i32* %11, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [4 x i64], [4 x i64]* %137, i64 0, i64 %139
  %141 = load i64, i64* %140, align 8
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %10, align 4
  %143 = load i32, i32* %6, align 4
  %144 = ashr i32 %143, 16
  %145 = and i32 %144, 255
  %146 = load i32, i32* %10, align 4
  %147 = mul nsw i32 %145, %146
  %148 = ashr i32 %147, 8
  store i32 %148, i32* %12, align 4
  %149 = load i32, i32* %6, align 4
  %150 = ashr i32 %149, 8
  %151 = and i32 %150, 255
  %152 = load i32, i32* %10, align 4
  %153 = mul nsw i32 %151, %152
  %154 = ashr i32 %153, 8
  store i32 %154, i32* %13, align 4
  %155 = load i32, i32* %6, align 4
  %156 = ashr i32 %155, 0
  %157 = and i32 %156, 255
  %158 = load i32, i32* %10, align 4
  %159 = mul nsw i32 %157, %158
  %160 = ashr i32 %159, 8
  store i32 %160, i32* %14, align 4
  %161 = load i32, i32* %14, align 4
  %162 = load i32, i32* %13, align 4
  %163 = shl i32 %162, 8
  %164 = or i32 %161, %163
  %165 = load i32, i32* %12, align 4
  %166 = shl i32 %165, 16
  %167 = or i32 %164, %166
  %168 = sext i32 %167 to i64
  %169 = load i64*, i64** %16, align 8
  %170 = load i32, i32* %9, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i64, i64* %169, i64 %171
  %173 = load i64, i64* %172, align 8
  %174 = mul i64 %173, 17
  %175 = shl i64 %174, 24
  %176 = or i64 %168, %175
  %177 = trunc i64 %176 to i32
  %178 = load i32*, i32** %5, align 8
  %179 = load i32, i32* %9, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  store i32 %177, i32* %181, align 4
  %182 = load i32, i32* %9, align 4
  %183 = add nsw i32 %182, 1
  %184 = sext i32 %183 to i64
  %185 = load i64*, i64** %15, align 8
  %186 = load i32, i32* %9, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i64, i64* %185, i64 %187
  %189 = load i64, i64* %188, align 8
  %190 = getelementptr inbounds [16 x i64], [16 x i64]* %7, i64 0, i64 %189
  store i64 %184, i64* %190, align 8
  %191 = load i32, i32* %11, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %11, align 4
  br label %220

193:                                              ; preds = %124
  %194 = load i32*, i32** %5, align 8
  %195 = load i64*, i64** %15, align 8
  %196 = load i32, i32* %9, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i64, i64* %195, i64 %197
  %199 = load i64, i64* %198, align 8
  %200 = getelementptr inbounds [16 x i64], [16 x i64]* %7, i64 0, i64 %199
  %201 = load i64, i64* %200, align 8
  %202 = sub i64 %201, 1
  %203 = getelementptr inbounds i32, i32* %194, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = and i32 %204, 16777215
  %206 = sext i32 %205 to i64
  %207 = load i64*, i64** %16, align 8
  %208 = load i32, i32* %9, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i64, i64* %207, i64 %209
  %211 = load i64, i64* %210, align 8
  %212 = mul i64 %211, 17
  %213 = shl i64 %212, 24
  %214 = or i64 %206, %213
  %215 = trunc i64 %214 to i32
  %216 = load i32*, i32** %5, align 8
  %217 = load i32, i32* %9, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  store i32 %215, i32* %219, align 4
  br label %220

220:                                              ; preds = %193, %133
  br label %221

221:                                              ; preds = %220, %117
  br label %222

222:                                              ; preds = %221
  %223 = load i32, i32* %9, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %9, align 4
  br label %114

225:                                              ; preds = %61, %110, %114
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memset(i64*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
