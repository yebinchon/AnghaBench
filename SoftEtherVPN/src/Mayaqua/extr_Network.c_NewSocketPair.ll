; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_NewSocketPair.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_NewSocketPair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i8*, i32, i8*, i32 }

@INFINITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NewSocketPair(%struct.TYPE_7__** %0, %struct.TYPE_7__** %1, i32* %2, i8* %3, i32* %4, i8* %5) #0 {
  %7 = alloca %struct.TYPE_7__**, align 8
  %8 = alloca %struct.TYPE_7__**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_7__*, align 8
  %17 = alloca %struct.TYPE_7__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %7, align 8
  store %struct.TYPE_7__** %1, %struct.TYPE_7__*** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  store i8* %5, i8** %12, align 8
  %20 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %21 = icmp eq %struct.TYPE_7__** %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %6
  %23 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %8, align 8
  %24 = icmp eq %struct.TYPE_7__** %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %6
  br label %109

26:                                               ; preds = %22
  %27 = call i32 @SetIP(i32* %13, i32 127, i32 0, i32 0, i32 1)
  %28 = load i32*, i32** %9, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32* %13, i32** %9, align 8
  br label %31

31:                                               ; preds = %30, %26
  %32 = load i32*, i32** %11, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32* %13, i32** %11, align 8
  br label %35

35:                                               ; preds = %34, %31
  %36 = call i32 @NewTubePair(i32** %14, i32** %15, i32 0)
  %37 = call i32* (...) @NewSockEvent()
  store i32* %37, i32** %18, align 8
  %38 = call i32* (...) @NewSockEvent()
  store i32* %38, i32** %19, align 8
  %39 = load i32*, i32** %14, align 8
  %40 = load i32*, i32** %18, align 8
  %41 = call i32 @SetTubeSockEvent(i32* %39, i32* %40)
  %42 = load i32*, i32** %15, align 8
  %43 = load i32*, i32** %19, align 8
  %44 = call i32 @SetTubeSockEvent(i32* %42, i32* %43)
  %45 = load i32*, i32** %14, align 8
  %46 = load i32*, i32** %15, align 8
  %47 = call %struct.TYPE_7__* @NewInProcSocket(i32* %45, i32* %46)
  store %struct.TYPE_7__* %47, %struct.TYPE_7__** %16, align 8
  %48 = load i32*, i32** %15, align 8
  %49 = load i32*, i32** %14, align 8
  %50 = call %struct.TYPE_7__* @NewInProcSocket(i32* %48, i32* %49)
  store %struct.TYPE_7__* %50, %struct.TYPE_7__** %17, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 5
  %53 = load i32*, i32** %9, align 8
  %54 = call i32 @Copy(i32* %52, i32* %53, i32 4)
  %55 = load i8*, i8** %10, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 4
  store i8* %55, i8** %57, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 3
  %60 = load i32*, i32** %11, align 8
  %61 = call i32 @Copy(i32* %59, i32* %60, i32 4)
  %62 = load i8*, i8** %12, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 2
  store i8* %62, i8** %64, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 5
  %67 = load i32*, i32** %11, align 8
  %68 = call i32 @Copy(i32* %66, i32* %67, i32 4)
  %69 = load i8*, i8** %12, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 4
  store i8* %69, i8** %71, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 3
  %74 = load i32*, i32** %9, align 8
  %75 = call i32 @Copy(i32* %73, i32* %74, i32 4)
  %76 = load i8*, i8** %10, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 2
  store i8* %76, i8** %78, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  store i32 0, i32* %82, align 4
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  store i32 1, i32* %84, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  store i32 1, i32* %86, align 4
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %88 = load i32, i32* @INFINITE, align 4
  %89 = call i32 @SetTimeout(%struct.TYPE_7__* %87, i32 %88)
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %91 = load i32, i32* @INFINITE, align 4
  %92 = call i32 @SetTimeout(%struct.TYPE_7__* %90, i32 %91)
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %94 = call i32 @QuerySocketInformation(%struct.TYPE_7__* %93)
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %96 = call i32 @QuerySocketInformation(%struct.TYPE_7__* %95)
  %97 = load i32*, i32** %18, align 8
  %98 = call i32 @ReleaseSockEvent(i32* %97)
  %99 = load i32*, i32** %19, align 8
  %100 = call i32 @ReleaseSockEvent(i32* %99)
  %101 = load i32*, i32** %14, align 8
  %102 = call i32 @ReleaseTube(i32* %101)
  %103 = load i32*, i32** %15, align 8
  %104 = call i32 @ReleaseTube(i32* %103)
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %106 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  store %struct.TYPE_7__* %105, %struct.TYPE_7__** %106, align 8
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %108 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %8, align 8
  store %struct.TYPE_7__* %107, %struct.TYPE_7__** %108, align 8
  br label %109

109:                                              ; preds = %35, %25
  ret void
}

declare dso_local i32 @SetIP(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @NewTubePair(i32**, i32**, i32) #1

declare dso_local i32* @NewSockEvent(...) #1

declare dso_local i32 @SetTubeSockEvent(i32*, i32*) #1

declare dso_local %struct.TYPE_7__* @NewInProcSocket(i32*, i32*) #1

declare dso_local i32 @Copy(i32*, i32*, i32) #1

declare dso_local i32 @SetTimeout(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @QuerySocketInformation(%struct.TYPE_7__*) #1

declare dso_local i32 @ReleaseSockEvent(i32*) #1

declare dso_local i32 @ReleaseTube(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
