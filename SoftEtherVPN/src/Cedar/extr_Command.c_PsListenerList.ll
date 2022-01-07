; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsListenerList.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsListenerList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64, i32*, i64*, i64* }

@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"CM_LISTENER_COLUMN_1\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"CM_LISTENER_COLUMN_2\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"CM_LISTENER_OFFLINE\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"CM_LISTENER_ERROR\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"CM_LISTENER_ONLINE\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"CM_LISTENER_TCP_PORT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsListenerList(i32* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_6__, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca [128 x i32], align 16
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %11, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = call i32* @ParseCommandList(i32* %20, i8* %21, i32* %22, i32* null, i32 0)
  store i32* %23, i32** %10, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %27, i64* %5, align 8
  br label %100

28:                                               ; preds = %4
  %29 = call i32 @Zero(%struct.TYPE_6__* %13, i32 32)
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @ScEnumListener(i32 %32, %struct.TYPE_6__* %13)
  store i64 %33, i64* %12, align 8
  %34 = load i64, i64* %12, align 8
  %35 = load i64, i64* @ERR_NO_ERROR, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %28
  %38 = load i32*, i32** %6, align 8
  %39 = load i64, i64* %12, align 8
  %40 = call i32 @CmdPrintError(i32* %38, i64 %39)
  %41 = load i32*, i32** %10, align 8
  %42 = call i32 @FreeParamValueList(i32* %41)
  %43 = load i64, i64* %12, align 8
  store i64 %43, i64* %5, align 8
  br label %100

44:                                               ; preds = %28
  %45 = call i32* (...) @CtNew()
  store i32* %45, i32** %15, align 8
  %46 = load i32*, i32** %15, align 8
  %47 = call i32* @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %48 = call i32 @CtInsertColumn(i32* %46, i32* %47, i32 0)
  %49 = load i32*, i32** %15, align 8
  %50 = call i32* @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %51 = call i32 @CtInsertColumn(i32* %49, i32* %50, i32 0)
  store i64 0, i64* %14, align 8
  br label %52

52:                                               ; preds = %90, %44
  %53 = load i64, i64* %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp slt i64 %53, %55
  br i1 %56, label %57, label %93

57:                                               ; preds = %52
  %58 = call i32* @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  store i32* %58, i32** %16, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 3
  %60 = load i64*, i64** %59, align 8
  %61 = load i64, i64* %14, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = call i32* @_UU(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  store i32* %66, i32** %16, align 8
  br label %77

67:                                               ; preds = %57
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %69 = load i64*, i64** %68, align 8
  %70 = load i64, i64* %14, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %67
  %75 = call i32* @_UU(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  store i32* %75, i32** %16, align 8
  br label %76

76:                                               ; preds = %74, %67
  br label %77

77:                                               ; preds = %76, %65
  %78 = getelementptr inbounds [128 x i32], [128 x i32]* %17, i64 0, i64 0
  %79 = call i32* @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* %14, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @UniFormat(i32* %78, i32 512, i32* %79, i32 %84)
  %86 = load i32*, i32** %15, align 8
  %87 = getelementptr inbounds [128 x i32], [128 x i32]* %17, i64 0, i64 0
  %88 = load i32*, i32** %16, align 8
  %89 = call i32 @CtInsert(i32* %86, i32* %87, i32* %88)
  br label %90

90:                                               ; preds = %77
  %91 = load i64, i64* %14, align 8
  %92 = add nsw i64 %91, 1
  store i64 %92, i64* %14, align 8
  br label %52

93:                                               ; preds = %52
  %94 = load i32*, i32** %15, align 8
  %95 = load i32*, i32** %6, align 8
  %96 = call i32 @CtFree(i32* %94, i32* %95)
  %97 = call i32 @FreeRpcListenerList(%struct.TYPE_6__* %13)
  %98 = load i32*, i32** %10, align 8
  %99 = call i32 @FreeParamValueList(i32* %98)
  store i64 0, i64* %5, align 8
  br label %100

100:                                              ; preds = %93, %37, %26
  %101 = load i64, i64* %5, align 8
  ret i64 %101
}

declare dso_local i32* @ParseCommandList(i32*, i8*, i32*, i32*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @ScEnumListener(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @CmdPrintError(i32*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

declare dso_local i32* @CtNew(...) #1

declare dso_local i32 @CtInsertColumn(i32*, i32*, i32) #1

declare dso_local i32* @_UU(i8*) #1

declare dso_local i32 @UniFormat(i32*, i32, i32*, i32) #1

declare dso_local i32 @CtInsert(i32*, i32*, i32*) #1

declare dso_local i32 @CtFree(i32*, i32*) #1

declare dso_local i32 @FreeRpcListenerList(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
