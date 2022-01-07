; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mjpeg_parser.c_find_frame_end.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mjpeg_parser.c_find_frame_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@END_NOT_FOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32)* @find_frame_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_frame_end(%struct.TYPE_5__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %8, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %11, align 4
  store i32 0, i32* %10, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %92, label %24

24:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %90, %71, %24
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %91

29:                                               ; preds = %25
  %30 = load i32, i32* %11, align 4
  %31 = shl i32 %30, 8
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %31, %36
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp uge i32 %38, -4194304
  br i1 %39, label %40, label %66

40:                                               ; preds = %29
  %41 = load i32, i32* %11, align 4
  %42 = icmp ule i32 %41, -65537
  br i1 %42, label %43, label %66

43:                                               ; preds = %40
  %44 = load i32, i32* %11, align 4
  %45 = icmp uge i32 %44, -2621440
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load i32, i32* %11, align 4
  %48 = icmp ule i32 %47, -2555905
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %10, align 4
  store i32 1, i32* %9, align 4
  br label %91

52:                                               ; preds = %46, %43
  %53 = load i32, i32* %11, align 4
  %54 = icmp ult i32 %53, -3145728
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %11, align 4
  %57 = icmp ugt i32 %56, -2490369
  br i1 %57, label %58, label %64

58:                                               ; preds = %55, %52
  %59 = load i32, i32* %11, align 4
  %60 = and i32 %59, 65535
  %61 = sub nsw i32 %60, 1
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %58, %55
  br label %65

65:                                               ; preds = %64
  br label %66

66:                                               ; preds = %65, %40, %29
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %87

71:                                               ; preds = %66
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %10, align 4
  %74 = sub nsw i32 %72, %73
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @FFMIN(i32 %74, i32 %77)
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %12, align 4
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 %85, %82
  store i32 %86, i32* %84, align 4
  store i32 0, i32* %11, align 4
  br label %25

87:                                               ; preds = %66
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %10, align 4
  br label %90

90:                                               ; preds = %87
  br label %25

91:                                               ; preds = %49, %25
  br label %92

92:                                               ; preds = %91, %3
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %171

95:                                               ; preds = %92
  %96 = load i32, i32* %7, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  store i32 0, i32* %4, align 4
  br label %179

99:                                               ; preds = %95
  br label %100

100:                                              ; preds = %169, %150, %99
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %7, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %170

104:                                              ; preds = %100
  %105 = load i32, i32* %11, align 4
  %106 = shl i32 %105, 8
  %107 = load i32*, i32** %6, align 8
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %106, %111
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %11, align 4
  %114 = icmp uge i32 %113, -4194304
  br i1 %114, label %115, label %145

115:                                              ; preds = %104
  %116 = load i32, i32* %11, align 4
  %117 = icmp ule i32 %116, -65537
  br i1 %117, label %118, label %145

118:                                              ; preds = %115
  %119 = load i32, i32* %11, align 4
  %120 = icmp uge i32 %119, -2621440
  br i1 %120, label %121, label %131

121:                                              ; preds = %118
  %122 = load i32, i32* %11, align 4
  %123 = icmp ule i32 %122, -2555905
  br i1 %123, label %124, label %131

124:                                              ; preds = %121
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  store i32 0, i32* %126, align 4
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  store i32 0, i32* %128, align 4
  %129 = load i32, i32* %10, align 4
  %130 = sub nsw i32 %129, 3
  store i32 %130, i32* %4, align 4
  br label %179

131:                                              ; preds = %121, %118
  %132 = load i32, i32* %11, align 4
  %133 = icmp ult i32 %132, -3145728
  br i1 %133, label %137, label %134

134:                                              ; preds = %131
  %135 = load i32, i32* %11, align 4
  %136 = icmp ugt i32 %135, -2490369
  br i1 %136, label %137, label %143

137:                                              ; preds = %134, %131
  %138 = load i32, i32* %11, align 4
  %139 = and i32 %138, 65535
  %140 = sub nsw i32 %139, 1
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 4
  br label %143

143:                                              ; preds = %137, %134
  br label %144

144:                                              ; preds = %143
  br label %145

145:                                              ; preds = %144, %115, %104
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = icmp sgt i32 %148, 0
  br i1 %149, label %150, label %166

150:                                              ; preds = %145
  %151 = load i32, i32* %7, align 4
  %152 = load i32, i32* %10, align 4
  %153 = sub nsw i32 %151, %152
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @FFMIN(i32 %153, i32 %156)
  store i32 %157, i32* %13, align 4
  %158 = load i32, i32* %13, align 4
  %159 = load i32, i32* %10, align 4
  %160 = add nsw i32 %159, %158
  store i32 %160, i32* %10, align 4
  %161 = load i32, i32* %13, align 4
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = sub nsw i32 %164, %161
  store i32 %165, i32* %163, align 4
  store i32 0, i32* %11, align 4
  br label %100

166:                                              ; preds = %145
  %167 = load i32, i32* %10, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %10, align 4
  br label %169

169:                                              ; preds = %166
  br label %100

170:                                              ; preds = %100
  br label %171

171:                                              ; preds = %170, %92
  %172 = load i32, i32* %9, align 4
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  store i32 %172, i32* %174, align 4
  %175 = load i32, i32* %11, align 4
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 1
  store i32 %175, i32* %177, align 4
  %178 = load i32, i32* @END_NOT_FOUND, align 4
  store i32 %178, i32* %4, align 4
  br label %179

179:                                              ; preds = %171, %124, %98
  %180 = load i32, i32* %4, align 4
  ret i32 %180
}

declare dso_local i32 @FFMIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
