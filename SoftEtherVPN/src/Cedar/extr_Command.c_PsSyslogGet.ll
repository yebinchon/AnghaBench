; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsSyslogGet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsSyslogGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i32, i32 }

@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"CMD_SyslogGet_COLUMN_1\00", align 1
@SYSLOG_NONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"CMD_SyslogGet_COLUMN_2\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"CMD_SyslogGet_COLUMN_3\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsSyslogGet(i32* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_5__, align 8
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
  br label %82

27:                                               ; preds = %4
  %28 = call i32 @Zero(%struct.TYPE_5__* %13, i32 16)
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @ScGetSysLog(i32 %31, %struct.TYPE_5__* %13)
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
  br label %82

43:                                               ; preds = %27
  %44 = load i32, i32* @MAX_SIZE, align 4
  %45 = zext i32 %44 to i64
  %46 = call i8* @llvm.stacksave()
  store i8* %46, i8** %14, align 8
  %47 = alloca i32, i64 %45, align 16
  store i64 %45, i64* %15, align 8
  %48 = call i32* (...) @CtNewStandard()
  store i32* %48, i32** %16, align 8
  %49 = load i32*, i32** %16, align 8
  %50 = call i32 @_UU(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32* @GetSyslogSettingName(i64 %52)
  %54 = call i32 @CtInsert(i32* %49, i32 %50, i32* %53)
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @SYSLOG_NONE, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %74

59:                                               ; preds = %43
  %60 = mul nuw i64 4, %45
  %61 = trunc i64 %60 to i32
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @StrToUni(i32* %47, i32 %61, i32 %63)
  %65 = load i32*, i32** %16, align 8
  %66 = call i32 @_UU(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %67 = call i32 @CtInsert(i32* %65, i32 %66, i32* %47)
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @UniToStru(i32* %47, i32 %69)
  %71 = load i32*, i32** %16, align 8
  %72 = call i32 @_UU(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %73 = call i32 @CtInsert(i32* %71, i32 %72, i32* %47)
  br label %74

74:                                               ; preds = %59, %43
  %75 = load i32*, i32** %16, align 8
  %76 = load i32*, i32** %6, align 8
  %77 = call i32 @CtFree(i32* %75, i32* %76)
  %78 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %78)
  br label %79

79:                                               ; preds = %74
  %80 = load i32*, i32** %10, align 8
  %81 = call i32 @FreeParamValueList(i32* %80)
  store i64 0, i64* %5, align 8
  br label %82

82:                                               ; preds = %79, %36, %25
  %83 = load i64, i64* %5, align 8
  ret i64 %83
}

declare dso_local i32* @ParseCommandList(i32*, i8*, i32*, i32*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @ScGetSysLog(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @CmdPrintError(i32*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32* @CtNewStandard(...) #1

declare dso_local i32 @CtInsert(i32*, i32, i32*) #1

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32* @GetSyslogSettingName(i64) #1

declare dso_local i32 @StrToUni(i32*, i32, i32) #1

declare dso_local i32 @UniToStru(i32*, i32) #1

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
