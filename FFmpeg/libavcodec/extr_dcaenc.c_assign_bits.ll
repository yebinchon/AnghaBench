; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dcaenc.c_assign_bits.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dcaenc.c_assign_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i64, i32 }

@USED_1ABITS = common dso_local global i32 0, align 4
@snr_fudge = common dso_local global i32 0, align 4
@USED_26ABITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @assign_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assign_bits(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %8

8:                                                ; preds = %41, %1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @init_quantization_noise(%struct.TYPE_4__* %9, i32 %12, i32 %13)
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %4, align 4
  store i32 %17, i32* %3, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %20, %23
  br i1 %24, label %25, label %52

25:                                               ; preds = %8
  br label %26

26:                                               ; preds = %42, %25
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %29, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %26
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @USED_1ABITS, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 0, i32* %7, align 4
  br label %8

42:                                               ; preds = %38, %34
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* @snr_fudge, align 4
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %4, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @init_quantization_noise(%struct.TYPE_4__* %47, i32 %48, i32 %49)
  store i32 %50, i32* %6, align 4
  br label %26

51:                                               ; preds = %26
  br label %76

52:                                               ; preds = %8
  br label %53

53:                                               ; preds = %67, %52
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp sle i64 %56, %59
  br i1 %60, label %61, label %75

61:                                               ; preds = %53
  %62 = load i32, i32* %3, align 4
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @USED_26ABITS, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %109

67:                                               ; preds = %61
  %68 = load i32, i32* @snr_fudge, align 4
  %69 = load i32, i32* %3, align 4
  %70 = sub nsw i32 %69, %68
  store i32 %70, i32* %3, align 4
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @init_quantization_noise(%struct.TYPE_4__* %71, i32 %72, i32 %73)
  store i32 %74, i32* %6, align 4
  br label %53

75:                                               ; preds = %53
  br label %76

76:                                               ; preds = %75, %51
  %77 = load i32, i32* @snr_fudge, align 4
  %78 = ashr i32 %77, 1
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %101, %76
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %104

82:                                               ; preds = %79
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* %5, align 4
  %86 = sub nsw i32 %84, %85
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @init_quantization_noise(%struct.TYPE_4__* %83, i32 %86, i32 %87)
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = icmp sle i64 %91, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %82
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* %4, align 4
  %99 = sub nsw i32 %98, %97
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %96, %82
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %5, align 4
  %103 = ashr i32 %102, 1
  store i32 %103, i32* %5, align 4
  br label %79

104:                                              ; preds = %79
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @init_quantization_noise(%struct.TYPE_4__* %105, i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %104, %66
  %110 = load i32, i32* %4, align 4
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load i32, i32* %4, align 4
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = icmp sgt i32 %113, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %109
  %119 = load i32, i32* %4, align 4
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 3
  store i32 %119, i32* %121, align 8
  br label %122

122:                                              ; preds = %118, %109
  ret void
}

declare dso_local i32 @init_quantization_noise(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
