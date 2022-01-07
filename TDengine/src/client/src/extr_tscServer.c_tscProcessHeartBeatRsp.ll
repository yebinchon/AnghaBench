; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscServer.c_tscProcessHeartBeatRsp.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscServer.c_tscProcessHeartBeatRsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32*, i32* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_15__*, %struct.TYPE_13__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_17__ = type { i64, i64, i64, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32* }

@.str = private unnamed_addr constant [46 x i8] c"heart beat msg, pObj:%p, signature:%p invalid\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"heart beat failed, code:%d\00", align 1
@tscProcessActivityTimer = common dso_local global i32 0, align 4
@tsShellActivityTimer = common dso_local global i32 0, align 4
@tscTmr = common dso_local global i32 0, align 4
@tscMgmtIpList = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tscProcessHeartBeatRsp(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %12, %struct.TYPE_13__** %7, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %14 = icmp eq %struct.TYPE_13__* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %84

16:                                               ; preds = %3
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %21 = icmp ne %struct.TYPE_13__* %17, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %27 = call i32 @tscError(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), %struct.TYPE_13__* %23, %struct.TYPE_13__* %26)
  br label %84

28:                                               ; preds = %16
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %30, align 8
  store %struct.TYPE_15__* %31, %struct.TYPE_15__** %8, align 8
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  store %struct.TYPE_14__* %33, %struct.TYPE_14__** %9, align 8
  %34 = load i32, i32* %6, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %72

36:                                               ; preds = %28
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %40, %struct.TYPE_17__** %10, align 8
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %47 = call i32 @tscKillConnection(%struct.TYPE_13__* %46)
  br label %71

48:                                               ; preds = %36
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @tscKillQuery(%struct.TYPE_13__* %54, i64 %57)
  br label %59

59:                                               ; preds = %53, %48
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @tscKillStream(%struct.TYPE_13__* %65, i64 %68)
  br label %70

70:                                               ; preds = %64, %59
  br label %71

71:                                               ; preds = %70, %45
  br label %75

72:                                               ; preds = %28
  %73 = load i32, i32* %6, align 4
  %74 = call i32 (i8*, ...) @tscTrace(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %72, %71
  %76 = load i32, i32* @tscProcessActivityTimer, align 4
  %77 = load i32, i32* @tsShellActivityTimer, align 4
  %78 = mul nsw i32 %77, 500
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %80 = load i32, i32* @tscTmr, align 4
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = call i32 @taosTmrReset(i32 %76, i32 %78, %struct.TYPE_13__* %79, i32 %80, i32* %82)
  br label %84

84:                                               ; preds = %75, %22, %15
  ret void
}

declare dso_local i32 @tscError(i8*, %struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i32 @tscKillConnection(%struct.TYPE_13__*) #1

declare dso_local i32 @tscKillQuery(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @tscKillStream(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @tscTrace(i8*, ...) #1

declare dso_local i32 @taosTmrReset(i32, i32, %struct.TYPE_13__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
