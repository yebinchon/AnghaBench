; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsAdminOptionList.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsAdminOptionList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 (%struct.TYPE_15__*, i32)* }
%struct.TYPE_14__ = type { i32, i32* }
%struct.TYPE_13__ = type { i64, %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"CMD_Hub_Not_Selected\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@MAX_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsAdminOptionList(%struct.TYPE_15__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_13__, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_16__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %21, %struct.TYPE_14__** %11, align 8
  store i64 0, i64* %12, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %4
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = load i32 (%struct.TYPE_15__*, i32)*, i32 (%struct.TYPE_15__*, i32)** %28, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %31 = call i32 @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %32 = call i32 %29(%struct.TYPE_15__* %30, i32 %31)
  %33 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %33, i64* %5, align 8
  br label %112

34:                                               ; preds = %4
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = call i32* @ParseCommandList(%struct.TYPE_15__* %35, i8* %36, i32* %37, i32* null, i32 0)
  store i32* %38, i32** %10, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %42, i64* %5, align 8
  br label %112

43:                                               ; preds = %34
  %44 = call i32 @Zero(%struct.TYPE_13__* %13, i32 24)
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @StrCpy(i32 %46, i32 4, i32* %49)
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @ScGetHubAdminOptions(i32 %53, %struct.TYPE_13__* %13)
  store i64 %54, i64* %12, align 8
  %55 = load i64, i64* %12, align 8
  %56 = load i64, i64* @ERR_NO_ERROR, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %43
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %60 = load i64, i64* %12, align 8
  %61 = call i32 @CmdPrintError(%struct.TYPE_15__* %59, i64 %60)
  %62 = load i32*, i32** %10, align 8
  %63 = call i32 @FreeParamValueList(i32* %62)
  %64 = load i64, i64* %12, align 8
  store i64 %64, i64* %5, align 8
  br label %112

65:                                               ; preds = %43
  %66 = call i32* (...) @CtNewStandardEx()
  store i32* %66, i32** %14, align 8
  store i64 0, i64* %15, align 8
  br label %67

67:                                               ; preds = %101, %65
  %68 = load i64, i64* %15, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp slt i64 %68, %70
  br i1 %71, label %72, label %104

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 1
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %73, align 8
  %75 = load i64, i64* %15, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i64 %75
  store %struct.TYPE_16__* %76, %struct.TYPE_16__** %16, align 8
  %77 = load i32, i32* @MAX_SIZE, align 4
  %78 = zext i32 %77 to i64
  %79 = call i8* @llvm.stacksave()
  store i8* %79, i8** %17, align 8
  %80 = alloca i32, i64 %78, align 16
  store i64 %78, i64* %18, align 8
  %81 = load i32, i32* @MAX_SIZE, align 4
  %82 = zext i32 %81 to i64
  %83 = alloca i32, i64 %82, align 16
  store i64 %82, i64* %19, align 8
  %84 = mul nuw i64 4, %78
  %85 = trunc i64 %84 to i32
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @StrToUni(i32* %80, i32 %85, i32 %88)
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @UniToStru(i32* %83, i32 %92)
  %94 = load i32*, i32** %14, align 8
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @GetHubAdminOptionHelpString(i32 %97)
  %99 = call i32 @CtInsert(i32* %94, i32* %80, i32* %83, i32 %98)
  %100 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %100)
  br label %101

101:                                              ; preds = %72
  %102 = load i64, i64* %15, align 8
  %103 = add nsw i64 %102, 1
  store i64 %103, i64* %15, align 8
  br label %67

104:                                              ; preds = %67
  %105 = load i32*, i32** %14, align 8
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %107 = call i32 @CtFreeEx(i32* %105, %struct.TYPE_15__* %106, i32 1)
  br label %108

108:                                              ; preds = %104
  %109 = call i32 @FreeRpcAdminOption(%struct.TYPE_13__* %13)
  %110 = load i32*, i32** %10, align 8
  %111 = call i32 @FreeParamValueList(i32* %110)
  store i64 0, i64* %5, align 8
  br label %112

112:                                              ; preds = %108, %58, %41, %26
  %113 = load i64, i64* %5, align 8
  ret i64 %113
}

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(%struct.TYPE_15__*, i8*, i32*, i32*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32*) #1

declare dso_local i64 @ScGetHubAdminOptions(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @CmdPrintError(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

declare dso_local i32* @CtNewStandardEx(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @StrToUni(i32*, i32, i32) #1

declare dso_local i32 @UniToStru(i32*, i32) #1

declare dso_local i32 @CtInsert(i32*, i32*, i32*, i32) #1

declare dso_local i32 @GetHubAdminOptionHelpString(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @CtFreeEx(i32*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @FreeRpcAdminOption(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
