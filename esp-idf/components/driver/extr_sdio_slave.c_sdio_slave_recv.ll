; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_sdio_slave.c_sdio_slave_recv.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_sdio_slave.c_sdio_slave_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i64, i64, i32* }

@.str = private unnamed_addr constant [27 x i8] c"handle address cannot be 0\00", align 1
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@context = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@pdFALSE = common dso_local global i64 0, align 8
@ESP_ERR_TIMEOUT = common dso_local global i32 0, align 4
@qe = common dso_local global i32 0, align 4
@te = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdio_slave_recv(i64* %0, i32** %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  store i64* %0, i64** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i64*, i64** %6, align 8
  %14 = icmp ne i64* %13, null
  %15 = zext i1 %14 to i32
  %16 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %17 = call i32 @SDIO_SLAVE_CHECK(i32 %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @context, i32 0, i32 2), align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i64 @xSemaphoreTake(i32 %18, i32 %19)
  store i64 %20, i64* %10, align 8
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* @pdFALSE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* @ESP_ERR_TIMEOUT, align 4
  store i32 %25, i32* %5, align 4
  br label %66

26:                                               ; preds = %4
  store i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @context, i32 0, i32 1), i32** %11, align 8
  %27 = call i32 (...) @critical_enter_recv()
  %28 = call %struct.TYPE_5__* @STAILQ_FIRST(i32* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.TYPE_6__* @context to i8*), i64 4) to i32*))
  store %struct.TYPE_5__* %28, %struct.TYPE_5__** %12, align 8
  %29 = load i32, i32* @qe, align 4
  %30 = call i32 @STAILQ_REMOVE_HEAD(i32* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.TYPE_6__* @context to i8*), i64 4) to i32*), i32 %29)
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %32 = load i32, i32* @te, align 4
  %33 = call i32 @TAILQ_INSERT_TAIL(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @context, i32 0, i32 0), %struct.TYPE_5__* %31, i32 %32)
  %34 = call i32 (...) @critical_exit_recv()
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %36 = icmp ne %struct.TYPE_5__* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %26
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br label %42

42:                                               ; preds = %37, %26
  %43 = phi i1 [ false, %26 ], [ %41, %37 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %47 = ptrtoint %struct.TYPE_5__* %46 to i64
  %48 = load i64*, i64** %6, align 8
  store i64 %47, i64* %48, align 8
  %49 = load i32**, i32*** %7, align 8
  %50 = icmp ne i32** %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %42
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = load i32**, i32*** %7, align 8
  store i32* %54, i32** %55, align 8
  br label %56

56:                                               ; preds = %51, %42
  %57 = load i64*, i64** %8, align 8
  %58 = icmp ne i64* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64*, i64** %8, align 8
  store i64 %62, i64* %63, align 8
  br label %64

64:                                               ; preds = %59, %56
  %65 = load i32, i32* @ESP_OK, align 4
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %64, %24
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @SDIO_SLAVE_CHECK(i32, i8*, i32) #1

declare dso_local i64 @xSemaphoreTake(i32, i32) #1

declare dso_local i32 @critical_enter_recv(...) #1

declare dso_local %struct.TYPE_5__* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @critical_exit_recv(...) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
