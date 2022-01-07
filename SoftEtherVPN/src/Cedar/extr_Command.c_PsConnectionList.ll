; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsConnectionList.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsConnectionList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }

@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"SM_CONN_COLUMN_1\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"SM_CONN_COLUMN_2\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"SM_CONN_COLUMN_3\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"SM_CONN_COLUMN_4\00", align 1
@MAX_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"SM_HOSTNAME_AND_PORT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsConnectionList(i32* %0, i8* %1, i32* %2, i8* %3) #0 {
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
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %11, align 8
  store i64 0, i64* %12, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = call i32* @ParseCommandList(i32* %23, i8* %24, i32* %25, i32* null, i32 0)
  store i32* %26, i32** %10, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %30, i64* %5, align 8
  br label %121

31:                                               ; preds = %4
  %32 = call i32 @Zero(%struct.TYPE_8__* %13, i32 16)
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @ScEnumConnection(i32 %35, %struct.TYPE_8__* %13)
  store i64 %36, i64* %12, align 8
  %37 = load i64, i64* %12, align 8
  %38 = load i64, i64* @ERR_NO_ERROR, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %31
  %41 = load i32*, i32** %6, align 8
  %42 = load i64, i64* %12, align 8
  %43 = call i32 @CmdPrintError(i32* %41, i64 %42)
  %44 = load i32*, i32** %10, align 8
  %45 = call i32 @FreeParamValueList(i32* %44)
  %46 = load i64, i64* %12, align 8
  store i64 %46, i64* %5, align 8
  br label %121

47:                                               ; preds = %31
  %48 = call i32* (...) @CtNew()
  store i32* %48, i32** %15, align 8
  %49 = load i32*, i32** %15, align 8
  %50 = call i32 @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %51 = call i32 @CtInsertColumn(i32* %49, i32 %50, i32 0)
  %52 = load i32*, i32** %15, align 8
  %53 = call i32 @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %54 = call i32 @CtInsertColumn(i32* %52, i32 %53, i32 0)
  %55 = load i32*, i32** %15, align 8
  %56 = call i32 @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %57 = call i32 @CtInsertColumn(i32* %55, i32 %56, i32 0)
  %58 = load i32*, i32** %15, align 8
  %59 = call i32 @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %60 = call i32 @CtInsertColumn(i32* %58, i32 %59, i32 0)
  store i64 0, i64* %14, align 8
  br label %61

61:                                               ; preds = %111, %47
  %62 = load i64, i64* %14, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %62, %64
  br i1 %65, label %66, label %114

66:                                               ; preds = %61
  %67 = load i32, i32* @MAX_SIZE, align 4
  %68 = zext i32 %67 to i64
  %69 = call i8* @llvm.stacksave()
  store i8* %69, i8** %16, align 8
  %70 = alloca i32, i64 %68, align 16
  store i64 %68, i64* %17, align 8
  %71 = load i32, i32* @MAX_SIZE, align 4
  %72 = zext i32 %71 to i64
  %73 = alloca i32, i64 %72, align 16
  store i64 %72, i64* %18, align 8
  %74 = load i32, i32* @MAX_SIZE, align 4
  %75 = zext i32 %74 to i64
  %76 = alloca i32, i64 %75, align 16
  store i64 %75, i64* %19, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = load i64, i64* %14, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i64 %79
  store %struct.TYPE_7__* %80, %struct.TYPE_7__** %20, align 8
  %81 = mul nuw i64 4, %72
  %82 = trunc i64 %81 to i32
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @StrToUni(i32* %73, i32 %82, i32 %85)
  %87 = mul nuw i64 4, %68
  %88 = trunc i64 %87 to i32
  %89 = call i32 @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @UniFormat(i32* %70, i32 %88, i32 %89, i32 %92, i32 %95)
  %97 = mul nuw i64 4, %75
  %98 = trunc i64 %97 to i32
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @SystemToLocal64(i32 %101)
  %103 = call i32 @GetDateTimeStrEx64(i32* %76, i32 %98, i32 %102, i32* null)
  %104 = load i32*, i32** %15, align 8
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @GetConnectionTypeStr(i32 %107)
  %109 = call i32 @CtInsert(i32* %104, i32* %73, i32* %70, i32* %76, i32 %108)
  %110 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %110)
  br label %111

111:                                              ; preds = %66
  %112 = load i64, i64* %14, align 8
  %113 = add nsw i64 %112, 1
  store i64 %113, i64* %14, align 8
  br label %61

114:                                              ; preds = %61
  %115 = load i32*, i32** %15, align 8
  %116 = load i32*, i32** %6, align 8
  %117 = call i32 @CtFree(i32* %115, i32* %116)
  %118 = call i32 @FreeRpcEnumConnection(%struct.TYPE_8__* %13)
  %119 = load i32*, i32** %10, align 8
  %120 = call i32 @FreeParamValueList(i32* %119)
  store i64 0, i64* %5, align 8
  br label %121

121:                                              ; preds = %114, %40, %29
  %122 = load i64, i64* %5, align 8
  ret i64 %122
}

declare dso_local i32* @ParseCommandList(i32*, i8*, i32*, i32*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @ScEnumConnection(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @CmdPrintError(i32*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

declare dso_local i32* @CtNew(...) #1

declare dso_local i32 @CtInsertColumn(i32*, i32, i32) #1

declare dso_local i32 @_UU(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @StrToUni(i32*, i32, i32) #1

declare dso_local i32 @UniFormat(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @GetDateTimeStrEx64(i32*, i32, i32, i32*) #1

declare dso_local i32 @SystemToLocal64(i32) #1

declare dso_local i32 @CtInsert(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @GetConnectionTypeStr(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @CtFree(i32*, i32*) #1

declare dso_local i32 @FreeRpcEnumConnection(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
