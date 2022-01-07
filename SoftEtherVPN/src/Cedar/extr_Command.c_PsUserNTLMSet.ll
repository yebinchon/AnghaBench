; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsUserNTLMSet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsUserNTLMSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 (%struct.TYPE_17__*, i32)* }
%struct.TYPE_15__ = type { i32, i32* }
%struct.TYPE_14__ = type { i32*, i32, i32, i32 }
%struct.TYPE_16__ = type { i8*, i32*, i32*, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"[name]\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"CMD_UserCreate_Prompt_NAME\00", align 1
@CmdEvalNotEmpty = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"ALIAS\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"CMD_UserRadiusSet_Prompt_ALIAS\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"CMD_Hub_Not_Selected\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@AUTHTYPE_NT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsUserNTLMSet(%struct.TYPE_17__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_14__, align 8
  %14 = alloca [2 x %struct.TYPE_16__], align 16
  %15 = alloca i32*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %17, %struct.TYPE_15__** %11, align 8
  store i64 0, i64* %12, align 8
  %18 = getelementptr inbounds [2 x %struct.TYPE_16__], [2 x %struct.TYPE_16__]* %14, i64 0, i64 0
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %19, align 16
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 1
  %21 = load i32, i32* @CmdPrompt, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i32*
  store i32* %23, i32** %20, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 2
  %25 = call i32 @_UU(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to i32*
  store i32* %27, i32** %24, align 16
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 3
  %29 = load i32*, i32** @CmdEvalNotEmpty, align 8
  %30 = ptrtoint i32* %29 to i32
  store i32 %30, i32* %28, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 4
  store i32 0, i32* %31, align 4
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i64 1
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %33, align 16
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 1
  %35 = load i32, i32* @CmdPrompt, align 4
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to i32*
  store i32* %37, i32** %34, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 2
  %39 = call i32 @_UU(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i32*
  store i32* %41, i32** %38, align 16
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 3
  store i32 0, i32* %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 4
  store i32 0, i32* %43, align 4
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %56

48:                                               ; preds = %4
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = load i32 (%struct.TYPE_17__*, i32)*, i32 (%struct.TYPE_17__*, i32)** %50, align 8
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %53 = call i32 @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %54 = call i32 %51(%struct.TYPE_17__* %52, i32 %53)
  %55 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %55, i64* %5, align 8
  br label %124

56:                                               ; preds = %4
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = load i32*, i32** %8, align 8
  %60 = getelementptr inbounds [2 x %struct.TYPE_16__], [2 x %struct.TYPE_16__]* %14, i64 0, i64 0
  %61 = call i32* @ParseCommandList(%struct.TYPE_17__* %57, i8* %58, i32* %59, %struct.TYPE_16__* %60, i32 2)
  store i32* %61, i32** %10, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %65, i64* %5, align 8
  br label %124

66:                                               ; preds = %56
  %67 = call i32 @Zero(%struct.TYPE_14__* %13, i32 24)
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @StrCpy(i32 %69, i32 4, i32* %72)
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %10, align 8
  %77 = call i32* @GetParamStr(i32* %76, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %78 = call i32 @StrCpy(i32 %75, i32 4, i32* %77)
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i64 @ScGetUser(i32 %81, %struct.TYPE_14__* %13)
  store i64 %82, i64* %12, align 8
  %83 = load i64, i64* %12, align 8
  %84 = load i64, i64* @ERR_NO_ERROR, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %66
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %88 = load i64, i64* %12, align 8
  %89 = call i32 @CmdPrintError(%struct.TYPE_17__* %87, i64 %88)
  %90 = load i32*, i32** %10, align 8
  %91 = call i32 @FreeParamValueList(i32* %90)
  %92 = load i64, i64* %12, align 8
  store i64 %92, i64* %5, align 8
  br label %124

93:                                               ; preds = %66
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @FreeAuthData(i32 %95, i32* %97)
  %99 = load i32*, i32** %10, align 8
  %100 = call i32 @GetParamUniStr(i32* %99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %101 = call i32* @NewRadiusAuthData(i32 %100)
  store i32* %101, i32** %15, align 8
  %102 = load i32, i32* @AUTHTYPE_NT, align 4
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  store i32 %102, i32* %103, align 8
  %104 = load i32*, i32** %15, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  store i32* %104, i32** %105, align 8
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i64 @ScSetUser(i32 %108, %struct.TYPE_14__* %13)
  store i64 %109, i64* %12, align 8
  %110 = load i64, i64* %12, align 8
  %111 = load i64, i64* @ERR_NO_ERROR, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %120

113:                                              ; preds = %93
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %115 = load i64, i64* %12, align 8
  %116 = call i32 @CmdPrintError(%struct.TYPE_17__* %114, i64 %115)
  %117 = load i32*, i32** %10, align 8
  %118 = call i32 @FreeParamValueList(i32* %117)
  %119 = load i64, i64* %12, align 8
  store i64 %119, i64* %5, align 8
  br label %124

120:                                              ; preds = %93
  %121 = call i32 @FreeRpcSetUser(%struct.TYPE_14__* %13)
  %122 = load i32*, i32** %10, align 8
  %123 = call i32 @FreeParamValueList(i32* %122)
  store i64 0, i64* %5, align 8
  br label %124

124:                                              ; preds = %120, %113, %86, %64, %48
  %125 = load i64, i64* %5, align 8
  ret i64 %125
}

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(%struct.TYPE_17__*, i8*, i32*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32*) #1

declare dso_local i32* @GetParamStr(i32*, i8*) #1

declare dso_local i64 @ScGetUser(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @CmdPrintError(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

declare dso_local i32 @FreeAuthData(i32, i32*) #1

declare dso_local i32* @NewRadiusAuthData(i32) #1

declare dso_local i32 @GetParamUniStr(i32*, i8*) #1

declare dso_local i64 @ScSetUser(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @FreeRpcSetUser(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
