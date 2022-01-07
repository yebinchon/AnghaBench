; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_parser.c_hevc_find_frame_end.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_parser.c_hevc_find_frame_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@START_CODE = common dso_local global i32 0, align 4
@HEVC_NAL_VPS = common dso_local global i32 0, align 4
@HEVC_NAL_EOB_NUT = common dso_local global i32 0, align 4
@HEVC_NAL_SEI_PREFIX = common dso_local global i32 0, align 4
@HEVC_NAL_RASL_R = common dso_local global i32 0, align 4
@HEVC_NAL_BLA_W_LP = common dso_local global i32 0, align 4
@HEVC_NAL_CRA_NUT = common dso_local global i32 0, align 4
@END_NOT_FOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i32)* @hevc_find_frame_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hevc_find_frame_end(%struct.TYPE_7__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %8, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %9, align 8
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %121, %3
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %124

22:                                               ; preds = %18
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 8
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %26, %31
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = ashr i32 %37, 24
  %39 = and i32 %38, 16777215
  %40 = load i32, i32* @START_CODE, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %22
  br label %121

43:                                               ; preds = %22
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = ashr i32 %46, 17
  %48 = and i32 %47, 63
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @HEVC_NAL_VPS, align 4
  %51 = icmp sge i32 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %43
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @HEVC_NAL_EOB_NUT, align 4
  %55 = icmp sle i32 %53, %54
  br i1 %55, label %72, label %56

56:                                               ; preds = %52, %43
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @HEVC_NAL_SEI_PREFIX, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %72, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %11, align 4
  %62 = icmp sge i32 %61, 41
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* %11, align 4
  %65 = icmp sle i32 %64, 44
  br i1 %65, label %72, label %66

66:                                               ; preds = %63, %60
  %67 = load i32, i32* %11, align 4
  %68 = icmp sge i32 %67, 48
  br i1 %68, label %69, label %83

69:                                               ; preds = %66
  %70 = load i32, i32* %11, align 4
  %71 = icmp sle i32 %70, 55
  br i1 %71, label %72, label %83

72:                                               ; preds = %69, %63, %56, %52
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  store i32 0, i32* %79, align 4
  %80 = load i32, i32* %10, align 4
  %81 = sub nsw i32 %80, 5
  store i32 %81, i32* %4, align 4
  br label %126

82:                                               ; preds = %72
  br label %120

83:                                               ; preds = %69, %66
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* @HEVC_NAL_RASL_R, align 4
  %86 = icmp sle i32 %84, %85
  br i1 %86, label %95, label %87

87:                                               ; preds = %83
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* @HEVC_NAL_BLA_W_LP, align 4
  %90 = icmp sge i32 %88, %89
  br i1 %90, label %91, label %119

91:                                               ; preds = %87
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* @HEVC_NAL_CRA_NUT, align 4
  %94 = icmp sle i32 %92, %93
  br i1 %94, label %95, label %119

95:                                               ; preds = %91, %83
  %96 = load i32*, i32** %6, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = ashr i32 %100, 7
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* %12, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %118

104:                                              ; preds = %95
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %104
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  store i32 1, i32* %111, align 4
  br label %117

112:                                              ; preds = %104
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  store i32 0, i32* %114, align 4
  %115 = load i32, i32* %10, align 4
  %116 = sub nsw i32 %115, 5
  store i32 %116, i32* %4, align 4
  br label %126

117:                                              ; preds = %109
  br label %118

118:                                              ; preds = %117, %95
  br label %119

119:                                              ; preds = %118, %91, %87
  br label %120

120:                                              ; preds = %119, %82
  br label %121

121:                                              ; preds = %120, %42
  %122 = load i32, i32* %10, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %10, align 4
  br label %18

124:                                              ; preds = %18
  %125 = load i32, i32* @END_NOT_FOUND, align 4
  store i32 %125, i32* %4, align 4
  br label %126

126:                                              ; preds = %124, %112, %77
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
