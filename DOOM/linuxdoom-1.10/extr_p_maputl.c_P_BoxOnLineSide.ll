; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_maputl.c_P_BoxOnLineSide.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_maputl.c_P_BoxOnLineSide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@BOXTOP = common dso_local global i64 0, align 8
@BOXBOTTOM = common dso_local global i64 0, align 8
@BOXRIGHT = common dso_local global i64 0, align 8
@BOXLEFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @P_BoxOnLineSide(i32* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %119 [
    i32 131, label %11
    i32 128, label %44
    i32 129, label %77
    i32 130, label %98
  ]

11:                                               ; preds = %2
  %12 = load i32*, i32** %4, align 8
  %13 = load i64, i64* @BOXTOP, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp sgt i32 %15, %20
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %6, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = load i64, i64* @BOXBOTTOM, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp sgt i32 %26, %31
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %7, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %11
  %39 = load i32, i32* %6, align 4
  %40 = xor i32 %39, 1
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = xor i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %38, %11
  br label %119

44:                                               ; preds = %2
  %45 = load i32*, i32** %4, align 8
  %46 = load i64, i64* @BOXRIGHT, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %48, %53
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %6, align 4
  %56 = load i32*, i32** %4, align 8
  %57 = load i64, i64* @BOXLEFT, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp slt i32 %59, %64
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %7, align 4
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %44
  %72 = load i32, i32* %6, align 4
  %73 = xor i32 %72, 1
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %7, align 4
  %75 = xor i32 %74, 1
  store i32 %75, i32* %7, align 4
  br label %76

76:                                               ; preds = %71, %44
  br label %119

77:                                               ; preds = %2
  %78 = load i32*, i32** %4, align 8
  %79 = load i64, i64* @BOXLEFT, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %4, align 8
  %83 = load i64, i64* @BOXTOP, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %87 = call i32 @P_PointOnLineSide(i32 %81, i32 %85, %struct.TYPE_6__* %86)
  store i32 %87, i32* %6, align 4
  %88 = load i32*, i32** %4, align 8
  %89 = load i64, i64* @BOXRIGHT, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %4, align 8
  %93 = load i64, i64* @BOXBOTTOM, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %97 = call i32 @P_PointOnLineSide(i32 %91, i32 %95, %struct.TYPE_6__* %96)
  store i32 %97, i32* %7, align 4
  br label %119

98:                                               ; preds = %2
  %99 = load i32*, i32** %4, align 8
  %100 = load i64, i64* @BOXRIGHT, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** %4, align 8
  %104 = load i64, i64* @BOXTOP, align 8
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %108 = call i32 @P_PointOnLineSide(i32 %102, i32 %106, %struct.TYPE_6__* %107)
  store i32 %108, i32* %6, align 4
  %109 = load i32*, i32** %4, align 8
  %110 = load i64, i64* @BOXLEFT, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %4, align 8
  %114 = load i64, i64* @BOXBOTTOM, align 8
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %118 = call i32 @P_PointOnLineSide(i32 %112, i32 %116, %struct.TYPE_6__* %117)
  store i32 %118, i32* %7, align 4
  br label %119

119:                                              ; preds = %2, %98, %77, %76, %43
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* %7, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %119
  %124 = load i32, i32* %6, align 4
  store i32 %124, i32* %3, align 4
  br label %126

125:                                              ; preds = %119
  store i32 -1, i32* %3, align 4
  br label %126

126:                                              ; preds = %125, %123
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i32 @P_PointOnLineSide(i32, i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
