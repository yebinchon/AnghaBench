; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/corecrypto/ccdbrg/src/extr_ccdrbg_nisthmac.c_reseed.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/corecrypto/ccdbrg/src/extr_ccdrbg_nisthmac.c_reseed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccdrbg_state = type { i32 }
%struct.ccdrbg_nisthmac_state = type { i32 }

@CCDRBG_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccdrbg_state*, i64, i8*, i64, i8*)* @reseed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reseed(%struct.ccdrbg_state* %0, i64 %1, i8* %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ccdrbg_state*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.ccdrbg_nisthmac_state*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ccdrbg_state* %0, %struct.ccdrbg_state** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  %15 = load %struct.ccdrbg_state*, %struct.ccdrbg_state** %7, align 8
  %16 = bitcast %struct.ccdrbg_state* %15 to %struct.ccdrbg_nisthmac_state*
  store %struct.ccdrbg_nisthmac_state* %16, %struct.ccdrbg_nisthmac_state** %12, align 8
  %17 = load %struct.ccdrbg_nisthmac_state*, %struct.ccdrbg_nisthmac_state** %12, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* %10, align 8
  %20 = call i32 @validate_inputs(%struct.ccdrbg_nisthmac_state* %17, i64 %18, i64 %19, i32 0)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* @CCDRBG_STATUS_OK, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i32, i32* %13, align 4
  store i32 %25, i32* %6, align 4
  br label %36

26:                                               ; preds = %5
  %27 = load %struct.ccdrbg_state*, %struct.ccdrbg_state** %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = load i64, i64* %10, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = call i32 @hmac_dbrg_update(%struct.ccdrbg_state* %27, i64 %28, i8* %29, i64 %30, i8* %31, i32 0, i32* null)
  store i32 %32, i32* %14, align 4
  %33 = load %struct.ccdrbg_nisthmac_state*, %struct.ccdrbg_nisthmac_state** %12, align 8
  %34 = getelementptr inbounds %struct.ccdrbg_nisthmac_state, %struct.ccdrbg_nisthmac_state* %33, i32 0, i32 0
  store i32 1, i32* %34, align 4
  %35 = load i32, i32* %14, align 4
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %26, %24
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local i32 @validate_inputs(%struct.ccdrbg_nisthmac_state*, i64, i64, i32) #1

declare dso_local i32 @hmac_dbrg_update(%struct.ccdrbg_state*, i64, i8*, i64, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
