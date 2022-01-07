; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecp.c_mbedtls_ecp_tls_read_group.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecp.c_mbedtls_ecp_tls_read_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@MBEDTLS_ERR_ECP_BAD_INPUT_DATA = common dso_local global i32 0, align 4
@MBEDTLS_ECP_TLS_NAMED_CURVE = common dso_local global i32 0, align 4
@MBEDTLS_ERR_ECP_FEATURE_UNAVAILABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecp_tls_read_group(i32* %0, i8** %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = icmp ult i64 %10, 3
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @MBEDTLS_ERR_ECP_BAD_INPUT_DATA, align 4
  store i32 %13, i32* %4, align 4
  br label %50

14:                                               ; preds = %3
  %15 = load i8**, i8*** %6, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %15, align 8
  %18 = load i8, i8* %16, align 1
  %19 = zext i8 %18 to i32
  %20 = load i32, i32* @MBEDTLS_ECP_TLS_NAMED_CURVE, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load i32, i32* @MBEDTLS_ERR_ECP_BAD_INPUT_DATA, align 4
  store i32 %23, i32* %4, align 4
  br label %50

24:                                               ; preds = %14
  %25 = load i8**, i8*** %6, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %25, align 8
  %28 = load i8, i8* %26, align 1
  %29 = zext i8 %28 to i32
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = shl i32 %30, 8
  store i32 %31, i32* %8, align 4
  %32 = load i8**, i8*** %6, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %32, align 8
  %35 = load i8, i8* %33, align 1
  %36 = zext i8 %35 to i32
  %37 = load i32, i32* %8, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call %struct.TYPE_3__* @mbedtls_ecp_curve_info_from_tls_id(i32 %39)
  store %struct.TYPE_3__* %40, %struct.TYPE_3__** %9, align 8
  %41 = icmp eq %struct.TYPE_3__* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %24
  %43 = load i32, i32* @MBEDTLS_ERR_ECP_FEATURE_UNAVAILABLE, align 4
  store i32 %43, i32* %4, align 4
  br label %50

44:                                               ; preds = %24
  %45 = load i32*, i32** %5, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @mbedtls_ecp_group_load(i32* %45, i32 %48)
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %44, %42, %22, %12
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.TYPE_3__* @mbedtls_ecp_curve_info_from_tls_id(i32) #1

declare dso_local i32 @mbedtls_ecp_group_load(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
