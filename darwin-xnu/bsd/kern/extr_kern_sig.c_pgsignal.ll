; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_sig.c_pgsignal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_sig.c_pgsignal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pgrp = type { i32 }

@PGRP_NULL = common dso_local global %struct.pgrp* null, align 8
@pgsignal_callback = common dso_local global i32 0, align 4
@pgsignal_filt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pgsignal(%struct.pgrp* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pgrp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pgrp* %0, %struct.pgrp** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.pgrp*, %struct.pgrp** %4, align 8
  %8 = load %struct.pgrp*, %struct.pgrp** @PGRP_NULL, align 8
  %9 = icmp ne %struct.pgrp* %7, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load %struct.pgrp*, %struct.pgrp** %4, align 8
  %12 = load i32, i32* @pgsignal_callback, align 4
  %13 = load i32, i32* @pgsignal_filt, align 4
  %14 = call i32 @pgrp_iterate(%struct.pgrp* %11, i32 0, i32 %12, i32* %5, i32 %13, i32* %6)
  br label %15

15:                                               ; preds = %10, %3
  ret void
}

declare dso_local i32 @pgrp_iterate(%struct.pgrp*, i32, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
