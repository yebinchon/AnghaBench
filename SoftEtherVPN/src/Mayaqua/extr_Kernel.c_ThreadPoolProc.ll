; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Kernel.c_ThreadPoolProc.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Kernel.c_ThreadPoolProc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i32, i32, i32, %struct.TYPE_9__*, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_11__*, i32 (%struct.TYPE_11__*, i32)*, i32*, i32 }

@INFINITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@thread_pool = common dso_local global i32 0, align 4
@thread_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ThreadPoolProc(%struct.TYPE_11__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %12 = icmp eq %struct.TYPE_11__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %147

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %5, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %18 = call i32 @NoticeThreadInitInternal(%struct.TYPE_11__* %17)
  br label %19

19:                                               ; preds = %14, %135
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @INFINITE, align 4
  %24 = call i32 @Wait(i32 %22, i32 %23)
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = load i32 (%struct.TYPE_11__*, i32)*, i32 (%struct.TYPE_11__*, i32)** %26, align 8
  %28 = icmp eq i32 (%struct.TYPE_11__*, i32)* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %147

30:                                               ; preds = %19
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  store %struct.TYPE_11__* %33, %struct.TYPE_11__** %6, align 8
  %34 = call i32 (...) @ThreadId()
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 6
  store i32 %34, i32* %36, align 4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @Set(i32* %39)
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %56

45:                                               ; preds = %30
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 7
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @SetThreadName(i32 %48, i8* %51, i32 %54)
  br label %61

56:                                               ; preds = %30
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @SetThreadName(i32 %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %61

61:                                               ; preds = %56, %45
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load i32 (%struct.TYPE_11__*, i32)*, i32 (%struct.TYPE_11__*, i32)** %63, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %66, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 8
  %71 = call i32 %64(%struct.TYPE_11__* %67, i32 %70)
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @SetThreadName(i32 %74, i8* null, i32 0)
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  store i32 1, i32* %79, align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 2
  store i32 1, i32* %81, align 4
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @LockList(i32 %84)
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 8
  %89 = call i64 @LIST_NUM(i32 %88)
  store i64 %89, i64* %8, align 8
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 8
  %93 = call i32** @ToArray(i32 %92)
  store i32** %93, i32*** %9, align 8
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @DeleteAll(i32 %96)
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @UnlockList(i32 %100)
  store i64 0, i64* %7, align 8
  br label %102

102:                                              ; preds = %115, %61
  %103 = load i64, i64* %7, align 8
  %104 = load i64, i64* %8, align 8
  %105 = icmp ult i64 %103, %104
  br i1 %105, label %106, label %118

106:                                              ; preds = %102
  %107 = load i32**, i32*** %9, align 8
  %108 = load i64, i64* %7, align 8
  %109 = getelementptr inbounds i32*, i32** %107, i64 %108
  %110 = load i32*, i32** %109, align 8
  store i32* %110, i32** %10, align 8
  %111 = load i32*, i32** %10, align 8
  %112 = call i32 @Set(i32* %111)
  %113 = load i32*, i32** %10, align 8
  %114 = call i32 @ReleaseEvent(i32* %113)
  br label %115

115:                                              ; preds = %106
  %116 = load i64, i64* %7, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %7, align 8
  br label %102

118:                                              ; preds = %102
  %119 = load i32**, i32*** %9, align 8
  %120 = call i32 @Free(i32** %119)
  br label %121

121:                                              ; preds = %118, %130
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 4
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @Count(i32 %126)
  %128 = icmp sle i32 %127, 1
  br i1 %128, label %129, label %130

129:                                              ; preds = %121
  br label %135

130:                                              ; preds = %121
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @Wait(i32 %133, i32 256)
  br label %121

135:                                              ; preds = %129
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %137 = call i32 @ReleaseThread(%struct.TYPE_11__* %136)
  %138 = load i32, i32* @thread_pool, align 4
  %139 = call i32 @LockSk(i32 %138)
  %140 = load i32, i32* @thread_pool, align 4
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %142 = call i32 @Push(i32 %140, %struct.TYPE_11__* %141)
  %143 = load i32, i32* @thread_pool, align 4
  %144 = call i32 @UnlockSk(i32 %143)
  %145 = load i32, i32* @thread_count, align 4
  %146 = call i32 @Dec(i32 %145)
  br label %19

147:                                              ; preds = %13, %29
  ret void
}

declare dso_local i32 @NoticeThreadInitInternal(%struct.TYPE_11__*) #1

declare dso_local i32 @Wait(i32, i32) #1

declare dso_local i32 @ThreadId(...) #1

declare dso_local i32 @Set(i32*) #1

declare dso_local i32 @SetThreadName(i32, i8*, i32) #1

declare dso_local i32 @LockList(i32) #1

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local i32** @ToArray(i32) #1

declare dso_local i32 @DeleteAll(i32) #1

declare dso_local i32 @UnlockList(i32) #1

declare dso_local i32 @ReleaseEvent(i32*) #1

declare dso_local i32 @Free(i32**) #1

declare dso_local i32 @Count(i32) #1

declare dso_local i32 @ReleaseThread(%struct.TYPE_11__*) #1

declare dso_local i32 @LockSk(i32) #1

declare dso_local i32 @Push(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @UnlockSk(i32) #1

declare dso_local i32 @Dec(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
