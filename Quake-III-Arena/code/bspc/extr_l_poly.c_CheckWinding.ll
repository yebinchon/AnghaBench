; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_l_poly.c_CheckWinding.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_l_poly.c_CheckWinding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32** }

@.str = private unnamed_addr constant [24 x i8] c"CheckWinding: %i points\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"CheckWinding: %f area\00", align 1
@BOGUS_RANGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"CheckWinding: BUGUS_RANGE: %f\00", align 1
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

49:                                               ; preds = %77, %41
  %50 = load i32, i32* %4, align 4
  %51 = icmp slt i32 %50, 3
  br i1 %51, label %52, label %80

52:                                               ; preds = %49
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @BOGUS_RANGE, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %69, label %60

60:                                               ; preds = %52
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @BOGUS_RANGE, align 4
  %67 = sub nsw i32 0, %66
  %68 = icmp slt i32 %65, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %60, %52
  %70 = load i32*, i32** %5, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %69, %60
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %4, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %4, align 4
  br label %49

80:                                               ; preds = %49
  %81 = load i32, i32* %3, align 4
  %82 = add nsw i32 %81, 1
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp eq i32 %82, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  br label %91

88:                                               ; preds = %80
  %89 = load i32, i32* %3, align 4
  %90 = add nsw i32 %89, 1
  br label %91

91:                                               ; preds = %88, %87
  %92 = phi i32 [ 0, %87 ], [ %90, %88 ]
  store i32 %92, i32* %4, align 4
  %93 = load i32*, i32** %5, align 8
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @DotProduct(i32* %93, i32 %94)
  %96 = load i32, i32* %13, align 4
  %97 = sub nsw i32 %95, %96
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @ON_EPSILON, align 4
  %100 = sub nsw i32 0, %99
  %101 = icmp slt i32 %98, %100
  br i1 %101, label %106, label %102

102:                                              ; preds = %91
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @ON_EPSILON, align 4
  %105 = icmp sgt i32 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %102, %91
  %107 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %108

108:                                              ; preds = %106, %102
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load i32**, i32*** %110, align 8
  %112 = load i32, i32* %4, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32*, i32** %111, i64 %113
  %115 = load i32*, i32** %114, align 8
  store i32* %115, i32** %6, align 8
  %116 = load i32*, i32** %6, align 8
  %117 = load i32*, i32** %5, align 8
  %118 = load i32, i32* %9, align 4
  %119 = call i32 @VectorSubtract(i32* %116, i32* %117, i32 %118)
  %120 = load i32, i32* %9, align 4
  %121 = call i32 @VectorLength(i32 %120)
  %122 = load i32, i32* @ON_EPSILON, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %108
  %125 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %126

126:                                              ; preds = %124, %108
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* %10, align 4
  %130 = call i32 @CrossProduct(i32 %127, i32 %128, i32 %129)
  %131 = load i32, i32* %10, align 4
  %132 = call i32 @VectorNormalize(i32 %131)
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

139:                                              ; preds = %166, %126
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

declare dso_local i32 @VectorNormalize(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
