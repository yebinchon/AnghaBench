; ModuleID = '/home/carl/AnghaBench/Arduino/tools/sdk/lwip/src/api/extr_tcpip.c_pbuf_free_callback.c'
source_filename = "/home/carl/AnghaBench/Arduino/tools/sdk/lwip/src/api/extr_tcpip.c_pbuf_free_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pbuf = type { i32 }

@pbuf_free_int = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pbuf_free_callback(%struct.pbuf* %0) #0 {
  %2 = alloca %struct.pbuf*, align 8
  store %struct.pbuf* %0, %struct.pbuf** %2, align 8
  %3 = load i32, i32* @pbuf_free_int, align 4
  %4 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %5 = call i32 @tcpip_callback_with_block(i32 %3, %struct.pbuf* %4, i32 0)
  ret i32 %5
}

declare dso_local i32 @tcpip_callback_with_block(i32, %struct.pbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
