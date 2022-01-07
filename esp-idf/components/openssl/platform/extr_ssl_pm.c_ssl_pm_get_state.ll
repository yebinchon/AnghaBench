; ModuleID = '/home/carl/AnghaBench/esp-idf/components/openssl/platform/extr_ssl_pm.c_ssl_pm_get_state.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/openssl/platform/extr_ssl_pm.c_ssl_pm_get_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.ssl_pm = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@TLS_ST_CW_CLNT_HELLO = common dso_local global i32 0, align 4
@TLS_ST_SW_SRVR_HELLO = common dso_local global i32 0, align 4
@TLS_ST_SW_CERT = common dso_local global i32 0, align 4
@TLS_ST_SW_SRVR_DONE = common dso_local global i32 0, align 4
@TLS_ST_CW_KEY_EXCH = common dso_local global i32 0, align 4
@TLS_ST_CW_CHANGE = common dso_local global i32 0, align 4
@TLS_ST_CW_FINISHED = common dso_local global i32 0, align 4
@TLS_ST_SW_CHANGE = common dso_local global i32 0, align 4
@TLS_ST_SW_FINISHED = common dso_local global i32 0, align 4
@TLS_ST_CW_CERT = common dso_local global i32 0, align 4
@TLS_ST_SR_KEY_EXCH = common dso_local global i32 0, align 4
@TLS_ST_SW_SESSION_TICKET = common dso_local global i32 0, align 4
@TLS_ST_SW_CERT_REQ = common dso_local global i32 0, align 4
@TLS_ST_OK = common dso_local global i32 0, align 4
@TLS_ST_BEFORE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssl_pm_get_state(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ssl_pm*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.ssl_pm*
  store %struct.ssl_pm* %8, %struct.ssl_pm** %4, align 8
  %9 = load %struct.ssl_pm*, %struct.ssl_pm** %4, align 8
  %10 = getelementptr inbounds %struct.ssl_pm, %struct.ssl_pm* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %41 [
    i32 138, label %13
    i32 132, label %15
    i32 135, label %17
    i32 131, label %19
    i32 137, label %21
    i32 140, label %23
    i32 139, label %25
    i32 134, label %27
    i32 133, label %29
    i32 141, label %31
    i32 129, label %33
    i32 128, label %35
    i32 130, label %37
    i32 136, label %39
  ]

13:                                               ; preds = %1
  %14 = load i32, i32* @TLS_ST_CW_CLNT_HELLO, align 4
  store i32 %14, i32* %3, align 4
  br label %43

15:                                               ; preds = %1
  %16 = load i32, i32* @TLS_ST_SW_SRVR_HELLO, align 4
  store i32 %16, i32* %3, align 4
  br label %43

17:                                               ; preds = %1
  %18 = load i32, i32* @TLS_ST_SW_CERT, align 4
  store i32 %18, i32* %3, align 4
  br label %43

19:                                               ; preds = %1
  %20 = load i32, i32* @TLS_ST_SW_SRVR_DONE, align 4
  store i32 %20, i32* %3, align 4
  br label %43

21:                                               ; preds = %1
  %22 = load i32, i32* @TLS_ST_CW_KEY_EXCH, align 4
  store i32 %22, i32* %3, align 4
  br label %43

23:                                               ; preds = %1
  %24 = load i32, i32* @TLS_ST_CW_CHANGE, align 4
  store i32 %24, i32* %3, align 4
  br label %43

25:                                               ; preds = %1
  %26 = load i32, i32* @TLS_ST_CW_FINISHED, align 4
  store i32 %26, i32* %3, align 4
  br label %43

27:                                               ; preds = %1
  %28 = load i32, i32* @TLS_ST_SW_CHANGE, align 4
  store i32 %28, i32* %3, align 4
  br label %43

29:                                               ; preds = %1
  %30 = load i32, i32* @TLS_ST_SW_FINISHED, align 4
  store i32 %30, i32* %3, align 4
  br label %43

31:                                               ; preds = %1
  %32 = load i32, i32* @TLS_ST_CW_CERT, align 4
  store i32 %32, i32* %3, align 4
  br label %43

33:                                               ; preds = %1
  %34 = load i32, i32* @TLS_ST_SR_KEY_EXCH, align 4
  store i32 %34, i32* %3, align 4
  br label %43

35:                                               ; preds = %1
  %36 = load i32, i32* @TLS_ST_SW_SESSION_TICKET, align 4
  store i32 %36, i32* %3, align 4
  br label %43

37:                                               ; preds = %1
  %38 = load i32, i32* @TLS_ST_SW_CERT_REQ, align 4
  store i32 %38, i32* %3, align 4
  br label %43

39:                                               ; preds = %1
  %40 = load i32, i32* @TLS_ST_OK, align 4
  store i32 %40, i32* %3, align 4
  br label %43

41:                                               ; preds = %1
  %42 = load i32, i32* @TLS_ST_BEFORE, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %41, %39, %37, %35, %33, %31, %29, %27, %25, %23, %21, %19, %17, %15, %13
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
