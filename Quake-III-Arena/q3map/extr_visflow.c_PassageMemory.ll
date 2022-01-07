; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_visflow.c_PassageMemory.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_visflow.c_PassageMemory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__** }

@numportals = common dso_local global i32 0, align 4
@sorted_portals = common dso_local global %struct.TYPE_5__** null, align 8
@leafs = common dso_local global %struct.TYPE_6__* null, align 8
@portalbytes = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"%7i average number of passages per leaf\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"%7i MB required passage memory\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PassageMemory() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %1, align 4
  br label %8

8:                                                ; preds = %61, %0
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* @numportals, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %64

12:                                               ; preds = %8
  %13 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @sorted_portals, align 8
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %13, i64 %15
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %5, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  br label %61

23:                                               ; preds = %12
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @leafs, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 %27
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %7, align 8
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %57, %23
  %30 = load i32, i32* %2, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %60

35:                                               ; preds = %29
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %37, align 8
  %39 = load i32, i32* %2, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %38, i64 %40
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  store %struct.TYPE_5__* %42, %struct.TYPE_5__** %6, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %35
  br label %57

48:                                               ; preds = %35
  %49 = load i64, i64* @portalbytes, align 8
  %50 = add i64 4, %49
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = add i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %48, %47
  %58 = load i32, i32* %2, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %2, align 4
  br label %29

60:                                               ; preds = %29
  br label %61

61:                                               ; preds = %60, %22
  %62 = load i32, i32* %1, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %1, align 4
  br label %8

64:                                               ; preds = %8
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @numportals, align 4
  %67 = sdiv i32 %65, %66
  %68 = call i32 @_printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* %3, align 4
  %70 = ashr i32 %69, 10
  %71 = ashr i32 %70, 10
  %72 = call i32 @_printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  ret void
}

declare dso_local i32 @_printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
