; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscStream.c_tscProcessStreamQueryCallback.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscStream.c_tscProcessStreamQueryCallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [58 x i8] c"%p stream:%p, query data failed, code:%d, retry in %lldms\00", align 1
@tscProcessStreamRetrieveResult = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32)* @tscProcessStreamQueryCallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tscProcessStreamQueryCallback(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %45

17:                                               ; preds = %14, %3
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @tscGetRetryDelayTime(i32 %20, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @tscError(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), %struct.TYPE_7__* %27, %struct.TYPE_6__* %28, i32 %29, i32 %30)
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = call i32* @tscGetMeterMetaInfo(i32* %35, i32 0)
  store i32* %36, i32** %9, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = call i32 @tscClearMeterMetaInfo(i32* %37, i32 1)
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @tscSetRetryTimer(%struct.TYPE_6__* %39, %struct.TYPE_7__* %42, i32 %43)
  br label %50

45:                                               ; preds = %14
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* @tscProcessStreamRetrieveResult, align 4
  %48 = load i8*, i8** %4, align 8
  %49 = call i32 @taos_fetch_rows_a(i32* %46, i32 %47, i8* %48)
  br label %50

50:                                               ; preds = %45, %17
  ret void
}

declare dso_local i32 @tscGetRetryDelayTime(i32, i32) #1

declare dso_local i32 @tscError(i8*, %struct.TYPE_7__*, %struct.TYPE_6__*, i32, i32) #1

declare dso_local i32* @tscGetMeterMetaInfo(i32*, i32) #1

declare dso_local i32 @tscClearMeterMetaInfo(i32*, i32) #1

declare dso_local i32 @tscSetRetryTimer(%struct.TYPE_6__*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @taos_fetch_rows_a(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
