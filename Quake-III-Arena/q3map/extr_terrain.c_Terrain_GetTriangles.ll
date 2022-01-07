; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_terrain.c_Terrain_GetTriangles.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_terrain.c_Terrain_GetTriangles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Terrain_GetTriangles(i32* %0, i32 %1, i32 %2, i32** %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32** %3, i32*** %8, align 8
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %7, align 4
  %11 = add nsw i32 %9, %10
  %12 = and i32 %11, 1
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %53

14:                                               ; preds = %4
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32* @Terrain_GetVert(i32* %15, i32 %16, i32 %17)
  %19 = load i32**, i32*** %8, align 8
  %20 = getelementptr inbounds i32*, i32** %19, i64 0
  store i32* %18, i32** %20, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, 1
  %25 = call i32* @Terrain_GetVert(i32* %21, i32 %22, i32 %24)
  %26 = load i32**, i32*** %8, align 8
  %27 = getelementptr inbounds i32*, i32** %26, i64 1
  store i32* %25, i32** %27, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  %33 = call i32* @Terrain_GetVert(i32* %28, i32 %30, i32 %32)
  %34 = load i32**, i32*** %8, align 8
  %35 = getelementptr inbounds i32*, i32** %34, i64 2
  store i32* %33, i32** %35, align 8
  %36 = load i32**, i32*** %8, align 8
  %37 = getelementptr inbounds i32*, i32** %36, i64 2
  %38 = load i32*, i32** %37, align 8
  %39 = load i32**, i32*** %8, align 8
  %40 = getelementptr inbounds i32*, i32** %39, i64 3
  store i32* %38, i32** %40, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  %44 = load i32, i32* %7, align 4
  %45 = call i32* @Terrain_GetVert(i32* %41, i32 %43, i32 %44)
  %46 = load i32**, i32*** %8, align 8
  %47 = getelementptr inbounds i32*, i32** %46, i64 4
  store i32* %45, i32** %47, align 8
  %48 = load i32**, i32*** %8, align 8
  %49 = getelementptr inbounds i32*, i32** %48, i64 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32**, i32*** %8, align 8
  %52 = getelementptr inbounds i32*, i32** %51, i64 5
  store i32* %50, i32** %52, align 8
  br label %92

53:                                               ; preds = %4
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32* @Terrain_GetVert(i32* %54, i32 %55, i32 %56)
  %58 = load i32**, i32*** %8, align 8
  %59 = getelementptr inbounds i32*, i32** %58, i64 0
  store i32* %57, i32** %59, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  %64 = call i32* @Terrain_GetVert(i32* %60, i32 %61, i32 %63)
  %65 = load i32**, i32*** %8, align 8
  %66 = getelementptr inbounds i32*, i32** %65, i64 1
  store i32* %64, i32** %66, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  %70 = load i32, i32* %7, align 4
  %71 = call i32* @Terrain_GetVert(i32* %67, i32 %69, i32 %70)
  %72 = load i32**, i32*** %8, align 8
  %73 = getelementptr inbounds i32*, i32** %72, i64 2
  store i32* %71, i32** %73, align 8
  %74 = load i32**, i32*** %8, align 8
  %75 = getelementptr inbounds i32*, i32** %74, i64 2
  %76 = load i32*, i32** %75, align 8
  %77 = load i32**, i32*** %8, align 8
  %78 = getelementptr inbounds i32*, i32** %77, i64 3
  store i32* %76, i32** %78, align 8
  %79 = load i32**, i32*** %8, align 8
  %80 = getelementptr inbounds i32*, i32** %79, i64 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i32**, i32*** %8, align 8
  %83 = getelementptr inbounds i32*, i32** %82, i64 4
  store i32* %81, i32** %83, align 8
  %84 = load i32*, i32** %5, align 8
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %85, 1
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, 1
  %89 = call i32* @Terrain_GetVert(i32* %84, i32 %86, i32 %88)
  %90 = load i32**, i32*** %8, align 8
  %91 = getelementptr inbounds i32*, i32** %90, i64 5
  store i32* %89, i32** %91, align 8
  br label %92

92:                                               ; preds = %53, %14
  ret void
}

declare dso_local i32* @Terrain_GetVert(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
