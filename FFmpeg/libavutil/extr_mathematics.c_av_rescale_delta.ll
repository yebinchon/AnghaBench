; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_mathematics.c_av_rescale_delta.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_mathematics.c_av_rescale_delta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64 }

@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@AV_ROUND_DOWN = common dso_local global i32 0, align 4
@AV_ROUND_UP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @av_rescale_delta(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i32 %5, i64* %6, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_9__, align 8
  %11 = alloca %struct.TYPE_9__, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = bitcast %struct.TYPE_9__* %10 to { i64, i64 }*
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 0
  store i64 %0, i64* %19, align 8
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 1
  store i64 %1, i64* %20, align 8
  %21 = bitcast %struct.TYPE_9__* %11 to { i64, i64 }*
  %22 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %21, i32 0, i32 0
  store i64 %3, i64* %22, align 8
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %21, i32 0, i32 1
  store i64 %4, i64* %23, align 8
  store i64 %2, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store i64* %6, i64** %14, align 8
  %24 = load i64, i64* %12, align 8
  %25 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %26 = icmp ne i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @av_assert0(i32 %27)
  %29 = load i32, i32* %13, align 4
  %30 = icmp sge i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @av_assert0(i32 %31)
  %33 = load i64*, i64** %14, align 8
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %52, label %37

37:                                               ; preds = %8
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = mul nsw i64 %42, %44
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = mul nsw i64 %47, %49
  %51 = icmp sle i64 %45, %50
  br i1 %51, label %52, label %82

52:                                               ; preds = %40, %37, %8
  br label %53

53:                                               ; preds = %135, %52
  %54 = load i64, i64* %12, align 8
  %55 = bitcast %struct.TYPE_9__* %10 to { i64, i64 }*
  %56 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %55, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = bitcast %struct.TYPE_9__* %11 to { i64, i64 }*
  %61 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %60, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i64 @av_rescale_q(i64 %54, i64 %57, i64 %59, i64 %62, i64 %64)
  %66 = load i32, i32* %13, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %65, %67
  %69 = load i64*, i64** %14, align 8
  store i64 %68, i64* %69, align 8
  %70 = load i64, i64* %12, align 8
  %71 = bitcast %struct.TYPE_9__* %10 to { i64, i64 }*
  %72 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %71, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = bitcast %struct.TYPE_9__* %7 to { i64, i64 }*
  %77 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %76, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = call i64 @av_rescale_q(i64 %70, i64 %73, i64 %75, i64 %78, i64 %80)
  store i64 %81, i64* %9, align 8
  br label %159

82:                                               ; preds = %40
  %83 = load i64, i64* %12, align 8
  %84 = mul nsw i64 2, %83
  %85 = sub nsw i64 %84, 1
  %86 = trunc i64 %85 to i32
  %87 = load i32, i32* @AV_ROUND_DOWN, align 4
  %88 = bitcast %struct.TYPE_9__* %10 to { i64, i64 }*
  %89 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %88, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = bitcast %struct.TYPE_9__* %11 to { i64, i64 }*
  %94 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %93, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @av_rescale_q_rnd(i32 %86, i64 %90, i64 %92, i64 %95, i64 %97, i32 %87)
  %99 = ashr i32 %98, 1
  %100 = sext i32 %99 to i64
  store i64 %100, i64* %15, align 8
  %101 = load i64, i64* %12, align 8
  %102 = mul nsw i64 2, %101
  %103 = add nsw i64 %102, 1
  %104 = trunc i64 %103 to i32
  %105 = load i32, i32* @AV_ROUND_UP, align 4
  %106 = bitcast %struct.TYPE_9__* %10 to { i64, i64 }*
  %107 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %106, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = bitcast %struct.TYPE_9__* %11 to { i64, i64 }*
  %112 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %111, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @av_rescale_q_rnd(i32 %104, i64 %108, i64 %110, i64 %113, i64 %115, i32 %105)
  %117 = add nsw i32 %116, 1
  %118 = ashr i32 %117, 1
  %119 = sext i32 %118 to i64
  store i64 %119, i64* %16, align 8
  %120 = load i64*, i64** %14, align 8
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* %15, align 8
  %123 = mul nsw i64 2, %122
  %124 = load i64, i64* %16, align 8
  %125 = sub nsw i64 %123, %124
  %126 = icmp slt i64 %121, %125
  br i1 %126, label %135, label %127

127:                                              ; preds = %82
  %128 = load i64*, i64** %14, align 8
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* %16, align 8
  %131 = mul nsw i64 2, %130
  %132 = load i64, i64* %15, align 8
  %133 = sub nsw i64 %131, %132
  %134 = icmp sgt i64 %129, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %127, %82
  br label %53

136:                                              ; preds = %127
  %137 = load i64*, i64** %14, align 8
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* %15, align 8
  %140 = load i64, i64* %16, align 8
  %141 = call i64 @av_clip64(i64 %138, i64 %139, i64 %140)
  store i64 %141, i64* %17, align 8
  %142 = load i64, i64* %17, align 8
  %143 = load i32, i32* %13, align 4
  %144 = sext i32 %143 to i64
  %145 = add nsw i64 %142, %144
  %146 = load i64*, i64** %14, align 8
  store i64 %145, i64* %146, align 8
  %147 = load i64, i64* %17, align 8
  %148 = bitcast %struct.TYPE_9__* %11 to { i64, i64 }*
  %149 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %148, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = bitcast %struct.TYPE_9__* %7 to { i64, i64 }*
  %154 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %153, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = call i64 @av_rescale_q(i64 %147, i64 %150, i64 %152, i64 %155, i64 %157)
  store i64 %158, i64* %9, align 8
  br label %159

159:                                              ; preds = %136, %53
  %160 = load i64, i64* %9, align 8
  ret i64 %160
}

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i64 @av_rescale_q(i64, i64, i64, i64, i64) #1

declare dso_local i32 @av_rescale_q_rnd(i32, i64, i64, i64, i64, i32) #1

declare dso_local i64 @av_clip64(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
