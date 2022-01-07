; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/hci/extr_hci_layer.c_hci_layer_deinit_env.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/hci/extr_hci_layer.c_hci_layer_deinit_env.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, i64, i64 }
%struct.TYPE_3__ = type { i32*, i32, i32 }

@hci_host_env = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@osi_free_func = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @hci_layer_deinit_env to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_layer_deinit_env() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hci_host_env, i32 0, i32 2), align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %0
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hci_host_env, i32 0, i32 2), align 8
  %6 = load i32, i32* @osi_free_func, align 4
  %7 = call i32 @fixed_queue_free(i64 %5, i32 %6)
  br label %8

8:                                                ; preds = %4, %0
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hci_host_env, i32 0, i32 1), align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hci_host_env, i32 0, i32 1), align 8
  %13 = load i32, i32* @osi_free_func, align 4
  %14 = call i32 @fixed_queue_free(i64 %12, i32 %13)
  br label %15

15:                                               ; preds = %11, %8
  store %struct.TYPE_3__* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hci_host_env, i32 0, i32 0), %struct.TYPE_3__** %1, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @list_free(i32 %18)
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = call i32 @osi_mutex_free(i32* %21)
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @osi_alarm_free(i32* %25)
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32* null, i32** %28, align 8
  ret void
}

declare dso_local i32 @fixed_queue_free(i64, i32) #1

declare dso_local i32 @list_free(i32) #1

declare dso_local i32 @osi_mutex_free(i32*) #1

declare dso_local i32 @osi_alarm_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
