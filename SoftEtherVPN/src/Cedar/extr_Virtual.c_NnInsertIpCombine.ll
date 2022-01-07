; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_NnInsertIpCombine.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_NnInsertIpCombine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i64, i32, i8*, i8*, i32, i64, i64, i32, i8*, i8* }
%struct.TYPE_9__ = type { i64, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }

@IP_COMBINE_INITIAL_BUF_SIZE = common dso_local global i64 0, align 8
@IP_COMBINE_WAIT_QUEUE_SIZE_QUOTA = common dso_local global i64 0, align 8
@IP_COMBINE_TIMEOUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @NnInsertIpCombine(%struct.TYPE_9__* %0, i8* %1, i8* %2, i32 %3, i8* %4, i32 %5, i8* %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32 %3, i32* %13, align 4
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i32 %7, i32* %17, align 4
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %20 = icmp eq %struct.TYPE_9__* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %9, align 8
  br label %90

22:                                               ; preds = %8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @IP_COMBINE_INITIAL_BUF_SIZE, align 8
  %27 = add nsw i64 %25, %26
  %28 = load i64, i64* @IP_COMBINE_WAIT_QUEUE_SIZE_QUOTA, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %9, align 8
  br label %90

31:                                               ; preds = %22
  %32 = call %struct.TYPE_10__* @ZeroMalloc(i32 88)
  store %struct.TYPE_10__* %32, %struct.TYPE_10__** %18, align 8
  %33 = load i32, i32* %17, align 4
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 11
  store i8* %36, i8** %38, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 10
  store i8* %39, i8** %41, align 8
  %42 = load i32, i32* %13, align 4
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 9
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @IP_COMBINE_TIMEOUT, align 8
  %51 = add nsw i64 %49, %50
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 8
  store i64 %51, i64* %53, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 7
  store i64 0, i64* %55, align 8
  %56 = call i32 @NewList(i32* null)
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 6
  store i32 %56, i32* %58, align 8
  %59 = load i8*, i8** %14, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 5
  store i8* %59, i8** %61, align 8
  %62 = load i32, i32* %15, align 4
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load i8*, i8** %16, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 4
  store i8* %65, i8** %67, align 8
  %68 = load i64, i64* @IP_COMBINE_INITIAL_BUF_SIZE, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 2
  store i64 %68, i64* %70, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @Malloc(i64 %73)
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, %79
  store i64 %83, i64* %81, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %88 = call i32 @Insert(i32 %86, %struct.TYPE_10__* %87)
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  store %struct.TYPE_10__* %89, %struct.TYPE_10__** %9, align 8
  br label %90

90:                                               ; preds = %31, %30, %21
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  ret %struct.TYPE_10__* %91
}

declare dso_local %struct.TYPE_10__* @ZeroMalloc(i32) #1

declare dso_local i32 @NewList(i32*) #1

declare dso_local i32 @Malloc(i64) #1

declare dso_local i32 @Insert(i32, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
