; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsUserExpiresSet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsUserExpiresSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 (%struct.TYPE_17__*, i32)* }
%struct.TYPE_15__ = type { i32, i32* }
%struct.TYPE_14__ = type { i64, i32, i32 }
%struct.TYPE_16__ = type { i8*, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"[name]\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"CMD_UserCreate_Prompt_NAME\00", align 1
@CmdEvalNotEmpty = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"EXPIRES\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"CMD_UserExpiresSet_Prompt_EXPIRES\00", align 1
@CmdEvalDateTime = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"CMD_Hub_Not_Selected\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsUserExpiresSet(%struct.TYPE_17__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_14__, align 8
  %14 = alloca i64, align 8
  %15 = alloca [2 x %struct.TYPE_16__], align 16
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %17, %struct.TYPE_15__** %11, align 8
  store i64 0, i64* %12, align 8
  %18 = getelementptr inbounds [2 x %struct.TYPE_16__], [2 x %struct.TYPE_16__]* %15, i64 0, i64 0
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %19, align 16
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 1
  %21 = load i32, i32* @CmdPrompt, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i32*
  store i32* %23, i32** %20, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 2
  %25 = call i32 @_UU(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 %25, i32* %24, align 16
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 3
  %27 = load i32, i32* @CmdEvalNotEmpty, align 4
  store i32 %27, i32* %26, align 4
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 4
  store i32 0, i32* %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i64 1
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %30, align 16
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 1
  %32 = load i32, i32* @CmdPrompt, align 4
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i32*
  store i32* %34, i32** %31, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 2
  %36 = call i32 @_UU(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  store i32 %36, i32* %35, align 16
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 3
  %38 = load i32, i32* @CmdEvalDateTime, align 4
  store i32 %38, i32* %37, align 4
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 4
  store i32 0, i32* %39, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %4
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 0
  %47 = load i32 (%struct.TYPE_17__*, i32)*, i32 (%struct.TYPE_17__*, i32)** %46, align 8
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %49 = call i32 @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %50 = call i32 %47(%struct.TYPE_17__* %48, i32 %49)
  %51 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %51, i64* %5, align 8
  br label %119

52:                                               ; preds = %4
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = getelementptr inbounds [2 x %struct.TYPE_16__], [2 x %struct.TYPE_16__]* %15, i64 0, i64 0
  %57 = call i32* @ParseCommandList(%struct.TYPE_17__* %53, i8* %54, i32* %55, %struct.TYPE_16__* %56, i32 2)
  store i32* %57, i32** %10, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %61, i64* %5, align 8
  br label %119

62:                                               ; preds = %52
  %63 = call i32 @Zero(%struct.TYPE_14__* %13, i32 16)
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @StrCpy(i32 %65, i32 4, i32* %68)
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = call i32* @GetParamStr(i32* %72, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %74 = call i32 @StrCpy(i32 %71, i32 4, i32* %73)
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @ScGetUser(i32 %77, %struct.TYPE_14__* %13)
  store i64 %78, i64* %12, align 8
  %79 = load i64, i64* %12, align 8
  %80 = load i64, i64* @ERR_NO_ERROR, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %62
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %84 = load i64, i64* %12, align 8
  %85 = call i32 @CmdPrintError(%struct.TYPE_17__* %83, i64 %84)
  %86 = load i32*, i32** %10, align 8
  %87 = call i32 @FreeParamValueList(i32* %86)
  %88 = load i64, i64* %12, align 8
  store i64 %88, i64* %5, align 8
  br label %119

89:                                               ; preds = %62
  %90 = load i32*, i32** %10, align 8
  %91 = call i32* @GetParamStr(i32* %90, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %92 = call i64 @StrToDateTime64(i32* %91)
  store i64 %92, i64* %14, align 8
  %93 = load i64, i64* %14, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %89
  %96 = load i64, i64* %14, align 8
  %97 = call i64 @LocalToSystem64(i64 %96)
  store i64 %97, i64* %14, align 8
  br label %98

98:                                               ; preds = %95, %89
  %99 = load i64, i64* %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  store i64 %99, i64* %100, align 8
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i64 @ScSetUser(i32 %103, %struct.TYPE_14__* %13)
  store i64 %104, i64* %12, align 8
  %105 = load i64, i64* %12, align 8
  %106 = load i64, i64* @ERR_NO_ERROR, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %98
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %110 = load i64, i64* %12, align 8
  %111 = call i32 @CmdPrintError(%struct.TYPE_17__* %109, i64 %110)
  %112 = load i32*, i32** %10, align 8
  %113 = call i32 @FreeParamValueList(i32* %112)
  %114 = load i64, i64* %12, align 8
  store i64 %114, i64* %5, align 8
  br label %119

115:                                              ; preds = %98
  %116 = call i32 @FreeRpcSetUser(%struct.TYPE_14__* %13)
  %117 = load i32*, i32** %10, align 8
  %118 = call i32 @FreeParamValueList(i32* %117)
  store i64 0, i64* %5, align 8
  br label %119

119:                                              ; preds = %115, %108, %82, %60, %44
  %120 = load i64, i64* %5, align 8
  ret i64 %120
}

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(%struct.TYPE_17__*, i8*, i32*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32*) #1

declare dso_local i32* @GetParamStr(i32*, i8*) #1

declare dso_local i64 @ScGetUser(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @CmdPrintError(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

declare dso_local i64 @StrToDateTime64(i32*) #1

declare dso_local i64 @LocalToSystem64(i64) #1

declare dso_local i64 @ScSetUser(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @FreeRpcSetUser(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
