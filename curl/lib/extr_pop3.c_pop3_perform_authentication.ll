; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_pop3.c_pop3_perform_authentication.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_pop3.c_pop3_perform_authentication.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.pop3_conn }
%struct.pop3_conn = type { i32, i32, i32 }

@CURLE_OK = common dso_local global i64 0, align 8
@SASL_IDLE = common dso_local global i64 0, align 8
@POP3_STOP = common dso_local global i32 0, align 4
@POP3_TYPE_SASL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SASL_INPROGRESS = common dso_local global i64 0, align 8
@POP3_AUTH = common dso_local global i32 0, align 4
@POP3_TYPE_APOP = common dso_local global i32 0, align 4
@POP3_TYPE_CLEARTEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"No known authentication mechanisms supported!\0A\00", align 1
@CURLE_LOGIN_DENIED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.connectdata*)* @pop3_perform_authentication to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pop3_perform_authentication(%struct.connectdata* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.connectdata*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.pop3_conn*, align 8
  %6 = alloca i64, align 8
  store %struct.connectdata* %0, %struct.connectdata** %3, align 8
  %7 = load i64, i64* @CURLE_OK, align 8
  store i64 %7, i64* %4, align 8
  %8 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %9 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.pop3_conn* %10, %struct.pop3_conn** %5, align 8
  %11 = load i64, i64* @SASL_IDLE, align 8
  store i64 %11, i64* %6, align 8
  %12 = load %struct.pop3_conn*, %struct.pop3_conn** %5, align 8
  %13 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %12, i32 0, i32 2
  %14 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %15 = call i32 @Curl_sasl_can_authenticate(i32* %13, %struct.connectdata* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %1
  %18 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %19 = load i32, i32* @POP3_STOP, align 4
  %20 = call i32 @state(%struct.connectdata* %18, i32 %19)
  %21 = load i64, i64* %4, align 8
  store i64 %21, i64* %2, align 8
  br label %96

22:                                               ; preds = %1
  %23 = load %struct.pop3_conn*, %struct.pop3_conn** %5, align 8
  %24 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.pop3_conn*, %struct.pop3_conn** %5, align 8
  %27 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %25, %28
  %30 = load i32, i32* @POP3_TYPE_SASL, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %22
  %34 = load %struct.pop3_conn*, %struct.pop3_conn** %5, align 8
  %35 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %34, i32 0, i32 2
  %36 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %37 = load i32, i32* @FALSE, align 4
  %38 = call i64 @Curl_sasl_start(i32* %35, %struct.connectdata* %36, i32 %37, i64* %6)
  store i64 %38, i64* %4, align 8
  %39 = load i64, i64* %4, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %33
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* @SASL_INPROGRESS, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %47 = load i32, i32* @POP3_AUTH, align 4
  %48 = call i32 @state(%struct.connectdata* %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %41
  br label %50

50:                                               ; preds = %49, %33
  br label %51

51:                                               ; preds = %50, %22
  %52 = load i64, i64* %4, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %94, label %54

54:                                               ; preds = %51
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* @SASL_IDLE, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %94

58:                                               ; preds = %54
  %59 = load %struct.pop3_conn*, %struct.pop3_conn** %5, align 8
  %60 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.pop3_conn*, %struct.pop3_conn** %5, align 8
  %63 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %61, %64
  %66 = load i32, i32* @POP3_TYPE_APOP, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %58
  %70 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %71 = call i64 @pop3_perform_apop(%struct.connectdata* %70)
  store i64 %71, i64* %4, align 8
  br label %93

72:                                               ; preds = %58
  %73 = load %struct.pop3_conn*, %struct.pop3_conn** %5, align 8
  %74 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.pop3_conn*, %struct.pop3_conn** %5, align 8
  %77 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %75, %78
  %80 = load i32, i32* @POP3_TYPE_CLEARTEXT, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %72
  %84 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %85 = call i64 @pop3_perform_user(%struct.connectdata* %84)
  store i64 %85, i64* %4, align 8
  br label %92

86:                                               ; preds = %72
  %87 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %88 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @infof(i32 %89, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %91 = load i64, i64* @CURLE_LOGIN_DENIED, align 8
  store i64 %91, i64* %4, align 8
  br label %92

92:                                               ; preds = %86, %83
  br label %93

93:                                               ; preds = %92, %69
  br label %94

94:                                               ; preds = %93, %54, %51
  %95 = load i64, i64* %4, align 8
  store i64 %95, i64* %2, align 8
  br label %96

96:                                               ; preds = %94, %17
  %97 = load i64, i64* %2, align 8
  ret i64 %97
}

declare dso_local i32 @Curl_sasl_can_authenticate(i32*, %struct.connectdata*) #1

declare dso_local i32 @state(%struct.connectdata*, i32) #1

declare dso_local i64 @Curl_sasl_start(i32*, %struct.connectdata*, i32, i64*) #1

declare dso_local i64 @pop3_perform_apop(%struct.connectdata*) #1

declare dso_local i64 @pop3_perform_user(%struct.connectdata*) #1

declare dso_local i32 @infof(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
