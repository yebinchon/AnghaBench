; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscServer.c_tscBuildDropAcctMsg.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscServer.c_tscBuildDropAcctMsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__*, %struct.TYPE_12__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i8*, i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@tsRpcHeadSize = common dso_local global i32 0, align 4
@TSDB_MSG_TYPE_DROP_ACCT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tscBuildDropAcctMsg(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %7, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %8, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %17 = call %struct.TYPE_14__* @tscGetMeterMetaInfo(%struct.TYPE_12__* %16, i32 0)
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %9, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load i32, i32* @tsRpcHeadSize, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  store i8* %23, i8** %4, align 8
  %24 = load i8*, i8** %4, align 8
  store i8* %24, i8** %5, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = bitcast i8* %25 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %26, %struct.TYPE_13__** %10, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @strcpy(i32 %29, i32 %32)
  %34 = load i8*, i8** %4, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 4
  store i8* %35, i8** %4, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = bitcast i8* %36 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %37, %struct.TYPE_15__** %3, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @strcpy(i32 %40, i32 %43)
  %45 = load i8*, i8** %4, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 4
  store i8* %46, i8** %4, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = ptrtoint i8* %47 to i64
  %50 = ptrtoint i8* %48 to i64
  %51 = sub i64 %49, %50
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* @TSDB_MSG_TYPE_DROP_ACCT, align 4
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local %struct.TYPE_14__* @tscGetMeterMetaInfo(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
