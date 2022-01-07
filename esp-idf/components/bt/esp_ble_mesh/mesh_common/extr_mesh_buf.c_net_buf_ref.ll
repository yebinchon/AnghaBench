; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_common/extr_mesh_buf.c_net_buf_ref.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_common/extr_mesh_buf.c_net_buf_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_buf = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"buf %p (old) ref %u pool %p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.net_buf* @net_buf_ref(%struct.net_buf* %0) #0 {
  %2 = alloca %struct.net_buf*, align 8
  store %struct.net_buf* %0, %struct.net_buf** %2, align 8
  %3 = load %struct.net_buf*, %struct.net_buf** %2, align 8
  %4 = call i32 @NET_BUF_ASSERT(%struct.net_buf* %3)
  %5 = load %struct.net_buf*, %struct.net_buf** %2, align 8
  %6 = load %struct.net_buf*, %struct.net_buf** %2, align 8
  %7 = getelementptr inbounds %struct.net_buf, %struct.net_buf* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.net_buf*, %struct.net_buf** %2, align 8
  %10 = getelementptr inbounds %struct.net_buf, %struct.net_buf* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @NET_BUF_DBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.net_buf* %5, i32 %8, i32 %11)
  %13 = load %struct.net_buf*, %struct.net_buf** %2, align 8
  %14 = getelementptr inbounds %struct.net_buf, %struct.net_buf* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 4
  %17 = load %struct.net_buf*, %struct.net_buf** %2, align 8
  ret %struct.net_buf* %17
}

declare dso_local i32 @NET_BUF_ASSERT(%struct.net_buf*) #1

declare dso_local i32 @NET_BUF_DBG(i8*, %struct.net_buf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
