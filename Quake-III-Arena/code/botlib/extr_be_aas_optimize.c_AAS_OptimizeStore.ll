; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_optimize.c_AAS_OptimizeStore.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_optimize.c_AAS_OptimizeStore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64 }
%struct.TYPE_4__ = type { i64, i64, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64 }

@aasworld = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AAS_OptimizeStore(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @aasworld, i32 0, i32 11), align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @aasworld, i32 0, i32 11), align 8
  %7 = call i32 @FreeMemory(i64 %6)
  br label %8

8:                                                ; preds = %5, %1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 14
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @aasworld, i32 0, i32 11), align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 13
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @aasworld, i32 0, i32 10), align 8
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @aasworld, i32 0, i32 9), align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %8
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @aasworld, i32 0, i32 9), align 8
  %19 = call i32 @FreeMemory(i64 %18)
  br label %20

20:                                               ; preds = %17, %8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 12
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @aasworld, i32 0, i32 9), align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 11
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @aasworld, i32 0, i32 8), align 8
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @aasworld, i32 0, i32 7), align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @aasworld, i32 0, i32 7), align 8
  %31 = call i32 @FreeMemory(i64 %30)
  br label %32

32:                                               ; preds = %29, %20
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 10
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @aasworld, i32 0, i32 7), align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 9
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @aasworld, i32 0, i32 6), align 8
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @aasworld, i32 0, i32 5), align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @aasworld, i32 0, i32 5), align 8
  %43 = call i32 @FreeMemory(i64 %42)
  br label %44

44:                                               ; preds = %41, %32
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 8
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @aasworld, i32 0, i32 5), align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @aasworld, i32 0, i32 4), align 8
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @aasworld, i32 0, i32 3), align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @aasworld, i32 0, i32 3), align 8
  %55 = call i32 @FreeMemory(i64 %54)
  br label %56

56:                                               ; preds = %53, %44
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 6
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @aasworld, i32 0, i32 3), align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @aasworld, i32 0, i32 2), align 8
  %63 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @aasworld, i32 0, i32 1), align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %56
  %66 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @aasworld, i32 0, i32 1), align 8
  %67 = call i32 @FreeMemory(i64 %66)
  br label %68

68:                                               ; preds = %65, %56
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @aasworld, i32 0, i32 1), align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  store i32 %74, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @aasworld, i32 0, i32 0), align 8
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @FreeMemory(i64 %77)
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @FreeMemory(i64 %81)
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @FreeMemory(i64 %85)
  ret void
}

declare dso_local i32 @FreeMemory(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
