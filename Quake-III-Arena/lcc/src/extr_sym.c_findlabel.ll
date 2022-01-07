; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_sym.c_findlabel.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_sym.c_findlabel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.entry**, %struct.TYPE_10__* }
%struct.entry = type { %struct.TYPE_10__, %struct.entry* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__, %struct.TYPE_10__*, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_10__*)* }

@HASHSIZE = common dso_local global i32 0, align 4
@labels = common dso_local global %struct.TYPE_11__* null, align 8
@FUNC = common dso_local global i32 0, align 4
@LABELS = common dso_local global i32 0, align 4
@IR = common dso_local global %struct.TYPE_12__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @findlabel(i32 %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.entry*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @HASHSIZE, align 4
  %8 = sub nsw i32 %7, 1
  %9 = and i32 %6, %8
  store i32 %9, i32* %5, align 4
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** @labels, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load %struct.entry**, %struct.entry*** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.entry*, %struct.entry** %12, i64 %14
  %16 = load %struct.entry*, %struct.entry** %15, align 8
  store %struct.entry* %16, %struct.entry** %4, align 8
  br label %17

17:                                               ; preds = %33, %1
  %18 = load %struct.entry*, %struct.entry** %4, align 8
  %19 = icmp ne %struct.entry* %18, null
  br i1 %19, label %20, label %37

20:                                               ; preds = %17
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.entry*, %struct.entry** %4, align 8
  %23 = getelementptr inbounds %struct.entry, %struct.entry* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %21, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load %struct.entry*, %struct.entry** %4, align 8
  %31 = getelementptr inbounds %struct.entry, %struct.entry* %30, i32 0, i32 0
  store %struct.TYPE_10__* %31, %struct.TYPE_10__** %2, align 8
  br label %93

32:                                               ; preds = %20
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.entry*, %struct.entry** %4, align 8
  %35 = getelementptr inbounds %struct.entry, %struct.entry* %34, i32 0, i32 1
  %36 = load %struct.entry*, %struct.entry** %35, align 8
  store %struct.entry* %36, %struct.entry** %4, align 8
  br label %17

37:                                               ; preds = %17
  %38 = load %struct.entry*, %struct.entry** %4, align 8
  %39 = load i32, i32* @FUNC, align 4
  %40 = call i32 @NEW0(%struct.entry* %38, i32 %39)
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @stringd(i32 %41)
  %43 = load %struct.entry*, %struct.entry** %4, align 8
  %44 = getelementptr inbounds %struct.entry, %struct.entry* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 4
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* @LABELS, align 4
  %47 = load %struct.entry*, %struct.entry** %4, align 8
  %48 = getelementptr inbounds %struct.entry, %struct.entry* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 3
  store i32 %46, i32* %49, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** @labels, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = load %struct.entry*, %struct.entry** %4, align 8
  %54 = getelementptr inbounds %struct.entry, %struct.entry* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 2
  store %struct.TYPE_10__* %52, %struct.TYPE_10__** %55, align 8
  %56 = load %struct.entry*, %struct.entry** %4, align 8
  %57 = getelementptr inbounds %struct.entry, %struct.entry* %56, i32 0, i32 0
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** @labels, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 1
  store %struct.TYPE_10__* %57, %struct.TYPE_10__** %59, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** @labels, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load %struct.entry**, %struct.entry*** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.entry*, %struct.entry** %62, i64 %64
  %66 = load %struct.entry*, %struct.entry** %65, align 8
  %67 = load %struct.entry*, %struct.entry** %4, align 8
  %68 = getelementptr inbounds %struct.entry, %struct.entry* %67, i32 0, i32 1
  store %struct.entry* %66, %struct.entry** %68, align 8
  %69 = load %struct.entry*, %struct.entry** %4, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** @labels, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load %struct.entry**, %struct.entry*** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.entry*, %struct.entry** %72, i64 %74
  store %struct.entry* %69, %struct.entry** %75, align 8
  %76 = load %struct.entry*, %struct.entry** %4, align 8
  %77 = getelementptr inbounds %struct.entry, %struct.entry* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  store i32 1, i32* %78, align 8
  %79 = load i32, i32* %3, align 4
  %80 = load %struct.entry*, %struct.entry** %4, align 8
  %81 = getelementptr inbounds %struct.entry, %struct.entry* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  store i32 %79, i32* %84, align 4
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** @IR, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %86, align 8
  %88 = load %struct.entry*, %struct.entry** %4, align 8
  %89 = getelementptr inbounds %struct.entry, %struct.entry* %88, i32 0, i32 0
  %90 = call i32 %87(%struct.TYPE_10__* %89)
  %91 = load %struct.entry*, %struct.entry** %4, align 8
  %92 = getelementptr inbounds %struct.entry, %struct.entry* %91, i32 0, i32 0
  store %struct.TYPE_10__* %92, %struct.TYPE_10__** %2, align 8
  br label %93

93:                                               ; preds = %37, %29
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  ret %struct.TYPE_10__* %94
}

declare dso_local i32 @NEW0(%struct.entry*, i32) #1

declare dso_local i32 @stringd(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
