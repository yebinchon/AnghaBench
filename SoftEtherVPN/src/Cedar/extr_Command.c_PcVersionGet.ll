; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PcVersionGet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PcVersionGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }

@ERR_NO_ERROR = common dso_local global i64 0, align 8
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"CMD_VersionGet_1\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"CMD_VersionGet_2\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"CMD_VersionGet_3\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"CMD_VersionGet_4\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"CMD_VersionGet_5\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PcVersionGet(i32* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_5__, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %11, align 8
  %19 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %19, i64* %12, align 8
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
  br label %98

28:                                               ; preds = %4
  %29 = call i32 @Zero(%struct.TYPE_5__* %13, i32 20)
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @CcGetClientVersion(i32 %32, %struct.TYPE_5__* %13)
  store i64 %33, i64* %12, align 8
  %34 = load i64, i64* %12, align 8
  %35 = load i64, i64* @ERR_NO_ERROR, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %86

37:                                               ; preds = %28
  %38 = load i32, i32* @MAX_SIZE, align 4
  %39 = zext i32 %38 to i64
  %40 = call i8* @llvm.stacksave()
  store i8* %40, i8** %14, align 8
  %41 = alloca i32, i64 %39, align 16
  store i64 %39, i64* %15, align 8
  %42 = call i32* (...) @CtNewStandard()
  store i32* %42, i32** %16, align 8
  %43 = mul nuw i64 4, %39
  %44 = trunc i64 %43 to i32
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @StrToUni(i32* %41, i32 %44, i32 %46)
  %48 = load i32*, i32** %16, align 8
  %49 = call i32 @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %50 = call i32 @CtInsert(i32* %48, i32 %49, i32* %41)
  %51 = mul nuw i64 4, %39
  %52 = trunc i64 %51 to i32
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @StrToUni(i32* %41, i32 %52, i32 %54)
  %56 = load i32*, i32** %16, align 8
  %57 = call i32 @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %58 = call i32 @CtInsert(i32* %56, i32 %57, i32* %41)
  %59 = mul nuw i64 4, %39
  %60 = trunc i64 %59 to i32
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @StrToUni(i32* %41, i32 %60, i32 %62)
  %64 = load i32*, i32** %16, align 8
  %65 = call i32 @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %66 = call i32 @CtInsert(i32* %64, i32 %65, i32* %41)
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @UniToStru(i32* %41, i32 %68)
  %70 = load i32*, i32** %16, align 8
  %71 = call i32 @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %72 = call i32 @CtInsert(i32* %70, i32 %71, i32* %41)
  %73 = mul nuw i64 4, %39
  %74 = trunc i64 %73 to i32
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @OsTypeToStr(i32 %76)
  %78 = call i32 @StrToUni(i32* %41, i32 %74, i32 %77)
  %79 = load i32*, i32** %16, align 8
  %80 = call i32 @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %81 = call i32 @CtInsert(i32* %79, i32 %80, i32* %41)
  %82 = load i32*, i32** %16, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = call i32 @CtFree(i32* %82, i32* %83)
  %85 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %85)
  br label %86

86:                                               ; preds = %37, %28
  %87 = load i64, i64* %12, align 8
  %88 = load i64, i64* @ERR_NO_ERROR, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = load i32*, i32** %6, align 8
  %92 = load i64, i64* %12, align 8
  %93 = call i32 @CmdPrintError(i32* %91, i64 %92)
  br label %94

94:                                               ; preds = %90, %86
  %95 = load i32*, i32** %10, align 8
  %96 = call i32 @FreeParamValueList(i32* %95)
  %97 = load i64, i64* %12, align 8
  store i64 %97, i64* %5, align 8
  br label %98

98:                                               ; preds = %94, %26
  %99 = load i64, i64* %5, align 8
  ret i64 %99
}

declare dso_local i32* @ParseCommandList(i32*, i8*, i32*, i32*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @CcGetClientVersion(i32, %struct.TYPE_5__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32* @CtNewStandard(...) #1

declare dso_local i32 @StrToUni(i32*, i32, i32) #1

declare dso_local i32 @CtInsert(i32*, i32, i32*) #1

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32 @UniToStru(i32*, i32) #1

declare dso_local i32 @OsTypeToStr(i32) #1

declare dso_local i32 @CtFree(i32*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @CmdPrintError(i32*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
