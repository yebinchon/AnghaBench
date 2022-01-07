; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_curl_sasl.c_Curl_sasl_init.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_curl_sasl.c_Curl_sasl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SASL = type { i8*, i8*, i32, i8*, i32, i8*, i32, %struct.SASLproto* }
%struct.SASLproto = type { i32 }

@SASL_STOP = common dso_local global i32 0, align 4
@SASL_AUTH_NONE = common dso_local global i8* null, align 8
@SASL_AUTH_DEFAULT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Curl_sasl_init(%struct.SASL* %0, %struct.SASLproto* %1) #0 {
  %3 = alloca %struct.SASL*, align 8
  %4 = alloca %struct.SASLproto*, align 8
  store %struct.SASL* %0, %struct.SASL** %3, align 8
  store %struct.SASLproto* %1, %struct.SASLproto** %4, align 8
  %5 = load %struct.SASLproto*, %struct.SASLproto** %4, align 8
  %6 = load %struct.SASL*, %struct.SASL** %3, align 8
  %7 = getelementptr inbounds %struct.SASL, %struct.SASL* %6, i32 0, i32 7
  store %struct.SASLproto* %5, %struct.SASLproto** %7, align 8
  %8 = load i32, i32* @SASL_STOP, align 4
  %9 = load %struct.SASL*, %struct.SASL** %3, align 8
  %10 = getelementptr inbounds %struct.SASL, %struct.SASL* %9, i32 0, i32 6
  store i32 %8, i32* %10, align 8
  %11 = load i8*, i8** @SASL_AUTH_NONE, align 8
  %12 = load %struct.SASL*, %struct.SASL** %3, align 8
  %13 = getelementptr inbounds %struct.SASL, %struct.SASL* %12, i32 0, i32 5
  store i8* %11, i8** %13, align 8
  %14 = load i32, i32* @SASL_AUTH_DEFAULT, align 4
  %15 = load %struct.SASL*, %struct.SASL** %3, align 8
  %16 = getelementptr inbounds %struct.SASL, %struct.SASL* %15, i32 0, i32 4
  store i32 %14, i32* %16, align 8
  %17 = load i8*, i8** @SASL_AUTH_NONE, align 8
  %18 = load %struct.SASL*, %struct.SASL** %3, align 8
  %19 = getelementptr inbounds %struct.SASL, %struct.SASL* %18, i32 0, i32 3
  store i8* %17, i8** %19, align 8
  %20 = load i32, i32* @TRUE, align 4
  %21 = load %struct.SASL*, %struct.SASL** %3, align 8
  %22 = getelementptr inbounds %struct.SASL, %struct.SASL* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load i8*, i8** @FALSE, align 8
  %24 = load %struct.SASL*, %struct.SASL** %3, align 8
  %25 = getelementptr inbounds %struct.SASL, %struct.SASL* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** @FALSE, align 8
  %27 = load %struct.SASL*, %struct.SASL** %3, align 8
  %28 = getelementptr inbounds %struct.SASL, %struct.SASL* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
