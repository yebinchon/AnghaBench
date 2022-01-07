; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_map.c_FindFloatPlane.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_map.c_FindFloatPlane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__* }

@PLANE_HASHES = common dso_local global i32 0, align 4
@planehash = common dso_local global %struct.TYPE_5__** null, align 8
@mapplaneusers = common dso_local global i32* null, align 8
@mapplanes = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FindFloatPlane(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @SnapPlane(i32 %10, i32* %5)
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @fabs(i32 %12)
  %14 = trunc i64 %13 to i32
  %15 = sdiv i32 %14, 8
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* @PLANE_HASHES, align 4
  %17 = sub nsw i32 %16, 1
  %18 = load i32, i32* %8, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %8, align 4
  store i32 -1, i32* %6, align 4
  br label %20

20:                                               ; preds = %68, %2
  %21 = load i32, i32* %6, align 4
  %22 = icmp sle i32 %21, 1
  br i1 %22, label %23, label %71

23:                                               ; preds = %20
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %24, %25
  %27 = load i32, i32* @PLANE_HASHES, align 4
  %28 = sub nsw i32 %27, 1
  %29 = and i32 %26, %28
  store i32 %29, i32* %9, align 4
  %30 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @planehash, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %30, i64 %32
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  store %struct.TYPE_5__* %34, %struct.TYPE_5__** %7, align 8
  br label %35

35:                                               ; preds = %63, %23
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %37 = icmp ne %struct.TYPE_5__* %36, null
  br i1 %37, label %38, label %67

38:                                               ; preds = %35
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i64 @PlaneEqual(%struct.TYPE_5__* %39, i32 %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %62

44:                                               ; preds = %38
  %45 = load i32*, i32** @mapplaneusers, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mapplanes, align 8
  %48 = ptrtoint %struct.TYPE_5__* %46 to i64
  %49 = ptrtoint %struct.TYPE_5__* %47 to i64
  %50 = sub i64 %48, %49
  %51 = sdiv exact i64 %50, 8
  %52 = getelementptr inbounds i32, i32* %45, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mapplanes, align 8
  %57 = ptrtoint %struct.TYPE_5__* %55 to i64
  %58 = ptrtoint %struct.TYPE_5__* %56 to i64
  %59 = sub i64 %57, %58
  %60 = sdiv exact i64 %59, 8
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %3, align 4
  br label %82

62:                                               ; preds = %38
  br label %63

63:                                               ; preds = %62
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  store %struct.TYPE_5__* %66, %struct.TYPE_5__** %7, align 8
  br label %35

67:                                               ; preds = %35
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %20

71:                                               ; preds = %20
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @CreateNewFloatPlane(i32 %72, i32 %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32*, i32** @mapplaneusers, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  %81 = load i32, i32* %6, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %71, %44
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @SnapPlane(i32, i32*) #1

declare dso_local i64 @fabs(i32) #1

declare dso_local i64 @PlaneEqual(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @CreateNewFloatPlane(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
