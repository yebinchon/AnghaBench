; ModuleID = '/home/carl/AnghaBench/esp-idf/components/lwip/port/esp32/freertos/extr_sys_arch.c_sys_thread_sem_free.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/lwip/port/esp32/freertos/extr_sys_arch.c_sys_thread_sem_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_THREAD_SAFE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"sem del, sem=%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"sem pointer del, sem_p=%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @sys_thread_sem_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sys_thread_sem_free(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to i64*
  store i64* %5, i64** %3, align 8
  %6 = load i64*, i64** %3, align 8
  %7 = icmp ne i64* %6, null
  br i1 %7, label %8, label %21

8:                                                ; preds = %1
  %9 = load i64*, i64** %3, align 8
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %8
  %13 = load i32, i32* @ESP_THREAD_SAFE_DEBUG, align 4
  %14 = load i64*, i64** %3, align 8
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = call i32 @LWIP_DEBUGF(i32 %13, i8* %16)
  %18 = load i64*, i64** %3, align 8
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @vSemaphoreDelete(i64 %19)
  br label %21

21:                                               ; preds = %12, %8, %1
  %22 = load i64*, i64** %3, align 8
  %23 = icmp ne i64* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load i32, i32* @ESP_THREAD_SAFE_DEBUG, align 4
  %26 = load i64*, i64** %3, align 8
  %27 = bitcast i64* %26 to i8*
  %28 = call i32 @LWIP_DEBUGF(i32 %25, i8* %27)
  %29 = load i64*, i64** %3, align 8
  %30 = call i32 @free(i64* %29)
  br label %31

31:                                               ; preds = %24, %21
  ret void
}

declare dso_local i32 @LWIP_DEBUGF(i32, i8*) #1

declare dso_local i32 @vSemaphoreDelete(i64) #1

declare dso_local i32 @free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
