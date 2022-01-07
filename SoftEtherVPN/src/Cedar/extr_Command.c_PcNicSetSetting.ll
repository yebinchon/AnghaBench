; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PcNicSetSetting.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PcNicSetSetting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i8*, i32*, i32, i32, i32 }

@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"[name]\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"CMD_NicCreate_PROMPT_NAME\00", align 1
@CmdEvalNotEmpty = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"MAC\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"CMD_NicSetSetting_PROMPT_MAC\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PcNicSetSetting(i32* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_13__, align 4
  %14 = alloca [6 x %struct.TYPE_13__], align 16
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca [2 x %struct.TYPE_15__], align 16
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %18, %struct.TYPE_14__** %11, align 8
  %19 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %19, i64* %12, align 8
  %20 = getelementptr inbounds [2 x %struct.TYPE_15__], [2 x %struct.TYPE_15__]* %16, i64 0, i64 0
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %21, align 16
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 1
  %23 = load i32, i32* @CmdPrompt, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i32*
  store i32* %25, i32** %22, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 2
  %27 = call i32 @_UU(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 %27, i32* %26, align 16
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 3
  %29 = load i32, i32* @CmdEvalNotEmpty, align 4
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 4
  store i32 0, i32* %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i64 1
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %32, align 16
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 1
  %34 = load i32, i32* @CmdPrompt, align 4
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i32*
  store i32* %36, i32** %33, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 2
  %38 = call i32 @_UU(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  store i32 %38, i32* %37, align 16
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 3
  %40 = load i32, i32* @CmdEvalNotEmpty, align 4
  store i32 %40, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 4
  store i32 0, i32* %41, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = getelementptr inbounds [2 x %struct.TYPE_15__], [2 x %struct.TYPE_15__]* %16, i64 0, i64 0
  %46 = call i32* @ParseCommandList(i32* %42, i8* %43, i32* %44, %struct.TYPE_15__* %45, i32 2)
  store i32* %46, i32** %10, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %4
  %50 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %50, i64* %5, align 8
  br label %115

51:                                               ; preds = %4
  %52 = getelementptr inbounds [6 x %struct.TYPE_13__], [6 x %struct.TYPE_13__]* %14, i64 0, i64 0
  %53 = call i32 @Zero(%struct.TYPE_13__* %52, i32 48)
  %54 = load i32*, i32** %10, align 8
  %55 = call i32 @GetParamStr(i32* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %56 = call %struct.TYPE_16__* @StrToBin(i32 %55)
  store %struct.TYPE_16__* %56, %struct.TYPE_16__** %15, align 8
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %58 = icmp ne %struct.TYPE_16__* %57, null
  br i1 %58, label %59, label %70

59:                                               ; preds = %51
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 6
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = getelementptr inbounds [6 x %struct.TYPE_13__], [6 x %struct.TYPE_13__]* %14, i64 0, i64 0
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @Copy(%struct.TYPE_13__* %65, i32 %68, i32 6)
  br label %70

70:                                               ; preds = %64, %59, %51
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %72 = call i32 @FreeBuf(%struct.TYPE_16__* %71)
  %73 = getelementptr inbounds [6 x %struct.TYPE_13__], [6 x %struct.TYPE_13__]* %14, i64 0, i64 0
  %74 = call i64 @IsZero(%struct.TYPE_13__* %73, i32 6)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %70
  %77 = load i32*, i32** %10, align 8
  %78 = call i32 @FreeParamValueList(i32* %77)
  %79 = load i32*, i32** %6, align 8
  %80 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  %81 = call i32 @CmdPrintError(i32* %79, i64 %80)
  %82 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %82, i64* %5, align 8
  br label %115

83:                                               ; preds = %70
  %84 = call i32 @Zero(%struct.TYPE_13__* %13, i32 8)
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %10, align 8
  %88 = call i32 @GetParamStr(i32* %87, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %89 = call i32 @StrCpy(i32 %86, i32 4, i32 %88)
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %10, align 8
  %93 = call i32 @GetParamStr(i32* %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %94 = call i32 @NormalizeMacAddress(i32 %91, i32 4, i32 %93)
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @CcSetVLan(i32 %97, %struct.TYPE_13__* %13)
  store i64 %98, i64* %12, align 8
  %99 = load i64, i64* %12, align 8
  %100 = load i64, i64* @ERR_NO_ERROR, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %83
  br label %103

103:                                              ; preds = %102, %83
  %104 = load i64, i64* %12, align 8
  %105 = load i64, i64* @ERR_NO_ERROR, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load i32*, i32** %6, align 8
  %109 = load i64, i64* %12, align 8
  %110 = call i32 @CmdPrintError(i32* %108, i64 %109)
  br label %111

111:                                              ; preds = %107, %103
  %112 = load i32*, i32** %10, align 8
  %113 = call i32 @FreeParamValueList(i32* %112)
  %114 = load i64, i64* %12, align 8
  store i64 %114, i64* %5, align 8
  br label %115

115:                                              ; preds = %111, %76, %49
  %116 = load i64, i64* %5, align 8
  ret i64 %116
}

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(i32*, i8*, i32*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_13__*, i32) #1

declare dso_local %struct.TYPE_16__* @StrToBin(i32) #1

declare dso_local i32 @GetParamStr(i32*, i8*) #1

declare dso_local i32 @Copy(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @FreeBuf(%struct.TYPE_16__*) #1

declare dso_local i64 @IsZero(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

declare dso_local i32 @CmdPrintError(i32*, i64) #1

declare dso_local i32 @StrCpy(i32, i32, i32) #1

declare dso_local i32 @NormalizeMacAddress(i32, i32, i32) #1

declare dso_local i64 @CcSetVLan(i32, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
