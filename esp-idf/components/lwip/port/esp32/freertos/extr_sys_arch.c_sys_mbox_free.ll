; ModuleID = '/home/carl/AnghaBench/esp-idf/components/lwip/port/esp32/freertos/extr_sys_arch.c_sys_mbox_free.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/lwip/port/esp32/freertos/extr_sys_arch.c_sys_mbox_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"mbox quence not empty\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sys_mbox_free(%struct.TYPE_4__** %0) #0 {
  %2 = alloca %struct.TYPE_4__**, align 8
  %3 = alloca i64, align 8
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %2, align 8
  %4 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %2, align 8
  %5 = icmp eq %struct.TYPE_4__** null, %4
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %2, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = icmp eq %struct.TYPE_4__* null, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %6, %1
  br label %30

11:                                               ; preds = %6
  %12 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %2, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @uxQueueMessagesWaiting(i32 %15)
  store i64 %16, i64* %3, align 8
  %17 = load i64, i64* %3, align 8
  %18 = icmp eq i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @LWIP_ASSERT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %2, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @vQueueDelete(i32 %24)
  %26 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %2, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = call i32 @free(%struct.TYPE_4__* %27)
  %29 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %2, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %29, align 8
  br label %30

30:                                               ; preds = %11, %10
  ret void
}

declare dso_local i64 @uxQueueMessagesWaiting(i32) #1

declare dso_local i32 @LWIP_ASSERT(i8*, i32) #1

declare dso_local i32 @vQueueDelete(i32) #1

declare dso_local i32 @free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
