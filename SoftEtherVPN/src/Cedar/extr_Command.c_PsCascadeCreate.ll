; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsCascadeCreate.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsCascadeCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 (%struct.TYPE_20__*, i32)* }
%struct.TYPE_18__ = type { i8*, i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__*, %struct.TYPE_15__*, i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.TYPE_19__ = type { i8*, i32*, i32, i32, i32 }

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
@.str.6 = private unnamed_addr constant [9 x i8] c"USERNAME\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"CMD_CascadeCreate_Prompt_Username\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"CMD_Hub_Not_Selected\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@INFINITE = common dso_local global i32 0, align 4
@CLIENT_AUTHTYPE_ANONYMOUS = common dso_local global i32 0, align 4
@ERR_NO_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsCascadeCreate(%struct.TYPE_20__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_17__, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca [4 x %struct.TYPE_19__], align 16
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %18, %struct.TYPE_18__** %11, align 8
  store i64 0, i64* %12, align 8
  store i8* null, i8** %14, align 8
  store i64 443, i64* %15, align 8
  %19 = getelementptr inbounds [4 x %struct.TYPE_19__], [4 x %struct.TYPE_19__]* %16, i64 0, i64 0
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %20, align 16
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 1
  %22 = load i32, i32* @CmdPrompt, align 4
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i32*
  store i32* %24, i32** %21, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 2
  %26 = call i32 @_UU(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 %26, i32* %25, align 16
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 3
  %28 = load i32, i32* @CmdEvalNotEmpty, align 4
  store i32 %28, i32* %27, align 4
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 4
  store i32 0, i32* %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i64 1
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %31, align 16
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 1
  %33 = load i32, i32* @CmdPrompt, align 4
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i32*
  store i32* %35, i32** %32, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 2
  %37 = call i32 @_UU(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  store i32 %37, i32* %36, align 16
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 3
  %39 = load i32, i32* @CmdEvalHostAndPort, align 4
  store i32 %39, i32* %38, align 4
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 4
  store i32 0, i32* %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i64 1
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %42, align 16
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 1
  %44 = load i32, i32* @CmdPrompt, align 4
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i32*
  store i32* %46, i32** %43, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 2
  %48 = call i32 @_UU(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  store i32 %48, i32* %47, align 16
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 3
  %50 = load i32, i32* @CmdEvalSafe, align 4
  store i32 %50, i32* %49, align 4
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 4
  store i32 0, i32* %51, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i64 1
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8** %53, align 16
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 1
  %55 = load i32, i32* @CmdPrompt, align 4
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to i32*
  store i32* %57, i32** %54, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 2
  %59 = call i32 @_UU(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  store i32 %59, i32* %58, align 16
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 3
  %61 = load i32, i32* @CmdEvalNotEmpty, align 4
  store i32 %61, i32* %60, align 4
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 4
  store i32 0, i32* %62, align 8
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = icmp eq i8* %65, null
  br i1 %66, label %67, label %75

67:                                               ; preds = %4
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 0
  %70 = load i32 (%struct.TYPE_20__*, i32)*, i32 (%struct.TYPE_20__*, i32)** %69, align 8
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %72 = call i32 @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %73 = call i32 %70(%struct.TYPE_20__* %71, i32 %72)
  %74 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %74, i64* %5, align 8
  br label %180

75:                                               ; preds = %4
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %77 = load i8*, i8** %7, align 8
  %78 = load i32*, i32** %8, align 8
  %79 = getelementptr inbounds [4 x %struct.TYPE_19__], [4 x %struct.TYPE_19__]* %16, i64 0, i64 0
  %80 = call i32* @ParseCommandList(%struct.TYPE_20__* %76, i8* %77, i32* %78, %struct.TYPE_19__* %79, i32 4)
  store i32* %80, i32** %10, align 8
  %81 = load i32*, i32** %10, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %75
  %84 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %84, i64* %5, align 8
  br label %180

85:                                               ; preds = %75
  %86 = load i32*, i32** %10, align 8
  %87 = call i8* @GetParamStr(i32* %86, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %88 = call i32 @ParseHostPort(i8* %87, i8** %14, i64* %15, i32 443)
  %89 = call i32 @Zero(%struct.TYPE_17__* %13, i32 32)
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @StrCpy(i32 %91, i32 4, i8* %94)
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 0
  store i32 0, i32* %96, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 3
  %98 = call i32 (...) @GetDefaultPolicy()
  %99 = call i32 @Copy(i32* %97, i32 %98, i32 4)
  %100 = call i8* @ZeroMalloc(i32 4)
  %101 = bitcast i8* %100 to %struct.TYPE_15__*
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 2
  store %struct.TYPE_15__* %101, %struct.TYPE_15__** %102, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 2
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 9
  %106 = load i32, i32* %105, align 8
  %107 = load i32*, i32** %10, align 8
  %108 = call i32 @GetParamUniStr(i32* %107, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %109 = call i32 @UniStrCpy(i32 %106, i32 4, i32 %108)
  %110 = load i64, i64* %15, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 2
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 8
  store i64 %110, i64* %113, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 2
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 7
  %117 = load i32, i32* %116, align 4
  %118 = load i8*, i8** %14, align 8
  %119 = call i32 @StrCpy(i32 %117, i32 4, i8* %118)
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 2
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 6
  %123 = load i32, i32* %122, align 8
  %124 = load i32*, i32** %10, align 8
  %125 = call i8* @GetParamStr(i32* %124, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %126 = call i32 @StrCpy(i32 %123, i32 4, i8* %125)
  %127 = load i32, i32* @INFINITE, align 4
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 2
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 5
  store i32 %127, i32* %130, align 4
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 2
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 0
  store i32 15, i32* %133, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 2
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 1
  store i32 8, i32* %136, align 4
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 2
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 2
  store i32 1, i32* %139, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 2
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 3
  store i32 1, i32* %142, align 4
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 2
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 4
  store i32 1, i32* %145, align 8
  %146 = call i8* @ZeroMalloc(i32 4)
  %147 = bitcast i8* %146 to %struct.TYPE_16__*
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 1
  store %struct.TYPE_16__* %147, %struct.TYPE_16__** %148, align 8
  %149 = load i32, i32* @CLIENT_AUTHTYPE_ANONYMOUS, align 4
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 1
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 1
  store i32 %149, i32* %152, align 4
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 1
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32*, i32** %10, align 8
  %158 = call i8* @GetParamStr(i32* %157, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %159 = call i32 @StrCpy(i32 %156, i32 4, i8* %158)
  %160 = load i8*, i8** %14, align 8
  %161 = call i32 @Free(i8* %160)
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = call i64 @ScCreateLink(i32 %164, %struct.TYPE_17__* %13)
  store i64 %165, i64* %12, align 8
  %166 = load i64, i64* %12, align 8
  %167 = load i64, i64* @ERR_NO_ERROR, align 8
  %168 = icmp ne i64 %166, %167
  br i1 %168, label %169, label %176

169:                                              ; preds = %85
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %171 = load i64, i64* %12, align 8
  %172 = call i32 @CmdPrintError(%struct.TYPE_20__* %170, i64 %171)
  %173 = load i32*, i32** %10, align 8
  %174 = call i32 @FreeParamValueList(i32* %173)
  %175 = load i64, i64* %12, align 8
  store i64 %175, i64* %5, align 8
  br label %180

176:                                              ; preds = %85
  %177 = call i32 @FreeRpcCreateLink(%struct.TYPE_17__* %13)
  %178 = load i32*, i32** %10, align 8
  %179 = call i32 @FreeParamValueList(i32* %178)
  store i64 0, i64* %5, align 8
  br label %180

180:                                              ; preds = %176, %169, %83, %67
  %181 = load i64, i64* %5, align 8
  ret i64 %181
}

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(%struct.TYPE_20__*, i8*, i32*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @ParseHostPort(i8*, i8**, i64*, i32) #1

declare dso_local i8* @GetParamStr(i32*, i8*) #1

declare dso_local i32 @Zero(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i8*) #1

declare dso_local i32 @Copy(i32*, i32, i32) #1

declare dso_local i32 @GetDefaultPolicy(...) #1

declare dso_local i8* @ZeroMalloc(i32) #1

declare dso_local i32 @UniStrCpy(i32, i32, i32) #1

declare dso_local i32 @GetParamUniStr(i32*, i8*) #1

declare dso_local i32 @Free(i8*) #1

declare dso_local i64 @ScCreateLink(i32, %struct.TYPE_17__*) #1

declare dso_local i32 @CmdPrintError(%struct.TYPE_20__*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

declare dso_local i32 @FreeRpcCreateLink(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
