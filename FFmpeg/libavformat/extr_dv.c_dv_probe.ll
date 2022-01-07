; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_dv.c_dv_probe.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_dv.c_dv_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@AVPROBE_SCORE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @dv_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dv_probe(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %12, 5
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %110

15:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %73, %15
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sub nsw i32 %20, 4
  %22 = icmp slt i32 %17, %21
  br i1 %22, label %23, label %76

23:                                               ; preds = %16
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %26, %28
  %30 = call i32 @AV_RB32(i64 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = and i32 %31, 522304
  %33 = icmp eq i32 %32, 458752
  br i1 %33, label %34, label %72

34:                                               ; preds = %23
  %35 = load i32, i32* %9, align 4
  %36 = and i32 %35, -16253057
  %37 = icmp eq i32 %36, 520552511
  br i1 %37, label %38, label %52

38:                                               ; preds = %34
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = and i32 %41, -129
  %43 = icmp eq i32 %42, 520552511
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  store i32 1, i32* %7, align 4
  br label %50

50:                                               ; preds = %49, %44
  br label %51

51:                                               ; preds = %50, %38
  br label %52

52:                                               ; preds = %51, %34
  %53 = load i32, i32* %9, align 4
  %54 = icmp eq i32 %53, 4130560
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %9, align 4
  %57 = icmp eq i32 %56, -12646656
  br i1 %57, label %58, label %60

58:                                               ; preds = %55, %52
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %58, %55
  %61 = load i32, i32* %9, align 4
  %62 = icmp eq i32 %61, -12646655
  br i1 %62, label %63, label %71

63:                                               ; preds = %60
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %4, align 4
  %66 = sub i32 %64, %65
  %67 = icmp eq i32 %66, 80
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %68, %63, %60
  br label %72

72:                                               ; preds = %71, %23
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %16

76:                                               ; preds = %16
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %109

79:                                               ; preds = %76
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sdiv i32 %82, %83
  %85 = icmp slt i32 %84, 1048576
  br i1 %85, label %86, label %109

86:                                               ; preds = %79
  %87 = load i32, i32* %6, align 4
  %88 = icmp sgt i32 %87, 4
  br i1 %88, label %102, label %89

89:                                               ; preds = %86
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %102, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* %8, align 4
  %94 = icmp sge i32 %93, 10
  br i1 %94, label %95, label %106

95:                                               ; preds = %92
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sdiv i32 %98, %99
  %101 = icmp slt i32 %100, 24000
  br i1 %101, label %102, label %106

102:                                              ; preds = %95, %89, %86
  %103 = load i32, i32* @AVPROBE_SCORE_MAX, align 4
  %104 = mul nsw i32 %103, 3
  %105 = sdiv i32 %104, 4
  store i32 %105, i32* %2, align 4
  br label %110

106:                                              ; preds = %95, %92
  %107 = load i32, i32* @AVPROBE_SCORE_MAX, align 4
  %108 = sdiv i32 %107, 4
  store i32 %108, i32* %2, align 4
  br label %110

109:                                              ; preds = %79, %76
  store i32 0, i32* %2, align 4
  br label %110

110:                                              ; preds = %109, %106, %102, %14
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i32 @AV_RB32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
