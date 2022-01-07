; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsVpnOverIcmpDnsGet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsVpnOverIcmpDnsGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i64 }

@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"CMD_VpnOverIcmpDnsGet_PRINT_ICMP\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"SEC_YES\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"SEC_NO\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"CMD_VpnOverIcmpDnsGet_PRINT_DNS\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsVpnOverIcmpDnsGet(i32* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_5__, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %11, align 8
  store i64 0, i64* %12, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = call i32* @ParseCommandList(i32* %17, i8* %18, i32* %19, i32* null, i32 0)
  store i32* %20, i32** %10, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %24, i64* %5, align 8
  br label %67

25:                                               ; preds = %4
  %26 = call i32 @Zero(%struct.TYPE_5__* %13, i32 16)
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @ScGetSpecialListener(i32 %29, %struct.TYPE_5__* %13)
  store i64 %30, i64* %12, align 8
  %31 = load i64, i64* %12, align 8
  %32 = load i64, i64* @ERR_NO_ERROR, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %25
  %35 = load i32*, i32** %6, align 8
  %36 = load i64, i64* %12, align 8
  %37 = call i32 @CmdPrintError(i32* %35, i64 %36)
  %38 = load i32*, i32** %10, align 8
  %39 = call i32 @FreeParamValueList(i32* %38)
  %40 = load i64, i64* %12, align 8
  store i64 %40, i64* %5, align 8
  br label %67

41:                                               ; preds = %25
  %42 = call i32* (...) @CtNewStandard()
  store i32* %42, i32** %14, align 8
  %43 = load i32*, i32** %14, align 8
  %44 = call i32 @_UU(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %50 = call i32 @_UU(i8* %49)
  %51 = call i32 @CtInsert(i32* %43, i32 %44, i32 %50)
  %52 = load i32*, i32** %14, align 8
  %53 = call i32 @_UU(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %59 = call i32 @_UU(i8* %58)
  %60 = call i32 @CtInsert(i32* %52, i32 %53, i32 %59)
  %61 = load i32*, i32** %14, align 8
  %62 = load i32*, i32** %6, align 8
  %63 = call i32 @CtFree(i32* %61, i32* %62)
  br label %64

64:                                               ; preds = %41
  %65 = load i32*, i32** %10, align 8
  %66 = call i32 @FreeParamValueList(i32* %65)
  store i64 0, i64* %5, align 8
  br label %67

67:                                               ; preds = %64, %34, %23
  %68 = load i64, i64* %5, align 8
  ret i64 %68
}

declare dso_local i32* @ParseCommandList(i32*, i8*, i32*, i32*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @ScGetSpecialListener(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @CmdPrintError(i32*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

declare dso_local i32* @CtNewStandard(...) #1

declare dso_local i32 @CtInsert(i32*, i32, i32) #1

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32 @CtFree(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
