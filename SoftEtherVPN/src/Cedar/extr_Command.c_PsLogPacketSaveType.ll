; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsLogPacketSaveType.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsLogPacketSaveType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 (%struct.TYPE_19__*, i32)* }
%struct.TYPE_17__ = type { i32, i32* }
%struct.TYPE_16__ = type { %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i64* }
%struct.TYPE_18__ = type { i8*, i32*, i32*, i32, i32 }

@INFINITE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"TYPE\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"CMD_LogPacketSaveType_Prompt_TYPE\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"SAVE\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"CMD_LogPacketSaveType_Prompt_SAVE\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"CMD_Hub_Not_Selected\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [27 x i8] c"CMD_LogEnable_Prompt_Error\00", align 1
@ERR_NO_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsLogPacketSaveType(%struct.TYPE_19__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_16__, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca [2 x %struct.TYPE_18__], align 16
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %18, %struct.TYPE_17__** %11, align 8
  store i64 0, i64* %12, align 8
  %19 = load i64, i64* @INFINITE, align 8
  store i64 %19, i64* %14, align 8
  %20 = load i64, i64* @INFINITE, align 8
  store i64 %20, i64* %15, align 8
  %21 = getelementptr inbounds [2 x %struct.TYPE_18__], [2 x %struct.TYPE_18__]* %16, i64 0, i64 0
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %22, align 16
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 1
  %24 = load i32, i32* @CmdPrompt, align 4
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i32*
  store i32* %26, i32** %23, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 2
  %28 = call i32 @_UU(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i32*
  store i32* %30, i32** %27, align 16
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 3
  store i32 0, i32* %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 4
  store i32 0, i32* %32, align 4
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i64 1
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %34, align 16
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 1
  %36 = load i32, i32* @CmdPrompt, align 4
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to i32*
  store i32* %38, i32** %35, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 2
  %40 = call i32 @_UU(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to i32*
  store i32* %42, i32** %39, align 16
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 3
  store i32 0, i32* %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 4
  store i32 0, i32* %44, align 4
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %4
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 0
  %52 = load i32 (%struct.TYPE_19__*, i32)*, i32 (%struct.TYPE_19__*, i32)** %51, align 8
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %54 = call i32 @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %55 = call i32 %52(%struct.TYPE_19__* %53, i32 %54)
  %56 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %56, i64* %5, align 8
  br label %137

57:                                               ; preds = %4
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = getelementptr inbounds [2 x %struct.TYPE_18__], [2 x %struct.TYPE_18__]* %16, i64 0, i64 0
  %62 = call i32* @ParseCommandList(%struct.TYPE_19__* %58, i8* %59, i32* %60, %struct.TYPE_18__* %61, i32 2)
  store i32* %62, i32** %10, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %66, i64* %5, align 8
  br label %137

67:                                               ; preds = %57
  %68 = load i32*, i32** %10, align 8
  %69 = call i32 @GetParamStr(i32* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %70 = call i64 @StrToPacketLogType(i32 %69)
  store i64 %70, i64* %14, align 8
  %71 = load i32*, i32** %10, align 8
  %72 = call i32 @GetParamStr(i32* %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %73 = call i64 @StrToPacketLogSaveInfoType(i32 %72)
  store i64 %73, i64* %15, align 8
  %74 = load i64, i64* %14, align 8
  %75 = load i64, i64* @INFINITE, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %81, label %77

77:                                               ; preds = %67
  %78 = load i64, i64* %15, align 8
  %79 = load i64, i64* @INFINITE, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %91

81:                                               ; preds = %77, %67
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 0
  %84 = load i32 (%struct.TYPE_19__*, i32)*, i32 (%struct.TYPE_19__*, i32)** %83, align 8
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %86 = call i32 @_UU(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %87 = call i32 %84(%struct.TYPE_19__* %85, i32 %86)
  %88 = load i32*, i32** %10, align 8
  %89 = call i32 @FreeParamValueList(i32* %88)
  %90 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %90, i64* %5, align 8
  br label %137

91:                                               ; preds = %77
  %92 = call i32 @Zero(%struct.TYPE_16__* %13, i32 16)
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @StrCpy(i32 %94, i32 4, i32* %97)
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i64 @ScGetHubLog(i32 %101, %struct.TYPE_16__* %13)
  store i64 %102, i64* %12, align 8
  %103 = load i64, i64* %12, align 8
  %104 = load i64, i64* @ERR_NO_ERROR, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %91
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %108 = load i64, i64* %12, align 8
  %109 = call i32 @CmdPrintError(%struct.TYPE_19__* %107, i64 %108)
  %110 = load i32*, i32** %10, align 8
  %111 = call i32 @FreeParamValueList(i32* %110)
  %112 = load i64, i64* %12, align 8
  store i64 %112, i64* %5, align 8
  br label %137

113:                                              ; preds = %91
  %114 = load i64, i64* %15, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 0
  %117 = load i64*, i64** %116, align 8
  %118 = load i64, i64* %14, align 8
  %119 = getelementptr inbounds i64, i64* %117, i64 %118
  store i64 %114, i64* %119, align 8
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i64 @ScSetHubLog(i32 %122, %struct.TYPE_16__* %13)
  store i64 %123, i64* %12, align 8
  %124 = load i64, i64* %12, align 8
  %125 = load i64, i64* @ERR_NO_ERROR, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %134

127:                                              ; preds = %113
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %129 = load i64, i64* %12, align 8
  %130 = call i32 @CmdPrintError(%struct.TYPE_19__* %128, i64 %129)
  %131 = load i32*, i32** %10, align 8
  %132 = call i32 @FreeParamValueList(i32* %131)
  %133 = load i64, i64* %12, align 8
  store i64 %133, i64* %5, align 8
  br label %137

134:                                              ; preds = %113
  %135 = load i32*, i32** %10, align 8
  %136 = call i32 @FreeParamValueList(i32* %135)
  store i64 0, i64* %5, align 8
  br label %137

137:                                              ; preds = %134, %127, %106, %81, %65, %49
  %138 = load i64, i64* %5, align 8
  ret i64 %138
}

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(%struct.TYPE_19__*, i8*, i32*, %struct.TYPE_18__*, i32) #1

declare dso_local i64 @StrToPacketLogType(i32) #1

declare dso_local i32 @GetParamStr(i32*, i8*) #1

declare dso_local i64 @StrToPacketLogSaveInfoType(i32) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

declare dso_local i32 @Zero(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32*) #1

declare dso_local i64 @ScGetHubLog(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @CmdPrintError(%struct.TYPE_19__*, i64) #1

declare dso_local i64 @ScSetHubLog(i32, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
