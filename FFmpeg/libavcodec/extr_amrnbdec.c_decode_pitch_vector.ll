; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_amrnbdec.c_decode_pitch_vector.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_amrnbdec.c_decode_pitch_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (i64, i64, i32, i32, i32, i32, i32)* }
%struct.TYPE_7__ = type { i32 }

@MODE_12k2 = common dso_local global i64 0, align 8
@MODE_4k75 = common dso_local global i32 0, align 4
@MODE_5k15 = common dso_local global i32 0, align 4
@MODE_6k7 = common dso_local global i32 0, align 4
@MODE_7k95 = common dso_local global i32 0, align 4
@ff_b60_sinc = common dso_local global i32 0, align 4
@AMR_SUBFRAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_7__*, i32)* @decode_pitch_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_pitch_vector(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %9, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = load i64, i64* @MODE_12k2, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %3
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @decode_pitch_lag_1_6(i32* %7, i32* %8, i32 %22, i32 %25, i32 %26)
  br label %61

28:                                               ; preds = %3
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @MODE_4k75, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %28
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @MODE_5k15, align 4
  %42 = icmp ne i32 %40, %41
  br label %43

43:                                               ; preds = %39, %28
  %44 = phi i1 [ false, %28 ], [ %42, %39 ]
  %45 = zext i1 %44 to i32
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @MODE_6k7, align 4
  %48 = icmp ule i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %56

50:                                               ; preds = %43
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @MODE_7k95, align 4
  %53 = icmp eq i32 %51, %52
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 5, i32 6
  br label %56

56:                                               ; preds = %50, %49
  %57 = phi i32 [ 4, %49 ], [ %55, %50 ]
  %58 = call i32 @ff_decode_pitch_lag(i32* %7, i32* %8, i32 %31, i32 %34, i32 %35, i32 %45, i32 %57)
  %59 = load i32, i32* %8, align 4
  %60 = mul nsw i32 %59, 2
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %56, %19
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp sgt i32 %65, 0
  %67 = zext i1 %66 to i32
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %7, align 4
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32 (i64, i64, i32, i32, i32, i32, i32)*, i32 (i64, i64, i32, i32, i32, i32, i32)** %72, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, 1
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = sub nsw i64 %80, %82
  %84 = load i32, i32* @ff_b60_sinc, align 4
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, 6
  %87 = load i32, i32* %8, align 4
  %88 = icmp sgt i32 %87, 0
  %89 = zext i1 %88 to i32
  %90 = mul nsw i32 6, %89
  %91 = sub nsw i32 %86, %90
  %92 = load i32, i32* @AMR_SUBFRAME_SIZE, align 4
  %93 = call i32 %73(i64 %76, i64 %83, i32 %84, i32 6, i32 %91, i32 10, i32 %92)
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* @AMR_SUBFRAME_SIZE, align 4
  %101 = sext i32 %100 to i64
  %102 = mul i64 %101, 4
  %103 = trunc i64 %102 to i32
  %104 = call i32 @memcpy(i32 %96, i64 %99, i32 %103)
  ret void
}

declare dso_local i32 @decode_pitch_lag_1_6(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @ff_decode_pitch_lag(i32*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
