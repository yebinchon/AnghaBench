; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_shader.c_FixRenderCommandList.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_shader.c_FixRenderCommandList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_8__* }

@backEndData = common dso_local global %struct.TYPE_10__** null, align 8
@tr = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@QSORT_SHADERNUM_SHIFT = common dso_local global i32 0, align 4
@MAX_SHADERS = common dso_local global i32 0, align 4
@QSORT_FOGNUM_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @FixRenderCommandList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FixRenderCommandList(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %17 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @backEndData, align 8
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tr, i32 0, i32 0), align 8
  %19 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %17, i64 %18
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %3, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = icmp ne %struct.TYPE_6__* %22, null
  br i1 %23, label %24, label %113

24:                                               ; preds = %1
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %4, align 8
  br label %28

28:                                               ; preds = %24, %112
  %29 = load i8*, i8** %4, align 8
  %30 = bitcast i8* %29 to i32*
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %111 [
    i32 130, label %32
    i32 129, label %38
    i32 132, label %44
    i32 133, label %98
    i32 128, label %104
    i32 131, label %110
  ]

32:                                               ; preds = %28
  %33 = load i8*, i8** %4, align 8
  %34 = bitcast i8* %33 to i32*
  store i32* %34, i32** %5, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = bitcast i32* %36 to i8*
  store i8* %37, i8** %4, align 8
  br label %112

38:                                               ; preds = %28
  %39 = load i8*, i8** %4, align 8
  %40 = bitcast i8* %39 to i32*
  store i32* %40, i32** %6, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = bitcast i32* %42 to i8*
  store i8* %43, i8** %4, align 8
  br label %112

44:                                               ; preds = %28
  %45 = load i8*, i8** %4, align 8
  %46 = bitcast i8* %45 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %46, %struct.TYPE_7__** %14, align 8
  store i32 0, i32* %7, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  store %struct.TYPE_8__* %49, %struct.TYPE_8__** %8, align 8
  br label %50

50:                                               ; preds = %89, %44
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %94

56:                                               ; preds = %50
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @R_DecomposeSort(i32 %59, i32* %11, i32** %9, i32* %10, i32* %12)
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @QSORT_SHADERNUM_SHIFT, align 4
  %65 = ashr i32 %63, %64
  %66 = load i32, i32* @MAX_SHADERS, align 4
  %67 = sub nsw i32 %66, 1
  %68 = and i32 %65, %67
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* %2, align 4
  %71 = icmp sge i32 %69, %70
  br i1 %71, label %72, label %88

72:                                               ; preds = %56
  %73 = load i32, i32* %13, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* @QSORT_SHADERNUM_SHIFT, align 4
  %77 = shl i32 %75, %76
  %78 = load i32, i32* %11, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* @QSORT_FOGNUM_SHIFT, align 4
  %82 = shl i32 %80, %81
  %83 = or i32 %79, %82
  %84 = load i32, i32* %12, align 4
  %85 = or i32 %83, %84
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %72, %56
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %7, align 4
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 1
  store %struct.TYPE_8__* %93, %struct.TYPE_8__** %8, align 8
  br label %50

94:                                               ; preds = %50
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i64 1
  %97 = bitcast %struct.TYPE_7__* %96 to i8*
  store i8* %97, i8** %4, align 8
  br label %112

98:                                               ; preds = %28
  %99 = load i8*, i8** %4, align 8
  %100 = bitcast i8* %99 to i32*
  store i32* %100, i32** %15, align 8
  %101 = load i32*, i32** %15, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  %103 = bitcast i32* %102 to i8*
  store i8* %103, i8** %4, align 8
  br label %112

104:                                              ; preds = %28
  %105 = load i8*, i8** %4, align 8
  %106 = bitcast i8* %105 to i32*
  store i32* %106, i32** %16, align 8
  %107 = load i32*, i32** %16, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  %109 = bitcast i32* %108 to i8*
  store i8* %109, i8** %4, align 8
  br label %112

110:                                              ; preds = %28
  br label %111

111:                                              ; preds = %28, %110
  br label %113

112:                                              ; preds = %104, %98, %94, %38, %32
  br label %28

113:                                              ; preds = %111, %1
  ret void
}

declare dso_local i32 @R_DecomposeSort(i32, i32*, i32**, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
