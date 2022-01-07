; ModuleID = '/home/carl/AnghaBench/esp-idf/components/lwip/port/esp32/debug/extr_lwip_debug.c_dbg_lwip_stats_show.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/lwip/port/esp32/debug/extr_lwip_debug.c_dbg_lwip_stats_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dbg_lwip_stats_show() #0 {
  %1 = call i32 (...) @TCP_STATS_DISPLAY()
  %2 = call i32 (...) @UDP_STATS_DISPLAY()
  %3 = call i32 (...) @ICMP_STATS_DISPLAY()
  %4 = call i32 (...) @IGMP_STATS_DISPLAY()
  %5 = call i32 (...) @IP_STATS_DISPLAY()
  %6 = call i32 (...) @IPFRAG_STATS_DISPLAY()
  %7 = call i32 (...) @ETHARP_STATS_DISPLAY()
  %8 = call i32 (...) @LINK_STATS_DISPLAY()
  %9 = call i32 (...) @MEM_STATS_DISPLAY()
  %10 = call i32 (...) @SYS_STATS_DISPLAY()
  %11 = call i32 (...) @IP6_STATS_DISPLAY()
  %12 = call i32 (...) @ICMP6_STATS_DISPLAY()
  %13 = call i32 (...) @IP6_FRAG_STATS_DISPLAY()
  %14 = call i32 (...) @MLD6_STATS_DISPLAY()
  %15 = call i32 (...) @ND6_STATS_DISPLAY()
  ret void
}

declare dso_local i32 @TCP_STATS_DISPLAY(...) #1

declare dso_local i32 @UDP_STATS_DISPLAY(...) #1

declare dso_local i32 @ICMP_STATS_DISPLAY(...) #1

declare dso_local i32 @IGMP_STATS_DISPLAY(...) #1

declare dso_local i32 @IP_STATS_DISPLAY(...) #1

declare dso_local i32 @IPFRAG_STATS_DISPLAY(...) #1

declare dso_local i32 @ETHARP_STATS_DISPLAY(...) #1

declare dso_local i32 @LINK_STATS_DISPLAY(...) #1

declare dso_local i32 @MEM_STATS_DISPLAY(...) #1

declare dso_local i32 @SYS_STATS_DISPLAY(...) #1

declare dso_local i32 @IP6_STATS_DISPLAY(...) #1

declare dso_local i32 @ICMP6_STATS_DISPLAY(...) #1

declare dso_local i32 @IP6_FRAG_STATS_DISPLAY(...) #1

declare dso_local i32 @MLD6_STATS_DISPLAY(...) #1

declare dso_local i32 @ND6_STATS_DISPLAY(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
