; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_SSTP.c_NewSstpServer.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_SSTP.c_NewSstpServer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i8*, i8*, %struct.TYPE_10__*, i8*, i32, i8*, i32, i8*, i32, i32, %struct.TYPE_11__*, i32, i32, i8* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @NewSstpServer(%struct.TYPE_11__* %0, i32* %1, i8* %2, i32* %3, i8* %4, %struct.TYPE_10__* %5, i8* %6, i8* %7) #0 {
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32* %3, i32** %12, align 8
  store i8* %4, i8** %13, align 8
  store %struct.TYPE_10__* %5, %struct.TYPE_10__** %14, align 8
  store i8* %6, i8** %15, align 8
  store i8* %7, i8** %16, align 8
  %18 = call %struct.TYPE_9__* @ZeroMalloc(i32 104)
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %17, align 8
  %19 = call i8* (...) @Tick64()
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 14
  store i8* %19, i8** %21, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 13
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %15, align 8
  %26 = call i32 @StrCpy(i32 %24, i32 4, i8* %25)
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 12
  %29 = load i32, i32* %28, align 8
  %30 = load i8*, i8** %16, align 8
  %31 = call i32 @StrCpy(i32 %29, i32 4, i8* %30)
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 11
  store %struct.TYPE_11__* %32, %struct.TYPE_11__** %34, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 11
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @AddRef(i32 %39)
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 9
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 10
  %45 = call i32 @NewTubePair(i32* %42, i32* %44, i32 0)
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 9
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %50 = call i32 @SetTubeSockEvent(i32 %48, %struct.TYPE_10__* %49)
  %51 = call i8* (...) @Tick64()
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 8
  store i8* %51, i8** %53, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 7
  %56 = load i32*, i32** %10, align 8
  %57 = call i32 @Copy(i32* %55, i32* %56, i32 4)
  %58 = load i8*, i8** %11, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 6
  store i8* %58, i8** %60, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 5
  %63 = load i32*, i32** %12, align 8
  %64 = call i32 @Copy(i32* %62, i32* %63, i32 4)
  %65 = load i8*, i8** %13, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 4
  store i8* %65, i8** %67, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 3
  store %struct.TYPE_10__* %68, %struct.TYPE_10__** %70, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 3
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @AddRef(i32 %75)
  %77 = call i8* (...) @NewQueueFast()
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 2
  store i8* %77, i8** %79, align 8
  %80 = call i8* (...) @NewQueueFast()
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  store i8* %80, i8** %82, align 8
  %83 = call i32 (...) @NewInterruptManager()
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  ret %struct.TYPE_9__* %86
}

declare dso_local %struct.TYPE_9__* @ZeroMalloc(i32) #1

declare dso_local i8* @Tick64(...) #1

declare dso_local i32 @StrCpy(i32, i32, i8*) #1

declare dso_local i32 @AddRef(i32) #1

declare dso_local i32 @NewTubePair(i32*, i32*, i32) #1

declare dso_local i32 @SetTubeSockEvent(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @Copy(i32*, i32*, i32) #1

declare dso_local i8* @NewQueueFast(...) #1

declare dso_local i32 @NewInterruptManager(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
