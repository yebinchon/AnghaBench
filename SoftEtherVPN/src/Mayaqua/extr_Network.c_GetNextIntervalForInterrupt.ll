; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_GetNextIntervalForInterrupt.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_GetNextIntervalForInterrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@INFINITE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @GetNextIntervalForInterrupt(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %11 = load i64, i64* @INFINITE, align 8
  store i64 %11, i64* %4, align 8
  store i32* null, i32** %6, align 8
  %12 = call i64 (...) @Tick64()
  store i64 %12, i64* %7, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = icmp eq %struct.TYPE_3__* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %106

16:                                               ; preds = %1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @LockList(i32* %19)
  store i64 0, i64* %5, align 8
  br label %21

21:                                               ; preds = %50, %16
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @LIST_NUM(i32* %25)
  %27 = sext i32 %26 to i64
  %28 = icmp slt i64 %22, %27
  br i1 %28, label %29, label %53

29:                                               ; preds = %21
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* %5, align 8
  %34 = call i64* @LIST_DATA(i32* %32, i64 %33)
  store i64* %34, i64** %8, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i64*, i64** %8, align 8
  %37 = load i64, i64* %36, align 8
  %38 = icmp sge i64 %35, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %29
  store i64 0, i64* %4, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = call i32* @NewListFast(i32* null)
  store i32* %43, i32** %6, align 8
  br label %44

44:                                               ; preds = %42, %39
  %45 = load i32*, i32** %6, align 8
  %46 = load i64*, i64** %8, align 8
  %47 = call i32 @Add(i32* %45, i64* %46)
  br label %49

48:                                               ; preds = %29
  br label %53

49:                                               ; preds = %44
  br label %50

50:                                               ; preds = %49
  %51 = load i64, i64* %5, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %5, align 8
  br label %21

53:                                               ; preds = %48, %21
  store i64 0, i64* %5, align 8
  br label %54

54:                                               ; preds = %71, %53
  %55 = load i64, i64* %5, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @LIST_NUM(i32* %56)
  %58 = sext i32 %57 to i64
  %59 = icmp slt i64 %55, %58
  br i1 %59, label %60, label %74

60:                                               ; preds = %54
  %61 = load i32*, i32** %6, align 8
  %62 = load i64, i64* %5, align 8
  %63 = call i64* @LIST_DATA(i32* %61, i64 %62)
  store i64* %63, i64** %9, align 8
  %64 = load i64*, i64** %9, align 8
  %65 = call i32 @Free(i64* %64)
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i64*, i64** %9, align 8
  %70 = call i32 @Delete(i32* %68, i64* %69)
  br label %71

71:                                               ; preds = %60
  %72 = load i64, i64* %5, align 8
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %5, align 8
  br label %54

74:                                               ; preds = %54
  %75 = load i32*, i32** %6, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32*, i32** %6, align 8
  %79 = call i32 @ReleaseList(i32* %78)
  br label %80

80:                                               ; preds = %77, %74
  %81 = load i64, i64* %4, align 8
  %82 = load i64, i64* @INFINITE, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %100

84:                                               ; preds = %80
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @LIST_NUM(i32* %87)
  %89 = icmp sge i32 %88, 1
  br i1 %89, label %90, label %99

90:                                               ; preds = %84
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = call i64* @LIST_DATA(i32* %93, i64 0)
  store i64* %94, i64** %10, align 8
  %95 = load i64*, i64** %10, align 8
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %7, align 8
  %98 = sub nsw i64 %96, %97
  store i64 %98, i64* %4, align 8
  br label %99

99:                                               ; preds = %90, %84
  br label %100

100:                                              ; preds = %99, %80
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = call i32 @UnlockList(i32* %103)
  %105 = load i64, i64* %4, align 8
  store i64 %105, i64* %2, align 8
  br label %106

106:                                              ; preds = %100, %15
  %107 = load i64, i64* %2, align 8
  ret i64 %107
}

declare dso_local i64 @Tick64(...) #1

declare dso_local i32 @LockList(i32*) #1

declare dso_local i32 @LIST_NUM(i32*) #1

declare dso_local i64* @LIST_DATA(i32*, i64) #1

declare dso_local i32* @NewListFast(i32*) #1

declare dso_local i32 @Add(i32*, i64*) #1

declare dso_local i32 @Free(i64*) #1

declare dso_local i32 @Delete(i32*, i64*) #1

declare dso_local i32 @ReleaseList(i32*) #1

declare dso_local i32 @UnlockList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
