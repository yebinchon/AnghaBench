; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509_csr.c_mbedtls_x509_csr_free.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509_csr.c_mbedtls_x509_csr_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__, %struct.TYPE_10__*, %struct.TYPE_9__, %struct.TYPE_10__*, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_x509_csr_free(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %6 = icmp eq %struct.TYPE_10__* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %52

8:                                                ; preds = %1
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 4
  %11 = call i32 @mbedtls_pk_free(i32* %10)
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %3, align 8
  br label %16

16:                                               ; preds = %19, %8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %18 = icmp ne %struct.TYPE_10__* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %4, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %3, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %25 = call i32 @mbedtls_zeroize(%struct.TYPE_10__* %24, i32 48)
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %27 = call i32 @mbedtls_free(%struct.TYPE_10__* %26)
  br label %16

28:                                               ; preds = %16
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = icmp ne %struct.TYPE_10__* %32, null
  br i1 %33, label %34, label %49

34:                                               ; preds = %28
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @mbedtls_zeroize(%struct.TYPE_10__* %38, i32 %42)
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = call i32 @mbedtls_free(%struct.TYPE_10__* %47)
  br label %49

49:                                               ; preds = %34, %28
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %51 = call i32 @mbedtls_zeroize(%struct.TYPE_10__* %50, i32 48)
  br label %52

52:                                               ; preds = %49, %7
  ret void
}

declare dso_local i32 @mbedtls_pk_free(i32*) #1

declare dso_local i32 @mbedtls_zeroize(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @mbedtls_free(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
