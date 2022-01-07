; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsBridgeList.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsBridgeList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64, i32, i32 }

@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"SM_BRIDGE_COLUMN_1\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"SM_BRIDGE_COLUMN_2\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"SM_BRIDGE_COLUMN_3\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"SM_BRIDGE_COLUMN_4\00", align 1
@MAX_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"SM_BRIDGE_OFFLINE\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"SM_BRIDGE_ONLINE\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"SM_BRIDGE_ERROR\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsBridgeList(i32* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_8__, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_7__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
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
  br label %128

32:                                               ; preds = %4
  %33 = call i32 @Zero(%struct.TYPE_8__* %13, i32 16)
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @ScEnumLocalBridge(i32 %36, %struct.TYPE_8__* %13)
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
  br label %128

48:                                               ; preds = %32
  %49 = call i32* (...) @CtNew()
  store i32* %49, i32** %15, align 8
  %50 = load i32*, i32** %15, align 8
  %51 = call i32* @_UU(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %52 = call i32 @CtInsertColumn(i32* %50, i32* %51, i32 0)
  %53 = load i32*, i32** %15, align 8
  %54 = call i32* @_UU(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %55 = call i32 @CtInsertColumn(i32* %53, i32* %54, i32 0)
  %56 = load i32*, i32** %15, align 8
  %57 = call i32* @_UU(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %58 = call i32 @CtInsertColumn(i32* %56, i32* %57, i32 0)
  %59 = load i32*, i32** %15, align 8
  %60 = call i32* @_UU(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %61 = call i32 @CtInsertColumn(i32* %59, i32* %60, i32 0)
  store i64 0, i64* %14, align 8
  br label %62

62:                                               ; preds = %118, %48
  %63 = load i64, i64* %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp slt i64 %63, %65
  br i1 %66, label %67, label %121

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = load i64, i64* %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i64 %70
  store %struct.TYPE_7__* %71, %struct.TYPE_7__** %16, align 8
  %72 = load i32, i32* @MAX_SIZE, align 4
  %73 = zext i32 %72 to i64
  %74 = call i8* @llvm.stacksave()
  store i8* %74, i8** %17, align 8
  %75 = alloca i32, i64 %73, align 16
  store i64 %73, i64* %18, align 8
  %76 = load i32, i32* @MAX_SIZE, align 4
  %77 = zext i32 %76 to i64
  %78 = alloca i32, i64 %77, align 16
  store i64 %77, i64* %19, align 8
  %79 = load i32, i32* @MAX_SIZE, align 4
  %80 = zext i32 %79 to i64
  %81 = alloca i32, i64 %80, align 16
  store i64 %80, i64* %20, align 8
  %82 = call i32* @_UU(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  store i32* %82, i32** %21, align 8
  %83 = load i64, i64* %14, align 8
  %84 = add nsw i64 %83, 1
  %85 = call i32 @UniToStru(i32* %75, i64 %84)
  %86 = mul nuw i64 4, %77
  %87 = trunc i64 %86 to i32
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @StrToUni(i32* %78, i32 %87, i32 %90)
  %92 = mul nuw i64 4, %80
  %93 = trunc i64 %92 to i32
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @StrToUni(i32* %81, i32 %93, i32 %96)
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %67
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %102
  %108 = call i32* @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  br label %111

109:                                              ; preds = %102
  %110 = call i32* @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  br label %111

111:                                              ; preds = %109, %107
  %112 = phi i32* [ %108, %107 ], [ %110, %109 ]
  store i32* %112, i32** %21, align 8
  br label %113

113:                                              ; preds = %111, %67
  %114 = load i32*, i32** %15, align 8
  %115 = load i32*, i32** %21, align 8
  %116 = call i32 @CtInsert(i32* %114, i32* %75, i32* %81, i32* %78, i32* %115)
  %117 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %117)
  br label %118

118:                                              ; preds = %113
  %119 = load i64, i64* %14, align 8
  %120 = add nsw i64 %119, 1
  store i64 %120, i64* %14, align 8
  br label %62

121:                                              ; preds = %62
  %122 = load i32*, i32** %15, align 8
  %123 = load i32*, i32** %6, align 8
  %124 = call i32 @CtFree(i32* %122, i32* %123)
  %125 = call i32 @FreeRpcEnumLocalBridge(%struct.TYPE_8__* %13)
  %126 = load i32*, i32** %10, align 8
  %127 = call i32 @FreeParamValueList(i32* %126)
  store i64 0, i64* %5, align 8
  br label %128

128:                                              ; preds = %121, %41, %30
  %129 = load i64, i64* %5, align 8
  ret i64 %129
}

declare dso_local i32* @ParseCommandList(i32*, i8*, i32*, i32*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @ScEnumLocalBridge(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @CmdPrintError(i32*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

declare dso_local i32* @CtNew(...) #1

declare dso_local i32 @CtInsertColumn(i32*, i32*, i32) #1

declare dso_local i32* @_UU(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @UniToStru(i32*, i64) #1

declare dso_local i32 @StrToUni(i32*, i32, i32) #1

declare dso_local i32 @CtInsert(i32*, i32*, i32*, i32*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @CtFree(i32*, i32*) #1

declare dso_local i32 @FreeRpcEnumLocalBridge(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
