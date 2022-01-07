; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PcAccountImport.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PcAccountImport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32 (%struct.TYPE_21__*, i32*)* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_20__ = type { i8*, i32*, i32, i32*, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }

@ERR_NO_ERROR = common dso_local global i64 0, align 8
@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"[path]\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"CMD_AccountImport_PROMPT_PATH\00", align 1
@CmdEvalIsFile = common dso_local global i32 0, align 4
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"CMD_LOADFILE_FAILED\00", align 1
@ERR_INTERNAL_ERROR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"CMD_AccountImport_FAILED_PARSE\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"CMD_AccountImport_OK\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PcAccountImport(%struct.TYPE_21__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca [1 x %struct.TYPE_20__], align 16
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_18__*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %22, %struct.TYPE_19__** %11, align 8
  %23 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %23, i64* %12, align 8
  %24 = load i32, i32* @MAX_SIZE, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %14, align 8
  %27 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %15, align 8
  %28 = getelementptr inbounds [1 x %struct.TYPE_20__], [1 x %struct.TYPE_20__]* %16, i64 0, i64 0
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 1
  %31 = load i32, i32* @CmdPrompt, align 4
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i32*
  store i32* %33, i32** %30, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 2
  %35 = call i32* @_UU(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %36 = ptrtoint i32* %35 to i32
  store i32 %36, i32* %34, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 3
  %38 = load i32, i32* @CmdEvalIsFile, align 4
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i32*
  store i32* %40, i32** %37, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 4
  store i32 0, i32* %41, align 8
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = getelementptr inbounds [1 x %struct.TYPE_20__], [1 x %struct.TYPE_20__]* %16, i64 0, i64 0
  %46 = call i32* @ParseCommandList(%struct.TYPE_21__* %42, i8* %43, i32* %44, %struct.TYPE_20__* %45, i32 1)
  store i32* %46, i32** %10, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %4
  %50 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %50, i64* %5, align 8
  store i32 1, i32* %17, align 4
  br label %139

51:                                               ; preds = %4
  %52 = load i32*, i32** %10, align 8
  %53 = call i32 @GetParamUniStr(i32* %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %54 = call i32* @ReadDumpW(i32 %53)
  store i32* %54, i32** %13, align 8
  %55 = load i32*, i32** %13, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %51
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 0
  %60 = load i32 (%struct.TYPE_21__*, i32*)*, i32 (%struct.TYPE_21__*, i32*)** %59, align 8
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %62 = call i32* @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %63 = call i32 %60(%struct.TYPE_21__* %61, i32* %62)
  %64 = load i64, i64* @ERR_INTERNAL_ERROR, align 8
  store i64 %64, i64* %12, align 8
  br label %127

65:                                               ; preds = %51
  %66 = load i32*, i32** %13, align 8
  %67 = call %struct.TYPE_18__* @CiCfgToAccount(i32* %66)
  store %struct.TYPE_18__* %67, %struct.TYPE_18__** %18, align 8
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %69 = icmp eq %struct.TYPE_18__* %68, null
  br i1 %69, label %70, label %78

70:                                               ; preds = %65
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 0
  %73 = load i32 (%struct.TYPE_21__*, i32*)*, i32 (%struct.TYPE_21__*, i32*)** %72, align 8
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %75 = call i32* @_UU(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %76 = call i32 %73(%struct.TYPE_21__* %74, i32* %75)
  %77 = load i64, i64* @ERR_INTERNAL_ERROR, align 8
  store i64 %77, i64* %12, align 8
  br label %124

78:                                               ; preds = %65
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = mul nuw i64 4, %25
  %83 = trunc i64 %82 to i32
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @CmdGenerateImportName(i32 %81, i32* %27, i32 %83, i32 %88)
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @UniStrCpy(i32 %94, i32 4, i32* %27)
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %100 = call i64 @CcCreateAccount(i32 %98, %struct.TYPE_18__* %99)
  store i64 %100, i64* %12, align 8
  %101 = load i64, i64* %12, align 8
  %102 = load i64, i64* @ERR_NO_ERROR, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %119

104:                                              ; preds = %78
  %105 = load i32, i32* @MAX_SIZE, align 4
  %106 = zext i32 %105 to i64
  %107 = call i8* @llvm.stacksave()
  store i8* %107, i8** %19, align 8
  %108 = alloca i32, i64 %106, align 16
  store i64 %106, i64* %20, align 8
  %109 = mul nuw i64 4, %106
  %110 = trunc i64 %109 to i32
  %111 = call i32* @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %112 = call i32 @UniFormat(i32* %108, i32 %110, i32* %111, i32* %27)
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 0
  %115 = load i32 (%struct.TYPE_21__*, i32*)*, i32 (%struct.TYPE_21__*, i32*)** %114, align 8
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %117 = call i32 %115(%struct.TYPE_21__* %116, i32* %108)
  %118 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %118)
  br label %119

119:                                              ; preds = %104, %78
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %121 = call i32 @CiFreeClientCreateAccount(%struct.TYPE_18__* %120)
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %123 = call i32 @Free(%struct.TYPE_18__* %122)
  br label %124

124:                                              ; preds = %119, %70
  %125 = load i32*, i32** %13, align 8
  %126 = call i32 @FreeBuf(i32* %125)
  br label %127

127:                                              ; preds = %124, %57
  %128 = load i64, i64* %12, align 8
  %129 = load i64, i64* @ERR_NO_ERROR, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %127
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %133 = load i64, i64* %12, align 8
  %134 = call i32 @CmdPrintError(%struct.TYPE_21__* %132, i64 %133)
  br label %135

135:                                              ; preds = %131, %127
  %136 = load i32*, i32** %10, align 8
  %137 = call i32 @FreeParamValueList(i32* %136)
  %138 = load i64, i64* %12, align 8
  store i64 %138, i64* %5, align 8
  store i32 1, i32* %17, align 4
  br label %139

139:                                              ; preds = %135, %49
  %140 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %140)
  %141 = load i64, i64* %5, align 8
  ret i64 %141
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @_UU(i8*) #2

declare dso_local i32* @ParseCommandList(%struct.TYPE_21__*, i8*, i32*, %struct.TYPE_20__*, i32) #2

declare dso_local i32* @ReadDumpW(i32) #2

declare dso_local i32 @GetParamUniStr(i32*, i8*) #2

declare dso_local %struct.TYPE_18__* @CiCfgToAccount(i32*) #2

declare dso_local i32 @CmdGenerateImportName(i32, i32*, i32, i32) #2

declare dso_local i32 @UniStrCpy(i32, i32, i32*) #2

declare dso_local i64 @CcCreateAccount(i32, %struct.TYPE_18__*) #2

declare dso_local i32 @UniFormat(i32*, i32, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @CiFreeClientCreateAccount(%struct.TYPE_18__*) #2

declare dso_local i32 @Free(%struct.TYPE_18__*) #2

declare dso_local i32 @FreeBuf(i32*) #2

declare dso_local i32 @CmdPrintError(%struct.TYPE_21__*, i64) #2

declare dso_local i32 @FreeParamValueList(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
