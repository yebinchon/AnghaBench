; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_GetDnsProxyIPAddressForJapanBFlets.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_GetDnsProxyIPAddressForJapanBFlets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@BFLETS_DNS_PROXY_TIMEOUT_FOR_GET_F = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"DDnsServerForBFlets\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetDnsProxyIPAddressForJapanBFlets(i32* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %10, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %66

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i64, i64* @BFLETS_DNS_PROXY_TIMEOUT_FOR_GET_F, align 8
  store i64 %21, i64* %6, align 8
  br label %22

22:                                               ; preds = %20, %17
  %23 = load i64, i64* %6, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = call i32* @QueryFileByUdpForJapanBFlets(i64 %23, i32* %24)
  store i32* %25, i32** %8, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %66

29:                                               ; preds = %22
  %30 = load i32*, i32** %8, align 8
  %31 = call i32* @ReadIni(i32* %30)
  store i32* %31, i32** %9, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %60

34:                                               ; preds = %29
  %35 = load i32*, i32** %9, align 8
  %36 = call %struct.TYPE_3__* @GetIniEntry(i32* %35, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_3__* %36, %struct.TYPE_3__** %11, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %38 = icmp ne %struct.TYPE_3__* %37, null
  br i1 %38, label %39, label %59

39:                                               ; preds = %34
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %12, align 8
  %43 = load i8*, i8** %12, align 8
  %44 = call i32 @IsEmptyStr(i8* %43)
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %39
  %47 = load i8*, i8** %12, align 8
  %48 = call i64 @StrToIP(i32* %13, i8* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = call i32 @IsZeroIp(i32* %13)
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 @Copy(i32* %54, i32* %13, i32 4)
  store i32 1, i32* %10, align 4
  br label %56

56:                                               ; preds = %53, %50
  br label %57

57:                                               ; preds = %56, %46
  br label %58

58:                                               ; preds = %57, %39
  br label %59

59:                                               ; preds = %58, %34
  br label %60

60:                                               ; preds = %59, %29
  %61 = load i32*, i32** %9, align 8
  %62 = call i32 @FreeIni(i32* %61)
  %63 = load i32*, i32** %8, align 8
  %64 = call i32 @FreeBuf(i32* %63)
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %60, %28, %16
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32* @QueryFileByUdpForJapanBFlets(i64, i32*) #1

declare dso_local i32* @ReadIni(i32*) #1

declare dso_local %struct.TYPE_3__* @GetIniEntry(i32*, i8*) #1

declare dso_local i32 @IsEmptyStr(i8*) #1

declare dso_local i64 @StrToIP(i32*, i8*) #1

declare dso_local i32 @IsZeroIp(i32*) #1

declare dso_local i32 @Copy(i32*, i32*, i32) #1

declare dso_local i32 @FreeIni(i32*) #1

declare dso_local i32 @FreeBuf(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
