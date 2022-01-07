; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PcAccountCreate.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PcAccountCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.TYPE_14__ = type { i8*, i32*, i32, i32, i32 }

@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"[name]\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"CMD_AccountCreate_Prompt_Name\00", align 1
@CmdEvalNotEmpty = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"CMD_AccountCreate_Prompt_Server\00", align 1
@CmdEvalHostAndPort = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"HUB\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"CMD_AccountCreate_Prompt_Hub\00", align 1
@CmdEvalSafe = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"USERNAME\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"CMD_AccountCreate_Prompt_Username\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"NICNAME\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"CMD_AccountCreate_Prompt_Nicname\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@INFINITE = common dso_local global i32 0, align 4
@CLIENT_AUTHTYPE_ANONYMOUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PcAccountCreate(i32* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_12__, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca [5 x %struct.TYPE_14__], align 16
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %18, %struct.TYPE_13__** %11, align 8
  %19 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %19, i64* %12, align 8
  store i64 443, i64* %14, align 8
  store i8* null, i8** %15, align 8
  %20 = getelementptr inbounds [5 x %struct.TYPE_14__], [5 x %struct.TYPE_14__]* %16, i64 0, i64 0
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %21, align 16
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 1
  %23 = load i32, i32* @CmdPrompt, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i32*
  store i32* %25, i32** %22, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 2
  %27 = call i32 @_UU(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 %27, i32* %26, align 16
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 3
  %29 = load i32, i32* @CmdEvalNotEmpty, align 4
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 4
  store i32 0, i32* %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i64 1
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %32, align 16
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 1
  %34 = load i32, i32* @CmdPrompt, align 4
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i32*
  store i32* %36, i32** %33, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 2
  %38 = call i32 @_UU(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  store i32 %38, i32* %37, align 16
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 3
  %40 = load i32, i32* @CmdEvalHostAndPort, align 4
  store i32 %40, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 4
  store i32 0, i32* %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i64 1
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %43, align 16
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 1
  %45 = load i32, i32* @CmdPrompt, align 4
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to i32*
  store i32* %47, i32** %44, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 2
  %49 = call i32 @_UU(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  store i32 %49, i32* %48, align 16
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 3
  %51 = load i32, i32* @CmdEvalSafe, align 4
  store i32 %51, i32* %50, align 4
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 4
  store i32 0, i32* %52, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i64 1
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8** %54, align 16
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 1
  %56 = load i32, i32* @CmdPrompt, align 4
  %57 = sext i32 %56 to i64
  %58 = inttoptr i64 %57 to i32*
  store i32* %58, i32** %55, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 2
  %60 = call i32 @_UU(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  store i32 %60, i32* %59, align 16
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 3
  %62 = load i32, i32* @CmdEvalNotEmpty, align 4
  store i32 %62, i32* %61, align 4
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 4
  store i32 0, i32* %63, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i64 1
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8** %65, align 16
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 1
  %67 = load i32, i32* @CmdPrompt, align 4
  %68 = sext i32 %67 to i64
  %69 = inttoptr i64 %68 to i32*
  store i32* %69, i32** %66, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 2
  %71 = call i32 @_UU(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  store i32 %71, i32* %70, align 16
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 3
  %73 = load i32, i32* @CmdEvalNotEmpty, align 4
  store i32 %73, i32* %72, align 4
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 4
  store i32 0, i32* %74, align 8
  %75 = load i32*, i32** %6, align 8
  %76 = load i8*, i8** %7, align 8
  %77 = load i32*, i32** %8, align 8
  %78 = getelementptr inbounds [5 x %struct.TYPE_14__], [5 x %struct.TYPE_14__]* %16, i64 0, i64 0
  %79 = call i32* @ParseCommandList(i32* %75, i8* %76, i32* %77, %struct.TYPE_14__* %78, i32 5)
  store i32* %79, i32** %10, align 8
  %80 = load i32*, i32** %10, align 8
  %81 = icmp eq i32* %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %4
  %83 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %83, i64* %5, align 8
  br label %176

84:                                               ; preds = %4
  %85 = load i32*, i32** %10, align 8
  %86 = call i8* @GetParamStr(i32* %85, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %87 = call i32 @ParseHostPort(i8* %86, i8** %15, i64* %14, i32 443)
  %88 = call i32 @Zero(%struct.TYPE_12__* %13, i32 16)
  %89 = call i8* @ZeroMalloc(i32 4)
  %90 = bitcast i8* %89 to %struct.TYPE_10__*
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  store %struct.TYPE_10__* %90, %struct.TYPE_10__** %91, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 9
  %95 = load i32, i32* %94, align 8
  %96 = load i32*, i32** %10, align 8
  %97 = call i32 @GetParamUniStr(i32* %96, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %98 = call i32 @UniStrCpy(i32 %95, i32 4, i32 %97)
  %99 = load i64, i64* %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 8
  store i64 %99, i64* %102, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 7
  %106 = load i32, i32* %105, align 4
  %107 = load i8*, i8** %15, align 8
  %108 = call i32 @StrCpy(i32 %106, i32 4, i8* %107)
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 8
  %113 = load i32*, i32** %10, align 8
  %114 = call i8* @GetParamStr(i32* %113, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %115 = call i32 @StrCpy(i32 %112, i32 4, i8* %114)
  %116 = load i32, i32* @INFINITE, align 4
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 5
  store i32 %116, i32* %119, align 4
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  store i32 15, i32* %122, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 1
  store i32 1, i32* %125, align 4
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 2
  store i32 1, i32* %128, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 3
  store i32 1, i32* %131, align 4
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = load i32*, i32** %10, align 8
  %137 = call i8* @GetParamStr(i32* %136, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %138 = call i32 @StrCpy(i32 %135, i32 4, i8* %137)
  %139 = call i8* @ZeroMalloc(i32 4)
  %140 = bitcast i8* %139 to %struct.TYPE_11__*
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  store %struct.TYPE_11__* %140, %struct.TYPE_11__** %141, align 8
  %142 = load i32, i32* @CLIENT_AUTHTYPE_ANONYMOUS, align 4
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 1
  store i32 %142, i32* %145, align 4
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32*, i32** %10, align 8
  %151 = call i8* @GetParamStr(i32* %150, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %152 = call i32 @StrCpy(i32 %149, i32 4, i8* %151)
  %153 = load i8*, i8** %15, align 8
  %154 = call i32 @Free(i8* %153)
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i64 @CcCreateAccount(i32 %157, %struct.TYPE_12__* %13)
  store i64 %158, i64* %12, align 8
  %159 = load i64, i64* %12, align 8
  %160 = load i64, i64* @ERR_NO_ERROR, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %84
  br label %163

163:                                              ; preds = %162, %84
  %164 = call i32 @CiFreeClientCreateAccount(%struct.TYPE_12__* %13)
  %165 = load i64, i64* %12, align 8
  %166 = load i64, i64* @ERR_NO_ERROR, align 8
  %167 = icmp ne i64 %165, %166
  br i1 %167, label %168, label %172

168:                                              ; preds = %163
  %169 = load i32*, i32** %6, align 8
  %170 = load i64, i64* %12, align 8
  %171 = call i32 @CmdPrintError(i32* %169, i64 %170)
  br label %172

172:                                              ; preds = %168, %163
  %173 = load i32*, i32** %10, align 8
  %174 = call i32 @FreeParamValueList(i32* %173)
  %175 = load i64, i64* %12, align 8
  store i64 %175, i64* %5, align 8
  br label %176

176:                                              ; preds = %172, %82
  %177 = load i64, i64* %5, align 8
  ret i64 %177
}

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(i32*, i8*, i32*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @ParseHostPort(i8*, i8**, i64*, i32) #1

declare dso_local i8* @GetParamStr(i32*, i8*) #1

declare dso_local i32 @Zero(%struct.TYPE_12__*, i32) #1

declare dso_local i8* @ZeroMalloc(i32) #1

declare dso_local i32 @UniStrCpy(i32, i32, i32) #1

declare dso_local i32 @GetParamUniStr(i32*, i8*) #1

declare dso_local i32 @StrCpy(i32, i32, i8*) #1

declare dso_local i32 @Free(i8*) #1

declare dso_local i64 @CcCreateAccount(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @CiFreeClientCreateAccount(%struct.TYPE_12__*) #1

declare dso_local i32 @CmdPrintError(i32*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
