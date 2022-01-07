; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_pop3.c_pop3_perform_apop.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_pop3.c_pop3_perform_apop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { i32, i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.pop3_conn }
%struct.pop3_conn = type { i32, i64 }

@CURLE_OK = common dso_local global i32 0, align 4
@MD5_DIGEST_LEN = common dso_local global i32 0, align 4
@POP3_STOP = common dso_local global i32 0, align 4
@Curl_DIGEST_MD5 = common dso_local global i32 0, align 4
@CURLE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"APOP %s %s\00", align 1
@POP3_APOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*)* @pop3_perform_apop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pop3_perform_apop(%struct.connectdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connectdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pop3_conn*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.connectdata* %0, %struct.connectdata** %3, align 8
  %12 = load i32, i32* @CURLE_OK, align 4
  store i32 %12, i32* %4, align 4
  %13 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %14 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store %struct.pop3_conn* %15, %struct.pop3_conn** %5, align 8
  %16 = load i32, i32* @MD5_DIGEST_LEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %8, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  %20 = load i32, i32* @MD5_DIGEST_LEN, align 4
  %21 = mul nsw i32 2, %20
  %22 = add nsw i32 %21, 1
  %23 = zext i32 %22 to i64
  %24 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %10, align 8
  %25 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %26 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %1
  %31 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %32 = load i32, i32* @POP3_STOP, align 4
  %33 = call i32 @state(%struct.connectdata* %31, i32 %32)
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %98

35:                                               ; preds = %1
  %36 = load i32, i32* @Curl_DIGEST_MD5, align 4
  %37 = call i32* @Curl_MD5_init(i32 %36)
  store i32* %37, i32** %7, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %41, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %98

42:                                               ; preds = %35
  %43 = load i32*, i32** %7, align 8
  %44 = load %struct.pop3_conn*, %struct.pop3_conn** %5, align 8
  %45 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i8*
  %48 = load %struct.pop3_conn*, %struct.pop3_conn** %5, align 8
  %49 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @strlen(i64 %50)
  %52 = call i32 @curlx_uztoui(i32 %51)
  %53 = call i32 @Curl_MD5_update(i32* %43, i8* %47, i32 %52)
  %54 = load i32*, i32** %7, align 8
  %55 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %56 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i8*
  %59 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %60 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @strlen(i64 %61)
  %63 = call i32 @curlx_uztoui(i32 %62)
  %64 = call i32 @Curl_MD5_update(i32* %54, i8* %58, i32 %63)
  %65 = load i32*, i32** %7, align 8
  %66 = call i32 @Curl_MD5_final(i32* %65, i8* %19)
  store i64 0, i64* %6, align 8
  br label %67

67:                                               ; preds = %80, %42
  %68 = load i64, i64* %6, align 8
  %69 = load i32, i32* @MD5_DIGEST_LEN, align 4
  %70 = sext i32 %69 to i64
  %71 = icmp ult i64 %68, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %67
  %73 = load i64, i64* %6, align 8
  %74 = mul i64 2, %73
  %75 = getelementptr inbounds i8, i8* %24, i64 %74
  %76 = load i64, i64* %6, align 8
  %77 = getelementptr inbounds i8, i8* %19, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = call i32 @msnprintf(i8* %75, i32 3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8 zeroext %78)
  br label %80

80:                                               ; preds = %72
  %81 = load i64, i64* %6, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %6, align 8
  br label %67

83:                                               ; preds = %67
  %84 = load %struct.pop3_conn*, %struct.pop3_conn** %5, align 8
  %85 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %84, i32 0, i32 0
  %86 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %87 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @Curl_pp_sendf(i32* %85, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %88, i8* %24)
  store i32 %89, i32* %4, align 4
  %90 = load i32, i32* %4, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %83
  %93 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %94 = load i32, i32* @POP3_APOP, align 4
  %95 = call i32 @state(%struct.connectdata* %93, i32 %94)
  br label %96

96:                                               ; preds = %92, %83
  %97 = load i32, i32* %4, align 4
  store i32 %97, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %98

98:                                               ; preds = %96, %40, %30
  %99 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %99)
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @state(%struct.connectdata*, i32) #2

declare dso_local i32* @Curl_MD5_init(i32) #2

declare dso_local i32 @Curl_MD5_update(i32*, i8*, i32) #2

declare dso_local i32 @curlx_uztoui(i32) #2

declare dso_local i32 @strlen(i64) #2

declare dso_local i32 @Curl_MD5_final(i32*, i8*) #2

declare dso_local i32 @msnprintf(i8*, i32, i8*, i8 zeroext) #2

declare dso_local i32 @Curl_pp_sendf(i32*, i8*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
