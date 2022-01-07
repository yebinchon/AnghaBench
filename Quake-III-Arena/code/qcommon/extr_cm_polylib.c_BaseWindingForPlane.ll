; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_cm_polylib.c_BaseWindingForPlane.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_cm_polylib.c_BaseWindingForPlane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32**, i32 }

@MAX_MAP_BOUNDS = common dso_local global i32 0, align 4
@ERR_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"BaseWindingForPlane: no axis found\00", align 1
@vec3_origin = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @BaseWindingForPlane(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load i32, i32* @MAX_MAP_BOUNDS, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %7, align 4
  store i32 -1, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %32, %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 3
  br i1 %17, label %18, label %35

18:                                               ; preds = %15
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @fabs(i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %28, %18
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %15

35:                                               ; preds = %15
  %36 = load i32, i32* %6, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* @ERR_DROP, align 4
  %40 = call i32 @Com_Error(i32 %39, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %35
  %42 = load i32, i32* @vec3_origin, align 4
  %43 = load i32*, i32** %11, align 8
  %44 = call i32 @VectorCopy(i32 %42, i32* %43)
  %45 = load i32, i32* %6, align 4
  switch i32 %45, label %52 [
    i32 0, label %46
    i32 1, label %46
    i32 2, label %49
  ]

46:                                               ; preds = %41, %41
  %47 = load i32*, i32** %11, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  store i32 1, i32* %48, align 4
  br label %52

49:                                               ; preds = %41
  %50 = load i32*, i32** %11, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  store i32 1, i32* %51, align 4
  br label %52

52:                                               ; preds = %41, %49, %46
  %53 = load i32*, i32** %11, align 8
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 @DotProduct(i32* %53, i32* %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32*, i32** %11, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sub nsw i32 0, %57
  %59 = load i32*, i32** %3, align 8
  %60 = load i32*, i32** %11, align 8
  %61 = call i32 @VectorMA(i32* %56, i32 %58, i32* %59, i32* %60)
  %62 = load i32*, i32** %11, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = call i32 @VectorNormalize2(i32* %62, i32* %63)
  %65 = load i32*, i32** %3, align 8
  %66 = load i32, i32* %4, align 4
  %67 = load i32*, i32** %9, align 8
  %68 = call i32 @VectorScale(i32* %65, i32 %66, i32* %67)
  %69 = load i32*, i32** %11, align 8
  %70 = load i32*, i32** %3, align 8
  %71 = load i32*, i32** %10, align 8
  %72 = call i32 @CrossProduct(i32* %69, i32* %70, i32* %71)
  %73 = load i32*, i32** %11, align 8
  %74 = load i32, i32* @MAX_MAP_BOUNDS, align 4
  %75 = load i32*, i32** %11, align 8
  %76 = call i32 @VectorScale(i32* %73, i32 %74, i32* %75)
  %77 = load i32*, i32** %10, align 8
  %78 = load i32, i32* @MAX_MAP_BOUNDS, align 4
  %79 = load i32*, i32** %10, align 8
  %80 = call i32 @VectorScale(i32* %77, i32 %78, i32* %79)
  %81 = call %struct.TYPE_4__* @AllocWinding(i32 4)
  store %struct.TYPE_4__* %81, %struct.TYPE_4__** %12, align 8
  %82 = load i32*, i32** %9, align 8
  %83 = load i32*, i32** %10, align 8
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32**, i32*** %85, align 8
  %87 = getelementptr inbounds i32*, i32** %86, i64 0
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @VectorSubtract(i32* %82, i32* %83, i32* %88)
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32**, i32*** %91, align 8
  %93 = getelementptr inbounds i32*, i32** %92, i64 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i32*, i32** %11, align 8
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32**, i32*** %97, align 8
  %99 = getelementptr inbounds i32*, i32** %98, i64 0
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @VectorAdd(i32* %94, i32* %95, i32* %100)
  %102 = load i32*, i32** %9, align 8
  %103 = load i32*, i32** %10, align 8
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32**, i32*** %105, align 8
  %107 = getelementptr inbounds i32*, i32** %106, i64 1
  %108 = load i32*, i32** %107, align 8
  %109 = call i32 @VectorAdd(i32* %102, i32* %103, i32* %108)
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32**, i32*** %111, align 8
  %113 = getelementptr inbounds i32*, i32** %112, i64 1
  %114 = load i32*, i32** %113, align 8
  %115 = load i32*, i32** %11, align 8
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32**, i32*** %117, align 8
  %119 = getelementptr inbounds i32*, i32** %118, i64 1
  %120 = load i32*, i32** %119, align 8
  %121 = call i32 @VectorAdd(i32* %114, i32* %115, i32* %120)
  %122 = load i32*, i32** %9, align 8
  %123 = load i32*, i32** %10, align 8
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load i32**, i32*** %125, align 8
  %127 = getelementptr inbounds i32*, i32** %126, i64 2
  %128 = load i32*, i32** %127, align 8
  %129 = call i32 @VectorAdd(i32* %122, i32* %123, i32* %128)
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load i32**, i32*** %131, align 8
  %133 = getelementptr inbounds i32*, i32** %132, i64 2
  %134 = load i32*, i32** %133, align 8
  %135 = load i32*, i32** %11, align 8
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i32**, i32*** %137, align 8
  %139 = getelementptr inbounds i32*, i32** %138, i64 2
  %140 = load i32*, i32** %139, align 8
  %141 = call i32 @VectorSubtract(i32* %134, i32* %135, i32* %140)
  %142 = load i32*, i32** %9, align 8
  %143 = load i32*, i32** %10, align 8
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i32**, i32*** %145, align 8
  %147 = getelementptr inbounds i32*, i32** %146, i64 3
  %148 = load i32*, i32** %147, align 8
  %149 = call i32 @VectorSubtract(i32* %142, i32* %143, i32* %148)
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = load i32**, i32*** %151, align 8
  %153 = getelementptr inbounds i32*, i32** %152, i64 3
  %154 = load i32*, i32** %153, align 8
  %155 = load i32*, i32** %11, align 8
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = load i32**, i32*** %157, align 8
  %159 = getelementptr inbounds i32*, i32** %158, i64 3
  %160 = load i32*, i32** %159, align 8
  %161 = call i32 @VectorSubtract(i32* %154, i32* %155, i32* %160)
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 1
  store i32 4, i32* %163, align 8
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  ret %struct.TYPE_4__* %164
}

declare dso_local i32 @fabs(i32) #1

declare dso_local i32 @Com_Error(i32, i8*) #1

declare dso_local i32 @VectorCopy(i32, i32*) #1

declare dso_local i32 @DotProduct(i32*, i32*) #1

declare dso_local i32 @VectorMA(i32*, i32, i32*, i32*) #1

declare dso_local i32 @VectorNormalize2(i32*, i32*) #1

declare dso_local i32 @VectorScale(i32*, i32, i32*) #1

declare dso_local i32 @CrossProduct(i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_4__* @AllocWinding(i32) #1

declare dso_local i32 @VectorSubtract(i32*, i32*, i32*) #1

declare dso_local i32 @VectorAdd(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
