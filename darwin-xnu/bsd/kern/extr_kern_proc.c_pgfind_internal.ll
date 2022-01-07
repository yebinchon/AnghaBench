; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_proc.c_pgfind_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_proc.c_pgfind_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pgrp = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.pgrp* }
%struct.TYPE_4__ = type { %struct.pgrp* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pgrp* @pgfind_internal(i64 %0) #0 {
  %2 = alloca %struct.pgrp*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.pgrp*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = call %struct.TYPE_4__* @PGRPHASH(i64 %5)
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.pgrp*, %struct.pgrp** %7, align 8
  store %struct.pgrp* %8, %struct.pgrp** %4, align 8
  br label %9

9:                                                ; preds = %21, %1
  %10 = load %struct.pgrp*, %struct.pgrp** %4, align 8
  %11 = icmp ne %struct.pgrp* %10, null
  br i1 %11, label %12, label %26

12:                                               ; preds = %9
  %13 = load %struct.pgrp*, %struct.pgrp** %4, align 8
  %14 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %3, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load %struct.pgrp*, %struct.pgrp** %4, align 8
  store %struct.pgrp* %19, %struct.pgrp** %2, align 8
  br label %27

20:                                               ; preds = %12
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.pgrp*, %struct.pgrp** %4, align 8
  %23 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.pgrp*, %struct.pgrp** %24, align 8
  store %struct.pgrp* %25, %struct.pgrp** %4, align 8
  br label %9

26:                                               ; preds = %9
  store %struct.pgrp* null, %struct.pgrp** %2, align 8
  br label %27

27:                                               ; preds = %26, %18
  %28 = load %struct.pgrp*, %struct.pgrp** %2, align 8
  ret %struct.pgrp* %28
}

declare dso_local %struct.TYPE_4__* @PGRPHASH(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
