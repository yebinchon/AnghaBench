; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_machine_routines.c_icache_invalidate_trap.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_machine_routines.c_icache_invalidate_trap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@MACH_VM_MAX_ADDRESS = common dso_local global i32 0, align 4
@ARM64_CLINE_SHIFT = common dso_local global i32 0, align 4
@VM_MAX_ADDRESS = common dso_local global i32 0, align 4
@cache_trap_recover = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @icache_invalidate_trap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icache_invalidate_trap(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* %4, align 4
  %10 = add nsw i32 %8, %9
  store i32 %10, i32* %5, align 4
  %11 = call %struct.TYPE_4__* (...) @current_thread()
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %6, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %7, align 8
  %15 = call i32 (...) @current_task()
  %16 = call i64 @task_has_64Bit_addr(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @MACH_VM_MAX_ADDRESS, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @ARM64_CLINE_SHIFT, align 4
  %26 = shl i32 1, %25
  %27 = sub nsw i32 %26, 1
  %28 = and i32 %24, %27
  %29 = call i32 @cache_trap_error(%struct.TYPE_4__* %23, i32 %28)
  br label %30

30:                                               ; preds = %22, %18
  br label %44

31:                                               ; preds = %2
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @VM_MAX_ADDRESS, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @ARM64_CLINE_SHIFT, align 4
  %39 = shl i32 1, %38
  %40 = sub nsw i32 %39, 1
  %41 = and i32 %37, %40
  %42 = call i32 @cache_trap_error(%struct.TYPE_4__* %36, i32 %41)
  br label %43

43:                                               ; preds = %35, %31
  br label %44

44:                                               ; preds = %43, %30
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @ARM64_CLINE_SHIFT, align 4
  %52 = shl i32 1, %51
  %53 = sub nsw i32 %52, 1
  %54 = and i32 %50, %53
  %55 = call i32 @cache_trap_error(%struct.TYPE_4__* %49, i32 %54)
  br label %56

56:                                               ; preds = %48, %44
  %57 = load i64, i64* @cache_trap_recover, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @CleanPoU_DcacheRegion(i32 %60, i32 %61)
  %63 = call i32 (...) @InvalidatePoU_Icache()
  %64 = load i64, i64* %7, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  ret void
}

declare dso_local %struct.TYPE_4__* @current_thread(...) #1

declare dso_local i64 @task_has_64Bit_addr(i32) #1

declare dso_local i32 @current_task(...) #1

declare dso_local i32 @cache_trap_error(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @CleanPoU_DcacheRegion(i32, i32) #1

declare dso_local i32 @InvalidatePoU_Icache(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
