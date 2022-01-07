; ModuleID = '/home/carl/AnghaBench/esp-idf/components/lwip/port/esp32/freertos/extr_sys_arch.c_sys_arch_mbox_fetch.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/lwip/port/esp32/freertos/extr_sys_arch.c_sys_arch_mbox_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@portMAX_DELAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"mbox fetch failed\00", align 1
@pdTRUE = common dso_local global i64 0, align 8
@portTICK_RATE_MS = common dso_local global i32 0, align 4
@errQUEUE_EMPTY = common dso_local global i64 0, align 8
@SYS_ARCH_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_arch_mbox_fetch(%struct.TYPE_3__** %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_3__** %0, %struct.TYPE_3__*** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8**, i8*** %6, align 8
  %12 = icmp eq i8** %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i8** %9, i8*** %6, align 8
  br label %14

14:                                               ; preds = %13, %3
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %14
  %18 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %5, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i8**, i8*** %6, align 8
  %23 = load i32, i32* @portMAX_DELAY, align 4
  %24 = call i64 @xQueueReceive(i32 %21, i8** %22, i32 %23)
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* @pdTRUE, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @LWIP_ASSERT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %53

30:                                               ; preds = %14
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @portTICK_RATE_MS, align 4
  %33 = sdiv i32 %31, %32
  store i32 %33, i32* %10, align 4
  %34 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %5, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i8**, i8*** %6, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i64 @xQueueReceive(i32 %37, i8** %38, i32 %39)
  store i64 %40, i64* %8, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* @errQUEUE_EMPTY, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %30
  %45 = load i8**, i8*** %6, align 8
  store i8* null, i8** %45, align 8
  %46 = load i32, i32* @SYS_ARCH_TIMEOUT, align 4
  store i32 %46, i32* %4, align 4
  br label %54

47:                                               ; preds = %30
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* @pdTRUE, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @LWIP_ASSERT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %47, %17
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %53, %44
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i64 @xQueueReceive(i32, i8**, i32) #1

declare dso_local i32 @LWIP_ASSERT(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
