; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_common/extr_mesh_buf.c_net_buf_slist_put.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_common/extr_mesh_buf.c_net_buf_slist_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_buf = type { i32, i32, %struct.net_buf* }

@NET_BUF_FRAGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @net_buf_slist_put(%struct.net_buf* %0, %struct.net_buf* %1) #0 {
  %3 = alloca %struct.net_buf*, align 8
  %4 = alloca %struct.net_buf*, align 8
  %5 = alloca %struct.net_buf*, align 8
  %6 = alloca i32, align 4
  store %struct.net_buf* %0, %struct.net_buf** %3, align 8
  store %struct.net_buf* %1, %struct.net_buf** %4, align 8
  %7 = load %struct.net_buf*, %struct.net_buf** %3, align 8
  %8 = call i32 @NET_BUF_ASSERT(%struct.net_buf* %7)
  %9 = load %struct.net_buf*, %struct.net_buf** %4, align 8
  %10 = call i32 @NET_BUF_ASSERT(%struct.net_buf* %9)
  %11 = load %struct.net_buf*, %struct.net_buf** %4, align 8
  store %struct.net_buf* %11, %struct.net_buf** %5, align 8
  br label %12

12:                                               ; preds = %23, %2
  %13 = load %struct.net_buf*, %struct.net_buf** %5, align 8
  %14 = getelementptr inbounds %struct.net_buf, %struct.net_buf* %13, i32 0, i32 2
  %15 = load %struct.net_buf*, %struct.net_buf** %14, align 8
  %16 = icmp ne %struct.net_buf* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %12
  %18 = load i32, i32* @NET_BUF_FRAGS, align 4
  %19 = load %struct.net_buf*, %struct.net_buf** %5, align 8
  %20 = getelementptr inbounds %struct.net_buf, %struct.net_buf* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  br label %23

23:                                               ; preds = %17
  %24 = load %struct.net_buf*, %struct.net_buf** %5, align 8
  %25 = getelementptr inbounds %struct.net_buf, %struct.net_buf* %24, i32 0, i32 2
  %26 = load %struct.net_buf*, %struct.net_buf** %25, align 8
  store %struct.net_buf* %26, %struct.net_buf** %5, align 8
  br label %12

27:                                               ; preds = %12
  %28 = call i32 (...) @bt_mesh_irq_lock()
  store i32 %28, i32* %6, align 4
  %29 = load %struct.net_buf*, %struct.net_buf** %3, align 8
  %30 = load %struct.net_buf*, %struct.net_buf** %4, align 8
  %31 = getelementptr inbounds %struct.net_buf, %struct.net_buf* %30, i32 0, i32 0
  %32 = load %struct.net_buf*, %struct.net_buf** %5, align 8
  %33 = getelementptr inbounds %struct.net_buf, %struct.net_buf* %32, i32 0, i32 0
  %34 = call i32 @sys_slist_append_list(%struct.net_buf* %29, i32* %31, i32* %33)
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @bt_mesh_irq_unlock(i32 %35)
  ret void
}

declare dso_local i32 @NET_BUF_ASSERT(%struct.net_buf*) #1

declare dso_local i32 @bt_mesh_irq_lock(...) #1

declare dso_local i32 @sys_slist_append_list(%struct.net_buf*, i32*, i32*) #1

declare dso_local i32 @bt_mesh_irq_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
