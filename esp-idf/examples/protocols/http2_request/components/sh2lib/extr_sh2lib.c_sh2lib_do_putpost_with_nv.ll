; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/http2_request/components/sh2lib/extr_sh2lib.c_sh2lib_do_putpost_with_nv.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/http2_request/components/sh2lib/extr_sh2lib.c_sh2lib_do_putpost_with_nv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh2lib_handle = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@sh2lib_data_provider_cb = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"[sh2-do-putpost] HEADERS call failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sh2lib_do_putpost_with_nv(%struct.sh2lib_handle* %0, i32* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sh2lib_handle*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__, align 4
  %13 = alloca i32, align 4
  store %struct.sh2lib_handle* %0, %struct.sh2lib_handle** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* @sh2lib_data_provider_cb, align 4
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* %10, align 4
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.sh2lib_handle*, %struct.sh2lib_handle** %7, align 8
  %20 = getelementptr inbounds %struct.sh2lib_handle, %struct.sh2lib_handle* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @nghttp2_submit_request(i32 %21, i32* null, i32* %22, i64 %23, %struct.TYPE_5__* %12, i32 %24)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %5
  %29 = load i32, i32* @TAG, align 4
  %30 = call i32 @ESP_LOGE(i32 %29, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %33

31:                                               ; preds = %5
  %32 = load i32, i32* %13, align 4
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %31, %28
  %34 = load i32, i32* %6, align 4
  ret i32 %34
}

declare dso_local i32 @nghttp2_submit_request(i32, i32*, i32*, i64, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
