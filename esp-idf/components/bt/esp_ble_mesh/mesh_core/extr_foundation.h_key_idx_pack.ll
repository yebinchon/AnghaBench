; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_foundation.h_key_idx_pack.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_foundation.h_key_idx_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_buf_simple = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_buf_simple*, i32, i32)* @key_idx_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @key_idx_pack(%struct.net_buf_simple* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_buf_simple*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_buf_simple* %0, %struct.net_buf_simple** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.net_buf_simple*, %struct.net_buf_simple** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %6, align 4
  %10 = and i32 %9, 15
  %11 = shl i32 %10, 12
  %12 = or i32 %8, %11
  %13 = call i32 @net_buf_simple_add_le16(%struct.net_buf_simple* %7, i32 %12)
  %14 = load %struct.net_buf_simple*, %struct.net_buf_simple** %4, align 8
  %15 = load i32, i32* %6, align 4
  %16 = ashr i32 %15, 4
  %17 = call i32 @net_buf_simple_add_u8(%struct.net_buf_simple* %14, i32 %16)
  ret void
}

declare dso_local i32 @net_buf_simple_add_le16(%struct.net_buf_simple*, i32) #1

declare dso_local i32 @net_buf_simple_add_u8(%struct.net_buf_simple*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
