; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_task.c_kdebug_trace_dyld_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_task.c_kdebug_trace_dyld_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dyld_kernel_image_info = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32* }

@KDEBUG_TRACE = common dso_local global i32 0, align 4
@DBG_DYLD = common dso_local global i32 0, align 4
@DBG_DYLD_UUID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.dyld_kernel_image_info*)* @kdebug_trace_dyld_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kdebug_trace_dyld_internal(i32 %0, %struct.dyld_kernel_image_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dyld_kernel_image_info*, align 8
  %5 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.dyld_kernel_image_info* %1, %struct.dyld_kernel_image_info** %4, align 8
  %6 = call i32 @static_assert(i32 0)
  %7 = load %struct.dyld_kernel_image_info*, %struct.dyld_kernel_image_info** %4, align 8
  %8 = getelementptr inbounds %struct.dyld_kernel_image_info, %struct.dyld_kernel_image_info* %7, i32 0, i32 3
  store i32* %8, i32** %5, align 8
  %9 = load i32, i32* @KDEBUG_TRACE, align 4
  %10 = load i32, i32* @DBG_DYLD, align 4
  %11 = load i32, i32* @DBG_DYLD_UUID, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @KDBG_EVENTID(i32 %10, i32 %11, i32 %12)
  %14 = load i32*, i32** %5, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.dyld_kernel_image_info*, %struct.dyld_kernel_image_info** %4, align 8
  %21 = getelementptr inbounds %struct.dyld_kernel_image_info, %struct.dyld_kernel_image_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.dyld_kernel_image_info*, %struct.dyld_kernel_image_info** %4, align 8
  %24 = getelementptr inbounds %struct.dyld_kernel_image_info, %struct.dyld_kernel_image_info* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.dyld_kernel_image_info*, %struct.dyld_kernel_image_info** %4, align 8
  %30 = getelementptr inbounds %struct.dyld_kernel_image_info, %struct.dyld_kernel_image_info* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %34, 32
  %36 = or i32 %28, %35
  %37 = call i32 @KERNEL_DEBUG_CONSTANT_IST(i32 %9, i32 %13, i32 %16, i32 %19, i32 %22, i32 %36, i32 0)
  %38 = load i32, i32* @KDEBUG_TRACE, align 4
  %39 = load i32, i32* @DBG_DYLD, align 4
  %40 = load i32, i32* @DBG_DYLD_UUID, align 4
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 1
  %43 = call i32 @KDBG_EVENTID(i32 %39, i32 %40, i32 %42)
  %44 = load %struct.dyld_kernel_image_info*, %struct.dyld_kernel_image_info** %4, align 8
  %45 = getelementptr inbounds %struct.dyld_kernel_image_info, %struct.dyld_kernel_image_info* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.dyld_kernel_image_info*, %struct.dyld_kernel_image_info** %4, align 8
  %49 = getelementptr inbounds %struct.dyld_kernel_image_info, %struct.dyld_kernel_image_info* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 %51, 32
  %53 = or i32 %47, %52
  %54 = call i32 @KERNEL_DEBUG_CONSTANT_IST(i32 %38, i32 %43, i32 %53, i32 0, i32 0, i32 0, i32 0)
  ret void
}

declare dso_local i32 @static_assert(i32) #1

declare dso_local i32 @KERNEL_DEBUG_CONSTANT_IST(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @KDBG_EVENTID(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
