; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_l_bsp_q2.c_Q2_FixTextureReferences.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_l_bsp_q2.c_Q2_FixTextureReferences.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@brushsidetextured = common dso_local global i32* null, align 8
@MAX_MAP_BRUSHSIDES = common dso_local global i32 0, align 4
@numbrushes = common dso_local global i32 0, align 4
@dbrushes = common dso_local global %struct.TYPE_13__* null, align 8
@dbrushsides = common dso_local global %struct.TYPE_12__* null, align 8
@WE_NOTENOUGHPOINTS = common dso_local global i32 0, align 4
@WE_SMALLAREA = common dso_local global i32 0, align 4
@WE_POINTBOGUSRANGE = common dso_local global i32 0, align 4
@numfaces = common dso_local global i32 0, align 4
@dfaces = common dso_local global %struct.TYPE_11__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Q2_FixTextureReferences() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32*, align 8
  %9 = load i32*, i32** @brushsidetextured, align 8
  %10 = load i32, i32* @MAX_MAP_BRUSHSIDES, align 4
  %11 = call i32 @memset(i32* %9, i32 0, i32 %10)
  store i32 0, i32* %1, align 4
  br label %12

12:                                               ; preds = %160, %0
  %13 = load i32, i32* %1, align 4
  %14 = load i32, i32* @numbrushes, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %163

16:                                               ; preds = %12
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** @dbrushes, align 8
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i64 %19
  store %struct.TYPE_13__* %20, %struct.TYPE_13__** %6, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %22 = call i64 @Q2_HintSkipBrush(%struct.TYPE_13__* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %160

25:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %156, %25
  %27 = load i32, i32* %2, align 4
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %159

32:                                               ; preds = %26
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** @dbrushsides, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %2, align 4
  %38 = add nsw i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i64 %39
  store %struct.TYPE_12__* %40, %struct.TYPE_12__** %5, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %43 = call i32* @Q2_BrushSideWinding(%struct.TYPE_13__* %41, %struct.TYPE_12__* %42)
  store i32* %43, i32** %8, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %55, label %46

46:                                               ; preds = %32
  %47 = load i32*, i32** @brushsidetextured, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %2, align 4
  %52 = add nsw i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %47, i64 %53
  store i32 1, i32* %54, align 4
  br label %156

55:                                               ; preds = %32
  %56 = load i32*, i32** %8, align 8
  %57 = call i64 @WindingIsTiny(i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %55
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 @FreeWinding(i32* %60)
  %62 = load i32*, i32** @brushsidetextured, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %2, align 4
  %67 = add nsw i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %62, i64 %68
  store i32 1, i32* %69, align 4
  br label %156

70:                                               ; preds = %55
  %71 = load i32*, i32** %8, align 8
  %72 = call i32 @WindingError(i32* %71)
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @WE_NOTENOUGHPOINTS, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %84, label %76

76:                                               ; preds = %70
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @WE_SMALLAREA, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @WE_POINTBOGUSRANGE, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %95

84:                                               ; preds = %80, %76, %70
  %85 = load i32*, i32** %8, align 8
  %86 = call i32 @FreeWinding(i32* %85)
  %87 = load i32*, i32** @brushsidetextured, align 8
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %2, align 4
  %92 = add nsw i32 %90, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %87, i64 %93
  store i32 1, i32* %94, align 4
  br label %156

95:                                               ; preds = %80
  br label %96

96:                                               ; preds = %95
  br label %97

97:                                               ; preds = %96
  %98 = load i32*, i32** %8, align 8
  %99 = call i32 @WindingArea(i32* %98)
  %100 = icmp slt i32 %99, 20
  br i1 %100, label %101, label %110

101:                                              ; preds = %97
  %102 = load i32*, i32** @brushsidetextured, align 8
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %2, align 4
  %107 = add nsw i32 %105, %106
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %102, i64 %108
  store i32 1, i32* %109, align 4
  br label %110

110:                                              ; preds = %101, %97
  store i32 0, i32* %3, align 4
  br label %111

111:                                              ; preds = %150, %110
  %112 = load i32, i32* %3, align 4
  %113 = load i32, i32* @numfaces, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %153

115:                                              ; preds = %111
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** @dfaces, align 8
  %117 = load i32, i32* %3, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i64 %118
  store %struct.TYPE_11__* %119, %struct.TYPE_11__** %7, align 8
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %122, -2
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %126, -2
  %128 = icmp ne i32 %123, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %115
  br label %150

130:                                              ; preds = %115
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %132 = load i32*, i32** %8, align 8
  %133 = call i64 @Q2_FaceOnWinding(%struct.TYPE_11__* %131, i32* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %149

135:                                              ; preds = %130
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 4
  %141 = load i32*, i32** @brushsidetextured, align 8
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %2, align 4
  %146 = add nsw i32 %144, %145
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %141, i64 %147
  store i32 1, i32* %148, align 4
  br label %153

149:                                              ; preds = %130
  br label %150

150:                                              ; preds = %149, %129
  %151 = load i32, i32* %3, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %3, align 4
  br label %111

153:                                              ; preds = %135, %111
  %154 = load i32*, i32** %8, align 8
  %155 = call i32 @FreeWinding(i32* %154)
  br label %156

156:                                              ; preds = %153, %84, %59, %46
  %157 = load i32, i32* %2, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %2, align 4
  br label %26

159:                                              ; preds = %26
  br label %160

160:                                              ; preds = %159, %24
  %161 = load i32, i32* %1, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %1, align 4
  br label %12

163:                                              ; preds = %12
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @Q2_HintSkipBrush(%struct.TYPE_13__*) #1

declare dso_local i32* @Q2_BrushSideWinding(%struct.TYPE_13__*, %struct.TYPE_12__*) #1

declare dso_local i64 @WindingIsTiny(i32*) #1

declare dso_local i32 @FreeWinding(i32*) #1

declare dso_local i32 @WindingError(i32*) #1

declare dso_local i32 @WindingArea(i32*) #1

declare dso_local i64 @Q2_FaceOnWinding(%struct.TYPE_11__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
