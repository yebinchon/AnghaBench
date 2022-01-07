; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_gcm.c_mbedtls_gcm_setkey.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_gcm.c_mbedtls_gcm_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@MBEDTLS_MODE_ECB = common dso_local global i32 0, align 4
@MBEDTLS_ERR_GCM_BAD_INPUT = common dso_local global i32 0, align 4
@MBEDTLS_ENCRYPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_gcm_setkey(%struct.TYPE_7__* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @MBEDTLS_MODE_ECB, align 4
  %15 = call %struct.TYPE_8__* @mbedtls_cipher_info_from_values(i32 %12, i32 %13, i32 %14)
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %11, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %17 = icmp eq %struct.TYPE_8__* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @MBEDTLS_ERR_GCM_BAD_INPUT, align 4
  store i32 %19, i32* %5, align 4
  br label %55

20:                                               ; preds = %4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 16
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @MBEDTLS_ERR_GCM_BAD_INPUT, align 4
  store i32 %26, i32* %5, align 4
  br label %55

27:                                               ; preds = %20
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = call i32 @mbedtls_cipher_free(i32* %29)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %34 = call i32 @mbedtls_cipher_setup(i32* %32, %struct.TYPE_8__* %33)
  store i32 %34, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %5, align 4
  br label %55

38:                                               ; preds = %27
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i8*, i8** %8, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @MBEDTLS_ENCRYPT, align 4
  %44 = call i32 @mbedtls_cipher_setkey(i32* %40, i8* %41, i32 %42, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %5, align 4
  br label %55

48:                                               ; preds = %38
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %50 = call i32 @gcm_gen_table(%struct.TYPE_7__* %49)
  store i32 %50, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %5, align 4
  br label %55

54:                                               ; preds = %48
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %54, %52, %46, %36, %25, %18
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local %struct.TYPE_8__* @mbedtls_cipher_info_from_values(i32, i32, i32) #1

declare dso_local i32 @mbedtls_cipher_free(i32*) #1

declare dso_local i32 @mbedtls_cipher_setup(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @mbedtls_cipher_setkey(i32*, i8*, i32, i32) #1

declare dso_local i32 @gcm_gen_table(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
