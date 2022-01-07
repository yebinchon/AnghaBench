; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsCAList.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsCAList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 (%struct.TYPE_16__*, i8*)* }
%struct.TYPE_15__ = type { i32, i32* }
%struct.TYPE_14__ = type { i64, %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"CMD_Hub_Not_Selected\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@MAX_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"CMD_CAList_COLUMN_ID\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"CM_CERT_COLUMN_1\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"CM_CERT_COLUMN_2\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"CM_CERT_COLUMN_3\00", align 1
@.str.5 = private unnamed_addr constant [4 x i32] [i32 45, i32 45, i32 45, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsCAList(%struct.TYPE_16__* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_14__, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca [64 x i8], align 16
  %19 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %21, %struct.TYPE_15__** %11, align 8
  store i64 0, i64* %12, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %4
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = load i32 (%struct.TYPE_16__*, i8*)*, i32 (%struct.TYPE_16__*, i8*)** %28, align 8
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %31 = call i8* @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %32 = call i32 %29(%struct.TYPE_16__* %30, i8* %31)
  %33 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %33, i64* %5, align 8
  br label %132

34:                                               ; preds = %4
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = call i32* @ParseCommandList(%struct.TYPE_16__* %35, i8* %36, i8* %37, i32* null, i32 0)
  store i32* %38, i32** %10, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %42, i64* %5, align 8
  br label %132

43:                                               ; preds = %34
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
  %54 = call i64 @ScEnumCa(i32 %53, %struct.TYPE_14__* %13)
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
  br label %132

65:                                               ; preds = %43
  %66 = call i32* (...) @CtNewStandard()
  store i32* %66, i32** %15, align 8
  store i64 0, i64* %14, align 8
  br label %67

67:                                               ; preds = %121, %65
  %68 = load i64, i64* %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp slt i64 %68, %70
  br i1 %71, label %72, label %124

72:                                               ; preds = %67
  %73 = load i32, i32* @MAX_SIZE, align 4
  %74 = zext i32 %73 to i64
  %75 = call i8* @llvm.stacksave()
  store i8* %75, i8** %16, align 8
  %76 = alloca i8, i64 %74, align 16
  store i64 %74, i64* %17, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %77, align 8
  %79 = load i64, i64* %14, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i64 %79
  store %struct.TYPE_13__* %80, %struct.TYPE_13__** %19, align 8
  %81 = trunc i64 %74 to i32
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @SystemToLocal64(i32 %84)
  %86 = call i32 @GetDateStrEx64(i8* %76, i32 %81, i32 %85, i32* null)
  %87 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 0
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @UniToStru(i8* %87, i32 %90)
  %92 = load i32*, i32** %15, align 8
  %93 = call i8* @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %94 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 0
  %95 = call i32 @CtInsert(i32* %92, i8* %93, i8* %94)
  %96 = load i32*, i32** %15, align 8
  %97 = call i8* @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @CtInsert(i32* %96, i8* %97, i8* %100)
  %102 = load i32*, i32** %15, align 8
  %103 = call i8* @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 1
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @CtInsert(i32* %102, i8* %103, i8* %106)
  %108 = load i32*, i32** %15, align 8
  %109 = call i8* @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %110 = call i32 @CtInsert(i32* %108, i8* %109, i8* %76)
  %111 = load i64, i64* %14, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = sub nsw i64 %113, 1
  %115 = icmp ne i64 %111, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %72
  %117 = load i32*, i32** %15, align 8
  %118 = call i32 @CtInsert(i32* %117, i8* bitcast ([4 x i32]* @.str.5 to i8*), i8* bitcast ([4 x i32]* @.str.5 to i8*))
  br label %119

119:                                              ; preds = %116, %72
  %120 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %120)
  br label %121

121:                                              ; preds = %119
  %122 = load i64, i64* %14, align 8
  %123 = add nsw i64 %122, 1
  store i64 %123, i64* %14, align 8
  br label %67

124:                                              ; preds = %67
  %125 = load i32*, i32** %15, align 8
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %127 = call i32 @CtFree(i32* %125, %struct.TYPE_16__* %126)
  br label %128

128:                                              ; preds = %124
  %129 = call i32 @FreeRpcHubEnumCa(%struct.TYPE_14__* %13)
  %130 = load i32*, i32** %10, align 8
  %131 = call i32 @FreeParamValueList(i32* %130)
  store i64 0, i64* %5, align 8
  br label %132

132:                                              ; preds = %128, %58, %41, %26
  %133 = load i64, i64* %5, align 8
  ret i64 %133
}

declare dso_local i8* @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(%struct.TYPE_16__*, i8*, i8*, i32*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32*) #1

declare dso_local i64 @ScEnumCa(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @CmdPrintError(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

declare dso_local i32* @CtNewStandard(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @GetDateStrEx64(i8*, i32, i32, i32*) #1

declare dso_local i32 @SystemToLocal64(i32) #1

declare dso_local i32 @UniToStru(i8*, i32) #1

declare dso_local i32 @CtInsert(i32*, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @CtFree(i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @FreeRpcHubEnumCa(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
