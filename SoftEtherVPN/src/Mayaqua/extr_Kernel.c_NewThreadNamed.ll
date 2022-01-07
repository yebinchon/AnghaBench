; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Kernel.c_NewThreadNamed.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Kernel.c_NewThreadNamed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i8*, %struct.TYPE_9__*, i32, i8*, i32*, i8*, i32* }
%struct.TYPE_8__ = type { i8*, i8*, %struct.TYPE_9__*, i32* }

@thread_count = common dso_local global i32 0, align 4
@thread_pool = common dso_local global i32 0, align 4
@ThreadPoolProc = common dso_local global i32 0, align 4
@INFINITE = common dso_local global i32 0, align 4
@current_num_thread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @NewThreadNamed(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %9, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  br label %103

14:                                               ; preds = %3
  %15 = load i32, i32* @thread_count, align 4
  %16 = call i32 @Inc(i32 %15)
  %17 = load i32, i32* @thread_pool, align 4
  %18 = call i32 @LockSk(i32 %17)
  %19 = load i32, i32* @thread_pool, align 4
  %20 = call %struct.TYPE_9__* @Pop(i32 %19)
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %8, align 8
  %21 = load i32, i32* @thread_pool, align 4
  %22 = call i32 @UnlockSk(i32 %21)
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %24 = icmp eq %struct.TYPE_9__* %23, null
  br i1 %24, label %25, label %39

25:                                               ; preds = %14
  %26 = call i8* @ZeroMalloc(i32 32)
  %27 = bitcast i8* %26 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %9, align 8
  %28 = call i8* (...) @NewEvent()
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = call i8* (...) @NewEvent()
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = load i32, i32* @ThreadPoolProc, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %36 = call %struct.TYPE_9__* @NewThreadInternal(i32 %34, %struct.TYPE_8__* %35)
  store %struct.TYPE_9__* %36, %struct.TYPE_9__** %8, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %38 = call i32 @WaitThreadInitInternal(%struct.TYPE_9__* %37)
  br label %44

39:                                               ; preds = %14
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 8
  %42 = load i8*, i8** %41, align 8
  %43 = bitcast i8* %42 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %43, %struct.TYPE_8__** %9, align 8
  br label %44

44:                                               ; preds = %39, %25
  %45 = call i8* @ZeroMalloc(i32 72)
  %46 = bitcast i8* %45 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %46, %struct.TYPE_9__** %10, align 8
  %47 = call i32 (...) @NewRef()
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load i32*, i32** %5, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 9
  store i32* %50, i32** %52, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 8
  store i8* %53, i8** %55, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 7
  store i32* null, i32** %57, align 8
  %58 = call i8* (...) @NewEvent()
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 6
  store i8* %58, i8** %60, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  %63 = call i32 @NewList(i32* null)
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 4
  store %struct.TYPE_9__* %66, %struct.TYPE_9__** %68, align 8
  %69 = call i8* (...) @NewEvent()
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 3
  store i8* %69, i8** %71, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = call i32 @IsEmptyStr(i8* %72)
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %44
  %76 = load i8*, i8** %7, align 8
  %77 = call i32 @CopyStr(i8* %76)
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  br label %80

80:                                               ; preds = %75, %44
  %81 = load i32*, i32** %5, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 3
  store i32* %81, i32** %83, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 2
  store %struct.TYPE_9__* %84, %struct.TYPE_9__** %86, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @AddRef(i32 %89)
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @Set(i8* %93)
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = load i32, i32* @INFINITE, align 4
  %99 = call i32 @Wait(i8* %97, i32 %98)
  %100 = load i32, i32* @current_num_thread, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* @current_num_thread, align 4
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_9__* %102, %struct.TYPE_9__** %4, align 8
  br label %103

103:                                              ; preds = %80, %13
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  ret %struct.TYPE_9__* %104
}

declare dso_local i32 @Inc(i32) #1

declare dso_local i32 @LockSk(i32) #1

declare dso_local %struct.TYPE_9__* @Pop(i32) #1

declare dso_local i32 @UnlockSk(i32) #1

declare dso_local i8* @ZeroMalloc(i32) #1

declare dso_local i8* @NewEvent(...) #1

declare dso_local %struct.TYPE_9__* @NewThreadInternal(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @WaitThreadInitInternal(%struct.TYPE_9__*) #1

declare dso_local i32 @NewRef(...) #1

declare dso_local i32 @NewList(i32*) #1

declare dso_local i32 @IsEmptyStr(i8*) #1

declare dso_local i32 @CopyStr(i8*) #1

declare dso_local i32 @AddRef(i32) #1

declare dso_local i32 @Set(i8*) #1

declare dso_local i32 @Wait(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
