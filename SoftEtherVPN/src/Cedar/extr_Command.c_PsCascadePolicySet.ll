; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsCascadePolicySet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsCascadePolicySet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 (%struct.TYPE_19__*, i32)* }
%struct.TYPE_17__ = type { i32, i32* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_20__*, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_18__ = type { i8*, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"[name]\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"CMD_CascadeCreate_Prompt_Name\00", align 1
@CmdEvalNotEmpty = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"NAME\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"CMD_CascadePolicySet_PROMPT_POLNAME\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"VALUE\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"CMD_CascadePolicySet_PROMPT_POLVALUE\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"CMD_Hub_Not_Selected\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@ERR_INTERNAL_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsCascadePolicySet(%struct.TYPE_19__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_16__, align 8
  %14 = alloca [3 x %struct.TYPE_18__], align 16
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %16, %struct.TYPE_17__** %11, align 8
  store i64 0, i64* %12, align 8
  %17 = getelementptr inbounds [3 x %struct.TYPE_18__], [3 x %struct.TYPE_18__]* %14, i64 0, i64 0
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %18, align 16
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 1
  %20 = load i32, i32* @CmdPrompt, align 4
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to i32*
  store i32* %22, i32** %19, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 2
  %24 = call i32 @_UU(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 %24, i32* %23, align 16
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 3
  %26 = load i32, i32* @CmdEvalNotEmpty, align 4
  store i32 %26, i32* %25, align 4
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 4
  store i32 0, i32* %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i64 1
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %29, align 16
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 1
  %31 = load i32, i32* @CmdPrompt, align 4
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i32*
  store i32* %33, i32** %30, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 2
  %35 = call i32 @_UU(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  store i32 %35, i32* %34, align 16
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 3
  %37 = load i32, i32* @CmdEvalNotEmpty, align 4
  store i32 %37, i32* %36, align 4
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 4
  store i32 0, i32* %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i64 1
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %40, align 16
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 1
  %42 = load i32, i32* @CmdPrompt, align 4
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i32*
  store i32* %44, i32** %41, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 2
  %46 = call i32 @_UU(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  store i32 %46, i32* %45, align 16
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 3
  %48 = load i32, i32* @CmdEvalNotEmpty, align 4
  store i32 %48, i32* %47, align 4
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 4
  store i32 0, i32* %49, align 8
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %4
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 0
  %57 = load i32 (%struct.TYPE_19__*, i32)*, i32 (%struct.TYPE_19__*, i32)** %56, align 8
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %59 = call i32 @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %60 = call i32 %57(%struct.TYPE_19__* %58, i32 %59)
  %61 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %61, i64* %5, align 8
  br label %137

62:                                               ; preds = %4
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = getelementptr inbounds [3 x %struct.TYPE_18__], [3 x %struct.TYPE_18__]* %14, i64 0, i64 0
  %67 = call i32* @ParseCommandList(%struct.TYPE_19__* %63, i8* %64, i32* %65, %struct.TYPE_18__* %66, i32 3)
  store i32* %67, i32** %10, align 8
  %68 = load i32*, i32** %10, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %62
  %71 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %71, i64* %5, align 8
  br label %137

72:                                               ; preds = %62
  %73 = call i32 @Zero(%struct.TYPE_16__* %13, i32 24)
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @StrCpy(i32 %75, i32 4, i32* %78)
  %80 = call %struct.TYPE_20__* @ZeroMalloc(i32 4)
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  store %struct.TYPE_20__* %80, %struct.TYPE_20__** %81, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %10, align 8
  %87 = call i32 @GetParamUniStr(i32* %86, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %88 = call i32 @UniStrCpy(i32 %85, i32 4, i32 %87)
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i64 @ScGetLink(i32 %91, %struct.TYPE_16__* %13)
  store i64 %92, i64* %12, align 8
  %93 = load i64, i64* %12, align 8
  %94 = load i64, i64* @ERR_NO_ERROR, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %72
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %98 = load i64, i64* %12, align 8
  %99 = call i32 @CmdPrintError(%struct.TYPE_19__* %97, i64 %98)
  %100 = load i32*, i32** %10, align 8
  %101 = call i32 @FreeParamValueList(i32* %100)
  %102 = load i64, i64* %12, align 8
  store i64 %102, i64* %5, align 8
  br label %137

103:                                              ; preds = %72
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %106 = load i32*, i32** %10, align 8
  %107 = call i32 @GetParamStr(i32* %106, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %108 = load i32*, i32** %10, align 8
  %109 = call i32 @GetParamStr(i32* %108, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %110 = call i32 @EditPolicy(%struct.TYPE_19__* %104, i32* %105, i32 %107, i32 %109, i32 1)
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %103
  %113 = call i32 @FreeRpcCreateLink(%struct.TYPE_16__* %13)
  %114 = load i32*, i32** %10, align 8
  %115 = call i32 @FreeParamValueList(i32* %114)
  %116 = load i64, i64* @ERR_INTERNAL_ERROR, align 8
  store i64 %116, i64* %5, align 8
  br label %137

117:                                              ; preds = %103
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i64 @ScSetLink(i32 %120, %struct.TYPE_16__* %13)
  store i64 %121, i64* %12, align 8
  %122 = load i64, i64* %12, align 8
  %123 = load i64, i64* @ERR_NO_ERROR, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %132

125:                                              ; preds = %117
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %127 = load i64, i64* %12, align 8
  %128 = call i32 @CmdPrintError(%struct.TYPE_19__* %126, i64 %127)
  %129 = load i32*, i32** %10, align 8
  %130 = call i32 @FreeParamValueList(i32* %129)
  %131 = load i64, i64* %12, align 8
  store i64 %131, i64* %5, align 8
  br label %137

132:                                              ; preds = %117
  %133 = call i32 @FreeRpcCreateLink(%struct.TYPE_16__* %13)
  br label %134

134:                                              ; preds = %132
  %135 = load i32*, i32** %10, align 8
  %136 = call i32 @FreeParamValueList(i32* %135)
  store i64 0, i64* %5, align 8
  br label %137

137:                                              ; preds = %134, %125, %112, %96, %70, %54
  %138 = load i64, i64* %5, align 8
  ret i64 %138
}

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(%struct.TYPE_19__*, i8*, i32*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32*) #1

declare dso_local %struct.TYPE_20__* @ZeroMalloc(i32) #1

declare dso_local i32 @UniStrCpy(i32, i32, i32) #1

declare dso_local i32 @GetParamUniStr(i32*, i8*) #1

declare dso_local i64 @ScGetLink(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @CmdPrintError(%struct.TYPE_19__*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

declare dso_local i32 @EditPolicy(%struct.TYPE_19__*, i32*, i32, i32, i32) #1

declare dso_local i32 @GetParamStr(i32*, i8*) #1

declare dso_local i32 @FreeRpcCreateLink(%struct.TYPE_16__*) #1

declare dso_local i64 @ScSetLink(i32, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
