; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/http2_request/components/sh2lib/extr_sh2lib.c_sh2lib_execute.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/http2_request/components/sh2lib/extr_sh2lib.c_sh2lib_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh2lib_handle = type { i32 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"[sh2-execute] HTTP2 session send failed %d\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"[sh2-execute] HTTP2 session recv failed %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sh2lib_execute(%struct.sh2lib_handle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sh2lib_handle*, align 8
  %4 = alloca i32, align 4
  store %struct.sh2lib_handle* %0, %struct.sh2lib_handle** %3, align 8
  %5 = load %struct.sh2lib_handle*, %struct.sh2lib_handle** %3, align 8
  %6 = getelementptr inbounds %struct.sh2lib_handle, %struct.sh2lib_handle* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @nghttp2_session_send(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32, i32* @TAG, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @ESP_LOGE(i32 %12, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %13)
  store i32 -1, i32* %2, align 4
  br label %27

15:                                               ; preds = %1
  %16 = load %struct.sh2lib_handle*, %struct.sh2lib_handle** %3, align 8
  %17 = getelementptr inbounds %struct.sh2lib_handle, %struct.sh2lib_handle* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @nghttp2_session_recv(i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = load i32, i32* @TAG, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @ESP_LOGE(i32 %23, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  store i32 -1, i32* %2, align 4
  br label %27

26:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %22, %11
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @nghttp2_session_send(i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, i32) #1

declare dso_local i32 @nghttp2_session_recv(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
