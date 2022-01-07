; ModuleID = '/home/carl/AnghaBench/beanstalkd/extr_heap.c_heapinsert.c'
source_filename = "/home/carl/AnghaBench/beanstalkd/extr_heap.c_heapinsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i8** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @heapinsert(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %11, %14
  br i1 %15, label %16, label %50

16:                                               ; preds = %2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add i64 %19, 1
  %21 = mul i64 %20, 2
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = mul i64 8, %22
  %24 = trunc i64 %23 to i32
  %25 = call i8** @malloc(i32 %24)
  store i8** %25, i8*** %6, align 8
  %26 = load i8**, i8*** %6, align 8
  %27 = icmp ne i8** %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %65

29:                                               ; preds = %16
  %30 = load i8**, i8*** %6, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  %33 = load i8**, i8*** %32, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = mul i64 8, %36
  %38 = trunc i64 %37 to i32
  %39 = call i32 @memcpy(i8** %30, i8** %33, i32 %38)
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  %42 = load i8**, i8*** %41, align 8
  %43 = call i32 @free(i8** %42)
  %44 = load i8**, i8*** %6, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  store i8** %44, i8*** %46, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  br label %50

50:                                               ; preds = %29, %2
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %8, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %55, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %59 = load i64, i64* %8, align 8
  %60 = load i8*, i8** %5, align 8
  %61 = call i32 @set(%struct.TYPE_5__* %58, i64 %59, i8* %60)
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %63 = load i64, i64* %8, align 8
  %64 = call i32 @siftdown(%struct.TYPE_5__* %62, i64 %63)
  store i32 1, i32* %3, align 4
  br label %65

65:                                               ; preds = %50, %28
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i8** @malloc(i32) #1

declare dso_local i32 @memcpy(i8**, i8**, i32) #1

declare dso_local i32 @free(i8**) #1

declare dso_local i32 @set(%struct.TYPE_5__*, i64, i8*) #1

declare dso_local i32 @siftdown(%struct.TYPE_5__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
