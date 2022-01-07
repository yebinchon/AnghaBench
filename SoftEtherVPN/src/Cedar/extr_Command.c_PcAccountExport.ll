; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PcAccountExport.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PcAccountExport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32 (%struct.TYPE_25__*, i32)* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_24__ = type { i8*, i32*, i32, i32, i32 }
%struct.TYPE_26__ = type { i32*, i32 }

@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"[name]\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"CMD_AccountCreate_Prompt_Name\00", align 1
@CmdEvalNotEmpty = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"SAVEPATH\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"CMD_AccountExport_PROMPT_SAVEPATH\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@MAX_SIZE = common dso_local global i32 0, align 4
@__const.PcAccountExport.bom = private unnamed_addr constant [3 x i32] [i32 239, i32 187, i32 191], align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"CM_ACCOUNT_FILE_BANNER\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"CMD_SAVEFILE_FAILED\00", align 1
@ERR_INTERNAL_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PcAccountExport(%struct.TYPE_25__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_22__, align 4
  %14 = alloca [2 x %struct.TYPE_24__], align 16
  %15 = alloca %struct.TYPE_22__, align 4
  %16 = alloca %struct.TYPE_26__*, align 8
  %17 = alloca %struct.TYPE_26__*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca [3 x i32], align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = bitcast i8* %23 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %24, %struct.TYPE_23__** %11, align 8
  %25 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %25, i64* %12, align 8
  %26 = getelementptr inbounds [2 x %struct.TYPE_24__], [2 x %struct.TYPE_24__]* %14, i64 0, i64 0
  %27 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %27, align 16
  %28 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 1
  %29 = load i32, i32* @CmdPrompt, align 4
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i32*
  store i32* %31, i32** %28, align 8
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 2
  %33 = call i32 @_UU(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 %33, i32* %32, align 16
  %34 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 3
  %35 = load i32, i32* @CmdEvalNotEmpty, align 4
  store i32 %35, i32* %34, align 4
  %36 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 4
  store i32 0, i32* %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i64 1
  %38 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %37, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %38, align 16
  %39 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %37, i32 0, i32 1
  %40 = load i32, i32* @CmdPrompt, align 4
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to i32*
  store i32* %42, i32** %39, align 8
  %43 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %37, i32 0, i32 2
  %44 = call i32 @_UU(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  store i32 %44, i32* %43, align 16
  %45 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %37, i32 0, i32 3
  %46 = load i32, i32* @CmdEvalNotEmpty, align 4
  store i32 %46, i32* %45, align 4
  %47 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %37, i32 0, i32 4
  store i32 0, i32* %47, align 8
  %48 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = getelementptr inbounds [2 x %struct.TYPE_24__], [2 x %struct.TYPE_24__]* %14, i64 0, i64 0
  %52 = call i32* @ParseCommandList(%struct.TYPE_25__* %48, i8* %49, i32* %50, %struct.TYPE_24__* %51, i32 2)
  store i32* %52, i32** %10, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %4
  %56 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %56, i64* %5, align 8
  br label %159

57:                                               ; preds = %4
  %58 = call i32 @Zero(%struct.TYPE_22__* %13, i32 24)
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %10, align 8
  %62 = call i32 @GetParamUniStr(i32* %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %63 = call i32 @UniStrCpy(i32 %60, i32 4, i32 %62)
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @CcGetAccount(i32 %66, %struct.TYPE_22__* %13)
  store i64 %67, i64* %12, align 8
  %68 = load i64, i64* %12, align 8
  %69 = load i64, i64* @ERR_NO_ERROR, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %146

71:                                               ; preds = %57
  %72 = load i32, i32* @MAX_SIZE, align 4
  %73 = zext i32 %72 to i64
  %74 = call i8* @llvm.stacksave()
  store i8* %74, i8** %18, align 8
  %75 = alloca i8, i64 %73, align 16
  store i64 %73, i64* %19, align 8
  %76 = bitcast [3 x i32]* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %76, i8* align 4 bitcast ([3 x i32]* @__const.PcAccountExport.bom to i8*), i64 12, i1 false)
  %77 = call i32 @Zero(%struct.TYPE_22__* %15, i32 24)
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 4
  store i32 %79, i32* %80, align 4
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 3
  store i32 %82, i32* %83, align 4
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 2
  store i32 %85, i32* %86, align 4
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 1
  store i32 %88, i32* %89, align 4
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 0
  store i32 %91, i32* %92, align 4
  %93 = call %struct.TYPE_26__* @CiAccountToCfg(%struct.TYPE_22__* %15)
  store %struct.TYPE_26__* %93, %struct.TYPE_26__** %16, align 8
  %94 = trunc i64 %73 to i32
  %95 = load i32*, i32** %10, align 8
  %96 = call i32 @GetParamStr(i32* %95, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %97 = call i32 @StrCpy(i8* %75, i32 %94, i32 %96)
  %98 = call %struct.TYPE_26__* (...) @NewBuf()
  store %struct.TYPE_26__* %98, %struct.TYPE_26__** %17, align 8
  %99 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %100 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 0
  %101 = call i32 @WriteBuf(%struct.TYPE_26__* %99, i32* %100, i32 12)
  %102 = call i32 @_UU(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %103 = call i64 @CalcUniToUtf8(i32 %102)
  store i64 %103, i64* %21, align 8
  %104 = load i64, i64* %21, align 8
  %105 = add nsw i64 %104, 32
  %106 = call i32* @ZeroMalloc(i64 %105)
  store i32* %106, i32** %20, align 8
  %107 = load i32*, i32** %20, align 8
  %108 = load i64, i64* %21, align 8
  %109 = call i32 @_UU(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %110 = call i32 @UniToUtf8(i32* %107, i64 %108, i32 %109)
  %111 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %112 = load i32*, i32** %20, align 8
  %113 = load i32*, i32** %20, align 8
  %114 = bitcast i32* %113 to i8*
  %115 = call i32 @StrLen(i8* %114)
  %116 = call i32 @WriteBuf(%struct.TYPE_26__* %111, i32* %112, i32 %115)
  %117 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %118 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %119 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %122 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @WriteBuf(%struct.TYPE_26__* %117, i32* %120, i32 %123)
  %125 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %126 = call i32 @SeekBuf(%struct.TYPE_26__* %125, i32 0, i32 0)
  %127 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %128 = call i32 @FreeBuf(%struct.TYPE_26__* %127)
  %129 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %130 = call i32 @DumpBuf(%struct.TYPE_26__* %129, i8* %75)
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %71
  %133 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %133, i32 0, i32 0
  %135 = load i32 (%struct.TYPE_25__*, i32)*, i32 (%struct.TYPE_25__*, i32)** %134, align 8
  %136 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %137 = call i32 @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %138 = call i32 %135(%struct.TYPE_25__* %136, i32 %137)
  %139 = load i64, i64* @ERR_INTERNAL_ERROR, align 8
  store i64 %139, i64* %12, align 8
  br label %140

140:                                              ; preds = %132, %71
  %141 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %142 = call i32 @FreeBuf(%struct.TYPE_26__* %141)
  %143 = load i32*, i32** %20, align 8
  %144 = call i32 @Free(i32* %143)
  %145 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %145)
  br label %146

146:                                              ; preds = %140, %57
  %147 = load i64, i64* %12, align 8
  %148 = load i64, i64* @ERR_NO_ERROR, align 8
  %149 = icmp ne i64 %147, %148
  br i1 %149, label %150, label %154

150:                                              ; preds = %146
  %151 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %152 = load i64, i64* %12, align 8
  %153 = call i32 @CmdPrintError(%struct.TYPE_25__* %151, i64 %152)
  br label %154

154:                                              ; preds = %150, %146
  %155 = call i32 @CiFreeClientGetAccount(%struct.TYPE_22__* %13)
  %156 = load i32*, i32** %10, align 8
  %157 = call i32 @FreeParamValueList(i32* %156)
  %158 = load i64, i64* %12, align 8
  store i64 %158, i64* %5, align 8
  br label %159

159:                                              ; preds = %154, %55
  %160 = load i64, i64* %5, align 8
  ret i64 %160
}

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(%struct.TYPE_25__*, i8*, i32*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @UniStrCpy(i32, i32, i32) #1

declare dso_local i32 @GetParamUniStr(i32*, i8*) #1

declare dso_local i64 @CcGetAccount(i32, %struct.TYPE_22__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local %struct.TYPE_26__* @CiAccountToCfg(%struct.TYPE_22__*) #1

declare dso_local i32 @StrCpy(i8*, i32, i32) #1

declare dso_local i32 @GetParamStr(i32*, i8*) #1

declare dso_local %struct.TYPE_26__* @NewBuf(...) #1

declare dso_local i32 @WriteBuf(%struct.TYPE_26__*, i32*, i32) #1

declare dso_local i64 @CalcUniToUtf8(i32) #1

declare dso_local i32* @ZeroMalloc(i64) #1

declare dso_local i32 @UniToUtf8(i32*, i64, i32) #1

declare dso_local i32 @StrLen(i8*) #1

declare dso_local i32 @SeekBuf(%struct.TYPE_26__*, i32, i32) #1

declare dso_local i32 @FreeBuf(%struct.TYPE_26__*) #1

declare dso_local i32 @DumpBuf(%struct.TYPE_26__*, i8*) #1

declare dso_local i32 @Free(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @CmdPrintError(%struct.TYPE_25__*, i64) #1

declare dso_local i32 @CiFreeClientGetAccount(%struct.TYPE_22__*) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
