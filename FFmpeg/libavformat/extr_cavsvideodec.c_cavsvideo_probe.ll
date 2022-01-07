; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_cavsvideodec.c_cavsvideo_probe.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_cavsvideodec.c_cavsvideo_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64*, i32 }

@CAVS_SEQ_START_CODE = common dso_local global i32 0, align 4
@CAVS_PROFILE_JIZHUN = common dso_local global i64 0, align 8
@CAVS_PIC_I_START_CODE = common dso_local global i32 0, align 4
@CAVS_PIC_PB_START_CODE = common dso_local global i32 0, align 4
@CAVS_UNDEF_START_CODE = common dso_local global i32 0, align 4
@CAVS_VIDEO_EDIT_CODE = common dso_local global i32 0, align 4
@AVPROBE_SCORE_EXTENSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @cavsvideo_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cavsvideo_probe(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 -1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  store i64* %12, i64** %8, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %15, i64 %19
  store i64* %20, i64** %9, align 8
  br label %21

21:                                               ; preds = %80, %1
  %22 = load i64*, i64** %8, align 8
  %23 = load i64*, i64** %9, align 8
  %24 = icmp ult i64* %22, %23
  br i1 %24, label %25, label %81

25:                                               ; preds = %21
  %26 = load i64*, i64** %8, align 8
  %27 = load i64*, i64** %9, align 8
  %28 = call i64* @avpriv_find_start_code(i64* %26, i64* %27, i32* %4)
  store i64* %28, i64** %8, align 8
  %29 = load i32, i32* %4, align 4
  %30 = and i32 %29, -256
  %31 = icmp eq i32 %30, 256
  br i1 %31, label %32, label %80

32:                                               ; preds = %25
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @CAVS_SEQ_START_CODE, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %94

41:                                               ; preds = %36
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %7, align 4
  br label %44

43:                                               ; preds = %32
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %43, %41
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @CAVS_SEQ_START_CODE, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %44
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  %51 = load i64*, i64** %8, align 8
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @CAVS_PROFILE_JIZHUN, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %94

56:                                               ; preds = %48
  br label %79

57:                                               ; preds = %44
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @CAVS_PIC_I_START_CODE, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @CAVS_PIC_PB_START_CODE, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %61, %57
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %78

68:                                               ; preds = %61
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @CAVS_UNDEF_START_CODE, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @CAVS_VIDEO_EDIT_CODE, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %72, %68
  store i32 0, i32* %2, align 4
  br label %94

77:                                               ; preds = %72
  br label %78

78:                                               ; preds = %77, %65
  br label %79

79:                                               ; preds = %78, %56
  br label %80

80:                                               ; preds = %79, %25
  br label %21

81:                                               ; preds = %21
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %81
  %85 = load i32, i32* %6, align 4
  %86 = mul nsw i32 %85, 9
  %87 = load i32, i32* %5, align 4
  %88 = mul nsw i32 %87, 10
  %89 = icmp sle i32 %86, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load i32, i32* @AVPROBE_SCORE_EXTENSION, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %2, align 4
  br label %94

93:                                               ; preds = %84, %81
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %93, %90, %76, %55, %40
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i64* @avpriv_find_start_code(i64*, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
