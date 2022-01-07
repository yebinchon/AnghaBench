; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsUserPasswordSet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsUserPasswordSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 (%struct.TYPE_17__*, i32*)* }
%struct.TYPE_15__ = type { i32, i32* }
%struct.TYPE_14__ = type { i32*, i32, i32, i32 }
%struct.TYPE_16__ = type { i8*, i32*, i32*, i32*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"[name]\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"CMD_UserCreate_Prompt_NAME\00", align 1
@CmdEvalNotEmpty = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"PASSWORD\00", align 1
@CmdPromptChoosePassword = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"CMD_Hub_Not_Selected\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@AUTHTYPE_PASSWORD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsUserPasswordSet(%struct.TYPE_17__* %0, i8* %1, i32* %2, i8* %3) #0 {
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
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 1
  %21 = load i32, i32* @CmdPrompt, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i32*
  store i32* %23, i32** %20, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 2
  %25 = call i32* @_UU(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32* %25, i32** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 3
  %27 = load i32*, i32** @CmdEvalNotEmpty, align 8
  store i32* %27, i32** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 4
  store i32 0, i32* %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i64 1
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 1
  %32 = load i32, i32* @CmdPromptChoosePassword, align 4
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i32*
  store i32* %34, i32** %31, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 2
  store i32* null, i32** %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 3
  store i32* null, i32** %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 4
  store i32 0, i32* %37, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %4
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 0
  %45 = load i32 (%struct.TYPE_17__*, i32*)*, i32 (%struct.TYPE_17__*, i32*)** %44, align 8
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %47 = call i32* @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %48 = call i32 %45(%struct.TYPE_17__* %46, i32* %47)
  %49 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %49, i64* %5, align 8
  br label %120

50:                                               ; preds = %4
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = getelementptr inbounds [2 x %struct.TYPE_16__], [2 x %struct.TYPE_16__]* %14, i64 0, i64 0
  %55 = call i32* @ParseCommandList(%struct.TYPE_17__* %51, i8* %52, i32* %53, %struct.TYPE_16__* %54, i32 2)
  store i32* %55, i32** %10, align 8
  %56 = load i32*, i32** %10, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %59, i64* %5, align 8
  br label %120

60:                                               ; preds = %50
  %61 = call i32 @Zero(%struct.TYPE_14__* %13, i32 24)
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @StrCpy(i32 %63, i32 4, i32* %66)
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %10, align 8
  %71 = call i32* @GetParamStr(i32* %70, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %72 = call i32 @StrCpy(i32 %69, i32 4, i32* %71)
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @ScGetUser(i32 %75, %struct.TYPE_14__* %13)
  store i64 %76, i64* %12, align 8
  %77 = load i64, i64* %12, align 8
  %78 = load i64, i64* @ERR_NO_ERROR, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %60
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %82 = load i64, i64* %12, align 8
  %83 = call i32 @CmdPrintError(%struct.TYPE_17__* %81, i64 %82)
  %84 = load i32*, i32** %10, align 8
  %85 = call i32 @FreeParamValueList(i32* %84)
  %86 = load i64, i64* %12, align 8
  store i64 %86, i64* %5, align 8
  br label %120

87:                                               ; preds = %60
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @FreeAuthData(i32 %89, i32* %91)
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %10, align 8
  %96 = call i32* @GetParamStr(i32* %95, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %97 = call i32* @NewPasswordAuthData(i32 %94, i32* %96)
  store i32* %97, i32** %15, align 8
  %98 = load i32, i32* @AUTHTYPE_PASSWORD, align 4
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  store i32 %98, i32* %99, align 8
  %100 = load i32*, i32** %15, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  store i32* %100, i32** %101, align 8
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i64 @ScSetUser(i32 %104, %struct.TYPE_14__* %13)
  store i64 %105, i64* %12, align 8
  %106 = load i64, i64* %12, align 8
  %107 = load i64, i64* @ERR_NO_ERROR, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %116

109:                                              ; preds = %87
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %111 = load i64, i64* %12, align 8
  %112 = call i32 @CmdPrintError(%struct.TYPE_17__* %110, i64 %111)
  %113 = load i32*, i32** %10, align 8
  %114 = call i32 @FreeParamValueList(i32* %113)
  %115 = load i64, i64* %12, align 8
  store i64 %115, i64* %5, align 8
  br label %120

116:                                              ; preds = %87
  %117 = call i32 @FreeRpcSetUser(%struct.TYPE_14__* %13)
  %118 = load i32*, i32** %10, align 8
  %119 = call i32 @FreeParamValueList(i32* %118)
  store i64 0, i64* %5, align 8
  br label %120

120:                                              ; preds = %116, %109, %80, %58, %42
  %121 = load i64, i64* %5, align 8
  ret i64 %121
}

declare dso_local i32* @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(%struct.TYPE_17__*, i8*, i32*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32*) #1

declare dso_local i32* @GetParamStr(i32*, i8*) #1

declare dso_local i64 @ScGetUser(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @CmdPrintError(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

declare dso_local i32 @FreeAuthData(i32, i32*) #1

declare dso_local i32* @NewPasswordAuthData(i32, i32*) #1

declare dso_local i64 @ScSetUser(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @FreeRpcSetUser(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
