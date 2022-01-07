; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsLogSwitchSet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsLogSwitchSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 (%struct.TYPE_20__*, i32)* }
%struct.TYPE_18__ = type { i32, i32* }
%struct.TYPE_17__ = type { %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { i64, i64 }
%struct.TYPE_19__ = type { i8*, i32*, i32*, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"[security|packet]\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"CMD_LogEnable_Prompt\00", align 1
@CmdEvalNotEmpty = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"SWITCH\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"CMD_LogSwitchSet_Prompt\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"CMD_Hub_Not_Selected\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"CMD_LogEnable_Prompt_Error\00", align 1
@INFINITE = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsLogSwitchSet(%struct.TYPE_20__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_17__, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca [2 x %struct.TYPE_19__], align 16
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %19, %struct.TYPE_18__** %11, align 8
  store i64 0, i64* %12, align 8
  store i32 0, i32* %14, align 4
  store i64 0, i64* %16, align 8
  %20 = getelementptr inbounds [2 x %struct.TYPE_19__], [2 x %struct.TYPE_19__]* %17, i64 0, i64 0
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %21, align 16
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 1
  %23 = load i32, i32* @CmdPrompt, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i32*
  store i32* %25, i32** %22, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 2
  %27 = call i32 @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i32*
  store i32* %29, i32** %26, align 16
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 3
  %31 = load i32*, i32** @CmdEvalNotEmpty, align 8
  %32 = ptrtoint i32* %31 to i32
  store i32 %32, i32* %30, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 4
  store i32 0, i32* %33, align 4
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i64 1
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %35, align 16
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 1
  %37 = load i32, i32* @CmdPrompt, align 4
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i32*
  store i32* %39, i32** %36, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 2
  %41 = call i32 @_UU(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i32*
  store i32* %43, i32** %40, align 16
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 3
  store i32 0, i32* %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 4
  store i32 0, i32* %45, align 4
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %4
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 0
  %53 = load i32 (%struct.TYPE_20__*, i32)*, i32 (%struct.TYPE_20__*, i32)** %52, align 8
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %55 = call i32 @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %56 = call i32 %53(%struct.TYPE_20__* %54, i32 %55)
  %57 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %57, i64* %5, align 8
  br label %158

58:                                               ; preds = %4
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = load i32*, i32** %8, align 8
  %62 = getelementptr inbounds [2 x %struct.TYPE_19__], [2 x %struct.TYPE_19__]* %17, i64 0, i64 0
  %63 = call i32* @ParseCommandList(%struct.TYPE_20__* %59, i8* %60, i32* %61, %struct.TYPE_19__* %62, i32 2)
  store i32* %63, i32** %10, align 8
  %64 = load i32*, i32** %10, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %58
  %67 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %67, i64* %5, align 8
  br label %158

68:                                               ; preds = %58
  %69 = load i32*, i32** %10, align 8
  %70 = call i8* @GetParamStr(i32* %69, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i8* %70, i8** %15, align 8
  %71 = load i8*, i8** %15, align 8
  %72 = call i32 @StartWith(i8* %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  store i32 1, i32* %14, align 4
  br label %90

75:                                               ; preds = %68
  %76 = load i8*, i8** %15, align 8
  %77 = call i32 @StartWith(i8* %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %75
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 0
  %82 = load i32 (%struct.TYPE_20__*, i32)*, i32 (%struct.TYPE_20__*, i32)** %81, align 8
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %84 = call i32 @_UU(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %85 = call i32 %82(%struct.TYPE_20__* %83, i32 %84)
  %86 = load i32*, i32** %10, align 8
  %87 = call i32 @FreeParamValueList(i32* %86)
  %88 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %88, i64* %5, align 8
  br label %158

89:                                               ; preds = %75
  br label %90

90:                                               ; preds = %89, %74
  %91 = load i32*, i32** %10, align 8
  %92 = call i8* @GetParamStr(i32* %91, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %93 = call i64 @StrToLogSwitchType(i8* %92)
  store i64 %93, i64* %16, align 8
  %94 = load i64, i64* %16, align 8
  %95 = load i64, i64* @INFINITE, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %107

97:                                               ; preds = %90
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 0
  %100 = load i32 (%struct.TYPE_20__*, i32)*, i32 (%struct.TYPE_20__*, i32)** %99, align 8
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %102 = call i32 @_UU(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %103 = call i32 %100(%struct.TYPE_20__* %101, i32 %102)
  %104 = load i32*, i32** %10, align 8
  %105 = call i32 @FreeParamValueList(i32* %104)
  %106 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %106, i64* %5, align 8
  br label %158

107:                                              ; preds = %90
  %108 = call i32 @Zero(%struct.TYPE_17__* %13, i32 24)
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @StrCpy(i32 %110, i32 4, i32* %113)
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i64 @ScGetHubLog(i32 %117, %struct.TYPE_17__* %13)
  store i64 %118, i64* %12, align 8
  %119 = load i64, i64* %12, align 8
  %120 = load i64, i64* @ERR_NO_ERROR, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %129

122:                                              ; preds = %107
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %124 = load i64, i64* %12, align 8
  %125 = call i32 @CmdPrintError(%struct.TYPE_20__* %123, i64 %124)
  %126 = load i32*, i32** %10, align 8
  %127 = call i32 @FreeParamValueList(i32* %126)
  %128 = load i64, i64* %12, align 8
  store i64 %128, i64* %5, align 8
  br label %158

129:                                              ; preds = %107
  %130 = load i32, i32* %14, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %129
  %133 = load i64, i64* %16, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 1
  store i64 %133, i64* %135, align 8
  br label %140

136:                                              ; preds = %129
  %137 = load i64, i64* %16, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 0
  store i64 %137, i64* %139, align 8
  br label %140

140:                                              ; preds = %136, %132
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i64 @ScSetHubLog(i32 %143, %struct.TYPE_17__* %13)
  store i64 %144, i64* %12, align 8
  %145 = load i64, i64* %12, align 8
  %146 = load i64, i64* @ERR_NO_ERROR, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %148, label %155

148:                                              ; preds = %140
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %150 = load i64, i64* %12, align 8
  %151 = call i32 @CmdPrintError(%struct.TYPE_20__* %149, i64 %150)
  %152 = load i32*, i32** %10, align 8
  %153 = call i32 @FreeParamValueList(i32* %152)
  %154 = load i64, i64* %12, align 8
  store i64 %154, i64* %5, align 8
  br label %158

155:                                              ; preds = %140
  %156 = load i32*, i32** %10, align 8
  %157 = call i32 @FreeParamValueList(i32* %156)
  store i64 0, i64* %5, align 8
  br label %158

158:                                              ; preds = %155, %148, %122, %97, %79, %66, %50
  %159 = load i64, i64* %5, align 8
  ret i64 %159
}

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(%struct.TYPE_20__*, i8*, i32*, %struct.TYPE_19__*, i32) #1

declare dso_local i8* @GetParamStr(i32*, i8*) #1

declare dso_local i32 @StartWith(i8*, i8*) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

declare dso_local i64 @StrToLogSwitchType(i8*) #1

declare dso_local i32 @Zero(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32*) #1

declare dso_local i64 @ScGetHubLog(i32, %struct.TYPE_17__*) #1

declare dso_local i32 @CmdPrintError(%struct.TYPE_20__*, i64) #1

declare dso_local i64 @ScSetHubLog(i32, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
