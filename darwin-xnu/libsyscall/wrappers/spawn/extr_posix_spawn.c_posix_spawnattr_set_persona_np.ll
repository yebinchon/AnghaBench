; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/spawn/extr_posix_spawn.c_posix_spawnattr_set_persona_np.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/spawn/extr_posix_spawn.c_posix_spawnattr_set_persona_np.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct._posix_spawn_persona_info* }
%struct._posix_spawn_persona_info = type { i32, i32, i64*, i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@POSIX_SPAWN_PERSONA_ALL_FLAGS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @posix_spawnattr_set_persona_np(i32** noalias %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca %struct._posix_spawn_persona_info*, align 8
  store i32** %0, i32*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32**, i32*** %5, align 8
  %11 = icmp eq i32** %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = load i32**, i32*** %5, align 8
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %12, %3
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %4, align 4
  br label %63

18:                                               ; preds = %12
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @POSIX_SPAWN_PERSONA_ALL_FLAGS, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %4, align 4
  br label %63

26:                                               ; preds = %18
  %27 = load i32**, i32*** %5, align 8
  %28 = bitcast i32** %27 to %struct.TYPE_2__**
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  store %struct.TYPE_2__* %29, %struct.TYPE_2__** %8, align 8
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct._posix_spawn_persona_info*, %struct._posix_spawn_persona_info** %31, align 8
  store %struct._posix_spawn_persona_info* %32, %struct._posix_spawn_persona_info** %9, align 8
  %33 = load %struct._posix_spawn_persona_info*, %struct._posix_spawn_persona_info** %9, align 8
  %34 = icmp ne %struct._posix_spawn_persona_info* %33, null
  br i1 %34, label %56, label %35

35:                                               ; preds = %26
  %36 = call i64 @malloc(i32 40)
  %37 = inttoptr i64 %36 to %struct._posix_spawn_persona_info*
  store %struct._posix_spawn_persona_info* %37, %struct._posix_spawn_persona_info** %9, align 8
  %38 = load %struct._posix_spawn_persona_info*, %struct._posix_spawn_persona_info** %9, align 8
  %39 = icmp ne %struct._posix_spawn_persona_info* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @ENOMEM, align 4
  store i32 %41, i32* %4, align 4
  br label %63

42:                                               ; preds = %35
  %43 = load %struct._posix_spawn_persona_info*, %struct._posix_spawn_persona_info** %9, align 8
  %44 = getelementptr inbounds %struct._posix_spawn_persona_info, %struct._posix_spawn_persona_info* %43, i32 0, i32 5
  store i64 0, i64* %44, align 8
  %45 = load %struct._posix_spawn_persona_info*, %struct._posix_spawn_persona_info** %9, align 8
  %46 = getelementptr inbounds %struct._posix_spawn_persona_info, %struct._posix_spawn_persona_info* %45, i32 0, i32 4
  store i64 0, i64* %46, align 8
  %47 = load %struct._posix_spawn_persona_info*, %struct._posix_spawn_persona_info** %9, align 8
  %48 = getelementptr inbounds %struct._posix_spawn_persona_info, %struct._posix_spawn_persona_info* %47, i32 0, i32 3
  store i64 0, i64* %48, align 8
  %49 = load %struct._posix_spawn_persona_info*, %struct._posix_spawn_persona_info** %9, align 8
  %50 = getelementptr inbounds %struct._posix_spawn_persona_info, %struct._posix_spawn_persona_info* %49, i32 0, i32 2
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 0
  store i64 0, i64* %52, align 8
  %53 = load %struct._posix_spawn_persona_info*, %struct._posix_spawn_persona_info** %9, align 8
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store %struct._posix_spawn_persona_info* %53, %struct._posix_spawn_persona_info** %55, align 8
  br label %56

56:                                               ; preds = %42, %26
  %57 = load i32, i32* %6, align 4
  %58 = load %struct._posix_spawn_persona_info*, %struct._posix_spawn_persona_info** %9, align 8
  %59 = getelementptr inbounds %struct._posix_spawn_persona_info, %struct._posix_spawn_persona_info* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load %struct._posix_spawn_persona_info*, %struct._posix_spawn_persona_info** %9, align 8
  %62 = getelementptr inbounds %struct._posix_spawn_persona_info, %struct._posix_spawn_persona_info* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %56, %40, %24, %16
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i64 @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
