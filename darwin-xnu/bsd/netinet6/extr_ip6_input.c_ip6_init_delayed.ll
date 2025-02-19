; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ip6_input.c_ip6_init_delayed.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ip6_input.c_ip6_init_delayed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lo_ifp = common dso_local global i32 0, align 4
@in6_tmpaddrtimer = common dso_local global i32 0, align 4
@ip6_temp_preferred_lifetime = common dso_local global i32 0, align 4
@ip6_desync_factor = common dso_local global i32 0, align 4
@ip6_temp_regen_advance = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ip6_init_delayed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip6_init_delayed() #0 {
  %1 = load i32, i32* @lo_ifp, align 4
  %2 = call i32 @in6_ifattach_prelim(i32 %1)
  %3 = load i32, i32* @in6_tmpaddrtimer, align 4
  %4 = load i32, i32* @ip6_temp_preferred_lifetime, align 4
  %5 = load i32, i32* @ip6_desync_factor, align 4
  %6 = sub nsw i32 %4, %5
  %7 = load i32, i32* @ip6_temp_regen_advance, align 4
  %8 = sub nsw i32 %6, %7
  %9 = load i32, i32* @hz, align 4
  %10 = mul nsw i32 %8, %9
  %11 = call i32 @timeout(i32 %3, i32* null, i32 %10)
  ret void
}

declare dso_local i32 @in6_ifattach_prelim(i32) #1

declare dso_local i32 @timeout(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
