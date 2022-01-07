; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CncConnectErrorDlg.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CncConnectErrorDlg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i8*, i8*, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32*, %struct.TYPE_10__* }

@.str = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"connecterror_dialog\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"AccountName\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"ServerName\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"Err\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"CurrentRetryCount\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"RetryLimit\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"RetryIntervalSec\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"HideWindow\00", align 1
@CncConnectErrorDlgHaltThread = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@INFINITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CncConnectErrorDlg(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %12 = icmp eq %struct.TYPE_9__* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %15 = icmp eq %struct.TYPE_10__* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %2
  store i32 0, i32* %3, align 4
  br label %123

17:                                               ; preds = %13
  %18 = call i32* (...) @CncConnect()
  store i32* %18, i32** %6, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @Wait(i32 %24, i32 %27)
  store i32 1, i32* %3, align 4
  br label %123

29:                                               ; preds = %17
  %30 = call i32* (...) @NewPack()
  store i32* %30, i32** %7, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @PackAddStr(i32* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32*, i32** %7, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @PackAddUniStr(i32* %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  %38 = load i32*, i32** %7, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @PackAddStr(i32* %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %41)
  %43 = load i32*, i32** %7, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @PackAddInt(i32* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %46)
  %48 = load i32*, i32** %7, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @PackAddInt(i32* %48, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %51)
  %53 = load i32*, i32** %7, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @PackAddInt(i32* %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %56)
  %58 = load i32*, i32** %7, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @PackAddInt(i32* %58, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %61)
  %63 = load i32*, i32** %7, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @PackAddBool(i32* %63, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* %66)
  %68 = load i32*, i32** %6, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = call i32 @SendPack(i32* %68, i32* %69)
  %71 = load i32*, i32** %7, align 8
  %72 = call i32 @FreePack(i32* %71)
  %73 = call %struct.TYPE_11__* @ZeroMalloc(i32 24)
  store %struct.TYPE_11__* %73, %struct.TYPE_11__** %8, align 8
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 3
  store %struct.TYPE_10__* %74, %struct.TYPE_10__** %76, align 8
  %77 = load i32*, i32** %6, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 2
  store i32* %77, i32** %79, align 8
  %80 = call i32 (...) @NewEvent()
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* @CncConnectErrorDlgHaltThread, align 4
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %85 = call i32* @NewThread(i32 %83, %struct.TYPE_11__* %84)
  store i32* %85, i32** %9, align 8
  %86 = load i32*, i32** %6, align 8
  %87 = call i32* @RecvPack(i32* %86)
  store i32* %87, i32** %7, align 8
  %88 = load i32*, i32** %7, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %100

90:                                               ; preds = %29
  %91 = load i32*, i32** %7, align 8
  %92 = call i8* @PackGetBool(i32* %91, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %93 = ptrtoint i8* %92 to i32
  store i32 %93, i32* %10, align 4
  %94 = load i32*, i32** %7, align 8
  %95 = call i8* @PackGetBool(i32* %94, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 1
  store i8* %95, i8** %97, align 8
  %98 = load i32*, i32** %7, align 8
  %99 = call i32 @FreePack(i32* %98)
  br label %100

100:                                              ; preds = %90, %29
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  store i32 1, i32* %102, align 8
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @Set(i32 %105)
  %107 = load i32*, i32** %9, align 8
  %108 = load i32, i32* @INFINITE, align 4
  %109 = call i32 @WaitThread(i32* %107, i32 %108)
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @ReleaseEvent(i32 %112)
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %115 = call i32 @Free(%struct.TYPE_11__* %114)
  %116 = load i32*, i32** %9, align 8
  %117 = call i32 @ReleaseThread(i32* %116)
  %118 = load i32*, i32** %6, align 8
  %119 = call i32 @Disconnect(i32* %118)
  %120 = load i32*, i32** %6, align 8
  %121 = call i32 @ReleaseSock(i32* %120)
  %122 = load i32, i32* %10, align 4
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %100, %21, %16
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32* @CncConnect(...) #1

declare dso_local i32 @Wait(i32, i32) #1

declare dso_local i32* @NewPack(...) #1

declare dso_local i32 @PackAddStr(i32*, i8*, i8*) #1

declare dso_local i32 @PackAddUniStr(i32*, i8*, i32) #1

declare dso_local i32 @PackAddInt(i32*, i8*, i32) #1

declare dso_local i32 @PackAddBool(i32*, i8*, i8*) #1

declare dso_local i32 @SendPack(i32*, i32*) #1

declare dso_local i32 @FreePack(i32*) #1

declare dso_local %struct.TYPE_11__* @ZeroMalloc(i32) #1

declare dso_local i32 @NewEvent(...) #1

declare dso_local i32* @NewThread(i32, %struct.TYPE_11__*) #1

declare dso_local i32* @RecvPack(i32*) #1

declare dso_local i8* @PackGetBool(i32*, i8*) #1

declare dso_local i32 @Set(i32) #1

declare dso_local i32 @WaitThread(i32*, i32) #1

declare dso_local i32 @ReleaseEvent(i32) #1

declare dso_local i32 @Free(%struct.TYPE_11__*) #1

declare dso_local i32 @ReleaseThread(i32*) #1

declare dso_local i32 @Disconnect(i32*) #1

declare dso_local i32 @ReleaseSock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
