; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_NewTtcEx.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_NewTtcEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i32, i32, i32*, i32, i32*, i8*, i32, i32*, i32, i32, i8*, i32 }

@TRAFFIC_TYPE_FULL = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"TTC_INIT\00", align 1
@TtcThread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @NewTtcEx(i8* %0, i8* %1, i8* %2, i8* %3, i32 %4, i32 %5, i32 %6, i32* %7, i8* %8, i32* %9, i32* %10) #0 {
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %12, align 8
  store i8* %1, i8** %13, align 8
  store i8* %2, i8** %14, align 8
  store i8* %3, i8** %15, align 8
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32* %7, i32** %19, align 8
  store i8* %8, i8** %20, align 8
  store i32* %9, i32** %21, align 8
  store i32* %10, i32** %22, align 8
  %24 = call %struct.TYPE_5__* @ZeroMalloc(i32 96)
  store %struct.TYPE_5__* %24, %struct.TYPE_5__** %23, align 8
  %25 = call i32 (...) @NewEvent()
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 13
  store i32 %25, i32* %27, align 8
  %28 = load i8*, i8** %13, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 12
  store i8* %28, i8** %30, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 11
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %12, align 8
  %35 = call i32 @StrCpy(i32 %33, i32 4, i8* %34)
  %36 = load i8*, i8** %14, align 8
  %37 = ptrtoint i8* %36 to i32
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load i8*, i8** %15, align 8
  %41 = ptrtoint i8* %40 to i64
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  %44 = load i32, i32* %16, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 10
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* %17, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %18, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  %53 = load i32*, i32** %21, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 9
  store i32* %53, i32** %55, align 8
  %56 = load i32*, i32** %22, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 4
  store i32* %56, i32** %58, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @TRAFFIC_TYPE_FULL, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %11
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %67, 2
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  store i32 2, i32* %71, align 8
  br label %72

72:                                               ; preds = %69, %64, %11
  %73 = load i32*, i32** %19, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 6
  store i32* %73, i32** %75, align 8
  %76 = load i8*, i8** %20, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 7
  store i8* %76, i8** %78, align 8
  %79 = load i32, i32* @ERR_NO_ERROR, align 4
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 8
  store i32 %79, i32* %81, align 8
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 7
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 6
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @_UU(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %89 = call i32 @TtPrint(i8* %84, i32* %87, i32 %88)
  %90 = load i32, i32* @TtcThread, align 4
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %92 = call i32 @NewThread(i32 %90, %struct.TYPE_5__* %91)
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 5
  store i32 %92, i32* %94, align 8
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @WaitThreadInit(i32 %97)
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  ret %struct.TYPE_5__* %99
}

declare dso_local %struct.TYPE_5__* @ZeroMalloc(i32) #1

declare dso_local i32 @NewEvent(...) #1

declare dso_local i32 @StrCpy(i32, i32, i8*) #1

declare dso_local i32 @TtPrint(i8*, i32*, i32) #1

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32 @NewThread(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @WaitThreadInit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
