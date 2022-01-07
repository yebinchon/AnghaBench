; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/common/extr_polylib.c_CheckWinding.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/common/extr_polylib.c_CheckWinding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32** }

@.str = private unnamed_addr constant [24 x i8] c"CheckWinding: %i points\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"CheckWinding: %f area\00", align 1
@MAX_WORLD_COORD = common dso_local global i32 0, align 4
@MIN_WORLD_COORD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"CheckFace: BUGUS_RANGE: %f\00", align 1
@ON_EPSILON = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"CheckWinding: point off plane\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"CheckWinding: degenerate edge\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"CheckWinding: non-convex\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CheckWinding(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %16, 3
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %18, %1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %25 = call i32 @WindingArea(%struct.TYPE_5__* %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp slt i32 %26, 1
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* %12, align 4
  %30 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %28, %23
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @WindingPlane(%struct.TYPE_5__* %32, i32 %33, i32* %13)
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %170, %31
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %173

41:                                               ; preds = %35
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i32**, i32*** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32*, i32** %44, i64 %46
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %5, align 8
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %76, %41
  %50 = load i32, i32* %4, align 4
  %51 = icmp slt i32 %50, 3
  br i1 %51, label %52, label %79

52:                                               ; preds = %49
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @MAX_WORLD_COORD, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %68, label %60

60:                                               ; preds = %52
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @MIN_WORLD_COORD, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %60, %52
  %69 = load i32*, i32** %5, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %68, %60
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %4, align 4
  br label %49

79:                                               ; preds = %49
  %80 = load i32, i32* %3, align 4
  %81 = add nsw i32 %80, 1
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp eq i32 %81, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  br label %90

87:                                               ; preds = %79
  %88 = load i32, i32* %3, align 4
  %89 = add nsw i32 %88, 1
  br label %90

90:                                               ; preds = %87, %86
  %91 = phi i32 [ 0, %86 ], [ %89, %87 ]
  store i32 %91, i32* %4, align 4
  %92 = load i32*, i32** %5, align 8
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @DotProduct(i32* %92, i32 %93)
  %95 = load i32, i32* %13, align 4
  %96 = sub nsw i32 %94, %95
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @ON_EPSILON, align 4
  %99 = sub nsw i32 0, %98
  %100 = icmp slt i32 %97, %99
  br i1 %100, label %105, label %101

101:                                              ; preds = %90
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @ON_EPSILON, align 4
  %104 = icmp sgt i32 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %101, %90
  %106 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %107

107:                                              ; preds = %105, %101
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 1
  %110 = load i32**, i32*** %109, align 8
  %111 = load i32, i32* %4, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32*, i32** %110, i64 %112
  %114 = load i32*, i32** %113, align 8
  store i32* %114, i32** %6, align 8
  %115 = load i32*, i32** %6, align 8
  %116 = load i32*, i32** %5, align 8
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @VectorSubtract(i32* %115, i32* %116, i32 %117)
  %119 = load i32, i32* %9, align 4
  %120 = call i32 @VectorLength(i32 %119)
  %121 = load i32, i32* @ON_EPSILON, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %107
  %124 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %125

125:                                              ; preds = %123, %107
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* %10, align 4
  %129 = call i32 @CrossProduct(i32 %126, i32 %127, i32 %128)
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* %10, align 4
  %132 = call i32 @VectorNormalize(i32 %130, i32 %131)
  %133 = load i32*, i32** %5, align 8
  %134 = load i32, i32* %10, align 4
  %135 = call i32 @DotProduct(i32* %133, i32 %134)
  store i32 %135, i32* %8, align 4
  %136 = load i32, i32* @ON_EPSILON, align 4
  %137 = load i32, i32* %8, align 4
  %138 = add nsw i32 %137, %136
  store i32 %138, i32* %8, align 4
  store i32 0, i32* %4, align 4
  br label %139

139:                                              ; preds = %166, %125
  %140 = load i32, i32* %4, align 4
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp slt i32 %140, %143
  br i1 %144, label %145, label %169

145:                                              ; preds = %139
  %146 = load i32, i32* %4, align 4
  %147 = load i32, i32* %3, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %145
  br label %166

150:                                              ; preds = %145
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 1
  %153 = load i32**, i32*** %152, align 8
  %154 = load i32, i32* %4, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32*, i32** %153, i64 %155
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %10, align 4
  %159 = call i32 @DotProduct(i32* %157, i32 %158)
  store i32 %159, i32* %7, align 4
  %160 = load i32, i32* %7, align 4
  %161 = load i32, i32* %8, align 4
  %162 = icmp sgt i32 %160, %161
  br i1 %162, label %163, label %165

163:                                              ; preds = %150
  %164 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %165

165:                                              ; preds = %163, %150
  br label %166

166:                                              ; preds = %165, %149
  %167 = load i32, i32* %4, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %4, align 4
  br label %139

169:                                              ; preds = %139
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %3, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %3, align 4
  br label %35

173:                                              ; preds = %35
  ret void
}

declare dso_local i32 @Error(i8*, ...) #1

declare dso_local i32 @WindingArea(%struct.TYPE_5__*) #1

declare dso_local i32 @WindingPlane(%struct.TYPE_5__*, i32, i32*) #1

declare dso_local i32 @DotProduct(i32*, i32) #1

declare dso_local i32 @VectorSubtract(i32*, i32*, i32) #1

declare dso_local i32 @VectorLength(i32) #1

declare dso_local i32 @CrossProduct(i32, i32, i32) #1

declare dso_local i32 @VectorNormalize(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
