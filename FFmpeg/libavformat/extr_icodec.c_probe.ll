; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_icodec.c_probe.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_icodec.c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@AVPROBE_SCORE_MAX = common dso_local global i32 0, align 4
@PNGSIG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @probe(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %10, 22
  br i1 %11, label %25, label %12

12:                                               ; preds = %1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @AV_RL16(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %12
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  %23 = call i32 @AV_RL16(i32* %22)
  %24 = icmp ne i32 %23, 1
  br i1 %24, label %25, label %26

25:                                               ; preds = %18, %12, %1
  store i32 0, i32* %2, align 4
  br label %168

26:                                               ; preds = %18
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 4
  %31 = call i32 @AV_RL16(i32* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %168

35:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %151, %35
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = load i32, i32* %4, align 4
  %42 = mul i32 %41, 16
  %43 = add i32 %42, 22
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ule i32 %43, %46
  br label %48

48:                                               ; preds = %40, %36
  %49 = phi i1 [ false, %36 ], [ %47, %40 ]
  br i1 %49, label %50, label %154

50:                                               ; preds = %48
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 10
  %55 = load i32, i32* %4, align 4
  %56 = mul i32 %55, 16
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  %59 = call i32 @AV_RL16(i32* %58)
  %60 = and i32 %59, -2
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %50
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @AVPROBE_SCORE_MAX, align 4
  %65 = sdiv i32 %64, 4
  %66 = call i32 @FFMIN(i32 %63, i32 %65)
  store i32 %66, i32* %2, align 4
  br label %168

67:                                               ; preds = %50
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = mul i32 %71, 16
  %73 = add i32 13, %72
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %70, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %67
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @AVPROBE_SCORE_MAX, align 4
  %81 = sdiv i32 %80, 4
  %82 = call i32 @FFMIN(i32 %79, i32 %81)
  store i32 %82, i32* %2, align 4
  br label %168

83:                                               ; preds = %67
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 14
  %88 = load i32, i32* %4, align 4
  %89 = mul i32 %88, 16
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  %92 = call i32 @AV_RL32(i32* %91)
  %93 = icmp slt i32 %92, 40
  br i1 %93, label %94, label %99

94:                                               ; preds = %83
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* @AVPROBE_SCORE_MAX, align 4
  %97 = sdiv i32 %96, 4
  %98 = call i32 @FFMIN(i32 %95, i32 %97)
  store i32 %98, i32* %2, align 4
  br label %168

99:                                               ; preds = %83
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 18
  %104 = load i32, i32* %4, align 4
  %105 = mul i32 %104, 16
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %103, i64 %106
  %108 = call i32 @AV_RL32(i32* %107)
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  %110 = icmp ult i32 %109, 22
  br i1 %110, label %111, label %116

111:                                              ; preds = %99
  %112 = load i32, i32* %4, align 4
  %113 = load i32, i32* @AVPROBE_SCORE_MAX, align 4
  %114 = sdiv i32 %113, 4
  %115 = call i32 @FFMIN(i32 %112, i32 %114)
  store i32 %115, i32* %2, align 4
  br label %168

116:                                              ; preds = %99
  %117 = load i32, i32* %7, align 4
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = sub nsw i32 %120, 8
  %122 = icmp ugt i32 %117, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %116
  br label %151

124:                                              ; preds = %116
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %7, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 40
  br i1 %132, label %133, label %148

133:                                              ; preds = %124
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %7, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = call i64 @AV_RB64(i32* %139)
  %141 = load i64, i64* @PNGSIG, align 8
  %142 = icmp ne i64 %140, %141
  br i1 %142, label %143, label %148

143:                                              ; preds = %133
  %144 = load i32, i32* %4, align 4
  %145 = load i32, i32* @AVPROBE_SCORE_MAX, align 4
  %146 = sdiv i32 %145, 4
  %147 = call i32 @FFMIN(i32 %144, i32 %146)
  store i32 %147, i32* %2, align 4
  br label %168

148:                                              ; preds = %133, %124
  %149 = load i32, i32* %6, align 4
  %150 = add i32 %149, 1
  store i32 %150, i32* %6, align 4
  br label %151

151:                                              ; preds = %148, %123
  %152 = load i32, i32* %4, align 4
  %153 = add i32 %152, 1
  store i32 %153, i32* %4, align 4
  br label %36

154:                                              ; preds = %48
  %155 = load i32, i32* %6, align 4
  %156 = load i32, i32* %5, align 4
  %157 = icmp ult i32 %155, %156
  br i1 %157, label %158, label %164

158:                                              ; preds = %154
  %159 = load i32, i32* @AVPROBE_SCORE_MAX, align 4
  %160 = sdiv i32 %159, 4
  %161 = load i32, i32* %6, align 4
  %162 = call i32 @FFMIN(i32 %161, i32 1)
  %163 = add nsw i32 %160, %162
  store i32 %163, i32* %2, align 4
  br label %168

164:                                              ; preds = %154
  %165 = load i32, i32* @AVPROBE_SCORE_MAX, align 4
  %166 = sdiv i32 %165, 2
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %2, align 4
  br label %168

168:                                              ; preds = %164, %158, %143, %111, %94, %78, %62, %34, %25
  %169 = load i32, i32* %2, align 4
  ret i32 %169
}

declare dso_local i32 @AV_RL16(i32*) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @AV_RL32(i32*) #1

declare dso_local i64 @AV_RB64(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
