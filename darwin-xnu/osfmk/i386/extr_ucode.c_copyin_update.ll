; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_ucode.c_copyin_update.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_ucode.c_copyin_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_ucupdate = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@kernel_map = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_OSFMK = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@global_update = common dso_local global %struct.intel_ucupdate* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @copyin_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copyin_update(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.intel_ucupdate, align 4
  %5 = alloca %struct.intel_ucupdate*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = trunc i64 %9 to i32
  %11 = bitcast %struct.intel_ucupdate* %4 to i8*
  %12 = call i32 @copyin(i32 %10, i8* %11, i32 4)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %2, align 4
  br label %57

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.intel_ucupdate, %struct.intel_ucupdate* %4, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp sge i32 %20, 1048576
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @ENOMEM, align 4
  store i32 %23, i32* %2, align 4
  br label %57

24:                                               ; preds = %17
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 2048, i32* %6, align 4
  br label %28

28:                                               ; preds = %27, %24
  %29 = load i32, i32* @kernel_map, align 4
  %30 = bitcast %struct.intel_ucupdate** %5 to i32*
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @VM_KERN_MEMORY_OSFMK, align 4
  %33 = call i64 @kmem_alloc_kobject(i32 %29, i32* %30, i32 %31, i32 %32)
  store i64 %33, i64* %7, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* @KERN_SUCCESS, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* @ENOMEM, align 4
  store i32 %38, i32* %2, align 4
  br label %57

39:                                               ; preds = %28
  %40 = load i64, i64* %3, align 8
  %41 = trunc i64 %40 to i32
  %42 = load %struct.intel_ucupdate*, %struct.intel_ucupdate** %5, align 8
  %43 = bitcast %struct.intel_ucupdate* %42 to i8*
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @copyin(i32 %41, i8* %43, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %39
  %49 = load i32, i32* @kernel_map, align 4
  %50 = load %struct.intel_ucupdate*, %struct.intel_ucupdate** %5, align 8
  %51 = ptrtoint %struct.intel_ucupdate* %50 to i32
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @kmem_free(i32 %49, i32 %51, i32 %52)
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %2, align 4
  br label %57

55:                                               ; preds = %39
  %56 = load %struct.intel_ucupdate*, %struct.intel_ucupdate** %5, align 8
  store %struct.intel_ucupdate* %56, %struct.intel_ucupdate** @global_update, align 8
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %55, %48, %37, %22, %15
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @copyin(i32, i8*, i32) #1

declare dso_local i64 @kmem_alloc_kobject(i32, i32*, i32, i32) #1

declare dso_local i32 @kmem_free(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
