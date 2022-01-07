; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_things.c_R_SortVisSprites.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_things.c_R_SortVisSprites.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_5__*, %struct.TYPE_5__* }

@vissprite_p = common dso_local global %struct.TYPE_5__* null, align 8
@vissprites = common dso_local global %struct.TYPE_5__* null, align 8
@vsprsortedhead = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@MAXINT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_SortVisSprites() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_5__, align 8
  %6 = alloca i64, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vissprite_p, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vissprites, align 8
  %9 = ptrtoint %struct.TYPE_5__* %7 to i64
  %10 = ptrtoint %struct.TYPE_5__* %8 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 24
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %2, align 4
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  store %struct.TYPE_5__* %5, %struct.TYPE_5__** %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  store %struct.TYPE_5__* %5, %struct.TYPE_5__** %15, align 8
  %16 = load i32, i32* %2, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %0
  br label %104

19:                                               ; preds = %0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vissprites, align 8
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %3, align 8
  br label %21

21:                                               ; preds = %34, %19
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vissprite_p, align 8
  %24 = icmp ult %struct.TYPE_5__* %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %21
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i64 1
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %29, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 -1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  store %struct.TYPE_5__* %31, %struct.TYPE_5__** %33, align 8
  br label %34

34:                                               ; preds = %25
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 1
  store %struct.TYPE_5__* %36, %struct.TYPE_5__** %3, align 8
  br label %21

37:                                               ; preds = %21
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vissprites, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  store %struct.TYPE_5__* %5, %struct.TYPE_5__** %40, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vissprites, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  store %struct.TYPE_5__* %42, %struct.TYPE_5__** %43, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vissprite_p, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i64 -1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  store %struct.TYPE_5__* %5, %struct.TYPE_5__** %46, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vissprite_p, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 -1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  store %struct.TYPE_5__* %48, %struct.TYPE_5__** %49, align 8
  store %struct.TYPE_5__* @vsprsortedhead, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vsprsortedhead, i32 0, i32 1), align 8
  store %struct.TYPE_5__* @vsprsortedhead, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vsprsortedhead, i32 0, i32 2), align 8
  store i32 0, i32* %1, align 4
  br label %50

50:                                               ; preds = %101, %37
  %51 = load i32, i32* %1, align 4
  %52 = load i32, i32* %2, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %104

54:                                               ; preds = %50
  %55 = load i64, i64* @MAXINT, align 8
  store i64 %55, i64* %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  store %struct.TYPE_5__* %57, %struct.TYPE_5__** %3, align 8
  br label %58

58:                                               ; preds = %73, %54
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %60 = icmp ne %struct.TYPE_5__* %59, %5
  br i1 %60, label %61, label %77

61:                                               ; preds = %58
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %6, align 8
  %66 = icmp slt i64 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %61
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %6, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  store %struct.TYPE_5__* %71, %struct.TYPE_5__** %4, align 8
  br label %72

72:                                               ; preds = %67, %61
  br label %73

73:                                               ; preds = %72
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  store %struct.TYPE_5__* %76, %struct.TYPE_5__** %3, align 8
  br label %58

77:                                               ; preds = %58
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  store %struct.TYPE_5__* %80, %struct.TYPE_5__** %84, align 8
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 2
  store %struct.TYPE_5__* %87, %struct.TYPE_5__** %91, align 8
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 2
  store %struct.TYPE_5__* @vsprsortedhead, %struct.TYPE_5__** %93, align 8
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vsprsortedhead, i32 0, i32 1), align 8
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  store %struct.TYPE_5__* %94, %struct.TYPE_5__** %96, align 8
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vsprsortedhead, i32 0, i32 1), align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 2
  store %struct.TYPE_5__* %97, %struct.TYPE_5__** %99, align 8
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %100, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vsprsortedhead, i32 0, i32 1), align 8
  br label %101

101:                                              ; preds = %77
  %102 = load i32, i32* %1, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %1, align 4
  br label %50

104:                                              ; preds = %18, %50
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
