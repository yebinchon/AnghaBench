; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_sdio_slave.c_init_ringbuf.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_sdio_slave.c_init_ringbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@context = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@ESP_OK = common dso_local global i64 0, align 8
@portMAX_DELAY = common dso_local global i32 0, align 4
@RINGBUF_GET_ONE = common dso_local global i32 0, align 4
@link_desc_to_last = common dso_local global i32* null, align 8
@RINGBUF_GET_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @init_ringbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @init_ringbuf() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @context, i32 0, i32 1, i32 0), align 4
  %8 = call i64 @sdio_ringbuf_init(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @context, i32 0, i32 0), i32 4, i32 %7)
  store i64 %8, i64* %2, align 8
  %9 = load i64, i64* %2, align 8
  %10 = load i64, i64* @ESP_OK, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = load i64, i64* %2, align 8
  store i64 %13, i64* %1, align 8
  br label %67

14:                                               ; preds = %0
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  %15 = load i32, i32* @portMAX_DELAY, align 4
  %16 = call i64 @sdio_ringbuf_send(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @context, i32 0, i32 0), i32* null, i32* null, i32 %15)
  store i64 %16, i64* %2, align 8
  %17 = load i64, i64* %2, align 8
  %18 = load i64, i64* @ESP_OK, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i64, i64* %2, align 8
  store i64 %21, i64* %1, align 8
  br label %67

22:                                               ; preds = %14
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %48, %22
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @context, i32 0, i32 1, i32 0), align 4
  %26 = add nsw i32 %25, 1
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %51

28:                                               ; preds = %23
  %29 = load i32, i32* @RINGBUF_GET_ONE, align 4
  %30 = call i64 @sdio_ringbuf_recv(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @context, i32 0, i32 0), i32** %5, i32** null, i32 %29, i32 0)
  store i64 %30, i64* %3, align 8
  %31 = load i64, i64* %3, align 8
  %32 = load i64, i64* @ESP_OK, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load i32*, i32** @link_desc_to_last, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* @portMAX_DELAY, align 4
  %39 = call i64 @sdio_ringbuf_send(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @context, i32 0, i32 0), i32* %36, i32* %37, i32 %38)
  store i64 %39, i64* %2, align 8
  %40 = load i64, i64* %2, align 8
  %41 = load i64, i64* @ESP_OK, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %28
  %44 = load i64, i64* %2, align 8
  store i64 %44, i64* %1, align 8
  br label %67

45:                                               ; preds = %28
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @sdio_ringbuf_return(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @context, i32 0, i32 0), i32* %46)
  br label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %23

51:                                               ; preds = %23
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  %52 = load i32, i32* @RINGBUF_GET_ALL, align 4
  %53 = call i64 @sdio_ringbuf_recv(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @context, i32 0, i32 0), i32** %4, i32** %5, i32 %52, i32 0)
  store i64 %53, i64* %3, align 8
  %54 = load i64, i64* %3, align 8
  %55 = load i64, i64* @ESP_OK, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load i32*, i32** %4, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = icmp eq i32* %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  %64 = load i32*, i32** %4, align 8
  %65 = call i32 @sdio_ringbuf_return(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @context, i32 0, i32 0), i32* %64)
  %66 = load i64, i64* @ESP_OK, align 8
  store i64 %66, i64* %1, align 8
  br label %67

67:                                               ; preds = %51, %43, %20, %12
  %68 = load i64, i64* %1, align 8
  ret i64 %68
}

declare dso_local i64 @sdio_ringbuf_init(i32*, i32, i32) #1

declare dso_local i64 @sdio_ringbuf_send(i32*, i32*, i32*, i32) #1

declare dso_local i64 @sdio_ringbuf_recv(i32*, i32**, i32**, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sdio_ringbuf_return(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
