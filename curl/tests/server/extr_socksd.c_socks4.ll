; ModuleID = '/home/carl/AnghaBench/curl/tests/server/extr_socksd.c_socks4.c'
source_filename = "/home/carl/AnghaBench/curl/tests/server/extr_socksd.c_socks4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i16, i32 }

@SOCKS4_CD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"SOCKS4 CD is not 1: %d\00", align 1
@CURL_SOCKET_BAD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"SOCKS4 connect message too short: %d\00", align 1
@config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@SOCKS4_DSTPORT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"Sending SOCKS4 response failed!\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Sent %d bytes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i8*, i32)* @socks4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @socks4(i64 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [272 x i8], align 16
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca i16, align 2
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = load i64, i64* @SOCKS4_CD, align 8
  %14 = getelementptr inbounds i8, i8* %12, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %18, label %26

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = load i64, i64* @SOCKS4_CD, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i64, i64* @CURL_SOCKET_BAD, align 8
  store i64 %25, i64* %4, align 8
  br label %98

26:                                               ; preds = %3
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 9
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32, i32* %7, align 4
  %31 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load i64, i64* @CURL_SOCKET_BAD, align 8
  store i64 %32, i64* %4, align 8
  br label %98

33:                                               ; preds = %26
  %34 = load i16, i16* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 4
  %35 = icmp ne i16 %34, 0
  br i1 %35, label %51, label %36

36:                                               ; preds = %33
  %37 = load i8*, i8** %6, align 8
  %38 = load i64, i64* @SOCKS4_DSTPORT, align 8
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = shl i32 %41, 8
  %43 = load i8*, i8** %6, align 8
  %44 = load i64, i64* @SOCKS4_DSTPORT, align 8
  %45 = add i64 %44, 1
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = or i32 %42, %48
  %50 = trunc i32 %49 to i16
  store i16 %50, i16* %11, align 2
  br label %53

51:                                               ; preds = %33
  %52 = load i16, i16* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 4
  store i16 %52, i16* %11, align 2
  br label %53

53:                                               ; preds = %51, %36
  %54 = load i16, i16* %11, align 2
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 1), align 4
  %56 = call i64 @socksconnect(i16 zeroext %54, i32 %55)
  store i64 %56, i64* %9, align 8
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* @CURL_SOCKET_BAD, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  store i8 91, i8* %10, align 1
  br label %62

61:                                               ; preds = %53
  store i8 90, i8* %10, align 1
  br label %62

62:                                               ; preds = %61, %60
  %63 = getelementptr inbounds [272 x i8], [272 x i8]* %8, i64 0, i64 0
  store i8 0, i8* %63, align 16
  %64 = load i8, i8* %10, align 1
  %65 = getelementptr inbounds [272 x i8], [272 x i8]* %8, i64 0, i64 1
  store i8 %64, i8* %65, align 1
  %66 = getelementptr inbounds [272 x i8], [272 x i8]* %8, i64 0, i64 2
  %67 = load i8*, i8** %6, align 8
  %68 = load i64, i64* @SOCKS4_DSTPORT, align 8
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  %70 = call i32 @memcpy(i8* %66, i8* %69, i32 6)
  %71 = load i64, i64* %5, align 8
  %72 = getelementptr inbounds [272 x i8], [272 x i8]* %8, i64 0, i64 0
  store i32 0, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 8
  br i1 %74, label %75, label %78

75:                                               ; preds = %62
  %76 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %77 = load i64, i64* @CURL_SOCKET_BAD, align 8
  store i64 %77, i64* %4, align 8
  br label %98

78:                                               ; preds = %62
  %79 = load i32, i32* %7, align 4
  %80 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %79)
  %81 = getelementptr inbounds [272 x i8], [272 x i8]* %8, i64 0, i64 0
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @loghex(i8* %81, i32 %82)
  %84 = load i8, i8* %10, align 1
  %85 = zext i8 %84 to i32
  %86 = icmp eq i32 %85, 90
  br i1 %86, label %87, label %89

87:                                               ; preds = %78
  %88 = load i64, i64* %9, align 8
  store i64 %88, i64* %4, align 8
  br label %98

89:                                               ; preds = %78
  %90 = load i64, i64* %9, align 8
  %91 = load i64, i64* @CURL_SOCKET_BAD, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load i64, i64* %9, align 8
  %95 = call i32 @sclose(i64 %94)
  br label %96

96:                                               ; preds = %93, %89
  %97 = load i64, i64* @CURL_SOCKET_BAD, align 8
  store i64 %97, i64* %4, align 8
  br label %98

98:                                               ; preds = %96, %87, %75, %29, %18
  %99 = load i64, i64* %4, align 8
  ret i64 %99
}

declare dso_local i32 @logmsg(i8*, ...) #1

declare dso_local i64 @socksconnect(i16 zeroext, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @loghex(i8*, i32) #1

declare dso_local i32 @sclose(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
