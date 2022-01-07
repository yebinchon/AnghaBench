; ModuleID = '/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_chunk.c_chunk_dalloc_arena.c'
source_filename = "/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_chunk.c_chunk_dalloc_arena.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32 (i8*, i64, i32, i64, i32)*, i32 (i8*, i64, i32, i64, i32)*, i32 (i8*, i64, i32, i32)* }

@chunksize_mask = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @chunk_dalloc_arena(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i8* %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load i8*, i8** %9, align 8
  %14 = icmp ne i8* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i8*, i8** %9, align 8
  %18 = call i8* @CHUNK_ADDR2BASE(i8* %17)
  %19 = load i8*, i8** %9, align 8
  %20 = icmp eq i8* %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i64, i64* %10, align 8
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* @chunksize_mask, align 8
  %29 = and i64 %27, %28
  %30 = icmp eq i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %35 = call i32 @chunk_hooks_assure_initialized(%struct.TYPE_10__* %33, %struct.TYPE_9__* %34)
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 2
  %38 = load i32 (i8*, i64, i32, i32)*, i32 (i8*, i64, i32, i32)** %37, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = load i64, i64* %10, align 8
  %41 = load i32, i32* %12, align 4
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 %38(i8* %39, i64 %40, i32 %41, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %6
  br label %92

48:                                               ; preds = %6
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %48
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32 (i8*, i64, i32, i64, i32)*, i32 (i8*, i64, i32, i64, i32)** %53, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* %10, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 %54(i8* %55, i64 %56, i32 0, i64 %57, i32 %60)
  store i32 %61, i32* %12, align 4
  br label %62

62:                                               ; preds = %51, %48
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %62
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = load i32 (i8*, i64, i32, i64, i32)*, i32 (i8*, i64, i32, i64, i32)** %67, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = load i64, i64* %10, align 8
  %71 = load i64, i64* %10, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 %68(i8* %69, i64 %70, i32 0, i64 %71, i32 %74)
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  br label %78

78:                                               ; preds = %65, %62
  %79 = phi i1 [ true, %62 ], [ %77, %65 ]
  %80 = zext i1 %79 to i32
  store i32 %80, i32* %11, align 4
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i8*, i8** %9, align 8
  %88 = load i64, i64* %10, align 8
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %12, align 4
  %91 = call i32 @chunk_record(%struct.TYPE_10__* %81, %struct.TYPE_9__* %82, i32* %84, i32* %86, i32 0, i8* %87, i64 %88, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %78, %47
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @CHUNK_ADDR2BASE(i8*) #1

declare dso_local i32 @chunk_hooks_assure_initialized(%struct.TYPE_10__*, %struct.TYPE_9__*) #1

declare dso_local i32 @chunk_record(%struct.TYPE_10__*, %struct.TYPE_9__*, i32*, i32*, i32, i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
