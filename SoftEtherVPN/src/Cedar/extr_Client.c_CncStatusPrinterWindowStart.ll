; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CncStatusPrinterWindowStart.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CncStatusPrinterWindowStart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__*, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"status_printer\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"account_name\00", align 1
@CncStatusPrinterWindowThreadProc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_15__* @CncStatusPrinterWindowStart(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %9 = icmp eq %struct.TYPE_16__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %2, align 8
  br label %59

11:                                               ; preds = %1
  %12 = call %struct.TYPE_15__* (...) @CncConnect()
  store %struct.TYPE_15__* %12, %struct.TYPE_15__** %4, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %14 = icmp eq %struct.TYPE_15__* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %2, align 8
  br label %59

16:                                               ; preds = %11
  %17 = call i32* (...) @NewPack()
  store i32* %17, i32** %5, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @PackAddStr(i32* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32*, i32** %5, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @PackAddUniStr(i32* %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @SendPack(%struct.TYPE_15__* %29, i32* %30)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %16
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @FreePack(i32* %34)
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %37 = call i32 @ReleaseSock(%struct.TYPE_15__* %36)
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %2, align 8
  br label %59

38:                                               ; preds = %16
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @FreePack(i32* %39)
  %41 = call %struct.TYPE_17__* @ZeroMalloc(i32 16)
  store %struct.TYPE_17__* %41, %struct.TYPE_17__** %7, align 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 1
  store %struct.TYPE_15__* %42, %struct.TYPE_15__** %44, align 8
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  store %struct.TYPE_16__* %45, %struct.TYPE_16__** %47, align 8
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  store %struct.TYPE_17__* %48, %struct.TYPE_17__** %50, align 8
  %51 = load i32, i32* @CncStatusPrinterWindowThreadProc, align 4
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %53 = call i32* @NewThread(i32 %51, %struct.TYPE_17__* %52)
  store i32* %53, i32** %6, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @WaitThreadInit(i32* %54)
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @ReleaseThread(i32* %56)
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_15__* %58, %struct.TYPE_15__** %2, align 8
  br label %59

59:                                               ; preds = %38, %33, %15, %10
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  ret %struct.TYPE_15__* %60
}

declare dso_local %struct.TYPE_15__* @CncConnect(...) #1

declare dso_local i32* @NewPack(...) #1

declare dso_local i32 @PackAddStr(i32*, i8*, i8*) #1

declare dso_local i32 @PackAddUniStr(i32*, i8*, i32) #1

declare dso_local i32 @SendPack(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @FreePack(i32*) #1

declare dso_local i32 @ReleaseSock(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_17__* @ZeroMalloc(i32) #1

declare dso_local i32* @NewThread(i32, %struct.TYPE_17__*) #1

declare dso_local i32 @WaitThreadInit(i32*) #1

declare dso_local i32 @ReleaseThread(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
