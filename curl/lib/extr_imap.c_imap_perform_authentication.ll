; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_imap.c_imap_perform_authentication.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_imap.c_imap_perform_authentication.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.imap_conn }
%struct.imap_conn = type { i32, i32, i32, i32, i64 }

@CURLE_OK = common dso_local global i64 0, align 8
@IMAP_STOP = common dso_local global i32 0, align 4
@SASL_INPROGRESS = common dso_local global i64 0, align 8
@IMAP_AUTHENTICATE = common dso_local global i32 0, align 4
@IMAP_TYPE_CLEARTEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"No known authentication mechanisms supported!\0A\00", align 1
@CURLE_LOGIN_DENIED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.connectdata*)* @imap_perform_authentication to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @imap_perform_authentication(%struct.connectdata* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.connectdata*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.imap_conn*, align 8
  %6 = alloca i64, align 8
  store %struct.connectdata* %0, %struct.connectdata** %3, align 8
  %7 = load i64, i64* @CURLE_OK, align 8
  store i64 %7, i64* %4, align 8
  %8 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %9 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.imap_conn* %10, %struct.imap_conn** %5, align 8
  %11 = load %struct.imap_conn*, %struct.imap_conn** %5, align 8
  %12 = getelementptr inbounds %struct.imap_conn, %struct.imap_conn* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load %struct.imap_conn*, %struct.imap_conn** %5, align 8
  %17 = getelementptr inbounds %struct.imap_conn, %struct.imap_conn* %16, i32 0, i32 3
  %18 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %19 = call i32 @Curl_sasl_can_authenticate(i32* %17, %struct.connectdata* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %15, %1
  %22 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %23 = load i32, i32* @IMAP_STOP, align 4
  %24 = call i32 @state(%struct.connectdata* %22, i32 %23)
  %25 = load i64, i64* %4, align 8
  store i64 %25, i64* %2, align 8
  br label %69

26:                                               ; preds = %15
  %27 = load %struct.imap_conn*, %struct.imap_conn** %5, align 8
  %28 = getelementptr inbounds %struct.imap_conn, %struct.imap_conn* %27, i32 0, i32 3
  %29 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %30 = load %struct.imap_conn*, %struct.imap_conn** %5, align 8
  %31 = getelementptr inbounds %struct.imap_conn, %struct.imap_conn* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @Curl_sasl_start(i32* %28, %struct.connectdata* %29, i32 %32, i64* %6)
  store i64 %33, i64* %4, align 8
  %34 = load i64, i64* %4, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %67, label %36

36:                                               ; preds = %26
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @SASL_INPROGRESS, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %42 = load i32, i32* @IMAP_AUTHENTICATE, align 4
  %43 = call i32 @state(%struct.connectdata* %41, i32 %42)
  br label %66

44:                                               ; preds = %36
  %45 = load %struct.imap_conn*, %struct.imap_conn** %5, align 8
  %46 = getelementptr inbounds %struct.imap_conn, %struct.imap_conn* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = load %struct.imap_conn*, %struct.imap_conn** %5, align 8
  %51 = getelementptr inbounds %struct.imap_conn, %struct.imap_conn* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @IMAP_TYPE_CLEARTEXT, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %58 = call i64 @imap_perform_login(%struct.connectdata* %57)
  store i64 %58, i64* %4, align 8
  br label %65

59:                                               ; preds = %49, %44
  %60 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %61 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @infof(i32 %62, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %64 = load i64, i64* @CURLE_LOGIN_DENIED, align 8
  store i64 %64, i64* %4, align 8
  br label %65

65:                                               ; preds = %59, %56
  br label %66

66:                                               ; preds = %65, %40
  br label %67

67:                                               ; preds = %66, %26
  %68 = load i64, i64* %4, align 8
  store i64 %68, i64* %2, align 8
  br label %69

69:                                               ; preds = %67, %21
  %70 = load i64, i64* %2, align 8
  ret i64 %70
}

declare dso_local i32 @Curl_sasl_can_authenticate(i32*, %struct.connectdata*) #1

declare dso_local i32 @state(%struct.connectdata*, i32) #1

declare dso_local i64 @Curl_sasl_start(i32*, %struct.connectdata*, i32, i64*) #1

declare dso_local i64 @imap_perform_login(%struct.connectdata*) #1

declare dso_local i32 @infof(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
