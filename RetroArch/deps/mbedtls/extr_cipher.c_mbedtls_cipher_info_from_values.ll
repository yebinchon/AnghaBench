; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_cipher.c_mbedtls_cipher_info_from_values.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_cipher.c_mbedtls_cipher_info_from_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@mbedtls_cipher_definitions = common dso_local global %struct.TYPE_8__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @mbedtls_cipher_info_from_values(i64 %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** @mbedtls_cipher_definitions, align 8
  store %struct.TYPE_8__* %9, %struct.TYPE_8__** %8, align 8
  br label %10

10:                                               ; preds = %46, %3
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = icmp ne %struct.TYPE_7__* %13, null
  br i1 %14, label %15, label %49

15:                                               ; preds = %10
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %45

25:                                               ; preds = %15
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %25
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %7, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %33
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  store %struct.TYPE_7__* %44, %struct.TYPE_7__** %4, align 8
  br label %50

45:                                               ; preds = %33, %25, %15
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 1
  store %struct.TYPE_8__* %48, %struct.TYPE_8__** %8, align 8
  br label %10

49:                                               ; preds = %10
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %50

50:                                               ; preds = %49, %41
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  ret %struct.TYPE_7__* %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
