; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsRouterTableList.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsRouterTableList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i8*, i32*, i32, i32, i32 }

@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"[name]\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"CMD_RouterTableList_PROMPT_NAME\00", align 1
@CmdEvalNotEmpty = common dso_local global i32 0, align 4
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"SM_L3_SW_TABLE_COLUMN1\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"SM_L3_SW_TABLE_COLUMN2\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"SM_L3_SW_TABLE_COLUMN3\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"SM_L3_SW_TABLE_COLUMN4\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsRouterTableList(i32* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_10__, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca [1 x %struct.TYPE_12__], align 16
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = bitcast i8* %24 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %25, %struct.TYPE_11__** %11, align 8
  store i64 0, i64* %12, align 8
  %26 = load i32, i32* @MAX_SIZE, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %15, align 8
  %29 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %16, align 8
  %30 = load i32, i32* @MAX_SIZE, align 4
  %31 = zext i32 %30 to i64
  %32 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %17, align 8
  %33 = load i32, i32* @MAX_SIZE, align 4
  %34 = zext i32 %33 to i64
  %35 = alloca i32, i64 %34, align 16
  store i64 %34, i64* %18, align 8
  %36 = load i32, i32* @MAX_SIZE, align 4
  %37 = zext i32 %36 to i64
  %38 = alloca i32, i64 %37, align 16
  store i64 %37, i64* %19, align 8
  %39 = getelementptr inbounds [1 x %struct.TYPE_12__], [1 x %struct.TYPE_12__]* %20, i64 0, i64 0
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %40, align 16
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  %42 = load i32, i32* @CmdPrompt, align 4
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i32*
  store i32* %44, i32** %41, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 2
  %46 = call i32 @_UU(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 %46, i32* %45, align 16
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 3
  %48 = load i32, i32* @CmdEvalNotEmpty, align 4
  store i32 %48, i32* %47, align 4
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 4
  store i32 0, i32* %49, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = getelementptr inbounds [1 x %struct.TYPE_12__], [1 x %struct.TYPE_12__]* %20, i64 0, i64 0
  %54 = call i32* @ParseCommandList(i32* %50, i8* %51, i32* %52, %struct.TYPE_12__* %53, i32 1)
  store i32* %54, i32** %10, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %4
  %58 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %58, i64* %5, align 8
  store i32 1, i32* %21, align 4
  br label %139

59:                                               ; preds = %4
  %60 = call i32 @Zero(%struct.TYPE_10__* %13, i32 24)
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = call i32 @GetParamStr(i32* %63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %65 = call i32 @StrCpy(i32 %62, i32 4, i32 %64)
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @ScEnumL3Table(i32 %68, %struct.TYPE_10__* %13)
  store i64 %69, i64* %12, align 8
  %70 = load i64, i64* %12, align 8
  %71 = load i64, i64* @ERR_NO_ERROR, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %59
  %74 = load i32*, i32** %6, align 8
  %75 = load i64, i64* %12, align 8
  %76 = call i32 @CmdPrintError(i32* %74, i64 %75)
  %77 = load i32*, i32** %10, align 8
  %78 = call i32 @FreeParamValueList(i32* %77)
  %79 = load i64, i64* %12, align 8
  store i64 %79, i64* %5, align 8
  store i32 1, i32* %21, align 4
  br label %139

80:                                               ; preds = %59
  %81 = call i32* (...) @CtNew()
  store i32* %81, i32** %14, align 8
  %82 = load i32*, i32** %14, align 8
  %83 = call i32 @_UU(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %84 = call i32 @CtInsertColumn(i32* %82, i32 %83, i32 0)
  %85 = load i32*, i32** %14, align 8
  %86 = call i32 @_UU(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %87 = call i32 @CtInsertColumn(i32* %85, i32 %86, i32 0)
  %88 = load i32*, i32** %14, align 8
  %89 = call i32 @_UU(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %90 = call i32 @CtInsertColumn(i32* %88, i32 %89, i32 0)
  %91 = load i32*, i32** %14, align 8
  %92 = call i32 @_UU(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %93 = call i32 @CtInsertColumn(i32* %91, i32 %92, i32 1)
  store i64 0, i64* %22, align 8
  br label %94

94:                                               ; preds = %128, %80
  %95 = load i64, i64* %22, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp slt i64 %95, %97
  br i1 %98, label %99, label %131

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %100, align 8
  %102 = load i64, i64* %22, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i64 %102
  store %struct.TYPE_9__* %103, %struct.TYPE_9__** %23, align 8
  %104 = mul nuw i64 4, %27
  %105 = trunc i64 %104 to i32
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @IPToUniStr32(i32* %29, i32 %105, i32 %108)
  %110 = mul nuw i64 4, %31
  %111 = trunc i64 %110 to i32
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @IPToUniStr32(i32* %32, i32 %111, i32 %114)
  %116 = mul nuw i64 4, %34
  %117 = trunc i64 %116 to i32
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @IPToUniStr32(i32* %35, i32 %117, i32 %120)
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @UniToStru(i32* %38, i32 %124)
  %126 = load i32*, i32** %14, align 8
  %127 = call i32 @CtInsert(i32* %126, i32* %29, i32* %32, i32* %35, i32* %38)
  br label %128

128:                                              ; preds = %99
  %129 = load i64, i64* %22, align 8
  %130 = add nsw i64 %129, 1
  store i64 %130, i64* %22, align 8
  br label %94

131:                                              ; preds = %94
  %132 = load i32*, i32** %14, align 8
  %133 = load i32*, i32** %6, align 8
  %134 = call i32 @CtFree(i32* %132, i32* %133)
  br label %135

135:                                              ; preds = %131
  %136 = call i32 @FreeRpcEnumL3Table(%struct.TYPE_10__* %13)
  %137 = load i32*, i32** %10, align 8
  %138 = call i32 @FreeParamValueList(i32* %137)
  store i64 0, i64* %5, align 8
  store i32 1, i32* %21, align 4
  br label %139

139:                                              ; preds = %135, %73, %57
  %140 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %140)
  %141 = load i64, i64* %5, align 8
  ret i64 %141
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @_UU(i8*) #2

declare dso_local i32* @ParseCommandList(i32*, i8*, i32*, %struct.TYPE_12__*, i32) #2

declare dso_local i32 @Zero(%struct.TYPE_10__*, i32) #2

declare dso_local i32 @StrCpy(i32, i32, i32) #2

declare dso_local i32 @GetParamStr(i32*, i8*) #2

declare dso_local i64 @ScEnumL3Table(i32, %struct.TYPE_10__*) #2

declare dso_local i32 @CmdPrintError(i32*, i64) #2

declare dso_local i32 @FreeParamValueList(i32*) #2

declare dso_local i32* @CtNew(...) #2

declare dso_local i32 @CtInsertColumn(i32*, i32, i32) #2

declare dso_local i32 @IPToUniStr32(i32*, i32, i32) #2

declare dso_local i32 @UniToStru(i32*, i32) #2

declare dso_local i32 @CtInsert(i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @CtFree(i32*, i32*) #2

declare dso_local i32 @FreeRpcEnumL3Table(%struct.TYPE_10__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
