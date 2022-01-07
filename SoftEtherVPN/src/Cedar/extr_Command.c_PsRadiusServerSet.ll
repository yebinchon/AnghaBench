; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsRadiusServerSet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsRadiusServerSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 (%struct.TYPE_16__*, i32)* }
%struct.TYPE_14__ = type { i8*, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i64, i32 }
%struct.TYPE_17__ = type { i8*, i32, i32 }
%struct.TYPE_15__ = type { i8*, %struct.TYPE_17__*, i32*, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"CMD_RadiusServerSet_EVAL_NUMINTERVAL\00", align 1
@RADIUS_RETRY_INTERVAL = common dso_local global i32 0, align 4
@RADIUS_RETRY_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"[server_name:port]\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"CMD_RadiusServerSet_Prompt_Host\00", align 1
@CmdEvalNotEmpty = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"SECRET\00", align 1
@CmdPromptChoosePassword = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"CMD_RadiusServerSet_Prompt_Secret\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"RETRY_INTERVAL\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"CMD_RadiusServerSet_Prompt_RetryInterval\00", align 1
@CmdEvalMinMax = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [21 x i8] c"CMD_Hub_Not_Selected\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsRadiusServerSet(%struct.TYPE_16__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_13__, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_17__, align 8
  %17 = alloca [3 x %struct.TYPE_15__], align 16
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %19, %struct.TYPE_14__** %11, align 8
  store i64 0, i64* %12, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8** %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 1
  %22 = load i32, i32* @RADIUS_RETRY_INTERVAL, align 4
  store i32 %22, i32* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 2
  %24 = load i32, i32* @RADIUS_RETRY_TIMEOUT, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds [3 x %struct.TYPE_15__], [3 x %struct.TYPE_15__]* %17, i64 0, i64 0
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8** %26, align 16
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 1
  %28 = load i32, i32* @CmdPrompt, align 4
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %30, %struct.TYPE_17__** %27, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 2
  %32 = call i32 @_UU(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i32*
  store i32* %34, i32** %31, align 16
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 3
  %36 = load i32*, i32** @CmdEvalNotEmpty, align 8
  %37 = ptrtoint i32* %36 to i32
  store i32 %37, i32* %35, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 4
  store i32 0, i32* %38, align 4
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i64 1
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %40, align 16
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 1
  %42 = load i32, i32* @CmdPromptChoosePassword, align 4
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %44, %struct.TYPE_17__** %41, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 2
  %46 = call i32 @_UU(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to i32*
  store i32* %48, i32** %45, align 16
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 3
  store i32 0, i32* %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 4
  store i32 0, i32* %50, align 4
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i64 1
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8** %52, align 16
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 1
  %54 = load i32, i32* @CmdPrompt, align 4
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %56, %struct.TYPE_17__** %53, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 2
  %58 = call i32 @_UU(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to i32*
  store i32* %60, i32** %57, align 16
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 3
  %62 = load i32*, i32** @CmdEvalMinMax, align 8
  %63 = ptrtoint i32* %62 to i32
  store i32 %63, i32* %61, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 4
  %65 = ptrtoint %struct.TYPE_17__* %16 to i32
  store i32 %65, i32* %64, align 4
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = icmp eq i8* %68, null
  br i1 %69, label %70, label %78

70:                                               ; preds = %4
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  %73 = load i32 (%struct.TYPE_16__*, i32)*, i32 (%struct.TYPE_16__*, i32)** %72, align 8
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %75 = call i32 @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %76 = call i32 %73(%struct.TYPE_16__* %74, i32 %75)
  %77 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %77, i64* %5, align 8
  br label %135

78:                                               ; preds = %4
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %80 = load i8*, i8** %7, align 8
  %81 = load i32*, i32** %8, align 8
  %82 = getelementptr inbounds [3 x %struct.TYPE_15__], [3 x %struct.TYPE_15__]* %17, i64 0, i64 0
  %83 = call i32* @ParseCommandList(%struct.TYPE_16__* %79, i8* %80, i32* %81, %struct.TYPE_15__* %82, i32 3)
  store i32* %83, i32** %10, align 8
  %84 = load i32*, i32** %10, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %78
  %87 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %87, i64* %5, align 8
  br label %135

88:                                               ; preds = %78
  %89 = load i32*, i32** %10, align 8
  %90 = call i8* @GetParamStr(i32* %89, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %91 = call i64 @ParseHostPort(i8* %90, i8** %14, i64* %15, i32 1812)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %132

93:                                               ; preds = %88
  %94 = call i32 @Zero(%struct.TYPE_13__* %13, i32 32)
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @StrCpy(i32 %96, i32 4, i8* %99)
  %101 = load i64, i64* %15, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 3
  store i64 %101, i64* %102, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load i8*, i8** %14, align 8
  %106 = call i32 @StrCpy(i32 %104, i32 4, i8* %105)
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32*, i32** %10, align 8
  %110 = call i8* @GetParamStr(i32* %109, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %111 = call i32 @StrCpy(i32 %108, i32 4, i8* %110)
  %112 = load i32*, i32** %10, align 8
  %113 = call i32 @GetParamInt(i32* %112, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  store i32 %113, i32* %114, align 8
  %115 = load i8*, i8** %14, align 8
  %116 = call i32 @Free(i8* %115)
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = call i64 @ScSetHubRadius(i32 %119, %struct.TYPE_13__* %13)
  store i64 %120, i64* %12, align 8
  %121 = load i64, i64* %12, align 8
  %122 = load i64, i64* @ERR_NO_ERROR, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %131

124:                                              ; preds = %93
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %126 = load i64, i64* %12, align 8
  %127 = call i32 @CmdPrintError(%struct.TYPE_16__* %125, i64 %126)
  %128 = load i32*, i32** %10, align 8
  %129 = call i32 @FreeParamValueList(i32* %128)
  %130 = load i64, i64* %12, align 8
  store i64 %130, i64* %5, align 8
  br label %135

131:                                              ; preds = %93
  br label %132

132:                                              ; preds = %131, %88
  %133 = load i32*, i32** %10, align 8
  %134 = call i32 @FreeParamValueList(i32* %133)
  store i64 0, i64* %5, align 8
  br label %135

135:                                              ; preds = %132, %124, %86, %70
  %136 = load i64, i64* %5, align 8
  ret i64 %136
}

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(%struct.TYPE_16__*, i8*, i32*, %struct.TYPE_15__*, i32) #1

declare dso_local i64 @ParseHostPort(i8*, i8**, i64*, i32) #1

declare dso_local i8* @GetParamStr(i32*, i8*) #1

declare dso_local i32 @Zero(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i8*) #1

declare dso_local i32 @GetParamInt(i32*, i8*) #1

declare dso_local i32 @Free(i8*) #1

declare dso_local i64 @ScSetHubRadius(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @CmdPrintError(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
