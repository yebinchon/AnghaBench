; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_exit.c_proc_update_corpse_exception_codes.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_exit.c_proc_update_corpse_exception_codes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_5__* }

@OS_REASON_NULL = common dso_local global %struct.TYPE_5__* null, align 8
@JETSAM_REASON_MEMORY_PERPROCESSLIMIT = common dso_local global i32 0, align 4
@RESOURCE_TYPE_MEMORY = common dso_local global i32 0, align 4
@FLAVOR_HIGH_WATERMARK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32*, i32*)* @proc_update_corpse_exception_codes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @proc_update_corpse_exception_codes(%struct.TYPE_4__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %8, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** @OS_REASON_NULL, align 8
  %17 = icmp eq %struct.TYPE_5__* %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %54

19:                                               ; preds = %3
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %48 [
    i32 128, label %25
  ]

25:                                               ; preds = %19
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @JETSAM_REASON_MEMORY_PERPROCESSLIMIT, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %25
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @RESOURCE_TYPE_MEMORY, align 4
  %36 = call i32 @EXC_RESOURCE_ENCODE_TYPE(i32 %34, i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @FLAVOR_HIGH_WATERMARK, align 4
  %39 = call i32 @EXC_RESOURCE_ENCODE_FLAVOR(i32 %37, i32 %38)
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @get_task_phys_footprint_limit(i32 %43)
  %45 = ashr i32 %44, 20
  %46 = call i32 @EXC_RESOURCE_HWM_ENCODE_LIMIT(i32 %40, i32 %45)
  store i32 0, i32* %8, align 4
  br label %49

47:                                               ; preds = %25
  br label %49

48:                                               ; preds = %19
  br label %49

49:                                               ; preds = %48, %47, %33
  %50 = load i32, i32* %7, align 4
  %51 = load i32*, i32** %5, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32*, i32** %6, align 8
  store i32 %52, i32* %53, align 4
  br label %54

54:                                               ; preds = %49, %18
  ret void
}

declare dso_local i32 @EXC_RESOURCE_ENCODE_TYPE(i32, i32) #1

declare dso_local i32 @EXC_RESOURCE_ENCODE_FLAVOR(i32, i32) #1

declare dso_local i32 @EXC_RESOURCE_HWM_ENCODE_LIMIT(i32, i32) #1

declare dso_local i32 @get_task_phys_footprint_limit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
