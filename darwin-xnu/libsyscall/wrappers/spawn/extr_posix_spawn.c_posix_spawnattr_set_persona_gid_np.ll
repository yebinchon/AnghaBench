; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/spawn/extr_posix_spawn.c_posix_spawnattr_set_persona_gid_np.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/spawn/extr_posix_spawn.c_posix_spawnattr_set_persona_gid_np.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct._posix_spawn_persona_info* }
%struct._posix_spawn_persona_info = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@POSIX_SPAWN_PERSONA_FLAGS_OVERRIDE = common dso_local global i32 0, align 4
@POSIX_SPAWN_PERSONA_FLAGS_VERIFY = common dso_local global i32 0, align 4
@POSIX_SPAWN_PERSONA_GID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @posix_spawnattr_set_persona_gid_np(i32** noalias %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca %struct._posix_spawn_persona_info*, align 8
  store i32** %0, i32*** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32**, i32*** %4, align 8
  %9 = icmp eq i32** %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load i32**, i32*** %4, align 8
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %10, %2
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %3, align 4
  br label %47

16:                                               ; preds = %10
  %17 = load i32**, i32*** %4, align 8
  %18 = bitcast i32** %17 to %struct.TYPE_2__**
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  store %struct.TYPE_2__* %19, %struct.TYPE_2__** %6, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct._posix_spawn_persona_info*, %struct._posix_spawn_persona_info** %21, align 8
  store %struct._posix_spawn_persona_info* %22, %struct._posix_spawn_persona_info** %7, align 8
  %23 = load %struct._posix_spawn_persona_info*, %struct._posix_spawn_persona_info** %7, align 8
  %24 = icmp ne %struct._posix_spawn_persona_info* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %16
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %3, align 4
  br label %47

27:                                               ; preds = %16
  %28 = load %struct._posix_spawn_persona_info*, %struct._posix_spawn_persona_info** %7, align 8
  %29 = getelementptr inbounds %struct._posix_spawn_persona_info, %struct._posix_spawn_persona_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @POSIX_SPAWN_PERSONA_FLAGS_OVERRIDE, align 4
  %32 = load i32, i32* @POSIX_SPAWN_PERSONA_FLAGS_VERIFY, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %27
  %37 = load i32, i32* @EINVAL, align 4
  store i32 %37, i32* %3, align 4
  br label %47

38:                                               ; preds = %27
  %39 = load i32, i32* %5, align 4
  %40 = load %struct._posix_spawn_persona_info*, %struct._posix_spawn_persona_info** %7, align 8
  %41 = getelementptr inbounds %struct._posix_spawn_persona_info, %struct._posix_spawn_persona_info* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @POSIX_SPAWN_PERSONA_GID, align 4
  %43 = load %struct._posix_spawn_persona_info*, %struct._posix_spawn_persona_info** %7, align 8
  %44 = getelementptr inbounds %struct._posix_spawn_persona_info, %struct._posix_spawn_persona_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %38, %36, %25, %14
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
