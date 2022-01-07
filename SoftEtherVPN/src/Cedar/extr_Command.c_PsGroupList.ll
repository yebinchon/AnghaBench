; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsGroupList.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsGroupList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 (%struct.TYPE_16__*, i32)* }
%struct.TYPE_15__ = type { i32, i32* }
%struct.TYPE_14__ = type { i64, %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }

@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"CMD_Hub_Not_Selected\00", align 1
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"SM_GROUPLIST_NAME\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"SM_GROUPLIST_REALNAME\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"SM_GROUPLIST_NOTE\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"SM_GROUPLIST_NUMUSERS\00", align 1
@MAX_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsGroupList(%struct.TYPE_16__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_14__, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %21, %struct.TYPE_15__** %11, align 8
  store i64 0, i64* %12, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = call i32* @ParseCommandList(%struct.TYPE_16__* %22, i8* %23, i32* %24, i32* null, i32 0)
  store i32* %25, i32** %10, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %29, i64* %5, align 8
  br label %126

30:                                               ; preds = %4
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = load i32 (%struct.TYPE_16__*, i32)*, i32 (%struct.TYPE_16__*, i32)** %37, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %40 = call i32 @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %41 = call i32 %38(%struct.TYPE_16__* %39, i32 %40)
  %42 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %42, i64* %5, align 8
  br label %126

43:                                               ; preds = %30
  %44 = call i32 @Zero(%struct.TYPE_14__* %13, i32 24)
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @StrCpy(i32 %46, i32 4, i32* %49)
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @ScEnumGroup(i32 %53, %struct.TYPE_14__* %13)
  store i64 %54, i64* %12, align 8
  %55 = load i64, i64* %12, align 8
  %56 = load i64, i64* @ERR_NO_ERROR, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %43
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %60 = load i64, i64* %12, align 8
  %61 = call i32 @CmdPrintError(%struct.TYPE_16__* %59, i64 %60)
  %62 = load i32*, i32** %10, align 8
  %63 = call i32 @FreeParamValueList(i32* %62)
  %64 = load i64, i64* %12, align 8
  store i64 %64, i64* %5, align 8
  br label %126

65:                                               ; preds = %43
  %66 = call i32* (...) @CtNew()
  store i32* %66, i32** %14, align 8
  %67 = load i32*, i32** %14, align 8
  %68 = call i32 @_UU(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %69 = call i32 @CtInsertColumn(i32* %67, i32 %68, i32 0)
  %70 = load i32*, i32** %14, align 8
  %71 = call i32 @_UU(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %72 = call i32 @CtInsertColumn(i32* %70, i32 %71, i32 0)
  %73 = load i32*, i32** %14, align 8
  %74 = call i32 @_UU(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %75 = call i32 @CtInsertColumn(i32* %73, i32 %74, i32 0)
  %76 = load i32*, i32** %14, align 8
  %77 = call i32 @_UU(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %78 = call i32 @CtInsertColumn(i32* %76, i32 %77, i32 0)
  store i64 0, i64* %15, align 8
  br label %79

79:                                               ; preds = %115, %65
  %80 = load i64, i64* %15, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp slt i64 %80, %82
  br i1 %83, label %84, label %118

84:                                               ; preds = %79
  %85 = load i32, i32* @MAX_SIZE, align 4
  %86 = zext i32 %85 to i64
  %87 = call i8* @llvm.stacksave()
  store i8* %87, i8** %16, align 8
  %88 = alloca i32, i64 %86, align 16
  store i64 %86, i64* %17, align 8
  %89 = load i32, i32* @MAX_SIZE, align 4
  %90 = zext i32 %89 to i64
  %91 = alloca i32, i64 %90, align 16
  store i64 %90, i64* %18, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %92, align 8
  %94 = load i64, i64* %15, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i64 %94
  store %struct.TYPE_13__* %95, %struct.TYPE_13__** %19, align 8
  %96 = mul nuw i64 4, %86
  %97 = trunc i64 %96 to i32
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @StrToUni(i32* %88, i32 %97, i32 %100)
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @UniToStru(i32* %91, i32 %104)
  %106 = load i32*, i32** %14, align 8
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @CtInsert(i32* %106, i32* %88, i32 %109, i32 %112, i32* %91)
  %114 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %114)
  br label %115

115:                                              ; preds = %84
  %116 = load i64, i64* %15, align 8
  %117 = add nsw i64 %116, 1
  store i64 %117, i64* %15, align 8
  br label %79

118:                                              ; preds = %79
  %119 = load i32*, i32** %14, align 8
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %121 = call i32 @CtFreeEx(i32* %119, %struct.TYPE_16__* %120, i32 1)
  br label %122

122:                                              ; preds = %118
  %123 = call i32 @FreeRpcEnumGroup(%struct.TYPE_14__* %13)
  %124 = load i32*, i32** %10, align 8
  %125 = call i32 @FreeParamValueList(i32* %124)
  store i64 0, i64* %5, align 8
  br label %126

126:                                              ; preds = %122, %58, %35, %28
  %127 = load i64, i64* %5, align 8
  ret i64 %127
}

declare dso_local i32* @ParseCommandList(%struct.TYPE_16__*, i8*, i32*, i32*, i32) #1

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32 @Zero(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32*) #1

declare dso_local i64 @ScEnumGroup(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @CmdPrintError(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

declare dso_local i32* @CtNew(...) #1

declare dso_local i32 @CtInsertColumn(i32*, i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @StrToUni(i32*, i32, i32) #1

declare dso_local i32 @UniToStru(i32*, i32) #1

declare dso_local i32 @CtInsert(i32*, i32*, i32, i32, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @CtFreeEx(i32*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @FreeRpcEnumGroup(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
