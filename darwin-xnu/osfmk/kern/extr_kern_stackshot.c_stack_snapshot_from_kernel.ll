; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kern_stackshot.c_stack_snapshot_from_kernel.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kern_stackshot.c_stack_snapshot_from_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kcdata_descriptor = type { i32 }

@KERN_SUCCESS = common dso_local global i64 0, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@max_tracebuf_size = common dso_local global i32 0, align 4
@STACKSHOT_TRYLOCK = common dso_local global i32 0, align 4
@KERN_LOCK_OWNED = common dso_local global i64 0, align 8
@STACKSHOT_COLLECT_DELTA_SNAPSHOT = common dso_local global i32 0, align 4
@KCDATA_BUFFER_BEGIN_DELTA_STACKSHOT = common dso_local global i32 0, align 4
@KCDATA_BUFFER_BEGIN_STACKSHOT = common dso_local global i32 0, align 4
@KCFLAG_USE_MEMCOPY = common dso_local global i32 0, align 4
@KCFLAG_NO_AUTO_ENDBUFFER = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@stackshot_kcdata_p = common dso_local global i32* null, align 8
@KERN_NOT_SUPPORTED = common dso_local global i64 0, align 8
@KF_STACKSHOT_OVRD = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @stack_snapshot_from_kernel(i32 %0, i8* %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.kcdata_descriptor, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %18 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %18, i64* %14, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %6
  %22 = load i32, i32* %10, align 4
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32*, i32** %13, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %24, %21, %6
  %28 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %28, i64* %7, align 8
  br label %87

29:                                               ; preds = %24
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @max_tracebuf_size, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @max_tracebuf_size, align 4
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %33, %29
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @STACKSHOT_TRYLOCK, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = call i32 (...) @STACKSHOT_SUBSYS_TRY_LOCK()
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = load i64, i64* @KERN_LOCK_OWNED, align 8
  store i64 %44, i64* %7, align 8
  br label %87

45:                                               ; preds = %40
  br label %48

46:                                               ; preds = %35
  %47 = call i32 (...) @STACKSHOT_SUBSYS_LOCK()
  br label %48

48:                                               ; preds = %46, %45
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @STACKSHOT_COLLECT_DELTA_SNAPSHOT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* @KCDATA_BUFFER_BEGIN_DELTA_STACKSHOT, align 4
  br label %57

55:                                               ; preds = %48
  %56 = load i32, i32* @KCDATA_BUFFER_BEGIN_STACKSHOT, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  store i32 %58, i32* %17, align 4
  %59 = load i8*, i8** %9, align 8
  %60 = ptrtoint i8* %59 to i32
  %61 = load i32, i32* %17, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @KCFLAG_USE_MEMCOPY, align 4
  %64 = load i32, i32* @KCFLAG_NO_AUTO_ENDBUFFER, align 4
  %65 = or i32 %63, %64
  %66 = call i64 @kcdata_memory_static_init(%struct.kcdata_descriptor* %16, i32 %60, i32 %61, i32 %62, i32 %65)
  store i64 %66, i64* %14, align 8
  %67 = load i64, i64* %14, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %57
  br label %84

70:                                               ; preds = %57
  %71 = load i32, i32* @FALSE, align 4
  %72 = call i32 @ml_set_interrupts_enabled(i32 %71)
  store i32 %72, i32* %15, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load i8*, i8** %9, align 8
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @kdp_snapshot_preflight(i32 %73, i8* %74, i32 %75, i32 %76, %struct.kcdata_descriptor* %16, i32 %77)
  %79 = call i64 (...) @stackshot_trap()
  store i64 %79, i64* %14, align 8
  %80 = load i32, i32* %15, align 4
  %81 = call i32 @ml_set_interrupts_enabled(i32 %80)
  %82 = call i32 (...) @kdp_stack_snapshot_bytes_traced()
  %83 = load i32*, i32** %13, align 8
  store i32 %82, i32* %83, align 4
  br label %84

84:                                               ; preds = %70, %69
  store i32* null, i32** @stackshot_kcdata_p, align 8
  %85 = call i32 (...) @STACKSHOT_SUBSYS_UNLOCK()
  %86 = load i64, i64* %14, align 8
  store i64 %86, i64* %7, align 8
  br label %87

87:                                               ; preds = %84, %43, %27
  %88 = load i64, i64* %7, align 8
  ret i64 %88
}

declare dso_local i32 @STACKSHOT_SUBSYS_TRY_LOCK(...) #1

declare dso_local i32 @STACKSHOT_SUBSYS_LOCK(...) #1

declare dso_local i64 @kcdata_memory_static_init(%struct.kcdata_descriptor*, i32, i32, i32, i32) #1

declare dso_local i32 @ml_set_interrupts_enabled(i32) #1

declare dso_local i32 @kdp_snapshot_preflight(i32, i8*, i32, i32, %struct.kcdata_descriptor*, i32) #1

declare dso_local i64 @stackshot_trap(...) #1

declare dso_local i32 @kdp_stack_snapshot_bytes_traced(...) #1

declare dso_local i32 @STACKSHOT_SUBSYS_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
