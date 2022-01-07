; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_posix_shm.c_pshm_close.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_posix_shm.c_pshm_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pshminfo = type { i32, %struct.pshminfo*, i32, %struct.pshminfo*, i32 }
%struct.pshmobj = type { i32, %struct.pshmobj*, i32, %struct.pshmobj*, i32 }

@PSHM_ALLOCATED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PSHM_REMOVED = common dso_local global i32 0, align 4
@M_SHM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pshminfo*, i32)* @pshm_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pshm_close(%struct.pshminfo* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pshminfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pshmobj*, align 8
  %8 = alloca %struct.pshmobj*, align 8
  store %struct.pshminfo* %0, %struct.pshminfo** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %2
  %12 = load %struct.pshminfo*, %struct.pshminfo** %4, align 8
  %13 = getelementptr inbounds %struct.pshminfo, %struct.pshminfo* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @PSHM_ALLOCATED, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* @PSHM_ALLOCATED, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %3, align 4
  br label %67

21:                                               ; preds = %11, %2
  %22 = load %struct.pshminfo*, %struct.pshminfo** %4, align 8
  %23 = getelementptr inbounds %struct.pshminfo, %struct.pshminfo* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %23, align 8
  %26 = load %struct.pshminfo*, %struct.pshminfo** %4, align 8
  %27 = getelementptr inbounds %struct.pshminfo, %struct.pshminfo* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @PSHM_REMOVED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %65

32:                                               ; preds = %21
  %33 = load %struct.pshminfo*, %struct.pshminfo** %4, align 8
  %34 = getelementptr inbounds %struct.pshminfo, %struct.pshminfo* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %65, label %37

37:                                               ; preds = %32
  %38 = call i32 (...) @PSHM_SUBSYS_UNLOCK()
  %39 = load %struct.pshminfo*, %struct.pshminfo** %4, align 8
  %40 = getelementptr inbounds %struct.pshminfo, %struct.pshminfo* %39, i32 0, i32 3
  %41 = load %struct.pshminfo*, %struct.pshminfo** %40, align 8
  %42 = bitcast %struct.pshminfo* %41 to %struct.pshmobj*
  store %struct.pshmobj* %42, %struct.pshmobj** %7, align 8
  br label %43

43:                                               ; preds = %57, %37
  %44 = load %struct.pshmobj*, %struct.pshmobj** %7, align 8
  %45 = icmp ne %struct.pshmobj* %44, null
  br i1 %45, label %46, label %59

46:                                               ; preds = %43
  %47 = load %struct.pshmobj*, %struct.pshmobj** %7, align 8
  %48 = getelementptr inbounds %struct.pshmobj, %struct.pshmobj* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @mach_memory_entry_port_release(i32 %49)
  %51 = load %struct.pshmobj*, %struct.pshmobj** %7, align 8
  %52 = getelementptr inbounds %struct.pshmobj, %struct.pshmobj* %51, i32 0, i32 1
  %53 = load %struct.pshmobj*, %struct.pshmobj** %52, align 8
  store %struct.pshmobj* %53, %struct.pshmobj** %8, align 8
  %54 = load %struct.pshmobj*, %struct.pshmobj** %7, align 8
  %55 = load i32, i32* @M_SHM, align 4
  %56 = call i32 @FREE(%struct.pshmobj* %54, i32 %55)
  br label %57

57:                                               ; preds = %46
  %58 = load %struct.pshmobj*, %struct.pshmobj** %8, align 8
  store %struct.pshmobj* %58, %struct.pshmobj** %7, align 8
  br label %43

59:                                               ; preds = %43
  %60 = call i32 (...) @PSHM_SUBSYS_LOCK()
  %61 = load %struct.pshminfo*, %struct.pshminfo** %4, align 8
  %62 = bitcast %struct.pshminfo* %61 to %struct.pshmobj*
  %63 = load i32, i32* @M_SHM, align 4
  %64 = call i32 @FREE(%struct.pshmobj* %62, i32 %63)
  br label %65

65:                                               ; preds = %59, %32, %21
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %65, %19
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @PSHM_SUBSYS_UNLOCK(...) #1

declare dso_local i32 @mach_memory_entry_port_release(i32) #1

declare dso_local i32 @FREE(%struct.pshmobj*, i32) #1

declare dso_local i32 @PSHM_SUBSYS_LOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
