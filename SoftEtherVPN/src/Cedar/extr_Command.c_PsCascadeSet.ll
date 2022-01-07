; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsCascadeSet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsCascadeSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 (%struct.TYPE_18__*, i32)* }
%struct.TYPE_16__ = type { i8*, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_19__*, i32 }
%struct.TYPE_19__ = type { i32, i32, i64, i32 }
%struct.TYPE_17__ = type { i8*, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"[name]\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"CMD_CascadeCreate_Prompt_Name\00", align 1
@CmdEvalNotEmpty = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"CMD_CascadeCreate_Prompt_Server\00", align 1
@CmdEvalHostAndPort = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"HUB\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"CMD_CascadeCreate_Prompt_Hub\00", align 1
@CmdEvalSafe = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"CMD_Hub_Not_Selected\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsCascadeSet(%struct.TYPE_18__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_15__, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca [3 x %struct.TYPE_17__], align 16
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %18, %struct.TYPE_16__** %11, align 8
  store i64 0, i64* %12, align 8
  store i8* null, i8** %14, align 8
  store i64 443, i64* %15, align 8
  %19 = getelementptr inbounds [3 x %struct.TYPE_17__], [3 x %struct.TYPE_17__]* %16, i64 0, i64 0
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %20, align 16
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 1
  %22 = load i32, i32* @CmdPrompt, align 4
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i32*
  store i32* %24, i32** %21, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 2
  %26 = call i32 @_UU(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 %26, i32* %25, align 16
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 3
  %28 = load i32, i32* @CmdEvalNotEmpty, align 4
  store i32 %28, i32* %27, align 4
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 4
  store i32 0, i32* %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i64 1
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %31, align 16
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 1
  %33 = load i32, i32* @CmdPrompt, align 4
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i32*
  store i32* %35, i32** %32, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 2
  %37 = call i32 @_UU(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  store i32 %37, i32* %36, align 16
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 3
  %39 = load i32, i32* @CmdEvalHostAndPort, align 4
  store i32 %39, i32* %38, align 4
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 4
  store i32 0, i32* %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i64 1
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %42, align 16
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 1
  %44 = load i32, i32* @CmdPrompt, align 4
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i32*
  store i32* %46, i32** %43, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 2
  %48 = call i32 @_UU(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  store i32 %48, i32* %47, align 16
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 3
  %50 = load i32, i32* @CmdEvalSafe, align 4
  store i32 %50, i32* %49, align 4
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 4
  store i32 0, i32* %51, align 8
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %4
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 0
  %59 = load i32 (%struct.TYPE_18__*, i32)*, i32 (%struct.TYPE_18__*, i32)** %58, align 8
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %61 = call i32 @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %62 = call i32 %59(%struct.TYPE_18__* %60, i32 %61)
  %63 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %63, i64* %5, align 8
  br label %148

64:                                               ; preds = %4
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = getelementptr inbounds [3 x %struct.TYPE_17__], [3 x %struct.TYPE_17__]* %16, i64 0, i64 0
  %69 = call i32* @ParseCommandList(%struct.TYPE_18__* %65, i8* %66, i32* %67, %struct.TYPE_17__* %68, i32 3)
  store i32* %69, i32** %10, align 8
  %70 = load i32*, i32** %10, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %73, i64* %5, align 8
  br label %148

74:                                               ; preds = %64
  %75 = load i32*, i32** %10, align 8
  %76 = call i8* @GetParamStr(i32* %75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %77 = call i32 @ParseHostPort(i8* %76, i8** %14, i64* %15, i32 443)
  %78 = call i32 @Zero(%struct.TYPE_15__* %13, i32 16)
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @StrCpy(i32 %80, i32 4, i8* %83)
  %85 = call %struct.TYPE_19__* @ZeroMalloc(i32 4)
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  store %struct.TYPE_19__* %85, %struct.TYPE_19__** %86, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = load i32*, i32** %10, align 8
  %92 = call i32 @GetParamUniStr(i32* %91, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %93 = call i32 @UniStrCpy(i32 %90, i32 4, i32 %92)
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i64 @ScGetLink(i32 %96, %struct.TYPE_15__* %13)
  store i64 %97, i64* %12, align 8
  %98 = load i64, i64* %12, align 8
  %99 = load i64, i64* @ERR_NO_ERROR, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %110

101:                                              ; preds = %74
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %103 = load i64, i64* %12, align 8
  %104 = call i32 @CmdPrintError(%struct.TYPE_18__* %102, i64 %103)
  %105 = load i32*, i32** %10, align 8
  %106 = call i32 @FreeParamValueList(i32* %105)
  %107 = load i8*, i8** %14, align 8
  %108 = call i32 @Free(i8* %107)
  %109 = load i64, i64* %12, align 8
  store i64 %109, i64* %5, align 8
  br label %148

110:                                              ; preds = %74
  %111 = load i64, i64* %15, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 2
  store i64 %111, i64* %114, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i8*, i8** %14, align 8
  %120 = call i32 @StrCpy(i32 %118, i32 4, i8* %119)
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32*, i32** %10, align 8
  %126 = call i8* @GetParamStr(i32* %125, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %127 = call i32 @StrCpy(i32 %124, i32 4, i8* %126)
  %128 = load i8*, i8** %14, align 8
  %129 = call i32 @Free(i8* %128)
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = call i64 @ScSetLink(i32 %132, %struct.TYPE_15__* %13)
  store i64 %133, i64* %12, align 8
  %134 = load i64, i64* %12, align 8
  %135 = load i64, i64* @ERR_NO_ERROR, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %137, label %144

137:                                              ; preds = %110
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %139 = load i64, i64* %12, align 8
  %140 = call i32 @CmdPrintError(%struct.TYPE_18__* %138, i64 %139)
  %141 = load i32*, i32** %10, align 8
  %142 = call i32 @FreeParamValueList(i32* %141)
  %143 = load i64, i64* %12, align 8
  store i64 %143, i64* %5, align 8
  br label %148

144:                                              ; preds = %110
  %145 = call i32 @FreeRpcCreateLink(%struct.TYPE_15__* %13)
  %146 = load i32*, i32** %10, align 8
  %147 = call i32 @FreeParamValueList(i32* %146)
  store i64 0, i64* %5, align 8
  br label %148

148:                                              ; preds = %144, %137, %101, %72, %56
  %149 = load i64, i64* %5, align 8
  ret i64 %149
}

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(%struct.TYPE_18__*, i8*, i32*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @ParseHostPort(i8*, i8**, i64*, i32) #1

declare dso_local i8* @GetParamStr(i32*, i8*) #1

declare dso_local i32 @Zero(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i8*) #1

declare dso_local %struct.TYPE_19__* @ZeroMalloc(i32) #1

declare dso_local i32 @UniStrCpy(i32, i32, i32) #1

declare dso_local i32 @GetParamUniStr(i32*, i8*) #1

declare dso_local i64 @ScGetLink(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @CmdPrintError(%struct.TYPE_18__*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

declare dso_local i32 @Free(i8*) #1

declare dso_local i64 @ScSetLink(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @FreeRpcCreateLink(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
