; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_tmempool.c_taosMemPoolMalloc.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_tmempool.c_taosMemPoolMalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i8*, i32, i32*, i64, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"mempool: out of memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @taosMemPoolMalloc(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_2__*, align 8
  store i64 %0, i64* %2, align 8
  store i8* null, i8** %3, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %6, %struct.TYPE_2__** %4, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 6
  %9 = call i32 @pthread_mutex_lock(i32* %8)
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %50

14:                                               ; preds = %1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %20, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %17, i64 %30
  store i8* %31, i8** %3, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %33, align 8
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = urem i64 %38, %42
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 4
  store i64 %43, i64* %45, align 8
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, -1
  store i64 %49, i64* %47, align 8
  br label %50

50:                                               ; preds = %14, %1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 6
  %53 = call i32 @pthread_mutex_unlock(i32* %52)
  %54 = load i8*, i8** %3, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = call i32 @pTrace(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %50
  %59 = load i8*, i8** %3, align 8
  ret i8* %59
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @pTrace(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
