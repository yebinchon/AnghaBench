; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_QueryFileByUdpForJapanBFlets.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_QueryFileByUdpForJapanBFlets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BFLETS_DNS_PROXY_TIMEOUT_FOR_GET_F = common dso_local global i64 0, align 8
@UDP_FILE_QUERY_BFLETS_TXT_FILENAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"#\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @QueryFileByUdpForJapanBFlets(i64 %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32* %6, i32** %5, align 8
  br label %17

17:                                               ; preds = %16, %2
  %18 = load i64, i64* %4, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i64, i64* @BFLETS_DNS_PROXY_TIMEOUT_FOR_GET_F, align 8
  store i64 %21, i64* %4, align 8
  br label %22

22:                                               ; preds = %20, %17
  %23 = load i32, i32* @UDP_FILE_QUERY_BFLETS_TXT_FILENAME, align 4
  %24 = call i32* @ReadDump(i32 %23)
  store i32* %24, i32** %7, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32* null, i32** %3, align 8
  br label %91

28:                                               ; preds = %22
  %29 = call i32* @NewListFast(i32* null)
  store i32* %29, i32** %9, align 8
  br label %30

30:                                               ; preds = %28, %63
  %31 = load i32*, i32** %7, align 8
  %32 = call i8* @CfgReadNextLine(i32* %31)
  store i8* %32, i8** %11, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %66

36:                                               ; preds = %30
  %37 = load i8*, i8** %11, align 8
  %38 = call i32 @Trim(i8* %37)
  %39 = load i8*, i8** %11, align 8
  %40 = call i32 @IsEmptyStr(i8* %39)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %63

42:                                               ; preds = %36
  %43 = load i8*, i8** %11, align 8
  %44 = call i32 @StartWith(i8* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %63

46:                                               ; preds = %42
  %47 = load i8*, i8** %11, align 8
  %48 = call i64 @StrToIP6(i8* %12, i8* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %46
  %51 = call i32 @IsZeroIp(i8* %12)
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %50
  %54 = call i32 @IsIPv6LocalNetworkAddress(i8* %12)
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i32*, i32** %9, align 8
  %58 = call i32 @Clone(i8* %12, i32 1)
  %59 = call i32 @Add(i32* %57, i32 %58)
  br label %60

60:                                               ; preds = %56, %53
  br label %61

61:                                               ; preds = %60, %50
  br label %62

62:                                               ; preds = %61, %46
  br label %63

63:                                               ; preds = %62, %42, %36
  %64 = load i8*, i8** %11, align 8
  %65 = call i32 @Free(i8* %64)
  br label %30

66:                                               ; preds = %35
  %67 = load i32*, i32** %7, align 8
  %68 = call i32 @FreeBuf(i32* %67)
  %69 = load i32*, i32** %9, align 8
  %70 = load i64, i64* %4, align 8
  %71 = load i32*, i32** %5, align 8
  %72 = call i32* @QueryFileByIPv6Udp(i32* %69, i64 %70, i32* %71)
  store i32* %72, i32** %8, align 8
  store i64 0, i64* %10, align 8
  br label %73

73:                                               ; preds = %84, %66
  %74 = load i64, i64* %10, align 8
  %75 = load i32*, i32** %9, align 8
  %76 = call i64 @LIST_NUM(i32* %75)
  %77 = icmp slt i64 %74, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %73
  %79 = load i32*, i32** %9, align 8
  %80 = load i64, i64* %10, align 8
  %81 = call i8* @LIST_DATA(i32* %79, i64 %80)
  store i8* %81, i8** %13, align 8
  %82 = load i8*, i8** %13, align 8
  %83 = call i32 @Free(i8* %82)
  br label %84

84:                                               ; preds = %78
  %85 = load i64, i64* %10, align 8
  %86 = add nsw i64 %85, 1
  store i64 %86, i64* %10, align 8
  br label %73

87:                                               ; preds = %73
  %88 = load i32*, i32** %9, align 8
  %89 = call i32 @ReleaseList(i32* %88)
  %90 = load i32*, i32** %8, align 8
  store i32* %90, i32** %3, align 8
  br label %91

91:                                               ; preds = %87, %27
  %92 = load i32*, i32** %3, align 8
  ret i32* %92
}

declare dso_local i32* @ReadDump(i32) #1

declare dso_local i32* @NewListFast(i32*) #1

declare dso_local i8* @CfgReadNextLine(i32*) #1

declare dso_local i32 @Trim(i8*) #1

declare dso_local i32 @IsEmptyStr(i8*) #1

declare dso_local i32 @StartWith(i8*, i8*) #1

declare dso_local i64 @StrToIP6(i8*, i8*) #1

declare dso_local i32 @IsZeroIp(i8*) #1

declare dso_local i32 @IsIPv6LocalNetworkAddress(i8*) #1

declare dso_local i32 @Add(i32*, i32) #1

declare dso_local i32 @Clone(i8*, i32) #1

declare dso_local i32 @Free(i8*) #1

declare dso_local i32 @FreeBuf(i32*) #1

declare dso_local i32* @QueryFileByIPv6Udp(i32*, i64, i32*) #1

declare dso_local i64 @LIST_NUM(i32*) #1

declare dso_local i8* @LIST_DATA(i32*, i64) #1

declare dso_local i32 @ReleaseList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
