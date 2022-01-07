; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_pk.c_mbedtls_pk_setup.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_pk.c_mbedtls_pk_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32* }
%struct.TYPE_5__ = type { i32* (...)* }

@MBEDTLS_ERR_PK_BAD_INPUT_DATA = common dso_local global i32 0, align 4
@MBEDTLS_ERR_PK_ALLOC_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_pk_setup(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %7 = icmp eq %struct.TYPE_6__* %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %10 = icmp eq %struct.TYPE_5__* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = icmp ne %struct.TYPE_5__* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %11, %8, %2
  %17 = load i32, i32* @MBEDTLS_ERR_PK_BAD_INPUT_DATA, align 4
  store i32 %17, i32* %3, align 4
  br label %32

18:                                               ; preds = %11
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32* (...)*, i32* (...)** %20, align 8
  %22 = call i32* (...) %21()
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  store i32* %22, i32** %24, align 8
  %25 = icmp eq i32* %22, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* @MBEDTLS_ERR_PK_ALLOC_FAILED, align 4
  store i32 %27, i32* %3, align 4
  br label %32

28:                                               ; preds = %18
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store %struct.TYPE_5__* %29, %struct.TYPE_5__** %31, align 8
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %28, %26, %16
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
