; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecdh.c_mbedtls_ecdh_make_params.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecdh.c_mbedtls_ecdh_make_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i64 }

@MBEDTLS_ERR_ECP_BAD_INPUT_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecdh_make_params(%struct.TYPE_6__* %0, i64* %1, i8* %2, i64 %3, i32 (i8*, i8*, i64)* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32 (i8*, i8*, i64)*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i64* %1, i64** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 (i8*, i8*, i64)* %4, i32 (i8*, i8*, i64)** %12, align 8
  store i8* %5, i8** %13, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %18 = icmp eq %struct.TYPE_6__* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %6
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19, %6
  %26 = load i32, i32* @MBEDTLS_ERR_ECP_BAD_INPUT_DATA, align 4
  store i32 %26, i32* %7, align 4
  br label %74

27:                                               ; preds = %19
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 3
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %12, align 8
  %35 = load i8*, i8** %13, align 8
  %36 = call i32 @mbedtls_ecdh_gen_public(%struct.TYPE_7__* %29, i32* %31, i32* %33, i32 (i8*, i8*, i64)* %34, i8* %35)
  store i32 %36, i32* %14, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = load i32, i32* %14, align 4
  store i32 %39, i32* %7, align 4
  br label %74

40:                                               ; preds = %27
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  %43 = load i8*, i8** %10, align 8
  %44 = load i64, i64* %11, align 8
  %45 = call i32 @mbedtls_ecp_tls_write_group(%struct.TYPE_7__* %42, i64* %15, i8* %43, i64 %44)
  store i32 %45, i32* %14, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* %14, align 4
  store i32 %48, i32* %7, align 4
  br label %74

49:                                               ; preds = %40
  %50 = load i64, i64* %15, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 %50
  store i8* %52, i8** %10, align 8
  %53 = load i64, i64* %15, align 8
  %54 = load i64, i64* %11, align 8
  %55 = sub i64 %54, %53
  store i64 %55, i64* %11, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = load i64, i64* %11, align 8
  %65 = call i32 @mbedtls_ecp_tls_write_point(%struct.TYPE_7__* %57, i32* %59, i32 %62, i64* %16, i8* %63, i64 %64)
  store i32 %65, i32* %14, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %49
  %68 = load i32, i32* %14, align 4
  store i32 %68, i32* %7, align 4
  br label %74

69:                                               ; preds = %49
  %70 = load i64, i64* %15, align 8
  %71 = load i64, i64* %16, align 8
  %72 = add i64 %70, %71
  %73 = load i64*, i64** %9, align 8
  store i64 %72, i64* %73, align 8
  store i32 0, i32* %7, align 4
  br label %74

74:                                               ; preds = %69, %67, %47, %38, %25
  %75 = load i32, i32* %7, align 4
  ret i32 %75
}

declare dso_local i32 @mbedtls_ecdh_gen_public(%struct.TYPE_7__*, i32*, i32*, i32 (i8*, i8*, i64)*, i8*) #1

declare dso_local i32 @mbedtls_ecp_tls_write_group(%struct.TYPE_7__*, i64*, i8*, i64) #1

declare dso_local i32 @mbedtls_ecp_tls_write_point(%struct.TYPE_7__*, i32*, i32, i64*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
