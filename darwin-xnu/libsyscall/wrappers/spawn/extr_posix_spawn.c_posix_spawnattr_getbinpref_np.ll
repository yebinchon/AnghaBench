; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/spawn/extr_posix_spawn.c_posix_spawnattr_getbinpref_np.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/spawn/extr_posix_spawn.c_posix_spawnattr_getbinpref_np.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @posix_spawnattr_getbinpref_np(i32** noalias %0, i64 %1, i32* %2, i64* noalias %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_2__*, align 8
  %11 = alloca i32, align 4
  store i32** %0, i32*** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32 0, i32* %11, align 4
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
  br label %57

20:                                               ; preds = %14
  %21 = load i32**, i32*** %6, align 8
  %22 = bitcast i32** %21 to %struct.TYPE_2__**
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  store %struct.TYPE_2__* %23, %struct.TYPE_2__** %10, align 8
  store i32 0, i32* %11, align 4
  br label %24

24:                                               ; preds = %46, %20
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* %7, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* %11, align 4
  %31 = icmp slt i32 %30, 4
  br label %32

32:                                               ; preds = %29, %24
  %33 = phi i1 [ false, %24 ], [ %31, %29 ]
  br i1 %33, label %34, label %49

34:                                               ; preds = %32
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 %41, i32* %45, align 4
  br label %46

46:                                               ; preds = %34
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %11, align 4
  br label %24

49:                                               ; preds = %32
  %50 = load i64*, i64** %9, align 8
  %51 = icmp ne i64* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = load i64*, i64** %9, align 8
  store i64 %54, i64* %55, align 8
  br label %56

56:                                               ; preds = %52, %49
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %56, %18
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
