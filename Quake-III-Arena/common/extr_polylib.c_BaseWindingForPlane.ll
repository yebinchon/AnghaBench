; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/common/extr_polylib.c_BaseWindingForPlane.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/common/extr_polylib.c_BaseWindingForPlane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32**, i32 }

@BOGUS_RANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"BaseWindingForPlane: no axis found\00", align 1
@vec3_origin = common dso_local global i32 0, align 4
@MAX_WORLD_COORD = common dso_local global i32 0, align 4

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
  %13 = load i32, i32* @BOGUS_RANGE, align 4
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
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = call i32 @Error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %35
  %41 = load i32, i32* @vec3_origin, align 4
  %42 = load i32*, i32** %11, align 8
  %43 = call i32 @VectorCopy(i32 %41, i32* %42)
  %44 = load i32, i32* %6, align 4
  switch i32 %44, label %51 [
    i32 0, label %45
    i32 1, label %45
    i32 2, label %48
  ]

45:                                               ; preds = %40, %40
  %46 = load i32*, i32** %11, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  store i32 1, i32* %47, align 4
  br label %51

48:                                               ; preds = %40
  %49 = load i32*, i32** %11, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  store i32 1, i32* %50, align 4
  br label %51

51:                                               ; preds = %40, %48, %45
  %52 = load i32*, i32** %11, align 8
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @DotProduct(i32* %52, i32* %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32*, i32** %11, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sub nsw i32 0, %56
  %58 = load i32*, i32** %3, align 8
  %59 = load i32*, i32** %11, align 8
  %60 = call i32 @VectorMA(i32* %55, i32 %57, i32* %58, i32* %59)
  %61 = load i32*, i32** %11, align 8
  %62 = load i32*, i32** %11, align 8
  %63 = call i32 @VectorNormalize(i32* %61, i32* %62)
  %64 = load i32*, i32** %3, align 8
  %65 = load i32, i32* %4, align 4
  %66 = load i32*, i32** %9, align 8
  %67 = call i32 @VectorScale(i32* %64, i32 %65, i32* %66)
  %68 = load i32*, i32** %11, align 8
  %69 = load i32*, i32** %3, align 8
  %70 = load i32*, i32** %10, align 8
  %71 = call i32 @CrossProduct(i32* %68, i32* %69, i32* %70)
  %72 = load i32*, i32** %11, align 8
  %73 = load i32, i32* @MAX_WORLD_COORD, align 4
  %74 = load i32*, i32** %11, align 8
  %75 = call i32 @VectorScale(i32* %72, i32 %73, i32* %74)
  %76 = load i32*, i32** %10, align 8
  %77 = load i32, i32* @MAX_WORLD_COORD, align 4
  %78 = load i32*, i32** %10, align 8
  %79 = call i32 @VectorScale(i32* %76, i32 %77, i32* %78)
  %80 = call %struct.TYPE_4__* @AllocWinding(i32 4)
  store %struct.TYPE_4__* %80, %struct.TYPE_4__** %12, align 8
  %81 = load i32*, i32** %9, align 8
  %82 = load i32*, i32** %10, align 8
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32**, i32*** %84, align 8
  %86 = getelementptr inbounds i32*, i32** %85, i64 0
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @VectorSubtract(i32* %81, i32* %82, i32* %87)
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32**, i32*** %90, align 8
  %92 = getelementptr inbounds i32*, i32** %91, i64 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i32*, i32** %11, align 8
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32**, i32*** %96, align 8
  %98 = getelementptr inbounds i32*, i32** %97, i64 0
  %99 = load i32*, i32** %98, align 8
  %100 = call i32 @VectorAdd(i32* %93, i32* %94, i32* %99)
  %101 = load i32*, i32** %9, align 8
  %102 = load i32*, i32** %10, align 8
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32**, i32*** %104, align 8
  %106 = getelementptr inbounds i32*, i32** %105, i64 1
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 @VectorAdd(i32* %101, i32* %102, i32* %107)
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32**, i32*** %110, align 8
  %112 = getelementptr inbounds i32*, i32** %111, i64 1
  %113 = load i32*, i32** %112, align 8
  %114 = load i32*, i32** %11, align 8
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i32**, i32*** %116, align 8
  %118 = getelementptr inbounds i32*, i32** %117, i64 1
  %119 = load i32*, i32** %118, align 8
  %120 = call i32 @VectorAdd(i32* %113, i32* %114, i32* %119)
  %121 = load i32*, i32** %9, align 8
  %122 = load i32*, i32** %10, align 8
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i32**, i32*** %124, align 8
  %126 = getelementptr inbounds i32*, i32** %125, i64 2
  %127 = load i32*, i32** %126, align 8
  %128 = call i32 @VectorAdd(i32* %121, i32* %122, i32* %127)
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32**, i32*** %130, align 8
  %132 = getelementptr inbounds i32*, i32** %131, i64 2
  %133 = load i32*, i32** %132, align 8
  %134 = load i32*, i32** %11, align 8
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load i32**, i32*** %136, align 8
  %138 = getelementptr inbounds i32*, i32** %137, i64 2
  %139 = load i32*, i32** %138, align 8
  %140 = call i32 @VectorSubtract(i32* %133, i32* %134, i32* %139)
  %141 = load i32*, i32** %9, align 8
  %142 = load i32*, i32** %10, align 8
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = load i32**, i32*** %144, align 8
  %146 = getelementptr inbounds i32*, i32** %145, i64 3
  %147 = load i32*, i32** %146, align 8
  %148 = call i32 @VectorSubtract(i32* %141, i32* %142, i32* %147)
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load i32**, i32*** %150, align 8
  %152 = getelementptr inbounds i32*, i32** %151, i64 3
  %153 = load i32*, i32** %152, align 8
  %154 = load i32*, i32** %11, align 8
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i32**, i32*** %156, align 8
  %158 = getelementptr inbounds i32*, i32** %157, i64 3
  %159 = load i32*, i32** %158, align 8
  %160 = call i32 @VectorSubtract(i32* %153, i32* %154, i32* %159)
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 1
  store i32 4, i32* %162, align 8
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  ret %struct.TYPE_4__* %163
}

declare dso_local i32 @fabs(i32) #1

declare dso_local i32 @Error(i8*) #1

declare dso_local i32 @VectorCopy(i32, i32*) #1

declare dso_local i32 @DotProduct(i32*, i32*) #1

declare dso_local i32 @VectorMA(i32*, i32, i32*, i32*) #1

declare dso_local i32 @VectorNormalize(i32*, i32*) #1

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
