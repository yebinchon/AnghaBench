; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_faces.c_TestEdge.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_faces.c_TestEdge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@c_degenerate = common dso_local global i32 0, align 4
@num_edge_verts = common dso_local global i32 0, align 4
@edge_verts = common dso_local global i32* null, align 8
@dvertexes = common dso_local global %struct.TYPE_2__* null, align 8
@edge_start = common dso_local global i32 0, align 4
@edge_dir = common dso_local global i32 0, align 4
@OFF_EPSILON = common dso_local global i64 0, align 8
@c_tjunctions = common dso_local global i32 0, align 4
@numsuperverts = common dso_local global i64 0, align 8
@MAX_SUPERVERTS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"MAX_SUPERVERTS\00", align 1
@superverts = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TestEdge(i64 %0, i64 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load i32, i32* @c_degenerate, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* @c_degenerate, align 4
  br label %117

25:                                               ; preds = %5
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %12, align 4
  br label %27

27:                                               ; preds = %101, %25
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* @num_edge_verts, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %104

31:                                               ; preds = %27
  %32 = load i32*, i32** @edge_verts, align 8
  %33 = load i32, i32* %12, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %31
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40, %31
  br label %101

45:                                               ; preds = %40
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dvertexes, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %18, align 4
  %53 = call i32 @VectorCopy(i32 %51, i32 %52)
  %54 = load i32, i32* %18, align 4
  %55 = load i32, i32* @edge_start, align 4
  %56 = load i32, i32* %14, align 4
  %57 = call i32 @VectorSubtract(i32 %54, i32 %55, i32 %56)
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* @edge_dir, align 4
  %60 = call i64 @DotProduct(i32 %58, i32 %59)
  store i64 %60, i64* %13, align 8
  %61 = load i64, i64* %13, align 8
  %62 = load i64, i64* %6, align 8
  %63 = icmp sle i64 %61, %62
  br i1 %63, label %68, label %64

64:                                               ; preds = %45
  %65 = load i64, i64* %13, align 8
  %66 = load i64, i64* %7, align 8
  %67 = icmp sge i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64, %45
  br label %101

69:                                               ; preds = %64
  %70 = load i32, i32* @edge_start, align 4
  %71 = load i64, i64* %13, align 8
  %72 = load i32, i32* @edge_dir, align 4
  %73 = load i32, i32* %15, align 4
  %74 = call i32 @VectorMA(i32 %70, i64 %71, i32 %72, i32 %73)
  %75 = load i32, i32* %18, align 4
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* %16, align 4
  %78 = call i32 @VectorSubtract(i32 %75, i32 %76, i32 %77)
  %79 = load i32, i32* %16, align 4
  %80 = call i64 @VectorLength(i32 %79)
  store i64 %80, i64* %17, align 8
  %81 = load i64, i64* %17, align 8
  %82 = call i64 @fabs(i64 %81)
  %83 = load i64, i64* @OFF_EPSILON, align 8
  %84 = icmp sgt i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %69
  br label %101

86:                                               ; preds = %69
  %87 = load i32, i32* @c_tjunctions, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* @c_tjunctions, align 4
  %89 = load i64, i64* %6, align 8
  %90 = load i64, i64* %13, align 8
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %12, align 4
  %94 = add nsw i32 %93, 1
  call void @TestEdge(i64 %89, i64 %90, i32 %91, i32 %92, i32 %94)
  %95 = load i64, i64* %13, align 8
  %96 = load i64, i64* %7, align 8
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %12, align 4
  %100 = add nsw i32 %99, 1
  call void @TestEdge(i64 %95, i64 %96, i32 %97, i32 %98, i32 %100)
  br label %117

101:                                              ; preds = %85, %68, %44
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %12, align 4
  br label %27

104:                                              ; preds = %27
  %105 = load i64, i64* @numsuperverts, align 8
  %106 = load i64, i64* @MAX_SUPERVERTS, align 8
  %107 = icmp uge i64 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = call i32 @Error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %110

110:                                              ; preds = %108, %104
  %111 = load i32, i32* %8, align 4
  %112 = load i32*, i32** @superverts, align 8
  %113 = load i64, i64* @numsuperverts, align 8
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  store i32 %111, i32* %114, align 4
  %115 = load i64, i64* @numsuperverts, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* @numsuperverts, align 8
  br label %117

117:                                              ; preds = %110, %86, %22
  ret void
}

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @VectorSubtract(i32, i32, i32) #1

declare dso_local i64 @DotProduct(i32, i32) #1

declare dso_local i32 @VectorMA(i32, i64, i32, i32) #1

declare dso_local i64 @VectorLength(i32) #1

declare dso_local i64 @fabs(i64) #1

declare dso_local i32 @Error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
