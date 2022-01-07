; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsCrlList.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsCrlList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 (%struct.TYPE_16__*, i32)* }
%struct.TYPE_15__ = type { i32, i32* }
%struct.TYPE_14__ = type { i64, %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"CMD_Hub_Not_Selected\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"CMD_ID\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"SM_CRL_COLUMN_1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsCrlList(%struct.TYPE_16__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_14__, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca [64 x i32], align 16
  %17 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %19, %struct.TYPE_15__** %11, align 8
  store i64 0, i64* %12, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %4
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = load i32 (%struct.TYPE_16__*, i32)*, i32 (%struct.TYPE_16__*, i32)** %26, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %29 = call i32 @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %30 = call i32 %27(%struct.TYPE_16__* %28, i32 %29)
  %31 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %31, i64* %5, align 8
  br label %103

32:                                               ; preds = %4
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = call i32* @ParseCommandList(%struct.TYPE_16__* %33, i8* %34, i32* %35, i32* null, i32 0)
  store i32* %36, i32** %10, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %40, i64* %5, align 8
  br label %103

41:                                               ; preds = %32
  %42 = call i32 @Zero(%struct.TYPE_14__* %13, i32 24)
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @StrCpy(i32 %44, i32 4, i32* %47)
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @ScEnumCrl(i32 %51, %struct.TYPE_14__* %13)
  store i64 %52, i64* %12, align 8
  %53 = load i64, i64* %12, align 8
  %54 = load i64, i64* @ERR_NO_ERROR, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %41
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %58 = load i64, i64* %12, align 8
  %59 = call i32 @CmdPrintError(%struct.TYPE_16__* %57, i64 %58)
  %60 = load i32*, i32** %10, align 8
  %61 = call i32 @FreeParamValueList(i32* %60)
  %62 = load i64, i64* %12, align 8
  store i64 %62, i64* %5, align 8
  br label %103

63:                                               ; preds = %41
  %64 = call i32* (...) @CtNew()
  store i32* %64, i32** %15, align 8
  %65 = load i32*, i32** %15, align 8
  %66 = call i32 @_UU(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %67 = call i32 @CtInsertColumn(i32* %65, i32 %66, i32 0)
  %68 = load i32*, i32** %15, align 8
  %69 = call i32 @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %70 = call i32 @CtInsertColumn(i32* %68, i32 %69, i32 0)
  store i64 0, i64* %14, align 8
  br label %71

71:                                               ; preds = %92, %63
  %72 = load i64, i64* %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp slt i64 %72, %74
  br i1 %75, label %76, label %95

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %77, align 8
  %79 = load i64, i64* %14, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i64 %79
  store %struct.TYPE_13__* %80, %struct.TYPE_13__** %17, align 8
  %81 = getelementptr inbounds [64 x i32], [64 x i32]* %16, i64 0, i64 0
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @UniToStru(i32* %81, i32 %84)
  %86 = load i32*, i32** %15, align 8
  %87 = getelementptr inbounds [64 x i32], [64 x i32]* %16, i64 0, i64 0
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @CtInsert(i32* %86, i32* %87, i32 %90)
  br label %92

92:                                               ; preds = %76
  %93 = load i64, i64* %14, align 8
  %94 = add nsw i64 %93, 1
  store i64 %94, i64* %14, align 8
  br label %71

95:                                               ; preds = %71
  %96 = load i32*, i32** %15, align 8
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %98 = call i32 @CtFreeEx(i32* %96, %struct.TYPE_16__* %97, i32 1)
  br label %99

99:                                               ; preds = %95
  %100 = call i32 @FreeRpcEnumCrl(%struct.TYPE_14__* %13)
  %101 = load i32*, i32** %10, align 8
  %102 = call i32 @FreeParamValueList(i32* %101)
  store i64 0, i64* %5, align 8
  br label %103

103:                                              ; preds = %99, %56, %39, %24
  %104 = load i64, i64* %5, align 8
  ret i64 %104
}

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(%struct.TYPE_16__*, i8*, i32*, i32*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32*) #1

declare dso_local i64 @ScEnumCrl(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @CmdPrintError(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

declare dso_local i32* @CtNew(...) #1

declare dso_local i32 @CtInsertColumn(i32*, i32, i32) #1

declare dso_local i32 @UniToStru(i32*, i32) #1

declare dso_local i32 @CtInsert(i32*, i32*, i32) #1

declare dso_local i32 @CtFreeEx(i32*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @FreeRpcEnumCrl(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
