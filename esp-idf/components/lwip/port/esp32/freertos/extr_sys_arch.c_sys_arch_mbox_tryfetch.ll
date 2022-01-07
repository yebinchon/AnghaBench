; ModuleID = '/home/carl/AnghaBench/esp-idf/components/lwip/port/esp32/freertos/extr_sys_arch.c_sys_arch_mbox_tryfetch.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/lwip/port/esp32/freertos/extr_sys_arch.c_sys_arch_mbox_tryfetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@errQUEUE_EMPTY = common dso_local global i64 0, align 8
@SYS_MBOX_EMPTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"mbox fetch failed\00", align 1
@pdTRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_arch_mbox_tryfetch(%struct.TYPE_3__** %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__**, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_3__** %0, %struct.TYPE_3__*** %4, align 8
  store i8** %1, i8*** %5, align 8
  %8 = load i8**, i8*** %5, align 8
  %9 = icmp eq i8** %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i8** %7, i8*** %5, align 8
  br label %11

11:                                               ; preds = %10, %2
  %12 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %4, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i8**, i8*** %5, align 8
  %17 = call i64 @xQueueReceive(i32 %15, i8** %16, i32 0)
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @errQUEUE_EMPTY, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %11
  %22 = load i8**, i8*** %5, align 8
  store i8* null, i8** %22, align 8
  %23 = load i32, i32* @SYS_MBOX_EMPTY, align 4
  store i32 %23, i32* %3, align 4
  br label %30

24:                                               ; preds = %11
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @pdTRUE, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @LWIP_ASSERT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %28)
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %24, %21
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i64 @xQueueReceive(i32, i8**, i32) #1

declare dso_local i32 @LWIP_ASSERT(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
