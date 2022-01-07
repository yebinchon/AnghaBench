; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_ports_used.c_net_port_entry_list_clear.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_ports_used.c_net_port_entry_list_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_port_entry = type { i32 }

@net_port_entry_head_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@net_port_entry_list = common dso_local global i32 0, align 4
@npe_next = common dso_local global i32 0, align 4
@net_port_entry_zone = common dso_local global i32 0, align 4
@net_port_entry_count = common dso_local global i64 0, align 8
@net_port_entry_gen = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @net_port_entry_list_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @net_port_entry_list_clear() #0 {
  %1 = alloca %struct.net_port_entry*, align 8
  %2 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %3 = call i32 @LCK_MTX_ASSERT(i32* @net_port_entry_head_lock, i32 %2)
  br label %4

4:                                                ; preds = %7, %0
  %5 = call %struct.net_port_entry* @SLIST_FIRST(i32* @net_port_entry_list)
  store %struct.net_port_entry* %5, %struct.net_port_entry** %1, align 8
  %6 = icmp ne %struct.net_port_entry* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %4
  %8 = load i32, i32* @npe_next, align 4
  %9 = call i32 @SLIST_REMOVE_HEAD(i32* @net_port_entry_list, i32 %8)
  %10 = load i32, i32* @net_port_entry_zone, align 4
  %11 = load %struct.net_port_entry*, %struct.net_port_entry** %1, align 8
  %12 = call i32 @zfree(i32 %10, %struct.net_port_entry* %11)
  br label %4

13:                                               ; preds = %4
  store i64 0, i64* @net_port_entry_count, align 8
  %14 = load i32, i32* @net_port_entry_gen, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* @net_port_entry_gen, align 4
  ret void
}

declare dso_local i32 @LCK_MTX_ASSERT(i32*, i32) #1

declare dso_local %struct.net_port_entry* @SLIST_FIRST(i32*) #1

declare dso_local i32 @SLIST_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @zfree(i32, %struct.net_port_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
