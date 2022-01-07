; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ac3dec.c_coupling_coordinates.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ac3dec.c_coupling_coordinates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32, i32**, i64, i64, i64*, i32, i64, i64*, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"new coupling coordinates must be present in block 0\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AC3_CHMODE_STEREO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32)* @coupling_coordinates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coupling_coordinates(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 10
  store i32* %15, i32** %6, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  store i32 0, i32* %10, align 4
  store i32 1, i32* %8, align 4
  br label %19

19:                                               ; preds = %140, %2
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp sle i32 %20, %21
  br i1 %22, label %23, label %143

23:                                               ; preds = %19
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 9
  %26 = load i64*, i64** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %132

32:                                               ; preds = %23
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 8
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %37, %32
  %47 = load i32*, i32** %6, align 8
  %48 = call i64 @get_bits1(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %120

50:                                               ; preds = %46, %37
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 0, i32* %56, align 4
  store i32 1, i32* %10, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = call i32 @get_bits(i32* %57, i32 2)
  %59 = mul nsw i32 3, %58
  store i32 %59, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %60

60:                                               ; preds = %116, %50
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %119

66:                                               ; preds = %60
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @get_bits(i32* %67, i32 4)
  store i32 %68, i32* %12, align 4
  %69 = load i32*, i32** %6, align 8
  %70 = call i32 @get_bits(i32* %69, i32 4)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp eq i32 %71, 15
  br i1 %72, label %73, label %86

73:                                               ; preds = %66
  %74 = load i32, i32* %13, align 4
  %75 = shl i32 %74, 22
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 3
  %78 = load i32**, i32*** %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32*, i32** %78, i64 %80
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32 %75, i32* %85, align 4
  br label %100

86:                                               ; preds = %66
  %87 = load i32, i32* %13, align 4
  %88 = add nsw i32 %87, 16
  %89 = shl i32 %88, 21
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 3
  %92 = load i32**, i32*** %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32*, i32** %92, i64 %94
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  store i32 %89, i32* %99, align 4
  br label %100

100:                                              ; preds = %86, %73
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* %11, align 4
  %103 = add nsw i32 %101, %102
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 3
  %106 = load i32**, i32*** %105, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32*, i32** %106, i64 %108
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %9, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = ashr i32 %114, %103
  store i32 %115, i32* %113, align 4
  br label %116

116:                                              ; preds = %100
  %117 = load i32, i32* %9, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %9, align 4
  br label %60

119:                                              ; preds = %60
  br label %131

120:                                              ; preds = %46
  %121 = load i32, i32* %5, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %130, label %123

123:                                              ; preds = %120
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 7
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @AV_LOG_ERROR, align 4
  %128 = call i32 @av_log(i32 %126, i32 %127, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %129 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %129, i32* %3, align 4
  br label %181

130:                                              ; preds = %120
  br label %131

131:                                              ; preds = %130, %119
  br label %139

132:                                              ; preds = %23
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  store i32 1, i32* %138, align 4
  br label %139

139:                                              ; preds = %132, %131
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %8, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %8, align 4
  br label %19

143:                                              ; preds = %19
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 4
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @AC3_CHMODE_STEREO, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %180

149:                                              ; preds = %143
  %150 = load i32, i32* %10, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %180

152:                                              ; preds = %149
  store i32 0, i32* %9, align 4
  br label %153

153:                                              ; preds = %176, %152
  %154 = load i32, i32* %9, align 4
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = icmp slt i32 %154, %157
  br i1 %158, label %159, label %179

159:                                              ; preds = %153
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 5
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %159
  %165 = load i32*, i32** %6, align 8
  %166 = call i64 @get_bits1(i32* %165)
  br label %168

167:                                              ; preds = %159
  br label %168

168:                                              ; preds = %167, %164
  %169 = phi i64 [ %166, %164 ], [ 0, %167 ]
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 6
  %172 = load i64*, i64** %171, align 8
  %173 = load i32, i32* %9, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i64, i64* %172, i64 %174
  store i64 %169, i64* %175, align 8
  br label %176

176:                                              ; preds = %168
  %177 = load i32, i32* %9, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %9, align 4
  br label %153

179:                                              ; preds = %153
  br label %180

180:                                              ; preds = %179, %149, %143
  store i32 0, i32* %3, align 4
  br label %181

181:                                              ; preds = %180, %123
  %182 = load i32, i32* %3, align 4
  ret i32 %182
}

declare dso_local i64 @get_bits1(i32*) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
