; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/corecrypto/ccdbrg/src/extr_ccdrbg_nisthmac.c_hmac_dbrg_instantiate_algorithm.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/corecrypto/ccdbrg/src/extr_ccdrbg_nisthmac.c_hmac_dbrg_instantiate_algorithm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccdrbg_state = type { i32 }
%struct.ccdrbg_nisthmac_state = type { i32, i32, i32, i32, i32 }

@CCDRBG_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccdrbg_state*, i64, i8*, i64, i8*, i64, i8*)* @hmac_dbrg_instantiate_algorithm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hmac_dbrg_instantiate_algorithm(%struct.ccdrbg_state* %0, i64 %1, i8* %2, i64 %3, i8* %4, i64 %5, i8* %6) #0 {
  %8 = alloca %struct.ccdrbg_state*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.ccdrbg_nisthmac_state*, align 8
  store %struct.ccdrbg_state* %0, %struct.ccdrbg_state** %8, align 8
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  store i8* %6, i8** %14, align 8
  %16 = load %struct.ccdrbg_state*, %struct.ccdrbg_state** %8, align 8
  %17 = bitcast %struct.ccdrbg_state* %16 to %struct.ccdrbg_nisthmac_state*
  store %struct.ccdrbg_nisthmac_state* %17, %struct.ccdrbg_nisthmac_state** %15, align 8
  %18 = load %struct.ccdrbg_nisthmac_state*, %struct.ccdrbg_nisthmac_state** %15, align 8
  %19 = getelementptr inbounds %struct.ccdrbg_nisthmac_state, %struct.ccdrbg_nisthmac_state* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ccdrbg_nisthmac_state*, %struct.ccdrbg_nisthmac_state** %15, align 8
  %22 = getelementptr inbounds %struct.ccdrbg_nisthmac_state, %struct.ccdrbg_nisthmac_state* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @cc_zero(i32 %20, i32 %23)
  %25 = load %struct.ccdrbg_nisthmac_state*, %struct.ccdrbg_nisthmac_state** %15, align 8
  %26 = getelementptr inbounds %struct.ccdrbg_nisthmac_state, %struct.ccdrbg_nisthmac_state* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ccdrbg_nisthmac_state*, %struct.ccdrbg_nisthmac_state** %15, align 8
  %29 = getelementptr inbounds %struct.ccdrbg_nisthmac_state, %struct.ccdrbg_nisthmac_state* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @CC_MEMSET(i32 %27, i32 1, i32 %30)
  %32 = load %struct.ccdrbg_state*, %struct.ccdrbg_state** %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = load i64, i64* %11, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = load i64, i64* %13, align 8
  %38 = load i8*, i8** %14, align 8
  %39 = call i32 @hmac_dbrg_update(%struct.ccdrbg_state* %32, i64 %33, i8* %34, i64 %35, i8* %36, i64 %37, i8* %38)
  %40 = load %struct.ccdrbg_nisthmac_state*, %struct.ccdrbg_nisthmac_state** %15, align 8
  %41 = getelementptr inbounds %struct.ccdrbg_nisthmac_state, %struct.ccdrbg_nisthmac_state* %40, i32 0, i32 0
  store i32 1, i32* %41, align 4
  %42 = load i32, i32* @CCDRBG_STATUS_OK, align 4
  ret i32 %42
}

declare dso_local i32 @cc_zero(i32, i32) #1

declare dso_local i32 @CC_MEMSET(i32, i32, i32) #1

declare dso_local i32 @hmac_dbrg_update(%struct.ccdrbg_state*, i64, i8*, i64, i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
