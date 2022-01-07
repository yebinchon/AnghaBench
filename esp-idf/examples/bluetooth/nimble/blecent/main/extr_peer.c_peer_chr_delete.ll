; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/blecent/main/extr_peer.c_peer_chr_delete.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/blecent/main/extr_peer.c_peer_chr_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peer_chr = type { i32 }
%struct.peer_dsc = type { i32 }

@next = common dso_local global i32 0, align 4
@peer_dsc_pool = common dso_local global i32 0, align 4
@peer_chr_pool = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.peer_chr*)* @peer_chr_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @peer_chr_delete(%struct.peer_chr* %0) #0 {
  %2 = alloca %struct.peer_chr*, align 8
  %3 = alloca %struct.peer_dsc*, align 8
  store %struct.peer_chr* %0, %struct.peer_chr** %2, align 8
  br label %4

4:                                                ; preds = %9, %1
  %5 = load %struct.peer_chr*, %struct.peer_chr** %2, align 8
  %6 = getelementptr inbounds %struct.peer_chr, %struct.peer_chr* %5, i32 0, i32 0
  %7 = call %struct.peer_dsc* @SLIST_FIRST(i32* %6)
  store %struct.peer_dsc* %7, %struct.peer_dsc** %3, align 8
  %8 = icmp ne %struct.peer_dsc* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %4
  %10 = load %struct.peer_chr*, %struct.peer_chr** %2, align 8
  %11 = getelementptr inbounds %struct.peer_chr, %struct.peer_chr* %10, i32 0, i32 0
  %12 = load i32, i32* @next, align 4
  %13 = call i32 @SLIST_REMOVE_HEAD(i32* %11, i32 %12)
  %14 = load %struct.peer_dsc*, %struct.peer_dsc** %3, align 8
  %15 = call i32 @os_memblock_put(i32* @peer_dsc_pool, %struct.peer_dsc* %14)
  br label %4

16:                                               ; preds = %4
  %17 = load %struct.peer_chr*, %struct.peer_chr** %2, align 8
  %18 = bitcast %struct.peer_chr* %17 to %struct.peer_dsc*
  %19 = call i32 @os_memblock_put(i32* @peer_chr_pool, %struct.peer_dsc* %18)
  ret void
}

declare dso_local %struct.peer_dsc* @SLIST_FIRST(i32*) #1

declare dso_local i32 @SLIST_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @os_memblock_put(i32*, %struct.peer_dsc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
