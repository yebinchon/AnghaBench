; ModuleID = '/home/carl/AnghaBench/esp-idf/components/vfs/extr_vfs_uart.c_select_notif_callback_isr.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/vfs/extr_vfs_uart.c_select_notif_callback_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32 }

@s_registered_select_lock = common dso_local global i32 0, align 4
@s_registered_select_num = common dso_local global i32 0, align 4
@s_registered_selects = common dso_local global %struct.TYPE_3__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*)* @select_notif_callback_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @select_notif_callback_isr(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = call i32 @portENTER_CRITICAL_ISR(i32* @s_registered_select_lock)
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %80, %3
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @s_registered_select_num, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %83

14:                                               ; preds = %10
  %15 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @s_registered_selects, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %15, i64 %17
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %8, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %21 = icmp ne %struct.TYPE_3__* %20, null
  br i1 %21, label %22, label %79

22:                                               ; preds = %14
  %23 = load i32, i32* %5, align 4
  switch i32 %23, label %78 [
    i32 129, label %24
    i32 128, label %42
    i32 130, label %60
  ]

24:                                               ; preds = %22
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 6
  %28 = call i32 @FD_ISSET(i32 %25, i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %24
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @FD_SET(i32 %31, i32 %34)
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @esp_vfs_select_triggered_isr(i32 %38, i32* %39)
  br label %41

41:                                               ; preds = %30, %24
  br label %78

42:                                               ; preds = %22
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 4
  %46 = call i32 @FD_ISSET(i32 %43, i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %42
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @FD_SET(i32 %49, i32 %52)
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = call i32 @esp_vfs_select_triggered_isr(i32 %56, i32* %57)
  br label %59

59:                                               ; preds = %48, %42
  br label %78

60:                                               ; preds = %22
  %61 = load i32, i32* %4, align 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = call i32 @FD_ISSET(i32 %61, i32* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %60
  %67 = load i32, i32* %4, align 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @FD_SET(i32 %67, i32 %70)
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %6, align 8
  %76 = call i32 @esp_vfs_select_triggered_isr(i32 %74, i32* %75)
  br label %77

77:                                               ; preds = %66, %60
  br label %78

78:                                               ; preds = %22, %77, %59, %41
  br label %79

79:                                               ; preds = %78, %14
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %7, align 4
  br label %10

83:                                               ; preds = %10
  %84 = call i32 @portEXIT_CRITICAL_ISR(i32* @s_registered_select_lock)
  ret void
}

declare dso_local i32 @portENTER_CRITICAL_ISR(i32*) #1

declare dso_local i32 @FD_ISSET(i32, i32*) #1

declare dso_local i32 @FD_SET(i32, i32) #1

declare dso_local i32 @esp_vfs_select_triggered_isr(i32, i32*) #1

declare dso_local i32 @portEXIT_CRITICAL_ISR(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
