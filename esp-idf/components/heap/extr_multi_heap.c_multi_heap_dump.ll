; ModuleID = '/home/carl/AnghaBench/esp-idf/components/heap/extr_multi_heap.c_multi_heap_dump.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/heap/extr_multi_heap.c_multi_heap_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i8* }

@.str = private unnamed_addr constant [42 x i8] c"Heap start %p end %p\0AFirst free block %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Block %p data size 0x%08x bytes next block %p\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c" FREE. Next free %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @multi_heap_dump(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %4 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %5 = icmp ne %struct.TYPE_10__* %4, null
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert(i32 %6)
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %9 = call i32 @multi_heap_internal_lock(%struct.TYPE_10__* %8)
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 (i8*, ...) @MULTI_HEAP_STDERR_PRINTF(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), %struct.TYPE_11__* %11, i32 %14, i8* %18)
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %3, align 8
  br label %22

22:                                               ; preds = %43, %1
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %24 = icmp ne %struct.TYPE_11__* %23, null
  br i1 %24, label %25, label %46

25:                                               ; preds = %22
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %28 = call i32 @block_data_size(%struct.TYPE_11__* %27)
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %30 = call %struct.TYPE_11__* @get_next_block(%struct.TYPE_11__* %29)
  %31 = call i32 (i8*, ...) @MULTI_HEAP_STDERR_PRINTF(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_11__* %26, i32 %28, %struct.TYPE_11__* %30)
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %33 = call i64 @is_free(%struct.TYPE_11__* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %25
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 (i8*, ...) @MULTI_HEAP_STDERR_PRINTF(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %38)
  br label %42

40:                                               ; preds = %25
  %41 = call i32 (i8*, ...) @MULTI_HEAP_STDERR_PRINTF(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %35
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %45 = call %struct.TYPE_11__* @get_next_block(%struct.TYPE_11__* %44)
  store %struct.TYPE_11__* %45, %struct.TYPE_11__** %3, align 8
  br label %22

46:                                               ; preds = %22
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %48 = call i32 @multi_heap_internal_unlock(%struct.TYPE_10__* %47)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @multi_heap_internal_lock(%struct.TYPE_10__*) #1

declare dso_local i32 @MULTI_HEAP_STDERR_PRINTF(i8*, ...) #1

declare dso_local i32 @block_data_size(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @get_next_block(%struct.TYPE_11__*) #1

declare dso_local i64 @is_free(%struct.TYPE_11__*) #1

declare dso_local i32 @multi_heap_internal_unlock(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
