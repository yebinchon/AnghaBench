; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/corecrypto/ccdbrg/src/extr_ccdrbg_nisthmac.c_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/corecrypto/ccdbrg/src/extr_ccdrbg_nisthmac.c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccdrbg_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ccdigest_info* }
%struct.ccdigest_info = type { i64 }
%struct.ccdrbg_state = type { i32 }
%struct.ccdrbg_nisthmac_state = type { i64, i64, i64, i64, i64, %struct.TYPE_2__*, i64 }

@CCDRBG_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccdrbg_info*, %struct.ccdrbg_state*, i64, i8*, i64, i8*, i64, i8*)* @init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init(%struct.ccdrbg_info* %0, %struct.ccdrbg_state* %1, i64 %2, i8* %3, i64 %4, i8* %5, i64 %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.ccdrbg_info*, align 8
  %11 = alloca %struct.ccdrbg_state*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.ccdrbg_nisthmac_state*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.ccdigest_info*, align 8
  store %struct.ccdrbg_info* %0, %struct.ccdrbg_info** %10, align 8
  store %struct.ccdrbg_state* %1, %struct.ccdrbg_state** %11, align 8
  store i64 %2, i64* %12, align 8
  store i8* %3, i8** %13, align 8
  store i64 %4, i64* %14, align 8
  store i8* %5, i8** %15, align 8
  store i64 %6, i64* %16, align 8
  store i8* %7, i8** %17, align 8
  %21 = load %struct.ccdrbg_state*, %struct.ccdrbg_state** %11, align 8
  %22 = bitcast %struct.ccdrbg_state* %21 to %struct.ccdrbg_nisthmac_state*
  store %struct.ccdrbg_nisthmac_state* %22, %struct.ccdrbg_nisthmac_state** %18, align 8
  %23 = load %struct.ccdrbg_nisthmac_state*, %struct.ccdrbg_nisthmac_state** %18, align 8
  %24 = getelementptr inbounds %struct.ccdrbg_nisthmac_state, %struct.ccdrbg_nisthmac_state* %23, i32 0, i32 6
  store i64 0, i64* %24, align 8
  %25 = load %struct.ccdrbg_info*, %struct.ccdrbg_info** %10, align 8
  %26 = getelementptr inbounds %struct.ccdrbg_info, %struct.ccdrbg_info* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load %struct.ccdrbg_nisthmac_state*, %struct.ccdrbg_nisthmac_state** %18, align 8
  %29 = getelementptr inbounds %struct.ccdrbg_nisthmac_state, %struct.ccdrbg_nisthmac_state* %28, i32 0, i32 5
  store %struct.TYPE_2__* %27, %struct.TYPE_2__** %29, align 8
  %30 = load %struct.ccdrbg_nisthmac_state*, %struct.ccdrbg_nisthmac_state** %18, align 8
  %31 = load i64, i64* %12, align 8
  %32 = load i64, i64* %16, align 8
  %33 = call i32 @validate_inputs(%struct.ccdrbg_nisthmac_state* %30, i64 %31, i32 0, i64 %32)
  store i32 %33, i32* %19, align 4
  %34 = load i32, i32* %19, align 4
  %35 = load i32, i32* @CCDRBG_STATUS_OK, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %8
  %38 = load %struct.ccdrbg_state*, %struct.ccdrbg_state** %11, align 8
  %39 = call i32 @done(%struct.ccdrbg_state* %38)
  %40 = load i32, i32* %19, align 4
  store i32 %40, i32* %9, align 4
  br label %80

41:                                               ; preds = %8
  %42 = load %struct.ccdrbg_nisthmac_state*, %struct.ccdrbg_nisthmac_state** %18, align 8
  %43 = getelementptr inbounds %struct.ccdrbg_nisthmac_state, %struct.ccdrbg_nisthmac_state* %42, i32 0, i32 5
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load %struct.ccdigest_info*, %struct.ccdigest_info** %45, align 8
  store %struct.ccdigest_info* %46, %struct.ccdigest_info** %20, align 8
  %47 = load %struct.ccdigest_info*, %struct.ccdigest_info** %20, align 8
  %48 = getelementptr inbounds %struct.ccdigest_info, %struct.ccdigest_info* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.ccdrbg_nisthmac_state*, %struct.ccdrbg_nisthmac_state** %18, align 8
  %51 = getelementptr inbounds %struct.ccdrbg_nisthmac_state, %struct.ccdrbg_nisthmac_state* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.ccdigest_info*, %struct.ccdigest_info** %20, align 8
  %53 = getelementptr inbounds %struct.ccdigest_info, %struct.ccdigest_info* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.ccdrbg_nisthmac_state*, %struct.ccdrbg_nisthmac_state** %18, align 8
  %56 = getelementptr inbounds %struct.ccdrbg_nisthmac_state, %struct.ccdrbg_nisthmac_state* %55, i32 0, i32 4
  store i64 %54, i64* %56, align 8
  %57 = load %struct.ccdrbg_nisthmac_state*, %struct.ccdrbg_nisthmac_state** %18, align 8
  %58 = getelementptr inbounds %struct.ccdrbg_nisthmac_state, %struct.ccdrbg_nisthmac_state* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.ccdrbg_nisthmac_state*, %struct.ccdrbg_nisthmac_state** %18, align 8
  %61 = getelementptr inbounds %struct.ccdrbg_nisthmac_state, %struct.ccdrbg_nisthmac_state* %60, i32 0, i32 3
  store i64 %59, i64* %61, align 8
  %62 = load %struct.ccdrbg_nisthmac_state*, %struct.ccdrbg_nisthmac_state** %18, align 8
  %63 = getelementptr inbounds %struct.ccdrbg_nisthmac_state, %struct.ccdrbg_nisthmac_state* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.ccdrbg_nisthmac_state*, %struct.ccdrbg_nisthmac_state** %18, align 8
  %66 = getelementptr inbounds %struct.ccdrbg_nisthmac_state, %struct.ccdrbg_nisthmac_state* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %64, %67
  %69 = load %struct.ccdrbg_nisthmac_state*, %struct.ccdrbg_nisthmac_state** %18, align 8
  %70 = getelementptr inbounds %struct.ccdrbg_nisthmac_state, %struct.ccdrbg_nisthmac_state* %69, i32 0, i32 2
  store i64 %68, i64* %70, align 8
  %71 = load %struct.ccdrbg_state*, %struct.ccdrbg_state** %11, align 8
  %72 = load i64, i64* %12, align 8
  %73 = load i8*, i8** %13, align 8
  %74 = load i64, i64* %14, align 8
  %75 = load i8*, i8** %15, align 8
  %76 = load i64, i64* %16, align 8
  %77 = load i8*, i8** %17, align 8
  %78 = call i32 @hmac_dbrg_instantiate_algorithm(%struct.ccdrbg_state* %71, i64 %72, i8* %73, i64 %74, i8* %75, i64 %76, i8* %77)
  %79 = load i32, i32* @CCDRBG_STATUS_OK, align 4
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %41, %37
  %81 = load i32, i32* %9, align 4
  ret i32 %81
}

declare dso_local i32 @validate_inputs(%struct.ccdrbg_nisthmac_state*, i64, i32, i64) #1

declare dso_local i32 @done(%struct.ccdrbg_state*) #1

declare dso_local i32 @hmac_dbrg_instantiate_algorithm(%struct.ccdrbg_state*, i64, i8*, i64, i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
