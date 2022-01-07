; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_pkparse.c_pk_use_ecparams.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_pkparse.c_pk_use_ecparams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64 }

@MBEDTLS_ASN1_OID = common dso_local global i64 0, align 8
@MBEDTLS_ERR_PK_UNKNOWN_NAMED_CURVE = common dso_local global i32 0, align 4
@MBEDTLS_ERR_PK_KEY_INVALID_FORMAT = common dso_local global i32 0, align 4
@MBEDTLS_ECP_DP_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_8__*)* @pk_use_ecparams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pk_use_ecparams(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @MBEDTLS_ASN1_OID, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %15 = call i64 @mbedtls_oid_get_ec_grp(%struct.TYPE_9__* %14, i64* %7)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* @MBEDTLS_ERR_PK_UNKNOWN_NAMED_CURVE, align 4
  store i32 %18, i32* %3, align 4
  br label %44

19:                                               ; preds = %13
  br label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @MBEDTLS_ERR_PK_KEY_INVALID_FORMAT, align 4
  store i32 %21, i32* %3, align 4
  br label %44

22:                                               ; preds = %19
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @MBEDTLS_ECP_DP_NONE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @MBEDTLS_ERR_PK_KEY_INVALID_FORMAT, align 4
  store i32 %35, i32* %3, align 4
  br label %44

36:                                               ; preds = %28, %22
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @mbedtls_ecp_group_load(%struct.TYPE_8__* %37, i64 %38)
  store i32 %39, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %3, align 4
  br label %44

43:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %41, %34, %20, %17
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i64 @mbedtls_oid_get_ec_grp(%struct.TYPE_9__*, i64*) #1

declare dso_local i32 @mbedtls_ecp_group_load(%struct.TYPE_8__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
