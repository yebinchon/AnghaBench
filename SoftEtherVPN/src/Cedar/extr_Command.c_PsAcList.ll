; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsAcList.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsAcList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 (%struct.TYPE_17__*, i32*)* }
%struct.TYPE_16__ = type { i32, i32* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i64, i32 }

@.str = private unnamed_addr constant [21 x i8] c"CMD_Hub_Not_Selected\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"SM_AC_COLUMN_1\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"SM_AC_COLUMN_2\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"SM_AC_COLUMN_3\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"SM_AC_COLUMN_4\00", align 1
@MAX_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"SM_AC_DENY\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"SM_AC_PASS\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsAcList(%struct.TYPE_17__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_15__, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca [32 x i32], align 16
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca [32 x i32], align 16
  %21 = alloca i8*, align 8
  %22 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = bitcast i8* %23 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %24, %struct.TYPE_16__** %11, align 8
  store i64 0, i64* %12, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %4
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load i32 (%struct.TYPE_17__*, i32*)*, i32 (%struct.TYPE_17__*, i32*)** %31, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %34 = call i32* @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %35 = call i32 %32(%struct.TYPE_17__* %33, i32* %34)
  %36 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %36, i64* %5, align 8
  br label %142

37:                                               ; preds = %4
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = call i32* @ParseCommandList(%struct.TYPE_17__* %38, i8* %39, i32* %40, i32* null, i32 0)
  store i32* %41, i32** %10, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %45, i64* %5, align 8
  br label %142

46:                                               ; preds = %37
  %47 = call i32 @Zero(%struct.TYPE_15__* %13, i32 8)
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @StrCpy(i32 %49, i32 4, i32* %52)
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @ScGetAcList(i32 %56, %struct.TYPE_15__* %13)
  store i64 %57, i64* %12, align 8
  %58 = load i64, i64* %12, align 8
  %59 = load i64, i64* @ERR_NO_ERROR, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %46
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %63 = load i64, i64* %12, align 8
  %64 = call i32 @CmdPrintError(%struct.TYPE_17__* %62, i64 %63)
  %65 = load i32*, i32** %10, align 8
  %66 = call i32 @FreeParamValueList(i32* %65)
  %67 = load i64, i64* %12, align 8
  store i64 %67, i64* %5, align 8
  br label %142

68:                                               ; preds = %46
  %69 = call i32* (...) @CtNew()
  store i32* %69, i32** %15, align 8
  %70 = load i32*, i32** %15, align 8
  %71 = call i32* @_UU(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %72 = call i32 @CtInsertColumn(i32* %70, i32* %71, i32 1)
  %73 = load i32*, i32** %15, align 8
  %74 = call i32* @_UU(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %75 = call i32 @CtInsertColumn(i32* %73, i32* %74, i32 1)
  %76 = load i32*, i32** %15, align 8
  %77 = call i32* @_UU(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %78 = call i32 @CtInsertColumn(i32* %76, i32* %77, i32 0)
  %79 = load i32*, i32** %15, align 8
  %80 = call i32* @_UU(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %81 = call i32 @CtInsertColumn(i32* %79, i32* %80, i32 0)
  store i64 0, i64* %14, align 8
  br label %82

82:                                               ; preds = %131, %68
  %83 = load i64, i64* %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @LIST_NUM(i32 %85)
  %87 = icmp slt i64 %83, %86
  br i1 %87, label %88, label %134

88:                                               ; preds = %82
  %89 = load i32, i32* @MAX_SIZE, align 4
  %90 = zext i32 %89 to i64
  %91 = call i8* @llvm.stacksave()
  store i8* %91, i8** %18, align 8
  %92 = alloca i32, i64 %90, align 16
  store i64 %90, i64* %19, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i64, i64* %14, align 8
  %96 = call %struct.TYPE_18__* @LIST_DATA(i32 %94, i64 %95)
  store %struct.TYPE_18__* %96, %struct.TYPE_18__** %22, align 8
  %97 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 0
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @UniToStru(i32* %97, i32 %100)
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %88
  %107 = call i32* @_UU(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  br label %110

108:                                              ; preds = %88
  %109 = call i32* @_UU(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  br label %110

110:                                              ; preds = %108, %106
  %111 = phi i32* [ %107, %106 ], [ %109, %108 ]
  store i32* %111, i32** %17, align 8
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %113 = call i8* @GenerateAcStr(%struct.TYPE_18__* %112)
  store i8* %113, i8** %21, align 8
  %114 = mul nuw i64 4, %90
  %115 = trunc i64 %114 to i32
  %116 = load i8*, i8** %21, align 8
  %117 = call i32 @StrToUni(i32* %92, i32 %115, i8* %116)
  %118 = load i8*, i8** %21, align 8
  %119 = call i32 @Free(i8* %118)
  %120 = getelementptr inbounds [32 x i32], [32 x i32]* %20, i64 0, i64 0
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @UniToStru(i32* %120, i32 %123)
  %125 = load i32*, i32** %15, align 8
  %126 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 0
  %127 = getelementptr inbounds [32 x i32], [32 x i32]* %20, i64 0, i64 0
  %128 = load i32*, i32** %17, align 8
  %129 = call i32 @CtInsert(i32* %125, i32* %126, i32* %127, i32* %128, i32* %92)
  %130 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %130)
  br label %131

131:                                              ; preds = %110
  %132 = load i64, i64* %14, align 8
  %133 = add nsw i64 %132, 1
  store i64 %133, i64* %14, align 8
  br label %82

134:                                              ; preds = %82
  %135 = load i32*, i32** %15, align 8
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %137 = call i32 @CtFree(i32* %135, %struct.TYPE_17__* %136)
  br label %138

138:                                              ; preds = %134
  %139 = call i32 @FreeRpcAcList(%struct.TYPE_15__* %13)
  %140 = load i32*, i32** %10, align 8
  %141 = call i32 @FreeParamValueList(i32* %140)
  store i64 0, i64* %5, align 8
  br label %142

142:                                              ; preds = %138, %61, %44, %29
  %143 = load i64, i64* %5, align 8
  ret i64 %143
}

declare dso_local i32* @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(%struct.TYPE_17__*, i8*, i32*, i32*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32*) #1

declare dso_local i64 @ScGetAcList(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @CmdPrintError(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

declare dso_local i32* @CtNew(...) #1

declare dso_local i32 @CtInsertColumn(i32*, i32*, i32) #1

declare dso_local i64 @LIST_NUM(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.TYPE_18__* @LIST_DATA(i32, i64) #1

declare dso_local i32 @UniToStru(i32*, i32) #1

declare dso_local i8* @GenerateAcStr(%struct.TYPE_18__*) #1

declare dso_local i32 @StrToUni(i32*, i32, i8*) #1

declare dso_local i32 @Free(i8*) #1

declare dso_local i32 @CtInsert(i32*, i32*, i32*, i32*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @CtFree(i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @FreeRpcAcList(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
