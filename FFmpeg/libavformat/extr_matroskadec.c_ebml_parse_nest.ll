; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskadec.c_ebml_parse_nest.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskadec.c_ebml_parse_nest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_9__, i32, i64 }
%struct.TYPE_9__ = type { double, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@LEVEL_ENDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_12__*, i8*)* @ebml_parse_nest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebml_parse_nest(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32**, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %144

13:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %122, %13
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %125

22:                                               ; preds = %14
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %121 [
    i32 129, label %29
    i32 131, label %47
    i32 132, label %65
    i32 130, label %83
    i32 128, label %83
  ]

29:                                               ; preds = %22
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %37, i64 %44
  %46 = bitcast i8* %45 to i32*
  store i32 %36, i32* %46, align 4
  br label %121

47:                                               ; preds = %22
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i8*, i8** %7, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %55, i64 %62
  %64 = bitcast i8* %63 to i32*
  store i32 %54, i32* %64, align 4
  br label %121

65:                                               ; preds = %22
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load double, double* %71, align 8
  %73 = load i8*, i8** %7, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %73, i64 %80
  %82 = bitcast i8* %81 to double*
  store double %72, double* %82, align 8
  br label %121

83:                                               ; preds = %22, %22
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %120

92:                                               ; preds = %83
  %93 = load i8*, i8** %7, align 8
  %94 = bitcast i8* %93 to i32*
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %94, i64 %101
  %103 = bitcast i32* %102 to i32**
  store i32** %103, i32*** %10, align 8
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i32* @av_strdup(i32 %110)
  %112 = load i32**, i32*** %10, align 8
  store i32* %111, i32** %112, align 8
  %113 = load i32**, i32*** %10, align 8
  %114 = load i32*, i32** %113, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %119, label %116

116:                                              ; preds = %92
  %117 = load i32, i32* @ENOMEM, align 4
  %118 = call i32 @AVERROR(i32 %117)
  store i32 %118, i32* %4, align 4
  br label %163

119:                                              ; preds = %92
  br label %120

120:                                              ; preds = %119, %83
  br label %121

121:                                              ; preds = %22, %120, %65, %47, %29
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %9, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %9, align 4
  br label %14

125:                                              ; preds = %14
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %127, align 8
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = sub nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %143, label %138

138:                                              ; preds = %125
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = add nsw i32 %141, -1
  store i32 %142, i32* %140, align 8
  store i32 0, i32* %4, align 4
  br label %163

143:                                              ; preds = %125
  br label %144

144:                                              ; preds = %143, %3
  br label %145

145:                                              ; preds = %150, %144
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %148 = load i8*, i8** %7, align 8
  %149 = call i32 @ebml_parse(%struct.TYPE_11__* %146, %struct.TYPE_12__* %147, i8* %148)
  store i32 %149, i32* %8, align 4
  br label %150

150:                                              ; preds = %145
  %151 = load i32, i32* %8, align 4
  %152 = icmp ne i32 %151, 0
  %153 = xor i1 %152, true
  br i1 %153, label %145, label %154

154:                                              ; preds = %150
  %155 = load i32, i32* %8, align 4
  %156 = load i32, i32* @LEVEL_ENDED, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %154
  br label %161

159:                                              ; preds = %154
  %160 = load i32, i32* %8, align 4
  br label %161

161:                                              ; preds = %159, %158
  %162 = phi i32 [ 0, %158 ], [ %160, %159 ]
  store i32 %162, i32* %4, align 4
  br label %163

163:                                              ; preds = %161, %138, %116
  %164 = load i32, i32* %4, align 4
  ret i32 %164
}

declare dso_local i32* @av_strdup(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ebml_parse(%struct.TYPE_11__*, %struct.TYPE_12__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
