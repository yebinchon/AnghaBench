; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsCascadeHttpHeaderGet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsCascadeHttpHeaderGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32 (%struct.TYPE_21__*, i32)* }
%struct.TYPE_19__ = type { i32, i32* }
%struct.TYPE_18__ = type { %struct.TYPE_22__*, i32 }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_20__ = type { i8*, i32*, i32, i32, i32 }
%struct.TYPE_17__ = type { i64, i32* }

@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"[name]\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"CMD_CascadeCreate_Prompt_Name\00", align 1
@CmdEvalNotEmpty = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"CMD_Hub_Not_Selected\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@HTTP_CUSTOM_HEADER_MAX_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"CMD_CT_STD_COLUMN_1\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsCascadeHttpHeaderGet(%struct.TYPE_21__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_18__, align 8
  %14 = alloca [1 x %struct.TYPE_20__], align 16
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_17__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %21, %struct.TYPE_19__** %11, align 8
  %22 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %22, i64* %12, align 8
  %23 = getelementptr inbounds [1 x %struct.TYPE_20__], [1 x %struct.TYPE_20__]* %14, i64 0, i64 0
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %24, align 16
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 1
  %26 = load i32, i32* @CmdPrompt, align 4
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i32*
  store i32* %28, i32** %25, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 2
  %30 = call i32 @_UU(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 %30, i32* %29, align 16
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 3
  %32 = load i32, i32* @CmdEvalNotEmpty, align 4
  store i32 %32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 4
  store i32 0, i32* %33, align 8
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %4
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 0
  %41 = load i32 (%struct.TYPE_21__*, i32)*, i32 (%struct.TYPE_21__*, i32)** %40, align 8
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %43 = call i32 @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %44 = call i32 %41(%struct.TYPE_21__* %42, i32 %43)
  %45 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %45, i64* %5, align 8
  br label %129

46:                                               ; preds = %4
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = getelementptr inbounds [1 x %struct.TYPE_20__], [1 x %struct.TYPE_20__]* %14, i64 0, i64 0
  %51 = call i32* @ParseCommandList(%struct.TYPE_21__* %47, i8* %48, i32* %49, %struct.TYPE_20__* %50, i32 1)
  store i32* %51, i32** %10, align 8
  %52 = load i32*, i32** %10, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %55, i64* %5, align 8
  br label %129

56:                                               ; preds = %46
  %57 = call i32 @Zero(%struct.TYPE_18__* %13, i32 16)
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @StrCpy(i32 %59, i32 4, i32* %62)
  %64 = call %struct.TYPE_22__* @ZeroMalloc(i32 4)
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  store %struct.TYPE_22__* %64, %struct.TYPE_22__** %65, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %10, align 8
  %71 = call i32 @GetParamUniStr(i32* %70, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %72 = call i32 @UniStrCpy(i32 %69, i32 4, i32 %71)
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @ScGetLink(i32 %75, %struct.TYPE_18__* %13)
  store i64 %76, i64* %12, align 8
  %77 = load i32*, i32** %10, align 8
  %78 = call i32 @FreeParamValueList(i32* %77)
  %79 = load i64, i64* %12, align 8
  %80 = load i64, i64* @ERR_NO_ERROR, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %122

82:                                               ; preds = %56
  %83 = load i32, i32* @HTTP_CUSTOM_HEADER_MAX_SIZE, align 4
  %84 = zext i32 %83 to i64
  %85 = call i8* @llvm.stacksave()
  store i8* %85, i8** %15, align 8
  %86 = alloca i32, i64 %84, align 16
  store i64 %84, i64* %16, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %17, align 8
  store i64 0, i64* %18, align 8
  %87 = call i32* (...) @CtNew()
  store i32* %87, i32** %19, align 8
  %88 = load i32*, i32** %19, align 8
  %89 = call i32 @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %90 = call i32 @CtInsertColumn(i32* %88, i32 %89, i32 0)
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call %struct.TYPE_17__* @ParseToken(i32 %94, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store %struct.TYPE_17__* %95, %struct.TYPE_17__** %17, align 8
  store i64 0, i64* %18, align 8
  br label %96

96:                                               ; preds = %114, %82
  %97 = load i64, i64* %18, align 8
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp slt i64 %97, %100
  br i1 %101, label %102, label %117

102:                                              ; preds = %96
  %103 = mul nuw i64 4, %84
  %104 = trunc i64 %103 to i32
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load i64, i64* %18, align 8
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @StrToUni(i32* %86, i32 %104, i32 %110)
  %112 = load i32*, i32** %19, align 8
  %113 = call i32 @CtInsert(i32* %112, i32* %86)
  br label %114

114:                                              ; preds = %102
  %115 = load i64, i64* %18, align 8
  %116 = add nsw i64 %115, 1
  store i64 %116, i64* %18, align 8
  br label %96

117:                                              ; preds = %96
  %118 = load i32*, i32** %19, align 8
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %120 = call i32 @CtFreeEx(i32* %118, %struct.TYPE_21__* %119, i32 0)
  %121 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %121)
  br label %126

122:                                              ; preds = %56
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %124 = load i64, i64* %12, align 8
  %125 = call i32 @CmdPrintError(%struct.TYPE_21__* %123, i64 %124)
  br label %126

126:                                              ; preds = %122, %117
  %127 = call i32 @FreeRpcCreateLink(%struct.TYPE_18__* %13)
  %128 = load i64, i64* %12, align 8
  store i64 %128, i64* %5, align 8
  br label %129

129:                                              ; preds = %126, %54, %38
  %130 = load i64, i64* %5, align 8
  ret i64 %130
}

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(%struct.TYPE_21__*, i8*, i32*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32*) #1

declare dso_local %struct.TYPE_22__* @ZeroMalloc(i32) #1

declare dso_local i32 @UniStrCpy(i32, i32, i32) #1

declare dso_local i32 @GetParamUniStr(i32*, i8*) #1

declare dso_local i64 @ScGetLink(i32, %struct.TYPE_18__*) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32* @CtNew(...) #1

declare dso_local i32 @CtInsertColumn(i32*, i32, i32) #1

declare dso_local %struct.TYPE_17__* @ParseToken(i32, i8*) #1

declare dso_local i32 @StrToUni(i32*, i32, i32) #1

declare dso_local i32 @CtInsert(i32*, i32*) #1

declare dso_local i32 @CtFreeEx(i32*, %struct.TYPE_21__*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @CmdPrintError(%struct.TYPE_21__*, i64) #1

declare dso_local i32 @FreeRpcCreateLink(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
