; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/corecrypto/ccdbrg/src/extr_ccdrbg_nisthmac.c_validate_gen_params.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/corecrypto/ccdbrg/src/extr_ccdrbg_nisthmac.c_validate_gen_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CCDRBG_STATUS_PARAM_ERROR = common dso_local global i32 0, align 4
@CCDRBG_MAX_REQUEST_SIZE = common dso_local global i64 0, align 8
@end = common dso_local global i32 0, align 4
@CCDRBG_MAX_ADDITIONALINPUT_SIZE = common dso_local global i64 0, align 8
@CCDRBG_STATUS_NEED_RESEED = common dso_local global i32 0, align 4
@CCDRBG_RESEED_INTERVAL = common dso_local global i64 0, align 8
@CCDRBG_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64)* @validate_gen_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_gen_params(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i32, i32* @CCDRBG_STATUS_PARAM_ERROR, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @CCDRBG_MAX_REQUEST_SIZE, align 8
  %11 = icmp ule i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = load i32, i32* @end, align 4
  %14 = call i32 @cc_require(i32 %12, i32 %13)
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @CCDRBG_MAX_ADDITIONALINPUT_SIZE, align 8
  %17 = icmp ule i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* @end, align 4
  %20 = call i32 @cc_require(i32 %18, i32 %19)
  %21 = load i32, i32* @CCDRBG_STATUS_NEED_RESEED, align 4
  store i32 %21, i32* %7, align 4
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* @CCDRBG_RESEED_INTERVAL, align 8
  %24 = icmp sle i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* @end, align 4
  %27 = call i32 @cc_require(i32 %25, i32 %26)
  %28 = load i32, i32* @CCDRBG_STATUS_OK, align 4
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %3
  %30 = load i32, i32* %7, align 4
  ret i32 %30
}

declare dso_local i32 @cc_require(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
