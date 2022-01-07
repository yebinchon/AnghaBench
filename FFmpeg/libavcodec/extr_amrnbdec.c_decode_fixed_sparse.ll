; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_amrnbdec.c_decode_fixed_sparse.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_amrnbdec.c_decode_fixed_sparse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32, double* }

@MODE_4k75 = common dso_local global i32 0, align 4
@MODE_12k2 = common dso_local global i32 0, align 4
@gray_decode = common dso_local global i32* null, align 8
@MODE_10k2 = common dso_local global i32 0, align 4
@MODE_5k15 = common dso_local global i32 0, align 4
@track_position = common dso_local global i32* null, align 8
@MODE_5k9 = common dso_local global i32 0, align 4
@MODE_6k7 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*, i32, i32)* @decode_fixed_sparse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_fixed_sparse(%struct.TYPE_5__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* @MODE_4k75, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp sle i32 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @MODE_12k2, align 4
  %19 = icmp ule i32 %17, %18
  br label %20

20:                                               ; preds = %16, %4
  %21 = phi i1 [ false, %4 ], [ %19, %16 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @av_assert1(i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @MODE_12k2, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load i32*, i32** %6, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = load i32*, i32** @gray_decode, align 8
  %31 = call i32 @ff_decode_10_pulses_35bits(i32* %28, %struct.TYPE_5__* %29, i32* %30, i32 5, i32 3)
  br label %239

32:                                               ; preds = %20
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @MODE_10k2, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i32*, i32** %6, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %39 = call i32 @decode_8_pulses_31bits(i32* %37, %struct.TYPE_5__* %38)
  br label %238

40:                                               ; preds = %32
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %9, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @MODE_5k15, align 4
  %49 = icmp ule i32 %47, %48
  br i1 %49, label %50, label %83

50:                                               ; preds = %40
  %51 = load i32, i32* %12, align 4
  %52 = ashr i32 %51, 3
  %53 = and i32 %52, 8
  %54 = load i32, i32* %8, align 4
  %55 = shl i32 %54, 1
  %56 = add nsw i32 %53, %55
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %12, align 4
  %58 = and i32 %57, 7
  %59 = mul nsw i32 %58, 5
  %60 = load i32*, i32** @track_position, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %59, %64
  %66 = load i32*, i32** %9, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %12, align 4
  %69 = ashr i32 %68, 3
  %70 = and i32 %69, 7
  %71 = mul nsw i32 %70, 5
  %72 = load i32*, i32** @track_position, align 8
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %71, %77
  %79 = load i32*, i32** %9, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  store i32 2, i32* %82, align 8
  br label %211

83:                                               ; preds = %40
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @MODE_5k9, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %127

87:                                               ; preds = %83
  %88 = load i32, i32* %12, align 4
  %89 = and i32 %88, 1
  %90 = shl i32 %89, 1
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %12, align 4
  %93 = ashr i32 %92, 1
  %94 = and i32 %93, 7
  %95 = mul nsw i32 %94, 5
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %95, %96
  %98 = load i32*, i32** %9, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* %12, align 4
  %101 = ashr i32 %100, 4
  %102 = and i32 %101, 3
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %12, align 4
  %104 = ashr i32 %103, 6
  %105 = and i32 %104, 7
  %106 = mul nsw i32 %105, 5
  %107 = load i32, i32* %11, align 4
  %108 = add nsw i32 %106, %107
  %109 = load i32, i32* %11, align 4
  %110 = icmp eq i32 %109, 3
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i32 1, i32 0
  %113 = add nsw i32 %108, %112
  %114 = load i32*, i32** %9, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 1
  store i32 %113, i32* %115, align 4
  %116 = load i32*, i32** %9, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32*, i32** %9, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 1
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %118, %121
  %123 = zext i1 %122 to i64
  %124 = select i1 %122, i32 1, i32 2
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 8
  br label %210

127:                                              ; preds = %83
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* @MODE_6k7, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %163

131:                                              ; preds = %127
  %132 = load i32, i32* %12, align 4
  %133 = and i32 %132, 7
  %134 = mul nsw i32 %133, 5
  %135 = load i32*, i32** %9, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  store i32 %134, i32* %136, align 4
  %137 = load i32, i32* %12, align 4
  %138 = ashr i32 %137, 2
  %139 = and i32 %138, 2
  store i32 %139, i32* %11, align 4
  %140 = load i32, i32* %12, align 4
  %141 = ashr i32 %140, 4
  %142 = and i32 %141, 7
  %143 = mul nsw i32 %142, 5
  %144 = load i32, i32* %11, align 4
  %145 = add nsw i32 %143, %144
  %146 = add nsw i32 %145, 1
  %147 = load i32*, i32** %9, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 1
  store i32 %146, i32* %148, align 4
  %149 = load i32, i32* %12, align 4
  %150 = ashr i32 %149, 6
  %151 = and i32 %150, 2
  store i32 %151, i32* %11, align 4
  %152 = load i32, i32* %12, align 4
  %153 = ashr i32 %152, 8
  %154 = and i32 %153, 7
  %155 = mul nsw i32 %154, 5
  %156 = load i32, i32* %11, align 4
  %157 = add nsw i32 %155, %156
  %158 = add nsw i32 %157, 2
  %159 = load i32*, i32** %9, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 2
  store i32 %158, i32* %160, align 4
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 1
  store i32 3, i32* %162, align 8
  br label %209

163:                                              ; preds = %127
  %164 = load i32*, i32** @gray_decode, align 8
  %165 = load i32, i32* %12, align 4
  %166 = and i32 %165, 7
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %164, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = load i32*, i32** %9, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 0
  store i32 %169, i32* %171, align 4
  %172 = load i32*, i32** @gray_decode, align 8
  %173 = load i32, i32* %12, align 4
  %174 = ashr i32 %173, 3
  %175 = and i32 %174, 7
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %172, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %178, 1
  %180 = load i32*, i32** %9, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 1
  store i32 %179, i32* %181, align 4
  %182 = load i32*, i32** @gray_decode, align 8
  %183 = load i32, i32* %12, align 4
  %184 = ashr i32 %183, 6
  %185 = and i32 %184, 7
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %182, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = add nsw i32 %188, 2
  %190 = load i32*, i32** %9, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 2
  store i32 %189, i32* %191, align 4
  %192 = load i32, i32* %12, align 4
  %193 = ashr i32 %192, 9
  %194 = and i32 %193, 1
  store i32 %194, i32* %11, align 4
  %195 = load i32*, i32** @gray_decode, align 8
  %196 = load i32, i32* %12, align 4
  %197 = ashr i32 %196, 10
  %198 = and i32 %197, 7
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %195, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %11, align 4
  %203 = add nsw i32 %201, %202
  %204 = add nsw i32 %203, 3
  %205 = load i32*, i32** %9, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 3
  store i32 %204, i32* %206, align 4
  %207 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 1
  store i32 4, i32* %208, align 8
  br label %209

209:                                              ; preds = %163, %131
  br label %210

210:                                              ; preds = %209, %87
  br label %211

211:                                              ; preds = %210, %50
  store i32 0, i32* %10, align 4
  br label %212

212:                                              ; preds = %234, %211
  %213 = load i32, i32* %10, align 4
  %214 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 8
  %217 = icmp slt i32 %213, %216
  br i1 %217, label %218, label %237

218:                                              ; preds = %212
  %219 = load i32*, i32** %6, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 1
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* %10, align 4
  %223 = ashr i32 %221, %222
  %224 = and i32 %223, 1
  %225 = icmp ne i32 %224, 0
  %226 = zext i1 %225 to i64
  %227 = select i1 %225, double 1.000000e+00, double -1.000000e+00
  %228 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i32 0, i32 2
  %230 = load double*, double** %229, align 8
  %231 = load i32, i32* %10, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds double, double* %230, i64 %232
  store double %227, double* %233, align 8
  br label %234

234:                                              ; preds = %218
  %235 = load i32, i32* %10, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %10, align 4
  br label %212

237:                                              ; preds = %212
  br label %238

238:                                              ; preds = %237, %36
  br label %239

239:                                              ; preds = %238, %27
  ret void
}

declare dso_local i32 @av_assert1(i32) #1

declare dso_local i32 @ff_decode_10_pulses_35bits(i32*, %struct.TYPE_5__*, i32*, i32, i32) #1

declare dso_local i32 @decode_8_pulses_31bits(i32*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
