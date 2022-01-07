; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_pset.c_ipc_pset_lazy_allocate.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_pset.c_ipc_pset_lazy_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.waitq_set }
%struct.waitq_set = type { i32 }

@KERN_SUCCESS = common dso_local global i64 0, align 8
@MACH_PORT_TYPE_PORT_SET = common dso_local global i32 0, align 4
@KERN_INVALID_RIGHT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ipc_pset_lazy_allocate(i32 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.waitq_set*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @ipc_right_lookup_read(i32 %12, i32 %13, %struct.TYPE_8__** %7)
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @KERN_SUCCESS, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i64, i64* %6, align 8
  store i64 %19, i64* %3, align 8
  br label %56

20:                                               ; preds = %2
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @MACH_PORT_TYPE_PORT_SET, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @is_read_unlock(i32 %28)
  %30 = load i64, i64* @KERN_INVALID_RIGHT, align 8
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* %6, align 8
  store i64 %31, i64* %3, align 8
  br label %56

32:                                               ; preds = %20
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* %8, align 8
  %37 = inttoptr i64 %36 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %37, %struct.TYPE_6__** %9, align 8
  %38 = call i32 @__IGNORE_WCASTALIGN(%struct.TYPE_6__* %37)
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %40 = icmp ne %struct.TYPE_6__* %39, null
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store %struct.TYPE_7__* %44, %struct.TYPE_7__** %10, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  store %struct.waitq_set* %46, %struct.waitq_set** %11, align 8
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @io_reference(i64 %47)
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @is_read_unlock(i32 %49)
  %51 = load %struct.waitq_set*, %struct.waitq_set** %11, align 8
  %52 = call i32 @waitq_set_lazy_init_link(%struct.waitq_set* %51)
  %53 = load i64, i64* %8, align 8
  %54 = call i32 @io_release(i64 %53)
  %55 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %55, i64* %3, align 8
  br label %56

56:                                               ; preds = %32, %27, %18
  %57 = load i64, i64* %3, align 8
  ret i64 %57
}

declare dso_local i64 @ipc_right_lookup_read(i32, i32, %struct.TYPE_8__**) #1

declare dso_local i32 @is_read_unlock(i32) #1

declare dso_local i32 @__IGNORE_WCASTALIGN(%struct.TYPE_6__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @io_reference(i64) #1

declare dso_local i32 @waitq_set_lazy_init_link(%struct.waitq_set*) #1

declare dso_local i32 @io_release(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
