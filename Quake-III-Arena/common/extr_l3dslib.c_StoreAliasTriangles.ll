; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/common/extr_l3dslib.c_StoreAliasTriangles.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/common/extr_l3dslib.c_StoreAliasTriangles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64* }
%struct.TYPE_4__ = type { i32** }

@totaltris = common dso_local global i64 0, align 8
@numtris = common dso_local global i64 0, align 8
@MAXTRIANGLES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Error: Too many triangles\00", align 1
@fverts = common dso_local global i32** null, align 8
@tris = common dso_local global %struct.TYPE_3__* null, align 8
@ptri = common dso_local global %struct.TYPE_4__* null, align 8
@vertsfound = common dso_local global i64 0, align 8
@trisfound = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @StoreAliasTriangles() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i64, i64* @totaltris, align 8
  %5 = load i64, i64* @numtris, align 8
  %6 = add nsw i64 %4, %5
  %7 = load i64, i64* @MAXTRIANGLES, align 8
  %8 = icmp sgt i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = call i32 @Error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %0
  store i32 0, i32* %1, align 4
  br label %12

12:                                               ; preds = %66, %11
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = load i64, i64* @numtris, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %69

17:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %62, %17
  %19 = load i32, i32* %2, align 4
  %20 = icmp slt i32 %19, 3
  br i1 %20, label %21, label %65

21:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %58, %21
  %23 = load i32, i32* %3, align 4
  %24 = icmp slt i32 %23, 3
  br i1 %24, label %25, label %61

25:                                               ; preds = %22
  %26 = load i32**, i32*** @fverts, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tris, align 8
  %28 = load i32, i32* %1, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %2, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i32*, i32** %26, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ptri, align 8
  %44 = load i32, i32* %1, align 4
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* @totaltris, align 8
  %47 = add nsw i64 %45, %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32**, i32*** %49, align 8
  %51 = load i32, i32* %2, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32*, i32** %50, i64 %52
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 %42, i32* %57, align 4
  br label %58

58:                                               ; preds = %25
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %3, align 4
  br label %22

61:                                               ; preds = %22
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %2, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %2, align 4
  br label %18

65:                                               ; preds = %18
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %1, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %1, align 4
  br label %12

69:                                               ; preds = %12
  %70 = load i64, i64* @numtris, align 8
  %71 = load i64, i64* @totaltris, align 8
  %72 = add nsw i64 %71, %70
  store i64 %72, i64* @totaltris, align 8
  store i64 0, i64* @numtris, align 8
  store i64 0, i64* @vertsfound, align 8
  store i64 0, i64* @trisfound, align 8
  ret void
}

declare dso_local i32 @Error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
