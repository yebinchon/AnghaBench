; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsCAGet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsCAGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 (%struct.TYPE_17__*, i32)* }
%struct.TYPE_15__ = type { i32, i32* }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i8*, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"[id]\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"CMD_CAGet_PROMPT_ID\00", align 1
@CmdEvalNotEmpty = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"SAVECERT\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"CMD_CAGet_PROMPT_SAVECERT\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"CMD_Hub_Not_Selected\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@ERR_INTERNAL_ERROR = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [25 x i8] c"CMD_MSG_SAVE_CERT_FAILED\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsCAGet(%struct.TYPE_17__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_14__, align 4
  %14 = alloca [2 x %struct.TYPE_16__], align 16
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %16, %struct.TYPE_15__** %11, align 8
  store i64 0, i64* %12, align 8
  %17 = getelementptr inbounds [2 x %struct.TYPE_16__], [2 x %struct.TYPE_16__]* %14, i64 0, i64 0
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %18, align 16
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 1
  %20 = load i32, i32* @CmdPrompt, align 4
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to i32*
  store i32* %22, i32** %19, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 2
  %24 = call i32 @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 %24, i32* %23, align 16
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 3
  %26 = load i32, i32* @CmdEvalNotEmpty, align 4
  store i32 %26, i32* %25, align 4
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 4
  store i32 0, i32* %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i64 1
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %29, align 16
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 1
  %31 = load i32, i32* @CmdPrompt, align 4
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i32*
  store i32* %33, i32** %30, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 2
  %35 = call i32 @_UU(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  store i32 %35, i32* %34, align 16
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 3
  %37 = load i32, i32* @CmdEvalNotEmpty, align 4
  store i32 %37, i32* %36, align 4
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 4
  store i32 0, i32* %38, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %4
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  %46 = load i32 (%struct.TYPE_17__*, i32)*, i32 (%struct.TYPE_17__*, i32)** %45, align 8
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %48 = call i32 @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %49 = call i32 %46(%struct.TYPE_17__* %47, i32 %48)
  %50 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %50, i64* %5, align 8
  br label %108

51:                                               ; preds = %4
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = getelementptr inbounds [2 x %struct.TYPE_16__], [2 x %struct.TYPE_16__]* %14, i64 0, i64 0
  %56 = call i32* @ParseCommandList(%struct.TYPE_17__* %52, i8* %53, i32* %54, %struct.TYPE_16__* %55, i32 2)
  store i32* %56, i32** %10, align 8
  %57 = load i32*, i32** %10, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %60, i64* %5, align 8
  br label %108

61:                                               ; preds = %51
  %62 = call i32 @Zero(%struct.TYPE_14__* %13, i32 12)
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @StrCpy(i32 %64, i32 4, i32* %67)
  %69 = load i32*, i32** %10, align 8
  %70 = call i32 @GetParamInt(i32* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  store i32 %70, i32* %71, align 4
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @ScGetCa(i32 %74, %struct.TYPE_14__* %13)
  store i64 %75, i64* %12, align 8
  %76 = load i64, i64* %12, align 8
  %77 = load i64, i64* @ERR_NO_ERROR, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %61
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %81 = load i64, i64* %12, align 8
  %82 = call i32 @CmdPrintError(%struct.TYPE_17__* %80, i64 %81)
  %83 = load i32*, i32** %10, align 8
  %84 = call i32 @FreeParamValueList(i32* %83)
  %85 = load i64, i64* %12, align 8
  store i64 %85, i64* %5, align 8
  br label %108

86:                                               ; preds = %61
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %10, align 8
  %90 = call i32 @GetParamUniStr(i32* %89, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %91 = call i64 @XToFileW(i32 %88, i32 %90, i32 1)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  br label %102

94:                                               ; preds = %86
  %95 = load i64, i64* @ERR_INTERNAL_ERROR, align 8
  store i64 %95, i64* %12, align 8
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 0
  %98 = load i32 (%struct.TYPE_17__*, i32)*, i32 (%struct.TYPE_17__*, i32)** %97, align 8
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %100 = call i32 @_UU(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %101 = call i32 %98(%struct.TYPE_17__* %99, i32 %100)
  br label %102

102:                                              ; preds = %94, %93
  br label %103

103:                                              ; preds = %102
  %104 = call i32 @FreeRpcHubGetCa(%struct.TYPE_14__* %13)
  %105 = load i32*, i32** %10, align 8
  %106 = call i32 @FreeParamValueList(i32* %105)
  %107 = load i64, i64* %12, align 8
  store i64 %107, i64* %5, align 8
  br label %108

108:                                              ; preds = %103, %79, %59, %43
  %109 = load i64, i64* %5, align 8
  ret i64 %109
}

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(%struct.TYPE_17__*, i8*, i32*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32*) #1

declare dso_local i32 @GetParamInt(i32*, i8*) #1

declare dso_local i64 @ScGetCa(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @CmdPrintError(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

declare dso_local i64 @XToFileW(i32, i32, i32) #1

declare dso_local i32 @GetParamUniStr(i32*, i8*) #1

declare dso_local i32 @FreeRpcHubGetCa(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
