; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsClusterMemberCertGet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsClusterMemberCertGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 (%struct.TYPE_16__*, i32)* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32*, i32 }
%struct.TYPE_15__ = type { i8*, i32*, i32*, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"[id]\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"CMD_ClusterMemberCertGet_PROMPT_ID\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"SAVECERT\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"CMD_SAVECERTPATH\00", align 1
@CmdEvalNotEmpty = common dso_local global i32* null, align 8
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"CMD_SAVECERT_FAILED\00", align 1
@ERR_INTERNAL_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsClusterMemberCertGet(%struct.TYPE_16__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_13__, align 8
  %14 = alloca [2 x %struct.TYPE_15__], align 16
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %18, %struct.TYPE_14__** %11, align 8
  store i64 0, i64* %12, align 8
  %19 = getelementptr inbounds [2 x %struct.TYPE_15__], [2 x %struct.TYPE_15__]* %14, i64 0, i64 0
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %20, align 16
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 1
  %22 = load i32, i32* @CmdPrompt, align 4
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i32*
  store i32* %24, i32** %21, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 2
  %26 = call i32 @_UU(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i32*
  store i32* %28, i32** %25, align 16
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 3
  store i32 0, i32* %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 4
  store i32 0, i32* %30, align 4
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i64 1
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %32, align 16
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 1
  %34 = load i32, i32* @CmdPrompt, align 4
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i32*
  store i32* %36, i32** %33, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 2
  %38 = call i32 @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i32*
  store i32* %40, i32** %37, align 16
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 3
  %42 = load i32*, i32** @CmdEvalNotEmpty, align 8
  %43 = ptrtoint i32* %42 to i32
  store i32 %43, i32* %41, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 4
  store i32 0, i32* %44, align 4
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = getelementptr inbounds [2 x %struct.TYPE_15__], [2 x %struct.TYPE_15__]* %14, i64 0, i64 0
  %49 = call i32* @ParseCommandList(%struct.TYPE_16__* %45, i8* %46, i32* %47, %struct.TYPE_15__* %48, i32 2)
  store i32* %49, i32** %10, align 8
  %50 = load i32*, i32** %10, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %4
  %53 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %53, i64* %5, align 8
  br label %97

54:                                               ; preds = %4
  %55 = call i32 @Zero(%struct.TYPE_13__* %13, i32 16)
  %56 = load i32*, i32** %10, align 8
  %57 = call i32* @GetParamUniStr(i32* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %58 = call i32 @UniToInt(i32* %57)
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 1
  store i32 %58, i32* %59, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @ScGetFarmInfo(i32 %62, %struct.TYPE_13__* %13)
  store i64 %63, i64* %12, align 8
  %64 = load i64, i64* %12, align 8
  %65 = load i64, i64* @ERR_NO_ERROR, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %54
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %69 = load i64, i64* %12, align 8
  %70 = call i32 @CmdPrintError(%struct.TYPE_16__* %68, i64 %69)
  %71 = load i32*, i32** %10, align 8
  %72 = call i32 @FreeParamValueList(i32* %71)
  %73 = load i64, i64* %12, align 8
  store i64 %73, i64* %5, align 8
  br label %97

74:                                               ; preds = %54
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  store i32* %76, i32** %15, align 8
  %77 = load i32*, i32** %10, align 8
  %78 = call i32* @GetParamUniStr(i32* %77, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32* %78, i32** %16, align 8
  %79 = load i32*, i32** %15, align 8
  %80 = load i32*, i32** %16, align 8
  %81 = call i32 @XToFileW(i32* %79, i32* %80, i32 1)
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %74
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = load i32 (%struct.TYPE_16__*, i32)*, i32 (%struct.TYPE_16__*, i32)** %85, align 8
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %88 = call i32 @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %89 = call i32 %86(%struct.TYPE_16__* %87, i32 %88)
  %90 = load i64, i64* @ERR_INTERNAL_ERROR, align 8
  store i64 %90, i64* %12, align 8
  br label %91

91:                                               ; preds = %83, %74
  br label %92

92:                                               ; preds = %91
  %93 = call i32 @FreeRpcFarmInfo(%struct.TYPE_13__* %13)
  %94 = load i32*, i32** %10, align 8
  %95 = call i32 @FreeParamValueList(i32* %94)
  %96 = load i64, i64* %12, align 8
  store i64 %96, i64* %5, align 8
  br label %97

97:                                               ; preds = %92, %67, %52
  %98 = load i64, i64* %5, align 8
  ret i64 %98
}

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(%struct.TYPE_16__*, i8*, i32*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @UniToInt(i32*) #1

declare dso_local i32* @GetParamUniStr(i32*, i8*) #1

declare dso_local i64 @ScGetFarmInfo(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @CmdPrintError(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

declare dso_local i32 @XToFileW(i32*, i32*, i32) #1

declare dso_local i32 @FreeRpcFarmInfo(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
