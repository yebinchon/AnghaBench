; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_support.c_nop_pagein.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_support.c_nop_pagein.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnop_pagein_args = type { i32, i32, i32, i32 }

@UPL_NOCOMMIT = common dso_local global i32 0, align 4
@UPL_ABORT_FREE_ON_EMPTY = common dso_local global i32 0, align 4
@UPL_ABORT_ERROR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nop_pagein(%struct.vnop_pagein_args* %0) #0 {
  %2 = alloca %struct.vnop_pagein_args*, align 8
  store %struct.vnop_pagein_args* %0, %struct.vnop_pagein_args** %2, align 8
  %3 = load %struct.vnop_pagein_args*, %struct.vnop_pagein_args** %2, align 8
  %4 = getelementptr inbounds %struct.vnop_pagein_args, %struct.vnop_pagein_args* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @UPL_NOCOMMIT, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %23, label %9

9:                                                ; preds = %1
  %10 = load %struct.vnop_pagein_args*, %struct.vnop_pagein_args** %2, align 8
  %11 = getelementptr inbounds %struct.vnop_pagein_args, %struct.vnop_pagein_args* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.vnop_pagein_args*, %struct.vnop_pagein_args** %2, align 8
  %14 = getelementptr inbounds %struct.vnop_pagein_args, %struct.vnop_pagein_args* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.vnop_pagein_args*, %struct.vnop_pagein_args** %2, align 8
  %17 = getelementptr inbounds %struct.vnop_pagein_args, %struct.vnop_pagein_args* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @UPL_ABORT_FREE_ON_EMPTY, align 4
  %20 = load i32, i32* @UPL_ABORT_ERROR, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @ubc_upl_abort_range(i32 %12, i32 %15, i32 %18, i32 %21)
  br label %23

23:                                               ; preds = %9, %1
  %24 = load i32, i32* @EINVAL, align 4
  ret i32 %24
}

declare dso_local i32 @ubc_upl_abort_range(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
