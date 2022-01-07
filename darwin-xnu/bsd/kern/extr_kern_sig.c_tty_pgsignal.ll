; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_sig.c_tty_pgsignal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_sig.c_tty_pgsignal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pgrp = type { i32 }
%struct.tty = type { i32 }

@PGRP_NULL = common dso_local global %struct.pgrp* null, align 8
@pgsignal_callback = common dso_local global i32 0, align 4
@pgsignal_filt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_pgsignal(%struct.tty* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tty*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pgrp*, align 8
  store %struct.tty* %0, %struct.tty** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.tty*, %struct.tty** %4, align 8
  %9 = call %struct.pgrp* @tty_pgrp(%struct.tty* %8)
  store %struct.pgrp* %9, %struct.pgrp** %7, align 8
  %10 = load %struct.pgrp*, %struct.pgrp** %7, align 8
  %11 = load %struct.pgrp*, %struct.pgrp** @PGRP_NULL, align 8
  %12 = icmp ne %struct.pgrp* %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = load %struct.pgrp*, %struct.pgrp** %7, align 8
  %15 = load i32, i32* @pgsignal_callback, align 4
  %16 = load i32, i32* @pgsignal_filt, align 4
  %17 = call i32 @pgrp_iterate(%struct.pgrp* %14, i32 0, i32 %15, i32* %5, i32 %16, i32* %6)
  %18 = load %struct.pgrp*, %struct.pgrp** %7, align 8
  %19 = call i32 @pg_rele(%struct.pgrp* %18)
  br label %20

20:                                               ; preds = %13, %3
  ret void
}

declare dso_local %struct.pgrp* @tty_pgrp(%struct.tty*) #1

declare dso_local i32 @pgrp_iterate(%struct.pgrp*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @pg_rele(%struct.pgrp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
