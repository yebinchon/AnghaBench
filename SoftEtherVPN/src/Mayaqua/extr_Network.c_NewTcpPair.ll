; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_NewTcpPair.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_NewTcpPair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i64, %struct.TYPE_13__*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NewTcpPair(%struct.TYPE_14__** %0, %struct.TYPE_14__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__**, align 8
  %5 = alloca %struct.TYPE_14__**, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_14__** %0, %struct.TYPE_14__*** %4, align 8
  store %struct.TYPE_14__** %1, %struct.TYPE_14__*** %5, align 8
  %13 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %4, align 8
  %14 = icmp eq %struct.TYPE_14__** %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %5, align 8
  %17 = icmp eq %struct.TYPE_14__** %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %2
  store i32 0, i32* %3, align 4
  br label %103

19:                                               ; preds = %15
  %20 = call %struct.TYPE_14__* @ListenAnyPortEx2(i32 1, i32 1)
  store %struct.TYPE_14__* %20, %struct.TYPE_14__** %6, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %22 = icmp eq %struct.TYPE_14__* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %103

24:                                               ; preds = %19
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call %struct.TYPE_14__* @Connect(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %27)
  store %struct.TYPE_14__* %28, %struct.TYPE_14__** %8, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %30 = icmp eq %struct.TYPE_14__* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %33 = call i32 @ReleaseSock(%struct.TYPE_14__* %32)
  store i32 0, i32* %3, align 4
  br label %103

34:                                               ; preds = %24
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %36 = call %struct.TYPE_14__* @Accept(%struct.TYPE_14__* %35)
  store %struct.TYPE_14__* %36, %struct.TYPE_14__** %7, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %38 = icmp eq %struct.TYPE_14__* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %41 = call i32 @ReleaseSock(%struct.TYPE_14__* %40)
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %43 = call i32 @ReleaseSock(%struct.TYPE_14__* %42)
  store i32 0, i32* %3, align 4
  br label %103

44:                                               ; preds = %34
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %46 = call i32 @ReleaseSock(%struct.TYPE_14__* %45)
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %49, %52
  br i1 %53, label %62, label %54

54:                                               ; preds = %44
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %57, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %54, %44
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %64 = call i32 @ReleaseSock(%struct.TYPE_14__* %63)
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %66 = call i32 @ReleaseSock(%struct.TYPE_14__* %65)
  store i32 0, i32* %3, align 4
  br label %103

67:                                               ; preds = %54
  %68 = call i32 @NewTubePair(%struct.TYPE_13__** %9, %struct.TYPE_13__** %10, i32 4)
  %69 = call i32* (...) @NewSockEvent()
  store i32* %69, i32** %11, align 8
  %70 = call i32* (...) @NewSockEvent()
  store i32* %70, i32** %12, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %72 = load i32*, i32** %11, align 8
  %73 = call i32 @SetTubeSockEvent(%struct.TYPE_13__* %71, i32* %72)
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %75 = load i32*, i32** %12, align 8
  %76 = call i32 @SetTubeSockEvent(%struct.TYPE_13__* %74, i32* %75)
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @AddRef(i32 %79)
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @AddRef(i32 %83)
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 3
  store %struct.TYPE_13__* %85, %struct.TYPE_13__** %87, align 8
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 2
  store %struct.TYPE_13__* %85, %struct.TYPE_13__** %89, align 8
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 2
  store %struct.TYPE_13__* %90, %struct.TYPE_13__** %92, align 8
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 3
  store %struct.TYPE_13__* %90, %struct.TYPE_13__** %94, align 8
  %95 = load i32*, i32** %11, align 8
  %96 = call i32 @ReleaseSockEvent(i32* %95)
  %97 = load i32*, i32** %12, align 8
  %98 = call i32 @ReleaseSockEvent(i32* %97)
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %100 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %4, align 8
  store %struct.TYPE_14__* %99, %struct.TYPE_14__** %100, align 8
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %102 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %5, align 8
  store %struct.TYPE_14__* %101, %struct.TYPE_14__** %102, align 8
  store i32 1, i32* %3, align 4
  br label %103

103:                                              ; preds = %67, %62, %39, %31, %23, %18
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local %struct.TYPE_14__* @ListenAnyPortEx2(i32, i32) #1

declare dso_local %struct.TYPE_14__* @Connect(i8*, i64) #1

declare dso_local i32 @ReleaseSock(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @Accept(%struct.TYPE_14__*) #1

declare dso_local i32 @NewTubePair(%struct.TYPE_13__**, %struct.TYPE_13__**, i32) #1

declare dso_local i32* @NewSockEvent(...) #1

declare dso_local i32 @SetTubeSockEvent(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @AddRef(i32) #1

declare dso_local i32 @ReleaseSockEvent(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
