; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_v_video.c_V_DrawPatchFlipped.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_v_video.c_V_DrawPatchFlipped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@screens = common dso_local global i32** null, align 8
@SCREENWIDTH = common dso_local global i32 0, align 4
@SCREENHEIGHT = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @V_DrawPatchFlipped(i32 %0, i32 %1, i32 %2, %struct.TYPE_4__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %8, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @SHORT(i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = sub nsw i32 %20, %19
  store i32 %21, i32* %6, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @SHORT(i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = sub nsw i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @SHORT(i32 %35)
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @SHORT(i32 %39)
  %41 = call i32 @V_MarkRect(i32 %31, i32 %32, i32 %36, i32 %40)
  br label %42

42:                                               ; preds = %30, %4
  store i32 0, i32* %10, align 4
  %43 = load i32**, i32*** @screens, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %43, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @SCREENWIDTH, align 4
  %50 = mul nsw i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %47, i64 %51
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32* %55, i32** %12, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @SHORT(i32 %58)
  store i32 %59, i32* %15, align 4
  br label %60

60:                                               ; preds = %125, %42
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %15, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %132

64:                                               ; preds = %60
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %66 = bitcast %struct.TYPE_4__* %65 to i32*
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %15, align 4
  %71 = sub nsw i32 %70, 1
  %72 = load i32, i32* %10, align 4
  %73 = sub nsw i32 %71, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %69, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @LONG(i32 %76)
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %66, i64 %78
  %80 = bitcast i32* %79 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %80, %struct.TYPE_5__** %11, align 8
  br label %81

81:                                               ; preds = %114, %64
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 255
  br i1 %85, label %86, label %124

86:                                               ; preds = %81
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %88 = bitcast %struct.TYPE_5__* %87 to i32*
  %89 = getelementptr inbounds i32, i32* %88, i64 3
  store i32* %89, i32** %14, align 8
  %90 = load i32*, i32** %12, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @SCREENWIDTH, align 4
  %95 = mul nsw i32 %93, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %90, i64 %96
  store i32* %97, i32** %13, align 8
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %9, align 4
  br label %101

101:                                              ; preds = %105, %86
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %9, align 4
  %104 = icmp ne i32 %102, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %101
  %106 = load i32*, i32** %14, align 8
  %107 = getelementptr inbounds i32, i32* %106, i32 1
  store i32* %107, i32** %14, align 8
  %108 = load i32, i32* %106, align 4
  %109 = load i32*, i32** %13, align 8
  store i32 %108, i32* %109, align 4
  %110 = load i32, i32* @SCREENWIDTH, align 4
  %111 = load i32*, i32** %13, align 8
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  store i32* %113, i32** %13, align 8
  br label %101

114:                                              ; preds = %101
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %116 = bitcast %struct.TYPE_5__* %115 to i32*
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %116, i64 %120
  %122 = getelementptr inbounds i32, i32* %121, i64 4
  %123 = bitcast i32* %122 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %123, %struct.TYPE_5__** %11, align 8
  br label %81

124:                                              ; preds = %81
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %5, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %5, align 4
  %128 = load i32, i32* %10, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %10, align 4
  %130 = load i32*, i32** %12, align 8
  %131 = getelementptr inbounds i32, i32* %130, i32 1
  store i32* %131, i32** %12, align 8
  br label %60

132:                                              ; preds = %60
  ret void
}

declare dso_local i32 @SHORT(i32) #1

declare dso_local i32 @V_MarkRect(i32, i32, i32, i32) #1

declare dso_local i32 @LONG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
