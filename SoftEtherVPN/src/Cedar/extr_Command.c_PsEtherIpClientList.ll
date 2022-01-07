; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsEtherIpClientList.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsEtherIpClientList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32 }

@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"SM_ETHERIP_COLUMN_0\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"SM_ETHERIP_COLUMN_1\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"SM_ETHERIP_COLUMN_2\00", align 1
@MAX_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsEtherIpClientList(i32* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_7__, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_9__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %11, align 8
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
  br label %110

31:                                               ; preds = %4
  %32 = call i32 @Zero(%struct.TYPE_7__* %13, i32 16)
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @ScEnumEtherIpId(i32 %35, %struct.TYPE_7__* %13)
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
  br label %110

47:                                               ; preds = %31
  %48 = call i32* (...) @CtNew()
  store i32* %48, i32** %15, align 8
  %49 = load i32*, i32** %15, align 8
  %50 = call i32 @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %51 = call i32 @CtInsertColumn(i32* %49, i32 %50, i32 0)
  %52 = load i32*, i32** %15, align 8
  %53 = call i32 @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %54 = call i32 @CtInsertColumn(i32* %52, i32 %53, i32 0)
  %55 = load i32*, i32** %15, align 8
  %56 = call i32 @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %57 = call i32 @CtInsertColumn(i32* %55, i32 %56, i32 0)
  store i64 0, i64* %14, align 8
  br label %58

58:                                               ; preds = %99, %47
  %59 = load i64, i64* %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp slt i64 %59, %61
  br i1 %62, label %63, label %102

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = load i64, i64* %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i64 %66
  store %struct.TYPE_9__* %67, %struct.TYPE_9__** %16, align 8
  %68 = load i32, i32* @MAX_SIZE, align 4
  %69 = zext i32 %68 to i64
  %70 = call i8* @llvm.stacksave()
  store i8* %70, i8** %17, align 8
  %71 = alloca i32, i64 %69, align 16
  store i64 %69, i64* %18, align 8
  %72 = load i32, i32* @MAX_SIZE, align 4
  %73 = zext i32 %72 to i64
  %74 = alloca i32, i64 %73, align 16
  store i64 %73, i64* %19, align 8
  %75 = load i32, i32* @MAX_SIZE, align 4
  %76 = zext i32 %75 to i64
  %77 = alloca i32, i64 %76, align 16
  store i64 %76, i64* %20, align 8
  %78 = mul nuw i64 4, %69
  %79 = trunc i64 %78 to i32
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @StrToUni(i32* %71, i32 %79, i32 %82)
  %84 = mul nuw i64 4, %73
  %85 = trunc i64 %84 to i32
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @StrToUni(i32* %74, i32 %85, i32 %88)
  %90 = mul nuw i64 4, %76
  %91 = trunc i64 %90 to i32
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @StrToUni(i32* %77, i32 %91, i32 %94)
  %96 = load i32*, i32** %15, align 8
  %97 = call i32 @CtInsert(i32* %96, i32* %71, i32* %74, i32* %77)
  %98 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %98)
  br label %99

99:                                               ; preds = %63
  %100 = load i64, i64* %14, align 8
  %101 = add nsw i64 %100, 1
  store i64 %101, i64* %14, align 8
  br label %58

102:                                              ; preds = %58
  %103 = load i32*, i32** %15, align 8
  %104 = load i32*, i32** %6, align 8
  %105 = call i32 @CtFree(i32* %103, i32* %104)
  %106 = call i32 @FreeRpcEnumEtherIpId(%struct.TYPE_7__* %13)
  br label %107

107:                                              ; preds = %102
  %108 = load i32*, i32** %10, align 8
  %109 = call i32 @FreeParamValueList(i32* %108)
  store i64 0, i64* %5, align 8
  br label %110

110:                                              ; preds = %107, %40, %29
  %111 = load i64, i64* %5, align 8
  ret i64 %111
}

declare dso_local i32* @ParseCommandList(i32*, i8*, i32*, i32*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @ScEnumEtherIpId(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @CmdPrintError(i32*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

declare dso_local i32* @CtNew(...) #1

declare dso_local i32 @CtInsertColumn(i32*, i32, i32) #1

declare dso_local i32 @_UU(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @StrToUni(i32*, i32, i32) #1

declare dso_local i32 @CtInsert(i32*, i32*, i32*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @CtFree(i32*, i32*) #1

declare dso_local i32 @FreeRpcEnumEtherIpId(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
