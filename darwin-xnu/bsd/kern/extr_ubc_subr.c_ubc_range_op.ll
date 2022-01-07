; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_ubc_subr.c_ubc_range_op.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_ubc_subr.c_ubc_range_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }

@UBC_FLAGS_NONE = common dso_local global i32 0, align 4
@MEMORY_OBJECT_CONTROL_NULL = common dso_local global i64 0, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubc_range_op(%struct.vnode* %0, i64 %1, i64 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store %struct.vnode* %0, %struct.vnode** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %13 = load %struct.vnode*, %struct.vnode** %7, align 8
  %14 = load i32, i32* @UBC_FLAGS_NONE, align 4
  %15 = call i64 @ubc_getobject(%struct.vnode* %13, i32 %14)
  store i64 %15, i64* %12, align 8
  %16 = load i64, i64* %12, align 8
  %17 = load i64, i64* @MEMORY_OBJECT_CONTROL_NULL, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %20, i32* %6, align 4
  br label %30

21:                                               ; preds = %5
  %22 = load i64, i64* %12, align 8
  %23 = load i64, i64* %8, align 8
  %24 = trunc i64 %23 to i32
  %25 = load i64, i64* %9, align 8
  %26 = trunc i64 %25 to i32
  %27 = load i32, i32* %10, align 4
  %28 = load i32*, i32** %11, align 8
  %29 = call i32 @memory_object_range_op(i64 %22, i32 %24, i32 %26, i32 %27, i32* %28)
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %21, %19
  %31 = load i32, i32* %6, align 4
  ret i32 %31
}

declare dso_local i64 @ubc_getobject(%struct.vnode*, i32) #1

declare dso_local i32 @memory_object_range_op(i64, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
