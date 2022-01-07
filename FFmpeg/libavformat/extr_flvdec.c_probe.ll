; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_flvdec.c_probe.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_flvdec.c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float*, i32 }

@.str = private unnamed_addr constant [11 x i8] c"NGINX RTMP\00", align 1
@AVPROBE_SCORE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32)* @probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @probe(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load float*, float** %10, align 8
  store float* %11, float** %6, align 8
  %12 = load float*, float** %6, align 8
  %13 = getelementptr inbounds float, float* %12, i64 5
  %14 = call i32 @AV_RB32(float* %13)
  store i32 %14, i32* %7, align 4
  %15 = load float*, float** %6, align 8
  %16 = getelementptr inbounds float, float* %15, i64 0
  %17 = load float, float* %16, align 4
  %18 = fcmp oeq float %17, 7.000000e+01
  br i1 %18, label %19, label %65

19:                                               ; preds = %2
  %20 = load float*, float** %6, align 8
  %21 = getelementptr inbounds float, float* %20, i64 1
  %22 = load float, float* %21, align 4
  %23 = fcmp oeq float %22, 7.600000e+01
  br i1 %23, label %24, label %65

24:                                               ; preds = %19
  %25 = load float*, float** %6, align 8
  %26 = getelementptr inbounds float, float* %25, i64 2
  %27 = load float, float* %26, align 4
  %28 = fcmp oeq float %27, 8.600000e+01
  br i1 %28, label %29, label %65

29:                                               ; preds = %24
  %30 = load float*, float** %6, align 8
  %31 = getelementptr inbounds float, float* %30, i64 3
  %32 = load float, float* %31, align 4
  %33 = fcmp olt float %32, 5.000000e+00
  br i1 %33, label %34, label %65

34:                                               ; preds = %29
  %35 = load float*, float** %6, align 8
  %36 = getelementptr inbounds float, float* %35, i64 5
  %37 = load float, float* %36, align 4
  %38 = fcmp oeq float %37, 0.000000e+00
  br i1 %38, label %39, label %65

39:                                               ; preds = %34
  %40 = load i32, i32* %7, align 4
  %41 = add i32 %40, 100
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp ult i32 %41, %44
  br i1 %45, label %46, label %65

46:                                               ; preds = %39
  %47 = load i32, i32* %7, align 4
  %48 = icmp ugt i32 %47, 8
  br i1 %48, label %49, label %65

49:                                               ; preds = %46
  %50 = load float*, float** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds float, float* %50, i64 %52
  %54 = getelementptr inbounds float, float* %53, i64 40
  %55 = call i32 @memcmp(float* %54, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 10)
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %49
  %63 = load i32, i32* @AVPROBE_SCORE_MAX, align 4
  store i32 %63, i32* %3, align 4
  br label %66

64:                                               ; preds = %49
  br label %65

65:                                               ; preds = %64, %46, %39, %34, %29, %24, %19, %2
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %62
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @AV_RB32(float*) #1

declare dso_local i32 @memcmp(float*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
