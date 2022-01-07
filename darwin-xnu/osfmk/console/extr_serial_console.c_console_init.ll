; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_serial_console.c_console_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_serial_console.c_console_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64, i64 }

@KERN_CONSOLE_RING_SIZE = common dso_local global i32 0, align 4
@console_ring = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@kernel_map = common dso_local global i32 0, align 4
@KERN_CONSOLE_BUF_SIZE = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_OSFMK = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"console_ring_init() failed to allocate ring buffer, error %d\0A\00", align 1
@MAX_CPU_SLOTS = common dso_local global i32 0, align 4
@CPU_BUF_FREE_HEX = common dso_local global i32 0, align 4
@cnputc_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @console_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = load i32, i32* @KERN_CONSOLE_RING_SIZE, align 4
  %5 = call i32 @OSCompareAndSwap(i32 0, i32 %4, i32* bitcast (%struct.TYPE_2__* @console_ring to i32*))
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  br label %47

8:                                                ; preds = %0
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @console_ring, i32 0, i32 0), align 8
  %10 = icmp sgt i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i32, i32* @kernel_map, align 4
  %14 = load i32, i32* @KERN_CONSOLE_BUF_SIZE, align 4
  %15 = load i32, i32* @VM_KERN_MEMORY_OSFMK, align 4
  %16 = call i32 @kmem_alloc(i32 %13, i32* bitcast (i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @console_ring, i32 0, i32 1) to i32*), i32 %14, i32 %15)
  store i32 %16, i32* %1, align 4
  %17 = load i32, i32* %1, align 4
  %18 = load i32, i32* @KERN_SUCCESS, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %8
  %21 = load i32, i32* %1, align 4
  %22 = call i32 @panic(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %20, %8
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %39, %23
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @MAX_CPU_SLOTS, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %24
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @console_ring, i32 0, i32 1), align 8
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @console_ring, i32 0, i32 0), align 8
  %31 = add i64 %29, %30
  %32 = load i32, i32* %2, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 4
  %35 = add i64 %31, %34
  %36 = inttoptr i64 %35 to i32*
  store i32* %36, i32** %3, align 8
  %37 = load i32, i32* @CPU_BUF_FREE_HEX, align 4
  %38 = load i32*, i32** %3, align 8
  store i32 %37, i32* %38, align 4
  br label %39

39:                                               ; preds = %28
  %40 = load i32, i32* %2, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %2, align 4
  br label %24

42:                                               ; preds = %24
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @console_ring, i32 0, i32 4), align 8
  %43 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @console_ring, i32 0, i32 1), align 8
  store i64 %43, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @console_ring, i32 0, i32 3), align 8
  %44 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @console_ring, i32 0, i32 1), align 8
  store i64 %44, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @console_ring, i32 0, i32 2), align 8
  %45 = call i32 (...) @console_ring_lock_init()
  %46 = call i32 @hw_lock_init(i32* @cnputc_lock)
  br label %47

47:                                               ; preds = %42, %7
  ret void
}

declare dso_local i32 @OSCompareAndSwap(i32, i32, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @kmem_alloc(i32, i32*, i32, i32) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @console_ring_lock_init(...) #1

declare dso_local i32 @hw_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
