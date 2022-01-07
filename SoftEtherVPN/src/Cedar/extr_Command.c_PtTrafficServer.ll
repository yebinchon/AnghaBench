; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PtTrafficServer.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PtTrafficServer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 (%struct.TYPE_15__*, i8*, i32)*, i32 (%struct.TYPE_15__*, i32)* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { i8*, i32*, i32*, i32*, i32* }

@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"[port]\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"NOHUP\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@TRAFFIC_DEFAULT_PORT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"nohup\00", align 1
@PtTrafficPrintProc = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"TTS_ENTER_TO_EXIT\00", align 1
@.str.4 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PtTrafficServer(%struct.TYPE_15__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca [2 x %struct.TYPE_14__], align 16
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %16, i64* %11, align 8
  %17 = bitcast [2 x %struct.TYPE_14__]* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %17, i8 0, i64 80, i1 false)
  %18 = bitcast i8* %17 to [2 x %struct.TYPE_14__]*
  %19 = getelementptr inbounds [2 x %struct.TYPE_14__], [2 x %struct.TYPE_14__]* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8** %20, align 16
  %21 = getelementptr inbounds [2 x %struct.TYPE_14__], [2 x %struct.TYPE_14__]* %18, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8** %22, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = getelementptr inbounds [2 x %struct.TYPE_14__], [2 x %struct.TYPE_14__]* %15, i64 0, i64 0
  %27 = call i32* @ParseCommandList(%struct.TYPE_15__* %23, i8* %24, i32* %25, %struct.TYPE_14__* %26, i32 2)
  store i32* %27, i32** %10, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %31, i64* %5, align 8
  br label %80

32:                                               ; preds = %4
  %33 = load i32*, i32** %10, align 8
  %34 = call i64 @GetParamInt(i32* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i64 %34, i64* %12, align 8
  %35 = load i64, i64* %12, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i64, i64* @TRAFFIC_DEFAULT_PORT, align 8
  store i64 %38, i64* %12, align 8
  br label %39

39:                                               ; preds = %37, %32
  %40 = load i32*, i32** %10, align 8
  %41 = call i32 @GetParamYes(i32* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32 %41, i32* %13, align 4
  %42 = load i64, i64* %12, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %44 = load i32, i32* @PtTrafficPrintProc, align 4
  %45 = call %struct.TYPE_13__* @NewTts(i64 %42, %struct.TYPE_15__* %43, i32 %44)
  store %struct.TYPE_13__* %45, %struct.TYPE_13__** %14, align 8
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48, %49
  %50 = call i32 @SleepThread(i32 10000)
  br label %49

51:                                               ; preds = %39
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 1
  %54 = load i32 (%struct.TYPE_15__*, i32)*, i32 (%struct.TYPE_15__*, i32)** %53, align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %56 = call i32 @_UU(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %57 = call i32 %54(%struct.TYPE_15__* %55, i32 %56)
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = load i32 (%struct.TYPE_15__*, i8*, i32)*, i32 (%struct.TYPE_15__*, i8*, i32)** %59, align 8
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %62 = call i32 %60(%struct.TYPE_15__* %61, i8* bitcast ([1 x i32]* @.str.4 to i8*), i32 1)
  %63 = call i32 @Free(i32 %62)
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %11, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %68 = call i32 @FreeTts(%struct.TYPE_13__* %67)
  %69 = load i64, i64* %11, align 8
  %70 = load i64, i64* @ERR_NO_ERROR, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %51
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %74 = load i64, i64* %11, align 8
  %75 = call i32 @CmdPrintError(%struct.TYPE_15__* %73, i64 %74)
  br label %76

76:                                               ; preds = %72, %51
  %77 = load i32*, i32** %10, align 8
  %78 = call i32 @FreeParamValueList(i32* %77)
  %79 = load i64, i64* %11, align 8
  store i64 %79, i64* %5, align 8
  br label %80

80:                                               ; preds = %76, %30
  %81 = load i64, i64* %5, align 8
  ret i64 %81
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @ParseCommandList(%struct.TYPE_15__*, i8*, i32*, %struct.TYPE_14__*, i32) #2

declare dso_local i64 @GetParamInt(i32*, i8*) #2

declare dso_local i32 @GetParamYes(i32*, i8*) #2

declare dso_local %struct.TYPE_13__* @NewTts(i64, %struct.TYPE_15__*, i32) #2

declare dso_local i32 @SleepThread(i32) #2

declare dso_local i32 @_UU(i8*) #2

declare dso_local i32 @Free(i32) #2

declare dso_local i32 @FreeTts(%struct.TYPE_13__*) #2

declare dso_local i32 @CmdPrintError(%struct.TYPE_15__*, i64) #2

declare dso_local i32 @FreeParamValueList(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
