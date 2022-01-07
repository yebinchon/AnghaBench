; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_thash.c_taosAddHash.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_thash.c_taosAddHash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_4__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { i64, i32 (%struct.TYPE_5__*, i32)*, i32, %struct.TYPE_4__**, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @taosAddHash(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %10, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %14 = icmp eq %struct.TYPE_5__* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %3
  store i32 -1, i32* %4, align 4
  br label %82

21:                                               ; preds = %15
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  %24 = call i32 @pthread_mutex_lock(i32* %23)
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32 (%struct.TYPE_5__*, i32)*, i32 (%struct.TYPE_5__*, i32)** %26, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 %27(%struct.TYPE_5__* %28, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @taosMemPoolMalloc(i32 %33)
  %35 = inttoptr i64 %34 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %9, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %43, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 3
  %46 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %46, i64 %48
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  store %struct.TYPE_4__* %50, %struct.TYPE_4__** %52, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 3
  %55 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %55, i64 %57
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = icmp ne %struct.TYPE_4__* %59, null
  br i1 %60, label %61, label %71

61:                                               ; preds = %21
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 3
  %65 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %65, i64 %67
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  store %struct.TYPE_4__* %62, %struct.TYPE_4__** %70, align 8
  br label %71

71:                                               ; preds = %61, %21
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 3
  %75 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %75, i64 %77
  store %struct.TYPE_4__* %72, %struct.TYPE_4__** %78, align 8
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 2
  %81 = call i32 @pthread_mutex_unlock(i32* %80)
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %71, %20
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @taosMemPoolMalloc(i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
