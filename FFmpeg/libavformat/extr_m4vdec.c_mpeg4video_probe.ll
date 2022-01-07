; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_m4vdec.c_mpeg4video_probe.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_m4vdec.c_mpeg4video_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@VOP_STARTCODE = common dso_local global i32 0, align 4
@VISUAL_OBJ_STARTCODE = common dso_local global i32 0, align 4
@SLICE_STARTCODE = common dso_local global i32 0, align 4
@EXT_STARTCODE = common dso_local global i32 0, align 4
@AVPROBE_SCORE_EXTENSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @mpeg4video_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpeg4video_probe(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 -1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %101, %1
  %13 = load i32, i32* %11, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %104

18:                                               ; preds = %12
  %19 = load i32, i32* %4, align 4
  %20 = shl i32 %19, 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %20, %27
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = and i32 %29, -512
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %18
  br label %101

33:                                               ; preds = %18
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %34, 2
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %101

37:                                               ; preds = %33
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @VOP_STARTCODE, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %100

44:                                               ; preds = %37
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @VISUAL_OBJ_STARTCODE, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %99

51:                                               ; preds = %44
  %52 = load i32, i32* %4, align 4
  %53 = icmp sge i32 %52, 256
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load i32, i32* %4, align 4
  %56 = icmp slt i32 %55, 288
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %98

60:                                               ; preds = %54, %51
  %61 = load i32, i32* %4, align 4
  %62 = icmp sge i32 %61, 288
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load i32, i32* %4, align 4
  %65 = icmp slt i32 %64, 304
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %97

69:                                               ; preds = %63, %60
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @SLICE_STARTCODE, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @EXT_STARTCODE, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %73, %69
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %10, align 4
  br label %96

80:                                               ; preds = %73
  %81 = load i32, i32* %4, align 4
  %82 = icmp slt i32 431, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i32, i32* %4, align 4
  %85 = icmp slt i32 %84, 439
  br i1 %85, label %95, label %86

86:                                               ; preds = %83, %80
  %87 = load i32, i32* %4, align 4
  %88 = icmp slt i32 441, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i32, i32* %4, align 4
  %91 = icmp slt i32 %90, 452
  br i1 %91, label %95, label %92

92:                                               ; preds = %89, %86
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %9, align 4
  br label %95

95:                                               ; preds = %92, %89, %83
  br label %96

96:                                               ; preds = %95, %77
  br label %97

97:                                               ; preds = %96, %66
  br label %98

98:                                               ; preds = %97, %57
  br label %99

99:                                               ; preds = %98, %48
  br label %100

100:                                              ; preds = %99, %41
  br label %101

101:                                              ; preds = %100, %36, %32
  %102 = load i32, i32* %11, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %11, align 4
  br label %12

104:                                              ; preds = %12
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %104
  %108 = load i32, i32* %10, align 4
  %109 = mul nsw i32 2, %108
  %110 = load i32, i32* %7, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %107
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, %113
  store i32 %115, i32* %9, align 4
  br label %116

116:                                              ; preds = %112, %107, %104
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* %8, align 4
  %119 = icmp sge i32 %117, %118
  br i1 %119, label %120, label %146

120:                                              ; preds = %116
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* %6, align 4
  %123 = icmp sge i32 %121, %122
  br i1 %123, label %124, label %146

124:                                              ; preds = %120
  %125 = load i32, i32* %5, align 4
  %126 = load i32, i32* %6, align 4
  %127 = icmp sge i32 %125, %126
  br i1 %127, label %128, label %146

128:                                              ; preds = %124
  %129 = load i32, i32* %6, align 4
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %146

131:                                              ; preds = %128
  %132 = load i32, i32* %9, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %146

134:                                              ; preds = %131
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* %5, align 4
  %137 = add nsw i32 %135, %136
  %138 = icmp sgt i32 %137, 4
  br i1 %138, label %139, label %141

139:                                              ; preds = %134
  %140 = load i32, i32* @AVPROBE_SCORE_EXTENSION, align 4
  br label %144

141:                                              ; preds = %134
  %142 = load i32, i32* @AVPROBE_SCORE_EXTENSION, align 4
  %143 = sdiv i32 %142, 2
  br label %144

144:                                              ; preds = %141, %139
  %145 = phi i32 [ %140, %139 ], [ %143, %141 ]
  store i32 %145, i32* %2, align 4
  br label %170

146:                                              ; preds = %131, %128, %124, %120, %116
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* %8, align 4
  %149 = icmp sge i32 %147, %148
  br i1 %149, label %150, label %169

150:                                              ; preds = %146
  %151 = load i32, i32* %7, align 4
  %152 = load i32, i32* %6, align 4
  %153 = icmp sge i32 %151, %152
  br i1 %153, label %154, label %169

154:                                              ; preds = %150
  %155 = load i32, i32* %5, align 4
  %156 = load i32, i32* %6, align 4
  %157 = icmp sge i32 %155, %156
  br i1 %157, label %158, label %169

158:                                              ; preds = %154
  %159 = load i32, i32* %6, align 4
  %160 = icmp sgt i32 %159, 0
  br i1 %160, label %161, label %169

161:                                              ; preds = %158
  %162 = load i32, i32* %7, align 4
  %163 = load i32, i32* %5, align 4
  %164 = add nsw i32 %162, %163
  %165 = icmp sgt i32 %164, 4
  br i1 %165, label %166, label %169

166:                                              ; preds = %161
  %167 = load i32, i32* @AVPROBE_SCORE_EXTENSION, align 4
  %168 = sdiv i32 %167, 10
  store i32 %168, i32* %2, align 4
  br label %170

169:                                              ; preds = %161, %158, %154, %150, %146
  store i32 0, i32* %2, align 4
  br label %170

170:                                              ; preds = %169, %166, %144
  %171 = load i32, i32* %2, align 4
  ret i32 %171
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
