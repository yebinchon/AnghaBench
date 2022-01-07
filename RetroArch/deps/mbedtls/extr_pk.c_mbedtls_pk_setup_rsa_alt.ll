; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_pk.c_mbedtls_pk_setup_rsa_alt.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_pk.c_mbedtls_pk_setup_rsa_alt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* (...)* }
%struct.TYPE_8__ = type { i32*, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32, i32, i32, i8* }

@mbedtls_rsa_alt_info = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@MBEDTLS_ERR_PK_BAD_INPUT_DATA = common dso_local global i32 0, align 4
@MBEDTLS_ERR_PK_ALLOC_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_pk_setup_rsa_alt(%struct.TYPE_8__* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.TYPE_7__* @mbedtls_rsa_alt_info, %struct.TYPE_7__** %13, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %15 = icmp eq %struct.TYPE_8__* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %5
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = icmp ne %struct.TYPE_7__* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %16, %5
  %22 = load i32, i32* @MBEDTLS_ERR_PK_BAD_INPUT_DATA, align 4
  store i32 %22, i32* %6, align 4
  br label %53

23:                                               ; preds = %16
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32* (...)*, i32* (...)** %25, align 8
  %27 = call i32* (...) %26()
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  store i32* %27, i32** %29, align 8
  %30 = icmp eq i32* %27, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* @MBEDTLS_ERR_PK_ALLOC_FAILED, align 4
  store i32 %32, i32* %6, align 4
  br label %53

33:                                               ; preds = %23
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  store %struct.TYPE_7__* %34, %struct.TYPE_7__** %36, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = bitcast i32* %39 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %40, %struct.TYPE_6__** %12, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 3
  store i8* %41, i8** %43, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %33, %31, %21
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
