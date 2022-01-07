; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/sh2rec/extr_sh2rec_mem.c_sh2rec_mem_free.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/sh2rec/extr_sh2rec_mem.c_sh2rec_mem_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, i32* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__*, %struct.TYPE_11__* }
%struct.TYPE_8__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_8__* }

@usedblocks = common dso_local global %struct.TYPE_10__* null, align 8
@usedblocks_tail = common dso_local global %struct.TYPE_10__* null, align 8
@freeblocks = common dso_local global %struct.TYPE_11__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sh2rec_mem_free(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %5, %struct.TYPE_10__** %3, align 8
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %10 = icmp ne %struct.TYPE_11__* %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %20, align 8
  br label %21

21:                                               ; preds = %11, %1
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = icmp ne %struct.TYPE_8__* %25, null
  br i1 %26, label %27, label %37

27:                                               ; preds = %21
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  store %struct.TYPE_11__* %31, %struct.TYPE_11__** %36, align 8
  br label %37

37:                                               ; preds = %27, %21
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** @usedblocks, align 8
  %40 = icmp eq %struct.TYPE_10__* %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %44, align 8
  %46 = bitcast %struct.TYPE_11__* %45 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %46, %struct.TYPE_10__** @usedblocks, align 8
  br label %47

47:                                               ; preds = %41, %37
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** @usedblocks_tail, align 8
  %50 = icmp eq %struct.TYPE_10__* %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = bitcast %struct.TYPE_8__* %55 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %56, %struct.TYPE_10__** @usedblocks_tail, align 8
  br label %57

57:                                               ; preds = %51, %47
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  store i32* null, i32** %59, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** @freeblocks, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 2
  store %struct.TYPE_11__* %60, %struct.TYPE_11__** %63, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %66, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = add i64 %71, 24
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %69, align 8
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %75 = bitcast %struct.TYPE_10__* %74 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %75, %struct.TYPE_11__** @freeblocks, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
