; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/spawn/extr_posix_spawn.c_posix_spawnattr_setcoalition_np.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/spawn/extr_posix_spawn.c_posix_spawnattr_setcoalition_np.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct._posix_spawn_coalition_info* }
%struct._posix_spawn_coalition_info = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@COALITION_TYPE_MAX = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @posix_spawnattr_setcoalition_np(i32** noalias %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca %struct._posix_spawn_coalition_info*, align 8
  store i32** %0, i32*** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32**, i32*** %6, align 8
  %13 = icmp eq i32** %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %4
  %15 = load i32**, i32*** %6, align 8
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %14, %4
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %5, align 4
  br label %68

20:                                               ; preds = %14
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @COALITION_TYPE_MAX, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23, %20
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %5, align 4
  br label %68

29:                                               ; preds = %23
  %30 = load i32**, i32*** %6, align 8
  %31 = bitcast i32** %30 to %struct.TYPE_4__**
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  store %struct.TYPE_4__* %32, %struct.TYPE_4__** %10, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct._posix_spawn_coalition_info*, %struct._posix_spawn_coalition_info** %34, align 8
  store %struct._posix_spawn_coalition_info* %35, %struct._posix_spawn_coalition_info** %11, align 8
  %36 = load %struct._posix_spawn_coalition_info*, %struct._posix_spawn_coalition_info** %11, align 8
  %37 = icmp ne %struct._posix_spawn_coalition_info* %36, null
  br i1 %37, label %51, label %38

38:                                               ; preds = %29
  %39 = call i64 @malloc(i32 8)
  %40 = inttoptr i64 %39 to %struct._posix_spawn_coalition_info*
  store %struct._posix_spawn_coalition_info* %40, %struct._posix_spawn_coalition_info** %11, align 8
  %41 = load %struct._posix_spawn_coalition_info*, %struct._posix_spawn_coalition_info** %11, align 8
  %42 = icmp ne %struct._posix_spawn_coalition_info* %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @ENOMEM, align 4
  store i32 %44, i32* %5, align 4
  br label %68

45:                                               ; preds = %38
  %46 = load %struct._posix_spawn_coalition_info*, %struct._posix_spawn_coalition_info** %11, align 8
  %47 = call i32 @memset(%struct._posix_spawn_coalition_info* %46, i32 0, i32 8)
  %48 = load %struct._posix_spawn_coalition_info*, %struct._posix_spawn_coalition_info** %11, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store %struct._posix_spawn_coalition_info* %48, %struct._posix_spawn_coalition_info** %50, align 8
  br label %51

51:                                               ; preds = %45, %29
  %52 = load i32, i32* %7, align 4
  %53 = load %struct._posix_spawn_coalition_info*, %struct._posix_spawn_coalition_info** %11, align 8
  %54 = getelementptr inbounds %struct._posix_spawn_coalition_info, %struct._posix_spawn_coalition_info* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  store i32 %52, i32* %59, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load %struct._posix_spawn_coalition_info*, %struct._posix_spawn_coalition_info** %11, align 8
  %62 = getelementptr inbounds %struct._posix_spawn_coalition_info, %struct._posix_spawn_coalition_info* %61, i32 0, i32 0
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  store i32 %60, i32* %67, align 4
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %51, %43, %27, %18
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memset(%struct._posix_spawn_coalition_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
