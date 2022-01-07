; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_cipher.c_mbedtls_cipher_write_tag.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_cipher.c_mbedtls_cipher_write_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@MBEDTLS_ERR_CIPHER_BAD_INPUT_DATA = common dso_local global i32 0, align 4
@MBEDTLS_ENCRYPT = common dso_local global i64 0, align 8
@MBEDTLS_MODE_GCM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_cipher_write_tag(%struct.TYPE_5__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = icmp eq %struct.TYPE_5__* null, %8
  br i1 %9, label %18, label %10

10:                                               ; preds = %3
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = icmp eq %struct.TYPE_4__* null, %13
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = load i8*, i8** %6, align 8
  %17 = icmp eq i8* null, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %15, %10, %3
  %19 = load i32, i32* @MBEDTLS_ERR_CIPHER_BAD_INPUT_DATA, align 4
  store i32 %19, i32* %4, align 4
  br label %45

20:                                               ; preds = %15
  %21 = load i64, i64* @MBEDTLS_ENCRYPT, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @MBEDTLS_ERR_CIPHER_BAD_INPUT_DATA, align 4
  store i32 %27, i32* %4, align 4
  br label %45

28:                                               ; preds = %20
  %29 = load i64, i64* @MBEDTLS_MODE_GCM, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %29, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %28
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i32*
  %41 = load i8*, i8** %6, align 8
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @mbedtls_gcm_finish(i32* %40, i8* %41, i64 %42)
  store i32 %43, i32* %4, align 4
  br label %45

44:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %36, %26, %18
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @mbedtls_gcm_finish(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
