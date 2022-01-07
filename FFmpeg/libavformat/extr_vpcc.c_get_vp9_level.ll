; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_vpcc.c_get_vp9_level.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_vpcc.c_get_vp9_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.TYPE_5__*)* @get_vp9_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_vp9_level(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = mul nsw i32 %10, %13
  store i32 %14, i32* %6, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = icmp ne %struct.TYPE_5__* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17, %2
  store i32 0, i32* %7, align 4
  br label %33

23:                                               ; preds = %17
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %24, %27
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sdiv i32 %28, %31
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %23, %22
  %34 = load i32, i32* %6, align 4
  %35 = icmp sle i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %138

37:                                               ; preds = %33
  %38 = load i32, i32* %7, align 4
  %39 = icmp sle i32 %38, 829440
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i32, i32* %6, align 4
  %42 = icmp sle i32 %41, 36864
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 10, i32* %3, align 4
  br label %138

44:                                               ; preds = %40, %37
  %45 = load i32, i32* %7, align 4
  %46 = icmp sle i32 %45, 2764800
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i32, i32* %6, align 4
  %49 = icmp sle i32 %48, 73728
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 11, i32* %3, align 4
  br label %138

51:                                               ; preds = %47, %44
  %52 = load i32, i32* %7, align 4
  %53 = icmp sle i32 %52, 4608000
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i32, i32* %6, align 4
  %56 = icmp sle i32 %55, 122880
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i32 20, i32* %3, align 4
  br label %138

58:                                               ; preds = %54, %51
  %59 = load i32, i32* %7, align 4
  %60 = icmp sle i32 %59, 9216000
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load i32, i32* %6, align 4
  %63 = icmp sle i32 %62, 245760
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i32 21, i32* %3, align 4
  br label %138

65:                                               ; preds = %61, %58
  %66 = load i32, i32* %7, align 4
  %67 = icmp sle i32 %66, 20736000
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load i32, i32* %6, align 4
  %70 = icmp sle i32 %69, 552960
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  store i32 30, i32* %3, align 4
  br label %138

72:                                               ; preds = %68, %65
  %73 = load i32, i32* %7, align 4
  %74 = icmp sle i32 %73, 36864000
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load i32, i32* %6, align 4
  %77 = icmp sle i32 %76, 983040
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store i32 31, i32* %3, align 4
  br label %138

79:                                               ; preds = %75, %72
  %80 = load i32, i32* %7, align 4
  %81 = icmp sle i32 %80, 83558400
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load i32, i32* %6, align 4
  %84 = icmp sle i32 %83, 2228224
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  store i32 40, i32* %3, align 4
  br label %138

86:                                               ; preds = %82, %79
  %87 = load i32, i32* %7, align 4
  %88 = icmp sle i32 %87, 160432128
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load i32, i32* %6, align 4
  %91 = icmp sle i32 %90, 2228224
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  store i32 41, i32* %3, align 4
  br label %138

93:                                               ; preds = %89, %86
  %94 = load i32, i32* %7, align 4
  %95 = icmp sle i32 %94, 311951360
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load i32, i32* %6, align 4
  %98 = icmp sle i32 %97, 8912896
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  store i32 50, i32* %3, align 4
  br label %138

100:                                              ; preds = %96, %93
  %101 = load i32, i32* %7, align 4
  %102 = icmp sle i32 %101, 588251136
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = load i32, i32* %6, align 4
  %105 = icmp sle i32 %104, 8912896
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  store i32 51, i32* %3, align 4
  br label %138

107:                                              ; preds = %103, %100
  %108 = load i32, i32* %7, align 4
  %109 = icmp sle i32 %108, 1176502272
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = load i32, i32* %6, align 4
  %112 = icmp sle i32 %111, 8912896
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  store i32 52, i32* %3, align 4
  br label %138

114:                                              ; preds = %110, %107
  %115 = load i32, i32* %7, align 4
  %116 = icmp sle i32 %115, 1176502272
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = load i32, i32* %6, align 4
  %119 = icmp sle i32 %118, 35651584
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  store i32 60, i32* %3, align 4
  br label %138

121:                                              ; preds = %117, %114
  %122 = load i32, i32* %7, align 4
  %123 = sext i32 %122 to i64
  %124 = icmp sle i64 %123, 2353004544
  br i1 %124, label %125, label %129

125:                                              ; preds = %121
  %126 = load i32, i32* %6, align 4
  %127 = icmp sle i32 %126, 35651584
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  store i32 61, i32* %3, align 4
  br label %138

129:                                              ; preds = %125, %121
  %130 = load i32, i32* %7, align 4
  %131 = sext i32 %130 to i64
  %132 = icmp sle i64 %131, 4706009088
  br i1 %132, label %133, label %137

133:                                              ; preds = %129
  %134 = load i32, i32* %6, align 4
  %135 = icmp sle i32 %134, 35651584
  br i1 %135, label %136, label %137

136:                                              ; preds = %133
  store i32 62, i32* %3, align 4
  br label %138

137:                                              ; preds = %133, %129
  store i32 0, i32* %3, align 4
  br label %138

138:                                              ; preds = %137, %136, %128, %120, %113, %106, %99, %92, %85, %78, %71, %64, %57, %50, %43, %36
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
