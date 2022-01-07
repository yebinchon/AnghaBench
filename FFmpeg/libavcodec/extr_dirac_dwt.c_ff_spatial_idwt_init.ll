; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dirac_dwt.c_ff_spatial_idwt_init.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dirac_dwt.c_ff_spatial_idwt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }

@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Unsupported bit depth = %i\0A\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Unknown wavelet type %d\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@ARCH_X86 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_spatial_idwt_init(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 5
  store i32 %15, i32* %17, align 4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp eq i32 %41, 8
  br i1 %42, label %43, label %47

43:                                               ; preds = %5
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @ff_spatial_idwt_init_8bit(%struct.TYPE_10__* %44, i32 %45)
  store i32 %46, i32* %12, align 4
  br label %67

47:                                               ; preds = %5
  %48 = load i32, i32* %11, align 4
  %49 = icmp eq i32 %48, 10
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @ff_spatial_idwt_init_10bit(%struct.TYPE_10__* %51, i32 %52)
  store i32 %53, i32* %12, align 4
  br label %66

54:                                               ; preds = %47
  %55 = load i32, i32* %11, align 4
  %56 = icmp eq i32 %55, 12
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @ff_spatial_idwt_init_12bit(%struct.TYPE_10__* %58, i32 %59)
  store i32 %60, i32* %12, align 4
  br label %65

61:                                               ; preds = %54
  %62 = load i32, i32* @AV_LOG_WARNING, align 4
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @av_log(i32* null, i32 %62, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %61, %57
  br label %66

66:                                               ; preds = %65, %50
  br label %67

67:                                               ; preds = %66, %43
  %68 = load i32, i32* %12, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load i32, i32* @AV_LOG_ERROR, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @av_log(i32* null, i32 %71, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %74, i32* %6, align 4
  br label %86

75:                                               ; preds = %67
  %76 = load i64, i64* @ARCH_X86, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %75
  %79 = load i32, i32* %11, align 4
  %80 = icmp eq i32 %79, 8
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @ff_spatial_idwt_init_x86(%struct.TYPE_10__* %82, i32 %83)
  br label %85

85:                                               ; preds = %81, %78, %75
  store i32 0, i32* %6, align 4
  br label %86

86:                                               ; preds = %85, %70
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local i32 @ff_spatial_idwt_init_8bit(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @ff_spatial_idwt_init_10bit(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @ff_spatial_idwt_init_12bit(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i32) #1

declare dso_local i32 @ff_spatial_idwt_init_x86(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
