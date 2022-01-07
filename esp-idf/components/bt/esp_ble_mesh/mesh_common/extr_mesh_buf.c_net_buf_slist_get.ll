; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_common/extr_mesh_buf.c_net_buf_slist_get.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_common/extr_mesh_buf.c_net_buf_slist_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_buf = type { i32, %struct.net_buf* }

@NET_BUF_FRAGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.net_buf* @net_buf_slist_get(%struct.net_buf* %0) #0 {
  %2 = alloca %struct.net_buf*, align 8
  %3 = alloca %struct.net_buf*, align 8
  %4 = alloca %struct.net_buf*, align 8
  %5 = alloca %struct.net_buf*, align 8
  %6 = alloca i32, align 4
  store %struct.net_buf* %0, %struct.net_buf** %3, align 8
  %7 = load %struct.net_buf*, %struct.net_buf** %3, align 8
  %8 = call i32 @NET_BUF_ASSERT(%struct.net_buf* %7)
  %9 = call i32 (...) @bt_mesh_irq_lock()
  store i32 %9, i32* %6, align 4
  %10 = load %struct.net_buf*, %struct.net_buf** %3, align 8
  %11 = call i64 @sys_slist_get(%struct.net_buf* %10)
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct.net_buf*
  store %struct.net_buf* %13, %struct.net_buf** %4, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @bt_mesh_irq_unlock(i32 %14)
  %16 = load %struct.net_buf*, %struct.net_buf** %4, align 8
  %17 = icmp ne %struct.net_buf* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store %struct.net_buf* null, %struct.net_buf** %2, align 8
  br label %56

19:                                               ; preds = %1
  %20 = load %struct.net_buf*, %struct.net_buf** %4, align 8
  store %struct.net_buf* %20, %struct.net_buf** %5, align 8
  br label %21

21:                                               ; preds = %48, %19
  %22 = load %struct.net_buf*, %struct.net_buf** %5, align 8
  %23 = getelementptr inbounds %struct.net_buf, %struct.net_buf* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @NET_BUF_FRAGS, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %52

28:                                               ; preds = %21
  %29 = call i32 (...) @bt_mesh_irq_lock()
  store i32 %29, i32* %6, align 4
  %30 = load %struct.net_buf*, %struct.net_buf** %3, align 8
  %31 = call i64 @sys_slist_get(%struct.net_buf* %30)
  %32 = inttoptr i64 %31 to i8*
  %33 = bitcast i8* %32 to %struct.net_buf*
  %34 = load %struct.net_buf*, %struct.net_buf** %5, align 8
  %35 = getelementptr inbounds %struct.net_buf, %struct.net_buf* %34, i32 0, i32 1
  store %struct.net_buf* %33, %struct.net_buf** %35, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @bt_mesh_irq_unlock(i32 %36)
  %38 = load %struct.net_buf*, %struct.net_buf** %5, align 8
  %39 = getelementptr inbounds %struct.net_buf, %struct.net_buf* %38, i32 0, i32 1
  %40 = load %struct.net_buf*, %struct.net_buf** %39, align 8
  %41 = call i32 @NET_BUF_ASSERT(%struct.net_buf* %40)
  %42 = load i32, i32* @NET_BUF_FRAGS, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.net_buf*, %struct.net_buf** %5, align 8
  %45 = getelementptr inbounds %struct.net_buf, %struct.net_buf* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 8
  br label %48

48:                                               ; preds = %28
  %49 = load %struct.net_buf*, %struct.net_buf** %5, align 8
  %50 = getelementptr inbounds %struct.net_buf, %struct.net_buf* %49, i32 0, i32 1
  %51 = load %struct.net_buf*, %struct.net_buf** %50, align 8
  store %struct.net_buf* %51, %struct.net_buf** %5, align 8
  br label %21

52:                                               ; preds = %21
  %53 = load %struct.net_buf*, %struct.net_buf** %5, align 8
  %54 = getelementptr inbounds %struct.net_buf, %struct.net_buf* %53, i32 0, i32 1
  store %struct.net_buf* null, %struct.net_buf** %54, align 8
  %55 = load %struct.net_buf*, %struct.net_buf** %4, align 8
  store %struct.net_buf* %55, %struct.net_buf** %2, align 8
  br label %56

56:                                               ; preds = %52, %18
  %57 = load %struct.net_buf*, %struct.net_buf** %2, align 8
  ret %struct.net_buf* %57
}

declare dso_local i32 @NET_BUF_ASSERT(%struct.net_buf*) #1

declare dso_local i32 @bt_mesh_irq_lock(...) #1

declare dso_local i64 @sys_slist_get(%struct.net_buf*) #1

declare dso_local i32 @bt_mesh_irq_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
