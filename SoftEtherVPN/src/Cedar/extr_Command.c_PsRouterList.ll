; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsRouterList.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsRouterList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }

@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"SM_L3_SW_COLUMN1\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"SM_L3_SW_COLUMN2\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"SM_L3_SW_COLUMN3\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"SM_L3_SW_COLUMN4\00", align 1
@MAX_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"SM_L3_SW_ST_F_F\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"SM_L3_SW_ST_T_F\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"SM_L3_SW_ST_T_T\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsRouterList(i32* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_8__, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_7__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca [64 x i32], align 16
  %21 = alloca [64 x i32], align 16
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %11, align 8
  store i64 0, i64* %12, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = call i32* @ParseCommandList(i32* %24, i8* %25, i32* %26, i32* null, i32 0)
  store i32* %27, i32** %10, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %31, i64* %5, align 8
  br label %126

32:                                               ; preds = %4
  %33 = call i32 @Zero(%struct.TYPE_8__* %13, i32 16)
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @ScEnumL3Switch(i32 %36, %struct.TYPE_8__* %13)
  store i64 %37, i64* %12, align 8
  %38 = load i64, i64* %12, align 8
  %39 = load i64, i64* @ERR_NO_ERROR, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %32
  %42 = load i32*, i32** %6, align 8
  %43 = load i64, i64* %12, align 8
  %44 = call i32 @CmdPrintError(i32* %42, i64 %43)
  %45 = load i32*, i32** %10, align 8
  %46 = call i32 @FreeParamValueList(i32* %45)
  %47 = load i64, i64* %12, align 8
  store i64 %47, i64* %5, align 8
  br label %126

48:                                               ; preds = %32
  %49 = call i32* (...) @CtNew()
  store i32* %49, i32** %14, align 8
  %50 = load i32*, i32** %14, align 8
  %51 = call i32* @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %52 = call i32 @CtInsertColumn(i32* %50, i32* %51, i32 0)
  %53 = load i32*, i32** %14, align 8
  %54 = call i32* @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %55 = call i32 @CtInsertColumn(i32* %53, i32* %54, i32 0)
  %56 = load i32*, i32** %14, align 8
  %57 = call i32* @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %58 = call i32 @CtInsertColumn(i32* %56, i32* %57, i32 1)
  %59 = load i32*, i32** %14, align 8
  %60 = call i32* @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %61 = call i32 @CtInsertColumn(i32* %59, i32* %60, i32 1)
  store i64 0, i64* %15, align 8
  br label %62

62:                                               ; preds = %115, %48
  %63 = load i64, i64* %15, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp slt i64 %63, %65
  br i1 %66, label %67, label %118

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = load i64, i64* %15, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i64 %70
  store %struct.TYPE_7__* %71, %struct.TYPE_7__** %16, align 8
  %72 = load i32, i32* @MAX_SIZE, align 4
  %73 = zext i32 %72 to i64
  %74 = call i8* @llvm.stacksave()
  store i8* %74, i8** %17, align 8
  %75 = alloca i32, i64 %73, align 16
  store i64 %73, i64* %18, align 8
  %76 = mul nuw i64 4, %73
  %77 = trunc i64 %76 to i32
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @StrToUni(i32* %75, i32 %77, i32 %80)
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %67
  %87 = call i32* @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  store i32* %87, i32** %19, align 8
  br label %98

88:                                               ; preds = %67
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %88
  %94 = call i32* @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  store i32* %94, i32** %19, align 8
  br label %97

95:                                               ; preds = %88
  %96 = call i32* @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  store i32* %96, i32** %19, align 8
  br label %97

97:                                               ; preds = %95, %93
  br label %98

98:                                               ; preds = %97, %86
  %99 = getelementptr inbounds [64 x i32], [64 x i32]* %20, i64 0, i64 0
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @UniToStru(i32* %99, i32 %102)
  %104 = getelementptr inbounds [64 x i32], [64 x i32]* %21, i64 0, i64 0
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @UniToStru(i32* %104, i32 %107)
  %109 = load i32*, i32** %14, align 8
  %110 = load i32*, i32** %19, align 8
  %111 = getelementptr inbounds [64 x i32], [64 x i32]* %20, i64 0, i64 0
  %112 = getelementptr inbounds [64 x i32], [64 x i32]* %21, i64 0, i64 0
  %113 = call i32 @CtInsert(i32* %109, i32* %75, i32* %110, i32* %111, i32* %112)
  %114 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %114)
  br label %115

115:                                              ; preds = %98
  %116 = load i64, i64* %15, align 8
  %117 = add nsw i64 %116, 1
  store i64 %117, i64* %15, align 8
  br label %62

118:                                              ; preds = %62
  %119 = load i32*, i32** %14, align 8
  %120 = load i32*, i32** %6, align 8
  %121 = call i32 @CtFree(i32* %119, i32* %120)
  br label %122

122:                                              ; preds = %118
  %123 = call i32 @FreeRpcEnumL3Sw(%struct.TYPE_8__* %13)
  %124 = load i32*, i32** %10, align 8
  %125 = call i32 @FreeParamValueList(i32* %124)
  store i64 0, i64* %5, align 8
  br label %126

126:                                              ; preds = %122, %41, %30
  %127 = load i64, i64* %5, align 8
  ret i64 %127
}

declare dso_local i32* @ParseCommandList(i32*, i8*, i32*, i32*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @ScEnumL3Switch(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @CmdPrintError(i32*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

declare dso_local i32* @CtNew(...) #1

declare dso_local i32 @CtInsertColumn(i32*, i32*, i32) #1

declare dso_local i32* @_UU(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @StrToUni(i32*, i32, i32) #1

declare dso_local i32 @UniToStru(i32*, i32) #1

declare dso_local i32 @CtInsert(i32*, i32*, i32*, i32*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @CtFree(i32*, i32*) #1

declare dso_local i32 @FreeRpcEnumL3Sw(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
