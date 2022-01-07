; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsVpnAzureGetStatus.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsVpnAzureGetStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64, i32, i64 }

@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"CMD_VpnAzureGetStatus_PRINT_ENABLED\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"SEC_YES\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"SEC_NO\00", align 1
@MAX_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i32] [i32 37, i32 83, i32 37, i32 83, i32 0], align 4
@AZURE_DOMAIN_SUFFIX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"CMD_VpnAzureGetStatus_PRINT_CONNECTED\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"CMD_VpnAzureGetStatus_PRINT_HOSTNAME\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsVpnAzureGetStatus(i32* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_7__, align 8
  %14 = alloca %struct.TYPE_7__, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %11, align 8
  store i64 0, i64* %12, align 8
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
  br label %99

28:                                               ; preds = %4
  %29 = call i32 @Zero(%struct.TYPE_7__* %13, i32 24)
  %30 = call i32 @Zero(%struct.TYPE_7__* %14, i32 24)
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @ScGetAzureStatus(i32 %33, %struct.TYPE_7__* %13)
  store i64 %34, i64* %12, align 8
  %35 = load i64, i64* %12, align 8
  %36 = load i64, i64* @ERR_NO_ERROR, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %28
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @ScGetDDnsClientStatus(i32 %41, %struct.TYPE_7__* %14)
  store i64 %42, i64* %12, align 8
  br label %43

43:                                               ; preds = %38, %28
  %44 = load i64, i64* %12, align 8
  %45 = load i64, i64* @ERR_NO_ERROR, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load i32*, i32** %6, align 8
  %49 = load i64, i64* %12, align 8
  %50 = call i32 @CmdPrintError(i32* %48, i64 %49)
  %51 = load i32*, i32** %10, align 8
  %52 = call i32 @FreeParamValueList(i32* %51)
  %53 = load i64, i64* %12, align 8
  store i64 %53, i64* %5, align 8
  br label %99

54:                                               ; preds = %43
  %55 = call i32* (...) @CtNewStandard()
  store i32* %55, i32** %15, align 8
  %56 = load i32*, i32** %15, align 8
  %57 = call i32* @_UU(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %63 = call i32* @_UU(i8* %62)
  %64 = call i32 @CtInsert(i32* %56, i32* %57, i32* %63)
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %92

68:                                               ; preds = %54
  %69 = load i32, i32* @MAX_SIZE, align 4
  %70 = zext i32 %69 to i64
  %71 = call i8* @llvm.stacksave()
  store i8* %71, i8** %16, align 8
  %72 = alloca i32, i64 %70, align 16
  store i64 %70, i64* %17, align 8
  %73 = mul nuw i64 4, %70
  %74 = trunc i64 %73 to i32
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @AZURE_DOMAIN_SUFFIX, align 4
  %78 = call i32 @UniFormat(i32* %72, i32 %74, i8* bitcast ([5 x i32]* @.str.3 to i8*), i32 %76, i32 %77)
  %79 = load i32*, i32** %15, align 8
  %80 = call i32* @_UU(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %86 = call i32* @_UU(i8* %85)
  %87 = call i32 @CtInsert(i32* %79, i32* %80, i32* %86)
  %88 = load i32*, i32** %15, align 8
  %89 = call i32* @_UU(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  %90 = call i32 @CtInsert(i32* %88, i32* %89, i32* %72)
  %91 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %91)
  br label %92

92:                                               ; preds = %68, %54
  %93 = load i32*, i32** %15, align 8
  %94 = load i32*, i32** %6, align 8
  %95 = call i32 @CtFree(i32* %93, i32* %94)
  br label %96

96:                                               ; preds = %92
  %97 = load i32*, i32** %10, align 8
  %98 = call i32 @FreeParamValueList(i32* %97)
  store i64 0, i64* %5, align 8
  br label %99

99:                                               ; preds = %96, %47, %26
  %100 = load i64, i64* %5, align 8
  ret i64 %100
}

declare dso_local i32* @ParseCommandList(i32*, i8*, i32*, i32*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @ScGetAzureStatus(i32, %struct.TYPE_7__*) #1

declare dso_local i64 @ScGetDDnsClientStatus(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @CmdPrintError(i32*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

declare dso_local i32* @CtNewStandard(...) #1

declare dso_local i32 @CtInsert(i32*, i32*, i32*) #1

declare dso_local i32* @_UU(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @UniFormat(i32*, i32, i8*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @CtFree(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
