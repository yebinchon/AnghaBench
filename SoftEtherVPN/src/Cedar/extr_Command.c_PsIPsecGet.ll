; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsIPsecGet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsIPsecGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i64, i64, i64 }

@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"CMD_IPsecGet_PRINT_L2TP\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"SEC_YES\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"SEC_NO\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"CMD_IPsecGet_PRINT_L2TPRAW\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"CMD_IPsecGet_PRINT_ETHERIP\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"CMD_IPsecGet_PRINT_PSK\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"CMD_IPsecGet_PRINT_DEFAULTHUB\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsIPsecGet(i32* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_6__, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %11, align 8
  store i64 0, i64* %12, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = call i32* @ParseCommandList(i32* %19, i8* %20, i32* %21, i32* null, i32 0)
  store i32* %22, i32** %10, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %26, i64* %5, align 8
  br label %99

27:                                               ; preds = %4
  %28 = call i32 @Zero(%struct.TYPE_6__* %13, i32 32)
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @ScGetIPsecServices(i32 %31, %struct.TYPE_6__* %13)
  store i64 %32, i64* %12, align 8
  %33 = load i64, i64* %12, align 8
  %34 = load i64, i64* @ERR_NO_ERROR, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %27
  %37 = load i32*, i32** %6, align 8
  %38 = load i64, i64* %12, align 8
  %39 = call i32 @CmdPrintError(i32* %37, i64 %38)
  %40 = load i32*, i32** %10, align 8
  %41 = call i32 @FreeParamValueList(i32* %40)
  %42 = load i64, i64* %12, align 8
  store i64 %42, i64* %5, align 8
  br label %99

43:                                               ; preds = %27
  %44 = load i32, i32* @MAX_PATH, align 4
  %45 = zext i32 %44 to i64
  %46 = call i8* @llvm.stacksave()
  store i8* %46, i8** %14, align 8
  %47 = alloca i32, i64 %45, align 16
  store i64 %45, i64* %15, align 8
  %48 = call i32* (...) @CtNewStandard()
  store i32* %48, i32** %16, align 8
  %49 = load i32*, i32** %16, align 8
  %50 = call i32* @_UU(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %56 = call i32* @_UU(i8* %55)
  %57 = call i32 @CtInsert(i32* %49, i32* %50, i32* %56)
  %58 = load i32*, i32** %16, align 8
  %59 = call i32* @_UU(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %65 = call i32* @_UU(i8* %64)
  %66 = call i32 @CtInsert(i32* %58, i32* %59, i32* %65)
  %67 = load i32*, i32** %16, align 8
  %68 = call i32* @_UU(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %74 = call i32* @_UU(i8* %73)
  %75 = call i32 @CtInsert(i32* %67, i32* %68, i32* %74)
  %76 = mul nuw i64 4, %45
  %77 = trunc i64 %76 to i32
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @StrToUni(i32* %47, i32 %77, i32 %79)
  %81 = load i32*, i32** %16, align 8
  %82 = call i32* @_UU(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %83 = call i32 @CtInsert(i32* %81, i32* %82, i32* %47)
  %84 = mul nuw i64 4, %45
  %85 = trunc i64 %84 to i32
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @StrToUni(i32* %47, i32 %85, i32 %87)
  %89 = load i32*, i32** %16, align 8
  %90 = call i32* @_UU(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %91 = call i32 @CtInsert(i32* %89, i32* %90, i32* %47)
  %92 = load i32*, i32** %16, align 8
  %93 = load i32*, i32** %6, align 8
  %94 = call i32 @CtFree(i32* %92, i32* %93)
  %95 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %95)
  br label %96

96:                                               ; preds = %43
  %97 = load i32*, i32** %10, align 8
  %98 = call i32 @FreeParamValueList(i32* %97)
  store i64 0, i64* %5, align 8
  br label %99

99:                                               ; preds = %96, %36, %25
  %100 = load i64, i64* %5, align 8
  ret i64 %100
}

declare dso_local i32* @ParseCommandList(i32*, i8*, i32*, i32*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @ScGetIPsecServices(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @CmdPrintError(i32*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32* @CtNewStandard(...) #1

declare dso_local i32 @CtInsert(i32*, i32*, i32*) #1

declare dso_local i32* @_UU(i8*) #1

declare dso_local i32 @StrToUni(i32*, i32, i32) #1

declare dso_local i32 @CtFree(i32*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
