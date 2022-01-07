; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsSecureNatHostGet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsSecureNatHostGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 (%struct.TYPE_13__*, i32)* }
%struct.TYPE_12__ = type { i32, i32* }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"CMD_Hub_Not_Selected\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@MAX_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"CMD_SecureNatHostGet_Column_MAC\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"CMD_SecureNatHostGet_Column_IP\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"CMD_SecureNatHostGet_Column_MASK\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsSecureNatHostGet(%struct.TYPE_13__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_11__, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %11, align 8
  store i64 0, i64* %12, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %4
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i32 (%struct.TYPE_13__*, i32)*, i32 (%struct.TYPE_13__*, i32)** %26, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %29 = call i32 @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %30 = call i32 %27(%struct.TYPE_13__* %28, i32 %29)
  %31 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %31, i64* %5, align 8
  br label %103

32:                                               ; preds = %4
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = call i32* @ParseCommandList(%struct.TYPE_13__* %33, i8* %34, i32* %35, i32* null, i32 0)
  store i32* %36, i32** %10, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %40, i64* %5, align 8
  br label %103

41:                                               ; preds = %32
  %42 = call i32 @Zero(%struct.TYPE_11__* %13, i32 16)
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @StrCpy(i32 %44, i32 4, i32* %47)
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @ScGetSecureNATOption(i32 %51, %struct.TYPE_11__* %13)
  store i64 %52, i64* %12, align 8
  %53 = load i64, i64* %12, align 8
  %54 = load i64, i64* @ERR_NO_ERROR, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %41
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %58 = load i64, i64* %12, align 8
  %59 = call i32 @CmdPrintError(%struct.TYPE_13__* %57, i64 %58)
  %60 = load i32*, i32** %10, align 8
  %61 = call i32 @FreeParamValueList(i32* %60)
  %62 = load i64, i64* %12, align 8
  store i64 %62, i64* %5, align 8
  br label %103

63:                                               ; preds = %41
  %64 = load i32, i32* @MAX_SIZE, align 4
  %65 = zext i32 %64 to i64
  %66 = call i8* @llvm.stacksave()
  store i8* %66, i8** %14, align 8
  %67 = alloca i32, i64 %65, align 16
  store i64 %65, i64* %15, align 8
  %68 = load i32, i32* @MAX_SIZE, align 4
  %69 = zext i32 %68 to i64
  %70 = alloca i8, i64 %69, align 16
  store i64 %69, i64* %16, align 8
  %71 = call i32* (...) @CtNewStandard()
  store i32* %71, i32** %17, align 8
  %72 = trunc i64 %69 to i32
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @MacToStr(i8* %70, i32 %72, i32 %74)
  %76 = mul nuw i64 4, %65
  %77 = trunc i64 %76 to i32
  %78 = call i32 @StrToUni(i32* %67, i32 %77, i8* %70)
  %79 = load i32*, i32** %17, align 8
  %80 = call i32 @_UU(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %81 = call i32 @CtInsert(i32* %79, i32 %80, i32* %67)
  %82 = mul nuw i64 4, %65
  %83 = trunc i64 %82 to i32
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %85 = call i32 @IPToUniStr(i32* %67, i32 %83, i32* %84)
  %86 = load i32*, i32** %17, align 8
  %87 = call i32 @_UU(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %88 = call i32 @CtInsert(i32* %86, i32 %87, i32* %67)
  %89 = mul nuw i64 4, %65
  %90 = trunc i64 %89 to i32
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %92 = call i32 @IPToUniStr(i32* %67, i32 %90, i32* %91)
  %93 = load i32*, i32** %17, align 8
  %94 = call i32 @_UU(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %95 = call i32 @CtInsert(i32* %93, i32 %94, i32* %67)
  %96 = load i32*, i32** %17, align 8
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %98 = call i32 @CtFree(i32* %96, %struct.TYPE_13__* %97)
  %99 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %99)
  br label %100

100:                                              ; preds = %63
  %101 = load i32*, i32** %10, align 8
  %102 = call i32 @FreeParamValueList(i32* %101)
  store i64 0, i64* %5, align 8
  br label %103

103:                                              ; preds = %100, %56, %39, %24
  %104 = load i64, i64* %5, align 8
  ret i64 %104
}

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(%struct.TYPE_13__*, i8*, i32*, i32*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32*) #1

declare dso_local i64 @ScGetSecureNATOption(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @CmdPrintError(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32* @CtNewStandard(...) #1

declare dso_local i32 @MacToStr(i8*, i32, i32) #1

declare dso_local i32 @StrToUni(i32*, i32, i8*) #1

declare dso_local i32 @CtInsert(i32*, i32, i32*) #1

declare dso_local i32 @IPToUniStr(i32*, i32, i32*) #1

declare dso_local i32 @CtFree(i32*, %struct.TYPE_13__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
