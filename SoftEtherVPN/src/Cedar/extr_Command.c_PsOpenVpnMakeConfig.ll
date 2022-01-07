; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsOpenVpnMakeConfig.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsOpenVpnMakeConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 (%struct.TYPE_16__*, i32*)* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i8*, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"[ZIP_FileName]\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"CMD_OpenVpnMakeConfig_Prompt_ZIP\00", align 1
@CmdEvalNotEmpty = common dso_local global i32 0, align 4
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@MAX_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i32] [i32 46, i32 122, i32 105, i32 112, i32 0], align 4
@ERR_INTERNAL_ERROR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"CMD_OpenVpnMakeConfig_ERROR\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"CMD_OpenVpnMakeConfig_OK\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsOpenVpnMakeConfig(%struct.TYPE_16__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_13__, align 4
  %14 = alloca [1 x %struct.TYPE_15__], align 16
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %19, %struct.TYPE_14__** %11, align 8
  store i64 0, i64* %12, align 8
  %20 = getelementptr inbounds [1 x %struct.TYPE_15__], [1 x %struct.TYPE_15__]* %14, i64 0, i64 0
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %21, align 16
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 1
  %23 = load i32, i32* @CmdPrompt, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i32*
  store i32* %25, i32** %22, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 2
  %27 = call i32 @_UU(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store i32 %27, i32* %26, align 16
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 3
  %29 = load i32, i32* @CmdEvalNotEmpty, align 4
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 4
  store i32 0, i32* %30, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = getelementptr inbounds [1 x %struct.TYPE_15__], [1 x %struct.TYPE_15__]* %14, i64 0, i64 0
  %35 = call i32* @ParseCommandList(%struct.TYPE_16__* %31, i8* %32, i32* %33, %struct.TYPE_15__* %34, i32 1)
  store i32* %35, i32** %10, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %4
  %39 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %39, i64* %5, align 8
  br label %103

40:                                               ; preds = %4
  %41 = call i32 @Zero(%struct.TYPE_13__* %13, i32 4)
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @ScMakeOpenVpnConfigFile(i32 %44, %struct.TYPE_13__* %13)
  store i64 %45, i64* %12, align 8
  %46 = load i64, i64* %12, align 8
  %47 = load i64, i64* @ERR_NO_ERROR, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %40
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %51 = load i64, i64* %12, align 8
  %52 = call i32 @CmdPrintError(%struct.TYPE_16__* %50, i64 %51)
  %53 = load i32*, i32** %10, align 8
  %54 = call i32 @FreeParamValueList(i32* %53)
  %55 = load i64, i64* %12, align 8
  store i64 %55, i64* %5, align 8
  br label %103

56:                                               ; preds = %40
  %57 = load i32, i32* @MAX_SIZE, align 4
  %58 = zext i32 %57 to i64
  %59 = call i8* @llvm.stacksave()
  store i8* %59, i8** %15, align 8
  %60 = alloca i32, i64 %58, align 16
  store i64 %58, i64* %16, align 8
  %61 = load i32, i32* @MAX_SIZE, align 4
  %62 = zext i32 %61 to i64
  %63 = alloca i32, i64 %62, align 16
  store i64 %62, i64* %17, align 8
  %64 = mul nuw i64 4, %58
  %65 = trunc i64 %64 to i32
  %66 = load i32*, i32** %10, align 8
  %67 = call i32 @GetParamUniStr(i32* %66, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %68 = call i32 @UniStrCpy(i32* %60, i32 %65, i32 %67)
  %69 = call i32 @UniEndWith(i32* %60, i8* bitcast ([5 x i32]* @.str.2 to i8*))
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %56
  %72 = mul nuw i64 4, %58
  %73 = trunc i64 %72 to i32
  %74 = call i32 @UniStrCat(i32* %60, i32 %73, i8* bitcast ([5 x i32]* @.str.2 to i8*))
  br label %75

75:                                               ; preds = %71, %56
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @DumpBufW(i32 %77, i32* %60)
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load i64, i64* @ERR_INTERNAL_ERROR, align 8
  store i64 %81, i64* %12, align 8
  %82 = mul nuw i64 4, %62
  %83 = trunc i64 %82 to i32
  %84 = call i32 @_UU(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %85 = call i32 @UniFormat(i32* %63, i32 %83, i32 %84, i32* %60)
  br label %91

86:                                               ; preds = %75
  %87 = mul nuw i64 4, %62
  %88 = trunc i64 %87 to i32
  %89 = call i32 @_UU(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %90 = call i32 @UniFormat(i32* %63, i32 %88, i32 %89, i32* %60)
  br label %91

91:                                               ; preds = %86, %80
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 0
  %94 = load i32 (%struct.TYPE_16__*, i32*)*, i32 (%struct.TYPE_16__*, i32*)** %93, align 8
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %96 = call i32 %94(%struct.TYPE_16__* %95, i32* %63)
  %97 = call i32 @FreeRpcReadLogFile(%struct.TYPE_13__* %13)
  %98 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %98)
  br label %99

99:                                               ; preds = %91
  %100 = load i32*, i32** %10, align 8
  %101 = call i32 @FreeParamValueList(i32* %100)
  %102 = load i64, i64* %12, align 8
  store i64 %102, i64* %5, align 8
  br label %103

103:                                              ; preds = %99, %49, %38
  %104 = load i64, i64* %5, align 8
  ret i64 %104
}

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(%struct.TYPE_16__*, i8*, i32*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @ScMakeOpenVpnConfigFile(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @CmdPrintError(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @UniStrCpy(i32*, i32, i32) #1

declare dso_local i32 @GetParamUniStr(i32*, i8*) #1

declare dso_local i32 @UniEndWith(i32*, i8*) #1

declare dso_local i32 @UniStrCat(i32*, i32, i8*) #1

declare dso_local i32 @DumpBufW(i32, i32*) #1

declare dso_local i32 @UniFormat(i32*, i32, i32, i32*) #1

declare dso_local i32 @FreeRpcReadLogFile(%struct.TYPE_13__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
