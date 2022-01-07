; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/spawn/extr_posix_spawn.c_posix_spawnattr_set_persona_groups_np.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/spawn/extr_posix_spawn.c_posix_spawnattr_set_persona_groups_np.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct._posix_spawn_persona_info* }
%struct._posix_spawn_persona_info = type { i32, i32, i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@NGROUPS = common dso_local global i32 0, align 4
@POSIX_SPAWN_PERSONA_FLAGS_OVERRIDE = common dso_local global i32 0, align 4
@POSIX_SPAWN_PERSONA_FLAGS_VERIFY = common dso_local global i32 0, align 4
@POSIX_SPAWN_PERSONA_GROUPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @posix_spawnattr_set_persona_groups_np(i32** noalias %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_2__*, align 8
  %11 = alloca %struct._posix_spawn_persona_info*, align 8
  %12 = alloca i32, align 4
  store i32** %0, i32*** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32**, i32*** %6, align 8
  %14 = icmp eq i32** %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %4
  %16 = load i32**, i32*** %6, align 8
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %15, %4
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %5, align 4
  br label %89

21:                                               ; preds = %15
  %22 = load i32*, i32** %8, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %5, align 4
  br label %89

26:                                               ; preds = %21
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @NGROUPS, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30, %26
  %34 = load i32, i32* @EINVAL, align 4
  store i32 %34, i32* %5, align 4
  br label %89

35:                                               ; preds = %30
  %36 = load i32**, i32*** %6, align 8
  %37 = bitcast i32** %36 to %struct.TYPE_2__**
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  store %struct.TYPE_2__* %38, %struct.TYPE_2__** %10, align 8
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load %struct._posix_spawn_persona_info*, %struct._posix_spawn_persona_info** %40, align 8
  store %struct._posix_spawn_persona_info* %41, %struct._posix_spawn_persona_info** %11, align 8
  %42 = load %struct._posix_spawn_persona_info*, %struct._posix_spawn_persona_info** %11, align 8
  %43 = icmp ne %struct._posix_spawn_persona_info* %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %35
  %45 = load i32, i32* @EINVAL, align 4
  store i32 %45, i32* %5, align 4
  br label %89

46:                                               ; preds = %35
  %47 = load %struct._posix_spawn_persona_info*, %struct._posix_spawn_persona_info** %11, align 8
  %48 = getelementptr inbounds %struct._posix_spawn_persona_info, %struct._posix_spawn_persona_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @POSIX_SPAWN_PERSONA_FLAGS_OVERRIDE, align 4
  %51 = load i32, i32* @POSIX_SPAWN_PERSONA_FLAGS_VERIFY, align 4
  %52 = or i32 %50, %51
  %53 = and i32 %49, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %46
  %56 = load i32, i32* @EINVAL, align 4
  store i32 %56, i32* %5, align 4
  br label %89

57:                                               ; preds = %46
  %58 = load i32, i32* %7, align 4
  %59 = load %struct._posix_spawn_persona_info*, %struct._posix_spawn_persona_info** %11, align 8
  %60 = getelementptr inbounds %struct._posix_spawn_persona_info, %struct._posix_spawn_persona_info* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  store i32 0, i32* %12, align 4
  br label %61

61:                                               ; preds = %77, %57
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %80

65:                                               ; preds = %61
  %66 = load i32*, i32** %8, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load %struct._posix_spawn_persona_info*, %struct._posix_spawn_persona_info** %11, align 8
  %72 = getelementptr inbounds %struct._posix_spawn_persona_info, %struct._posix_spawn_persona_info* %71, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %70, i32* %76, align 4
  br label %77

77:                                               ; preds = %65
  %78 = load i32, i32* %12, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %12, align 4
  br label %61

80:                                               ; preds = %61
  %81 = load i32, i32* %9, align 4
  %82 = load %struct._posix_spawn_persona_info*, %struct._posix_spawn_persona_info** %11, align 8
  %83 = getelementptr inbounds %struct._posix_spawn_persona_info, %struct._posix_spawn_persona_info* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* @POSIX_SPAWN_PERSONA_GROUPS, align 4
  %85 = load %struct._posix_spawn_persona_info*, %struct._posix_spawn_persona_info** %11, align 8
  %86 = getelementptr inbounds %struct._posix_spawn_persona_info, %struct._posix_spawn_persona_info* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 8
  store i32 0, i32* %5, align 4
  br label %89

89:                                               ; preds = %80, %55, %44, %33, %24, %19
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
