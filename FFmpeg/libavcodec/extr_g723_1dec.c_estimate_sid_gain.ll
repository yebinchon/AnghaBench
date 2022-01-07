; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_g723_1dec.c_estimate_sid_gain.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_g723_1dec.c_estimate_sid_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@INT32_MIN = common dso_local global i32 0, align 4
@INT32_MAX = common dso_local global i32 0, align 4
@cng_filt = common dso_local global i64* null, align 8
@cng_bseg = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @estimate_sid_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @estimate_sid_gain(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = mul nsw i32 %15, 2
  %17 = sub nsw i32 16, %16
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %60

20:                                               ; preds = %1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 0, i32* %8, align 4
  br label %59

26:                                               ; preds = %20
  %27 = load i32, i32* %5, align 4
  %28 = icmp sge i32 %27, 31
  br i1 %28, label %41, label %29

29:                                               ; preds = %26
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %5, align 4
  %34 = shl i32 %32, %33
  %35 = load i32, i32* %5, align 4
  %36 = ashr i32 %34, %35
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %36, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %29, %26
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* @INT32_MIN, align 4
  store i32 %47, i32* %8, align 4
  br label %50

48:                                               ; preds = %41
  %49 = load i32, i32* @INT32_MAX, align 4
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %48, %46
  br label %58

51:                                               ; preds = %29
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %5, align 4
  %56 = shl i32 1, %55
  %57 = mul nsw i32 %54, %56
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %51, %50
  br label %59

59:                                               ; preds = %58, %25
  br label %78

60:                                               ; preds = %1
  %61 = load i32, i32* %5, align 4
  %62 = icmp slt i32 %61, -31
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp slt i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 -1, i32 0
  store i32 %69, i32* %8, align 4
  br label %77

70:                                               ; preds = %60
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %5, align 4
  %75 = sub nsw i32 0, %74
  %76 = ashr i32 %73, %75
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %70, %63
  br label %78

78:                                               ; preds = %77, %59
  %79 = load i32, i32* %8, align 4
  %80 = load i64*, i64** @cng_filt, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 0
  %82 = load i64, i64* %81, align 8
  %83 = trunc i64 %82 to i32
  %84 = mul nsw i32 %79, %83
  %85 = ashr i32 %84, 16
  %86 = call i32 @av_clipl_int32(i32 %85)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = load i32*, i32** @cng_bseg, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 2
  %90 = load i32, i32* %89, align 4
  %91 = icmp sge i32 %87, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %78
  store i32 63, i32* %2, align 4
  br label %211

93:                                               ; preds = %78
  %94 = load i32, i32* %11, align 4
  %95 = load i32*, i32** @cng_bseg, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp sge i32 %94, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  store i32 4, i32* %5, align 4
  store i32 3, i32* %6, align 4
  br label %107

100:                                              ; preds = %93
  store i32 3, i32* %5, align 4
  %101 = load i32, i32* %11, align 4
  %102 = load i32*, i32** @cng_bseg, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp sge i32 %101, %104
  %106 = zext i1 %105 to i32
  store i32 %106, i32* %6, align 4
  br label %107

107:                                              ; preds = %100, %99
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @FFMIN(i32 %108, i32 3)
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* %5, align 4
  %111 = shl i32 1, %110
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %9, align 4
  %113 = ashr i32 %112, 1
  store i32 %113, i32* %10, align 4
  store i32 0, i32* %4, align 4
  br label %114

114:                                              ; preds = %142, %107
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* %5, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %145

118:                                              ; preds = %114
  %119 = load i32, i32* %6, align 4
  %120 = mul nsw i32 %119, 32
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* %7, align 4
  %123 = shl i32 %121, %122
  %124 = add nsw i32 %120, %123
  store i32 %124, i32* %8, align 4
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* %8, align 4
  %127 = mul nsw i32 %126, %125
  store i32 %127, i32* %8, align 4
  %128 = load i32, i32* %11, align 4
  %129 = load i32, i32* %8, align 4
  %130 = icmp sge i32 %128, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %118
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* %9, align 4
  %134 = add nsw i32 %133, %132
  store i32 %134, i32* %9, align 4
  br label %139

135:                                              ; preds = %118
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* %9, align 4
  %138 = sub nsw i32 %137, %136
  store i32 %138, i32* %9, align 4
  br label %139

139:                                              ; preds = %135, %131
  %140 = load i32, i32* %10, align 4
  %141 = ashr i32 %140, 1
  store i32 %141, i32* %10, align 4
  br label %142

142:                                              ; preds = %139
  %143 = load i32, i32* %4, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %4, align 4
  br label %114

145:                                              ; preds = %114
  %146 = load i32, i32* %6, align 4
  %147 = mul nsw i32 %146, 32
  %148 = load i32, i32* %9, align 4
  %149 = load i32, i32* %7, align 4
  %150 = shl i32 %148, %149
  %151 = add nsw i32 %147, %150
  store i32 %151, i32* %8, align 4
  %152 = load i32, i32* %8, align 4
  %153 = load i32, i32* %8, align 4
  %154 = mul nsw i32 %152, %153
  %155 = load i32, i32* %11, align 4
  %156 = sub nsw i32 %154, %155
  store i32 %156, i32* %12, align 4
  %157 = load i32, i32* %12, align 4
  %158 = icmp sle i32 %157, 0
  br i1 %158, label %159, label %184

159:                                              ; preds = %145
  %160 = load i32, i32* %6, align 4
  %161 = mul nsw i32 %160, 32
  %162 = load i32, i32* %9, align 4
  %163 = add nsw i32 %162, 1
  %164 = load i32, i32* %7, align 4
  %165 = shl i32 %163, %164
  %166 = add nsw i32 %161, %165
  store i32 %166, i32* %8, align 4
  %167 = load i32, i32* %8, align 4
  %168 = load i32, i32* %8, align 4
  %169 = mul nsw i32 %167, %168
  %170 = load i32, i32* %11, align 4
  %171 = sub nsw i32 %169, %170
  store i32 %171, i32* %8, align 4
  %172 = load i32, i32* %7, align 4
  %173 = sub nsw i32 %172, 1
  %174 = mul nsw i32 %173, 16
  %175 = load i32, i32* %9, align 4
  %176 = add nsw i32 %174, %175
  store i32 %176, i32* %9, align 4
  %177 = load i32, i32* %8, align 4
  %178 = load i32, i32* %12, align 4
  %179 = icmp sge i32 %177, %178
  br i1 %179, label %180, label %183

180:                                              ; preds = %159
  %181 = load i32, i32* %9, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %9, align 4
  br label %183

183:                                              ; preds = %180, %159
  br label %209

184:                                              ; preds = %145
  %185 = load i32, i32* %6, align 4
  %186 = mul nsw i32 %185, 32
  %187 = load i32, i32* %9, align 4
  %188 = sub nsw i32 %187, 1
  %189 = load i32, i32* %7, align 4
  %190 = shl i32 %188, %189
  %191 = add nsw i32 %186, %190
  store i32 %191, i32* %8, align 4
  %192 = load i32, i32* %8, align 4
  %193 = load i32, i32* %8, align 4
  %194 = mul nsw i32 %192, %193
  %195 = load i32, i32* %11, align 4
  %196 = sub nsw i32 %194, %195
  store i32 %196, i32* %8, align 4
  %197 = load i32, i32* %7, align 4
  %198 = sub nsw i32 %197, 1
  %199 = mul nsw i32 %198, 16
  %200 = load i32, i32* %9, align 4
  %201 = add nsw i32 %199, %200
  store i32 %201, i32* %9, align 4
  %202 = load i32, i32* %8, align 4
  %203 = load i32, i32* %12, align 4
  %204 = icmp sge i32 %202, %203
  br i1 %204, label %205, label %208

205:                                              ; preds = %184
  %206 = load i32, i32* %9, align 4
  %207 = add nsw i32 %206, -1
  store i32 %207, i32* %9, align 4
  br label %208

208:                                              ; preds = %205, %184
  br label %209

209:                                              ; preds = %208, %183
  %210 = load i32, i32* %9, align 4
  store i32 %210, i32* %2, align 4
  br label %211

211:                                              ; preds = %209, %92
  %212 = load i32, i32* %2, align 4
  ret i32 %212
}

declare dso_local i32 @av_clipl_int32(i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
