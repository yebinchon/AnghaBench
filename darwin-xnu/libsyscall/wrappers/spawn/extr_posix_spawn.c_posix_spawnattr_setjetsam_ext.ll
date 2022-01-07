; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/spawn/extr_posix_spawn.c_posix_spawnattr_setjetsam_ext.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/spawn/extr_posix_spawn.c_posix_spawnattr_setjetsam_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i16, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@POSIX_SPAWN_JETSAM_SET = common dso_local global i16 0, align 2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @posix_spawnattr_setjetsam_ext(i32** noalias %0, i16 signext %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_2__*, align 8
  store i32** %0, i32*** %7, align 8
  store i16 %1, i16* %8, align 2
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32**, i32*** %7, align 8
  %14 = icmp eq i32** %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %5
  %16 = load i32**, i32*** %7, align 8
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %15, %5
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %6, align 4
  br label %45

21:                                               ; preds = %15
  %22 = load i32**, i32*** %7, align 8
  %23 = bitcast i32** %22 to %struct.TYPE_2__**
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  store %struct.TYPE_2__* %24, %struct.TYPE_2__** %12, align 8
  %25 = load i16, i16* %8, align 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i16 %25, i16* %27, align 4
  %28 = load i16, i16* @POSIX_SPAWN_JETSAM_SET, align 2
  %29 = sext i16 %28 to i32
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i16, i16* %31, align 4
  %33 = sext i16 %32 to i32
  %34 = or i32 %33, %29
  %35 = trunc i32 %34 to i16
  store i16 %35, i16* %31, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %21, %19
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
