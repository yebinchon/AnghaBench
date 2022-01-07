; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pmap.c_pmap_create.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pmap.c_pmap_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@PMAP__CREATE = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@PMAP_NULL = common dso_local global %struct.TYPE_6__* null, align 8
@DBG_FUNC_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @pmap_create(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @PMAP__CREATE, align 4
  %9 = call i32 @PMAP_CODE(i32 %8)
  %10 = load i32, i32* @DBG_FUNC_START, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 (i32, i32, i32, i32, ...) @PMAP_TRACE(i32 1, i32 %11, i32 %12, i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @ledger_reference(i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call %struct.TYPE_6__* @pmap_create_internal(i32 %17, i32 %18, i32 %19)
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %7, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** @PMAP_NULL, align 8
  %23 = icmp eq %struct.TYPE_6__* %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @ledger_dereference(i32 %25)
  br label %27

27:                                               ; preds = %24, %3
  %28 = load i32, i32* @PMAP__CREATE, align 4
  %29 = call i32 @PMAP_CODE(i32 %28)
  %30 = load i32, i32* @DBG_FUNC_END, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %33 = call i32 @VM_KERNEL_ADDRHIDE(%struct.TYPE_6__* %32)
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i32, i32, i32, i32, ...) @PMAP_TRACE(i32 1, i32 %31, i32 %33, i32 %36, i32 %39)
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  ret %struct.TYPE_6__* %41
}

declare dso_local i32 @PMAP_TRACE(i32, i32, i32, i32, ...) #1

declare dso_local i32 @PMAP_CODE(i32) #1

declare dso_local i32 @ledger_reference(i32) #1

declare dso_local %struct.TYPE_6__* @pmap_create_internal(i32, i32, i32) #1

declare dso_local i32 @ledger_dereference(i32) #1

declare dso_local i32 @VM_KERNEL_ADDRHIDE(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
