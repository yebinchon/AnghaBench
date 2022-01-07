; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/spawn/extr_posix_spawn.c_posix_spawnattr_set_qos_clamp_np.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/spawn/extr_posix_spawn.c_posix_spawnattr_set_qos_clamp_np.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@POSIX_SPAWN_PROC_CLAMP_LAST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @posix_spawnattr_set_qos_clamp_np(i32** noalias %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  store i32** %0, i32*** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i32**, i32*** %4, align 8
  %8 = icmp eq i32** %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i32**, i32*** %4, align 8
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %9, %2
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %3, align 4
  br label %28

15:                                               ; preds = %9
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @POSIX_SPAWN_PROC_CLAMP_LAST, align 8
  %18 = icmp sge i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %3, align 4
  br label %28

21:                                               ; preds = %15
  %22 = load i32**, i32*** %4, align 8
  %23 = bitcast i32** %22 to %struct.TYPE_2__**
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  store %struct.TYPE_2__* %24, %struct.TYPE_2__** %6, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %21, %19, %13
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
