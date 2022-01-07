; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_amrnbdec.c_decode_gains.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_amrnbdec.c_decode_gains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { double*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i64, i64 }

@MODE_12k2 = common dso_local global i32 0, align 4
@MODE_7k95 = common dso_local global i32 0, align 4
@qua_gain_pit = common dso_local global double* null, align 8
@qua_gain_code = common dso_local global double* null, align 8
@MODE_6k7 = common dso_local global i32 0, align 4
@gains_high = common dso_local global double** null, align 8
@MODE_5k15 = common dso_local global i32 0, align 4
@gains_low = common dso_local global double** null, align 8
@gains_MODE_4k75 = common dso_local global double** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_9__*, i32, i32, float*)* @decode_gains to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_gains(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i32 %2, i32 %3, float* %4) #0 {
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float*, align 8
  %11 = alloca double*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store float* %4, float** %10, align 8
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @MODE_12k2, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %5
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @MODE_7k95, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %40

19:                                               ; preds = %15, %5
  %20 = load double*, double** @qua_gain_pit, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds double, double* %20, i64 %23
  %25 = load double, double* %24, align 8
  %26 = fmul double %25, 0x3F10000000000000
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load double*, double** %28, align 8
  %30 = getelementptr inbounds double, double* %29, i64 4
  store double %26, double* %30, align 8
  %31 = load double*, double** @qua_gain_code, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds double, double* %31, i64 %34
  %36 = load double, double* %35, align 8
  %37 = fmul double %36, 0x3F40000000000000
  %38 = fptrunc double %37 to float
  %39 = load float*, float** %10, align 8
  store float %38, float* %39, align 4
  br label %97

40:                                               ; preds = %15
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @MODE_6k7, align 4
  %43 = icmp uge i32 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = load double**, double*** @gains_high, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds double*, double** %45, i64 %48
  %50 = load double*, double** %49, align 8
  store double* %50, double** %11, align 8
  br label %82

51:                                               ; preds = %40
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @MODE_5k15, align 4
  %54 = icmp uge i32 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = load double**, double*** @gains_low, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds double*, double** %56, i64 %59
  %61 = load double*, double** %60, align 8
  store double* %61, double** %11, align 8
  br label %81

62:                                               ; preds = %51
  %63 = load double**, double*** @gains_MODE_4k75, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = and i32 %68, 2
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = shl i32 %73, 1
  %75 = load i32, i32* %9, align 4
  %76 = and i32 %75, 1
  %77 = add nsw i32 %74, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds double*, double** %63, i64 %78
  %80 = load double*, double** %79, align 8
  store double* %80, double** %11, align 8
  br label %81

81:                                               ; preds = %62, %55
  br label %82

82:                                               ; preds = %81, %44
  %83 = load double*, double** %11, align 8
  %84 = getelementptr inbounds double, double* %83, i64 0
  %85 = load double, double* %84, align 8
  %86 = fmul double %85, 0x3F10000000000000
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load double*, double** %88, align 8
  %90 = getelementptr inbounds double, double* %89, i64 4
  store double %86, double* %90, align 8
  %91 = load double*, double** %11, align 8
  %92 = getelementptr inbounds double, double* %91, i64 1
  %93 = load double, double* %92, align 8
  %94 = fmul double %93, 0x3F30000000000000
  %95 = fptrunc double %94 to float
  %96 = load float*, float** %10, align 8
  store float %95, float* %96, align 4
  br label %97

97:                                               ; preds = %82, %19
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
