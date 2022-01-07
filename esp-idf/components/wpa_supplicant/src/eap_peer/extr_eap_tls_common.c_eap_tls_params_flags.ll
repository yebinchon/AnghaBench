; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/eap_peer/extr_eap_tls_common.c_eap_tls_params_flags.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/eap_peer/extr_eap_tls_common.c_eap_tls_params_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_connection_params = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"tls_allow_md5=1\00", align 1
@TLS_CONN_ALLOW_SIGN_RSA_MD5 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"tls_disable_time_checks=1\00", align 1
@TLS_CONN_DISABLE_TIME_CHECKS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"tls_disable_session_ticket=1\00", align 1
@TLS_CONN_DISABLE_SESSION_TICKET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"tls_disable_session_ticket=0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tls_connection_params*, i8*)* @eap_tls_params_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_tls_params_flags(%struct.tls_connection_params* %0, i8* %1) #0 {
  %3 = alloca %struct.tls_connection_params*, align 8
  %4 = alloca i8*, align 8
  store %struct.tls_connection_params* %0, %struct.tls_connection_params** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %49

8:                                                ; preds = %2
  %9 = load i8*, i8** %4, align 8
  %10 = call i64 @os_strstr(i8* %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = load i32, i32* @TLS_CONN_ALLOW_SIGN_RSA_MD5, align 4
  %14 = load %struct.tls_connection_params*, %struct.tls_connection_params** %3, align 8
  %15 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 4
  br label %18

18:                                               ; preds = %12, %8
  %19 = load i8*, i8** %4, align 8
  %20 = call i64 @os_strstr(i8* %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load i32, i32* @TLS_CONN_DISABLE_TIME_CHECKS, align 4
  %24 = load %struct.tls_connection_params*, %struct.tls_connection_params** %3, align 8
  %25 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %22, %18
  %29 = load i8*, i8** %4, align 8
  %30 = call i64 @os_strstr(i8* %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load i32, i32* @TLS_CONN_DISABLE_SESSION_TICKET, align 4
  %34 = load %struct.tls_connection_params*, %struct.tls_connection_params** %3, align 8
  %35 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %32, %28
  %39 = load i8*, i8** %4, align 8
  %40 = call i64 @os_strstr(i8* %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load i32, i32* @TLS_CONN_DISABLE_SESSION_TICKET, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.tls_connection_params*, %struct.tls_connection_params** %3, align 8
  %46 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %7, %42, %38
  ret void
}

declare dso_local i64 @os_strstr(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
