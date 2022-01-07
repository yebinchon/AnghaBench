; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_if.c_pfi_detach_ifnet.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_if.c_pfi_detach_ifnet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32* }
%struct.pfi_kif = type { i32* }

@pf_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@pfi_update = common dso_local global i32 0, align 4
@PFI_KIF_REF_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pfi_detach_ifnet(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.pfi_kif*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %4 = load i32, i32* @pf_lock, align 4
  %5 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %6 = call i32 @LCK_MTX_ASSERT(i32 %4, i32 %5)
  %7 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %8 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = bitcast i32* %9 to %struct.pfi_kif*
  store %struct.pfi_kif* %10, %struct.pfi_kif** %3, align 8
  %11 = icmp eq %struct.pfi_kif* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %29

13:                                               ; preds = %1
  %14 = load i32, i32* @pfi_update, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* @pfi_update, align 4
  %16 = load %struct.pfi_kif*, %struct.pfi_kif** %3, align 8
  %17 = call i32 @pfi_kif_update(%struct.pfi_kif* %16)
  %18 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %19 = call i32 @ifnet_lock_exclusive(%struct.ifnet* %18)
  %20 = load %struct.pfi_kif*, %struct.pfi_kif** %3, align 8
  %21 = getelementptr inbounds %struct.pfi_kif, %struct.pfi_kif* %20, i32 0, i32 0
  store i32* null, i32** %21, align 8
  %22 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %23 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %22, i32 0, i32 0
  store i32* null, i32** %23, align 8
  %24 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %25 = call i32 @ifnet_lock_done(%struct.ifnet* %24)
  %26 = load %struct.pfi_kif*, %struct.pfi_kif** %3, align 8
  %27 = load i32, i32* @PFI_KIF_REF_NONE, align 4
  %28 = call i32 @pfi_kif_unref(%struct.pfi_kif* %26, i32 %27)
  br label %29

29:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i32 @pfi_kif_update(%struct.pfi_kif*) #1

declare dso_local i32 @ifnet_lock_exclusive(%struct.ifnet*) #1

declare dso_local i32 @ifnet_lock_done(%struct.ifnet*) #1

declare dso_local i32 @pfi_kif_unref(%struct.pfi_kif*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
