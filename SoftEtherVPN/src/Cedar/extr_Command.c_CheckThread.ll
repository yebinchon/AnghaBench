; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_CheckThread.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_CheckThread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32* }

@CheckThread2 = common dso_local global i32 0, align 4
@CheckThread1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Thread %u Create Failed.\0A\00", align 1
@INFINITE = common dso_local global i32 0, align 4
@CHECK_THREAD_INCREMENT_COUNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Threading: %u != %u\0A\00", align 1
@CheckThread3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CheckThread() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_9__, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__, align 8
  store i32 1, i32* %1, align 4
  store i32 32, i32* %3, align 4
  %10 = call %struct.TYPE_9__* (...) @NewEvent()
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %6, align 8
  %11 = call i32 @Zero(%struct.TYPE_9__* %2, i32 24)
  %12 = call i32 (...) @NewLock()
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 2
  store i32 %12, i32* %13, align 8
  %14 = load i32, i32* @CheckThread2, align 4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %16 = call i32* @NewThread(i32 %14, %struct.TYPE_9__* %15)
  store i32* %16, i32** %7, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 3
  store i32* %17, i32** %18, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 8, %20
  %22 = trunc i64 %21 to i32
  %23 = call i32** @ZeroMalloc(i32 %22)
  store i32** %23, i32*** %5, align 8
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %45, %0
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %3, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %48

28:                                               ; preds = %24
  %29 = load i32, i32* @CheckThread1, align 4
  %30 = call i32* @NewThread(i32 %29, %struct.TYPE_9__* %2)
  %31 = load i32**, i32*** %5, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32*, i32** %31, i64 %33
  store i32* %30, i32** %34, align 8
  %35 = load i32**, i32*** %5, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %28
  %42 = load i32, i32* %4, align 4
  %43 = call i32 (i8*, i32, ...) @Print(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %42)
  store i32 0, i32* %1, align 4
  br label %44

44:                                               ; preds = %41, %28
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %24

48:                                               ; preds = %24
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %50 = call i32 @Set(%struct.TYPE_9__* %49)
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %69, %48
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* %3, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %72

55:                                               ; preds = %51
  %56 = load i32**, i32*** %5, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32*, i32** %56, i64 %58
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* @INFINITE, align 4
  %62 = call i32 @WaitThread(i32* %60, i32 %61)
  %63 = load i32**, i32*** %5, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32*, i32** %63, i64 %65
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @ReleaseThread(i32* %67)
  br label %69

69:                                               ; preds = %55
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %4, align 4
  br label %51

72:                                               ; preds = %51
  %73 = load i32**, i32*** %5, align 8
  %74 = call i32 @Free(i32** %73)
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* @CHECK_THREAD_INCREMENT_COUNT, align 4
  %79 = mul nsw i32 %77, %78
  %80 = icmp ne i32 %76, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %72
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %3, align 4
  %85 = load i32, i32* @CHECK_THREAD_INCREMENT_COUNT, align 4
  %86 = mul nsw i32 %84, %85
  %87 = call i32 (i8*, i32, ...) @Print(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %83, i32 %86)
  store i32 0, i32* %1, align 4
  br label %88

88:                                               ; preds = %81, %72
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @DeleteLock(i32 %90)
  %92 = load i32*, i32** %7, align 8
  %93 = load i32, i32* @INFINITE, align 4
  %94 = call i32 @WaitThread(i32* %92, i32 %93)
  %95 = load i32*, i32** %7, align 8
  %96 = call i32 @ReleaseThread(i32* %95)
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %98 = call i32 @ReleaseEvent(%struct.TYPE_9__* %97)
  store i32 32, i32* %3, align 4
  %99 = call i32 @Zero(%struct.TYPE_9__* %9, i32 24)
  %100 = load i32, i32* %3, align 4
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  store i32 %100, i32* %101, align 8
  %102 = load i32, i32* @CheckThread3, align 4
  %103 = call i32* @NewThread(i32 %102, %struct.TYPE_9__* %9)
  store i32* %103, i32** %8, align 8
  %104 = load i32*, i32** %8, align 8
  %105 = load i32, i32* @INFINITE, align 4
  %106 = call i32 @WaitThread(i32* %104, i32 %105)
  %107 = load i32*, i32** %8, align 8
  %108 = call i32 @ReleaseThread(i32* %107)
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %3, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %118

113:                                              ; preds = %88
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %3, align 4
  %117 = call i32 (i8*, i32, ...) @Print(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %115, i32 %116)
  store i32 0, i32* %1, align 4
  br label %118

118:                                              ; preds = %113, %88
  %119 = load i32, i32* %1, align 4
  ret i32 %119
}

declare dso_local %struct.TYPE_9__* @NewEvent(...) #1

declare dso_local i32 @Zero(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @NewLock(...) #1

declare dso_local i32* @NewThread(i32, %struct.TYPE_9__*) #1

declare dso_local i32** @ZeroMalloc(i32) #1

declare dso_local i32 @Print(i8*, i32, ...) #1

declare dso_local i32 @Set(%struct.TYPE_9__*) #1

declare dso_local i32 @WaitThread(i32*, i32) #1

declare dso_local i32 @ReleaseThread(i32*) #1

declare dso_local i32 @Free(i32**) #1

declare dso_local i32 @DeleteLock(i32) #1

declare dso_local i32 @ReleaseEvent(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
