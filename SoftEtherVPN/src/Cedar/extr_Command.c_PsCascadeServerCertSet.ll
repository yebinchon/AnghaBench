; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsCascadeServerCertSet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsCascadeServerCertSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 (%struct.TYPE_19__*, i32)* }
%struct.TYPE_17__ = type { i32, i32* }
%struct.TYPE_16__ = type { i32*, %struct.TYPE_20__*, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_18__ = type { i8*, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"[name]\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"CMD_CascadeCreate_Prompt_Name\00", align 1
@CmdEvalNotEmpty = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"LOADCERT\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"CMD_LOADCERTPATH\00", align 1
@CmdEvalIsFile = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"CMD_Hub_Not_Selected\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [20 x i8] c"CMD_LOADCERT_FAILED\00", align 1
@ERR_INTERNAL_ERROR = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsCascadeServerCertSet(%struct.TYPE_19__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_16__, align 8
  %14 = alloca i32*, align 8
  %15 = alloca [2 x %struct.TYPE_18__], align 16
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %17, %struct.TYPE_17__** %11, align 8
  store i64 0, i64* %12, align 8
  %18 = getelementptr inbounds [2 x %struct.TYPE_18__], [2 x %struct.TYPE_18__]* %15, i64 0, i64 0
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %19, align 16
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 1
  %21 = load i32, i32* @CmdPrompt, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i32*
  store i32* %23, i32** %20, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 2
  %25 = call i32 @_UU(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 %25, i32* %24, align 16
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 3
  %27 = load i32, i32* @CmdEvalNotEmpty, align 4
  store i32 %27, i32* %26, align 4
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 4
  store i32 0, i32* %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i64 1
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %30, align 16
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 1
  %32 = load i32, i32* @CmdPrompt, align 4
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i32*
  store i32* %34, i32** %31, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 2
  %36 = call i32 @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  store i32 %36, i32* %35, align 16
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 3
  %38 = load i32, i32* @CmdEvalIsFile, align 4
  store i32 %38, i32* %37, align 4
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 4
  store i32 0, i32* %39, align 8
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %4
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 0
  %47 = load i32 (%struct.TYPE_19__*, i32)*, i32 (%struct.TYPE_19__*, i32)** %46, align 8
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %49 = call i32 @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %50 = call i32 %47(%struct.TYPE_19__* %48, i32 %49)
  %51 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %51, i64* %5, align 8
  br label %141

52:                                               ; preds = %4
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = getelementptr inbounds [2 x %struct.TYPE_18__], [2 x %struct.TYPE_18__]* %15, i64 0, i64 0
  %57 = call i32* @ParseCommandList(%struct.TYPE_19__* %53, i8* %54, i32* %55, %struct.TYPE_18__* %56, i32 2)
  store i32* %57, i32** %10, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %61, i64* %5, align 8
  br label %141

62:                                               ; preds = %52
  %63 = load i32*, i32** %10, align 8
  %64 = call i32 @GetParamUniStr(i32* %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %65 = call i32* @FileToXW(i32 %64)
  store i32* %65, i32** %14, align 8
  %66 = load i32*, i32** %14, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %78

68:                                               ; preds = %62
  %69 = load i32*, i32** %10, align 8
  %70 = call i32 @FreeParamValueList(i32* %69)
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 0
  %73 = load i32 (%struct.TYPE_19__*, i32)*, i32 (%struct.TYPE_19__*, i32)** %72, align 8
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %75 = call i32 @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %76 = call i32 %73(%struct.TYPE_19__* %74, i32 %75)
  %77 = load i64, i64* @ERR_INTERNAL_ERROR, align 8
  store i64 %77, i64* %5, align 8
  br label %141

78:                                               ; preds = %62
  %79 = call i32 @Zero(%struct.TYPE_16__* %13, i32 24)
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @StrCpy(i32 %81, i32 4, i32* %84)
  %86 = call %struct.TYPE_20__* @ZeroMalloc(i32 4)
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  store %struct.TYPE_20__* %86, %struct.TYPE_20__** %87, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %10, align 8
  %93 = call i32 @GetParamUniStr(i32* %92, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %94 = call i32 @UniStrCpy(i32 %91, i32 4, i32 %93)
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i64 @ScGetLink(i32 %97, %struct.TYPE_16__* %13)
  store i64 %98, i64* %12, align 8
  %99 = load i64, i64* %12, align 8
  %100 = load i64, i64* @ERR_NO_ERROR, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %111

102:                                              ; preds = %78
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %104 = load i64, i64* %12, align 8
  %105 = call i32 @CmdPrintError(%struct.TYPE_19__* %103, i64 %104)
  %106 = load i32*, i32** %10, align 8
  %107 = call i32 @FreeParamValueList(i32* %106)
  %108 = load i32*, i32** %14, align 8
  %109 = call i32 @FreeX(i32* %108)
  %110 = load i64, i64* %12, align 8
  store i64 %110, i64* %5, align 8
  br label %141

111:                                              ; preds = %78
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %119

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = call i32 @FreeX(i32* %117)
  br label %119

119:                                              ; preds = %115, %111
  %120 = load i32*, i32** %14, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  store i32* %120, i32** %121, align 8
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i64 @ScSetLink(i32 %124, %struct.TYPE_16__* %13)
  store i64 %125, i64* %12, align 8
  %126 = load i64, i64* %12, align 8
  %127 = load i64, i64* @ERR_NO_ERROR, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %136

129:                                              ; preds = %119
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %131 = load i64, i64* %12, align 8
  %132 = call i32 @CmdPrintError(%struct.TYPE_19__* %130, i64 %131)
  %133 = load i32*, i32** %10, align 8
  %134 = call i32 @FreeParamValueList(i32* %133)
  %135 = load i64, i64* %12, align 8
  store i64 %135, i64* %5, align 8
  br label %141

136:                                              ; preds = %119
  %137 = call i32 @FreeRpcCreateLink(%struct.TYPE_16__* %13)
  br label %138

138:                                              ; preds = %136
  %139 = load i32*, i32** %10, align 8
  %140 = call i32 @FreeParamValueList(i32* %139)
  store i64 0, i64* %5, align 8
  br label %141

141:                                              ; preds = %138, %129, %102, %68, %60, %44
  %142 = load i64, i64* %5, align 8
  ret i64 %142
}

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(%struct.TYPE_19__*, i8*, i32*, %struct.TYPE_18__*, i32) #1

declare dso_local i32* @FileToXW(i32) #1

declare dso_local i32 @GetParamUniStr(i32*, i8*) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

declare dso_local i32 @Zero(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32*) #1

declare dso_local %struct.TYPE_20__* @ZeroMalloc(i32) #1

declare dso_local i32 @UniStrCpy(i32, i32, i32) #1

declare dso_local i64 @ScGetLink(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @CmdPrintError(%struct.TYPE_19__*, i64) #1

declare dso_local i32 @FreeX(i32*) #1

declare dso_local i64 @ScSetLink(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @FreeRpcCreateLink(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
