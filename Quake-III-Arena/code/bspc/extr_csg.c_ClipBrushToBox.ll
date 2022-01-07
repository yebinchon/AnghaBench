; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_csg.c_ClipBrushToBox.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_csg.c_ClipBrushToBox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64*, i64*, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32 }

@maxplanenums = common dso_local global i32* null, align 8
@minplanenums = common dso_local global i32* null, align 8
@TEXINFO_NODE = common dso_local global i32 0, align 4
@SFL_VISIBLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @ClipBrushToBox(%struct.TYPE_10__* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %83, %3
  %14 = load i32, i32* %9, align 4
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %86

16:                                               ; preds = %13
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = load i64*, i64** %7, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %23, %28
  br i1 %29, label %30, label %49

30:                                               ; preds = %16
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %32 = load i32*, i32** @maxplanenums, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @SplitBrush(%struct.TYPE_10__* %31, i32 %36, %struct.TYPE_10__** %10, %struct.TYPE_10__** %11)
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %39 = icmp ne %struct.TYPE_10__* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %30
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %42 = call i32 @FreeBrush(%struct.TYPE_10__* %41)
  br label %43

43:                                               ; preds = %40, %30
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  store %struct.TYPE_10__* %44, %struct.TYPE_10__** %5, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %46 = icmp ne %struct.TYPE_10__* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  br label %152

48:                                               ; preds = %43
  br label %49

49:                                               ; preds = %48, %16
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = load i64*, i64** %6, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = icmp slt i64 %56, %61
  br i1 %62, label %63, label %82

63:                                               ; preds = %49
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %65 = load i32*, i32** @minplanenums, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @SplitBrush(%struct.TYPE_10__* %64, i32 %69, %struct.TYPE_10__** %10, %struct.TYPE_10__** %11)
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %72 = icmp ne %struct.TYPE_10__* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %63
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %75 = call i32 @FreeBrush(%struct.TYPE_10__* %74)
  br label %76

76:                                               ; preds = %73, %63
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_10__* %77, %struct.TYPE_10__** %5, align 8
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %79 = icmp ne %struct.TYPE_10__* %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %76
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  br label %152

81:                                               ; preds = %76
  br label %82

82:                                               ; preds = %81, %49
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %9, align 4
  br label %13

86:                                               ; preds = %13
  store i32 0, i32* %8, align 4
  br label %87

87:                                               ; preds = %147, %86
  %88 = load i32, i32* %8, align 4
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = icmp slt i32 %88, %91
  br i1 %92, label %93, label %150

93:                                               ; preds = %87
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 3
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, -2
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %12, align 4
  %104 = load i32*, i32** @maxplanenums, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %103, %106
  br i1 %107, label %126, label %108

108:                                              ; preds = %93
  %109 = load i32, i32* %12, align 4
  %110 = load i32*, i32** @maxplanenums, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %109, %112
  br i1 %113, label %126, label %114

114:                                              ; preds = %108
  %115 = load i32, i32* %12, align 4
  %116 = load i32*, i32** @minplanenums, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %115, %118
  br i1 %119, label %126, label %120

120:                                              ; preds = %114
  %121 = load i32, i32* %12, align 4
  %122 = load i32*, i32** @minplanenums, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %121, %124
  br i1 %125, label %126, label %146

126:                                              ; preds = %120, %114, %108, %93
  %127 = load i32, i32* @TEXINFO_NODE, align 4
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 3
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %129, align 8
  %131 = load i32, i32* %8, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 2
  store i32 %127, i32* %134, align 4
  %135 = load i32, i32* @SFL_VISIBLE, align 4
  %136 = xor i32 %135, -1
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 3
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %138, align 8
  %140 = load i32, i32* %8, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = and i32 %144, %136
  store i32 %145, i32* %143, align 4
  br label %146

146:                                              ; preds = %126, %120
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %8, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %8, align 4
  br label %87

150:                                              ; preds = %87
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_10__* %151, %struct.TYPE_10__** %4, align 8
  br label %152

152:                                              ; preds = %150, %80, %47
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  ret %struct.TYPE_10__* %153
}

declare dso_local i32 @SplitBrush(%struct.TYPE_10__*, i32, %struct.TYPE_10__**, %struct.TYPE_10__**) #1

declare dso_local i32 @FreeBrush(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
