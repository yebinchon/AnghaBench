; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsLogDisable.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsLogDisable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 (%struct.TYPE_19__*, i32)* }
%struct.TYPE_17__ = type { i32, i32* }
%struct.TYPE_16__ = type { %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_18__ = type { i8*, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"[security|packet]\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"CMD_LogEnable_Prompt\00", align 1
@CmdEvalNotEmpty = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"CMD_Hub_Not_Selected\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"CMD_LogEnable_Prompt_Error\00", align 1
@ERR_NO_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsLogDisable(%struct.TYPE_19__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_16__, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca [1 x %struct.TYPE_18__], align 16
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %18, %struct.TYPE_17__** %11, align 8
  store i64 0, i64* %12, align 8
  store i32 0, i32* %14, align 4
  %19 = getelementptr inbounds [1 x %struct.TYPE_18__], [1 x %struct.TYPE_18__]* %16, i64 0, i64 0
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %20, align 16
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 1
  %22 = load i32, i32* @CmdPrompt, align 4
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i32*
  store i32* %24, i32** %21, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 2
  %26 = call i32 @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 %26, i32* %25, align 16
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 3
  %28 = load i32, i32* @CmdEvalNotEmpty, align 4
  store i32 %28, i32* %27, align 4
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 4
  store i32 0, i32* %29, align 8
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %4
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 0
  %37 = load i32 (%struct.TYPE_19__*, i32)*, i32 (%struct.TYPE_19__*, i32)** %36, align 8
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %39 = call i32 @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %40 = call i32 %37(%struct.TYPE_19__* %38, i32 %39)
  %41 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %41, i64* %5, align 8
  br label %123

42:                                               ; preds = %4
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = getelementptr inbounds [1 x %struct.TYPE_18__], [1 x %struct.TYPE_18__]* %16, i64 0, i64 0
  %47 = call i32* @ParseCommandList(%struct.TYPE_19__* %43, i8* %44, i32* %45, %struct.TYPE_18__* %46, i32 1)
  store i32* %47, i32** %10, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %51, i64* %5, align 8
  br label %123

52:                                               ; preds = %42
  %53 = load i32*, i32** %10, align 8
  %54 = call i8* @GetParamStr(i32* %53, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i8* %54, i8** %15, align 8
  %55 = load i8*, i8** %15, align 8
  %56 = call i32 @StartWith(i8* %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i32 1, i32* %14, align 4
  br label %74

59:                                               ; preds = %52
  %60 = load i8*, i8** %15, align 8
  %61 = call i32 @StartWith(i8* %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %59
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 0
  %66 = load i32 (%struct.TYPE_19__*, i32)*, i32 (%struct.TYPE_19__*, i32)** %65, align 8
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %68 = call i32 @_UU(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %69 = call i32 %66(%struct.TYPE_19__* %67, i32 %68)
  %70 = load i32*, i32** %10, align 8
  %71 = call i32 @FreeParamValueList(i32* %70)
  %72 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %72, i64* %5, align 8
  br label %123

73:                                               ; preds = %59
  br label %74

74:                                               ; preds = %73, %58
  %75 = call i32 @Zero(%struct.TYPE_16__* %13, i32 12)
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @StrCpy(i32 %77, i32 4, i32* %80)
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i64 @ScGetHubLog(i32 %84, %struct.TYPE_16__* %13)
  store i64 %85, i64* %12, align 8
  %86 = load i64, i64* %12, align 8
  %87 = load i64, i64* @ERR_NO_ERROR, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %74
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %91 = load i64, i64* %12, align 8
  %92 = call i32 @CmdPrintError(%struct.TYPE_19__* %90, i64 %91)
  %93 = load i32*, i32** %10, align 8
  %94 = call i32 @FreeParamValueList(i32* %93)
  %95 = load i64, i64* %12, align 8
  store i64 %95, i64* %5, align 8
  br label %123

96:                                               ; preds = %74
  %97 = load i32, i32* %14, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 0
  store i32 0, i32* %101, align 4
  br label %105

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 1
  store i32 0, i32* %104, align 4
  br label %105

105:                                              ; preds = %102, %99
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i64 @ScSetHubLog(i32 %108, %struct.TYPE_16__* %13)
  store i64 %109, i64* %12, align 8
  %110 = load i64, i64* %12, align 8
  %111 = load i64, i64* @ERR_NO_ERROR, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %120

113:                                              ; preds = %105
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %115 = load i64, i64* %12, align 8
  %116 = call i32 @CmdPrintError(%struct.TYPE_19__* %114, i64 %115)
  %117 = load i32*, i32** %10, align 8
  %118 = call i32 @FreeParamValueList(i32* %117)
  %119 = load i64, i64* %12, align 8
  store i64 %119, i64* %5, align 8
  br label %123

120:                                              ; preds = %105
  %121 = load i32*, i32** %10, align 8
  %122 = call i32 @FreeParamValueList(i32* %121)
  store i64 0, i64* %5, align 8
  br label %123

123:                                              ; preds = %120, %113, %89, %63, %50, %34
  %124 = load i64, i64* %5, align 8
  ret i64 %124
}

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(%struct.TYPE_19__*, i8*, i32*, %struct.TYPE_18__*, i32) #1

declare dso_local i8* @GetParamStr(i32*, i8*) #1

declare dso_local i32 @StartWith(i8*, i8*) #1

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
