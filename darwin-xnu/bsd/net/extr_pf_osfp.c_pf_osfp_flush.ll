; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_osfp.c_pf_osfp_flush.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_osfp.c_pf_osfp_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_os_fingerprint = type { i32 }
%struct.pf_osfp_entry = type { i32 }

@pf_osfp_list = common dso_local global i32 0, align 4
@fp_next = common dso_local global i32 0, align 4
@fp_entry = common dso_local global i32 0, align 4
@pf_osfp_entry_pl = common dso_local global i32 0, align 4
@pf_osfp_pl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pf_osfp_flush() #0 {
  %1 = alloca %struct.pf_os_fingerprint*, align 8
  %2 = alloca %struct.pf_osfp_entry*, align 8
  br label %3

3:                                                ; preds = %22, %0
  %4 = call %struct.pf_osfp_entry* @SLIST_FIRST(i32* @pf_osfp_list)
  %5 = bitcast %struct.pf_osfp_entry* %4 to %struct.pf_os_fingerprint*
  store %struct.pf_os_fingerprint* %5, %struct.pf_os_fingerprint** %1, align 8
  %6 = icmp ne %struct.pf_os_fingerprint* %5, null
  br i1 %6, label %7, label %26

7:                                                ; preds = %3
  %8 = load i32, i32* @fp_next, align 4
  %9 = call i32 @SLIST_REMOVE_HEAD(i32* @pf_osfp_list, i32 %8)
  br label %10

10:                                               ; preds = %15, %7
  %11 = load %struct.pf_os_fingerprint*, %struct.pf_os_fingerprint** %1, align 8
  %12 = getelementptr inbounds %struct.pf_os_fingerprint, %struct.pf_os_fingerprint* %11, i32 0, i32 0
  %13 = call %struct.pf_osfp_entry* @SLIST_FIRST(i32* %12)
  store %struct.pf_osfp_entry* %13, %struct.pf_osfp_entry** %2, align 8
  %14 = icmp ne %struct.pf_osfp_entry* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %10
  %16 = load %struct.pf_os_fingerprint*, %struct.pf_os_fingerprint** %1, align 8
  %17 = getelementptr inbounds %struct.pf_os_fingerprint, %struct.pf_os_fingerprint* %16, i32 0, i32 0
  %18 = load i32, i32* @fp_entry, align 4
  %19 = call i32 @SLIST_REMOVE_HEAD(i32* %17, i32 %18)
  %20 = load %struct.pf_osfp_entry*, %struct.pf_osfp_entry** %2, align 8
  %21 = call i32 @pool_put(i32* @pf_osfp_entry_pl, %struct.pf_osfp_entry* %20)
  br label %10

22:                                               ; preds = %10
  %23 = load %struct.pf_os_fingerprint*, %struct.pf_os_fingerprint** %1, align 8
  %24 = bitcast %struct.pf_os_fingerprint* %23 to %struct.pf_osfp_entry*
  %25 = call i32 @pool_put(i32* @pf_osfp_pl, %struct.pf_osfp_entry* %24)
  br label %3

26:                                               ; preds = %3
  ret void
}

declare dso_local %struct.pf_osfp_entry* @SLIST_FIRST(i32*) #1

declare dso_local i32 @SLIST_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @pool_put(i32*, %struct.pf_osfp_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
