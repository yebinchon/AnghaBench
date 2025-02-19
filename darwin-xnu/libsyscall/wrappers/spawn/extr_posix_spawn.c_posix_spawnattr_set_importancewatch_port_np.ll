; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/spawn/extr_posix_spawn.c_posix_spawnattr_set_importancewatch_port_np.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/spawn/extr_posix_spawn.c_posix_spawnattr_set_importancewatch_port_np.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@POSIX_SPAWN_IMPORTANCE_PORT_COUNT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PSPA_IMP_WATCHPORTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @posix_spawnattr_set_importancewatch_port_np(i32* noalias %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @POSIX_SPAWN_IMPORTANCE_PORT_COUNT, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14, %3
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %4, align 4
  br label %45

20:                                               ; preds = %14
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %40, %20
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %43

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %26, align 4
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %33 = load i32, i32* @PSPA_IMP_WATCHPORTS, align 4
  store i32 %33, i32* %32, align 4
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @posix_spawn_appendportaction_np(i32* %34, %struct.TYPE_3__* %10)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %25
  br label %43

39:                                               ; preds = %25
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %9, align 4
  br label %21

43:                                               ; preds = %38, %21
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %43, %18
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @posix_spawn_appendportaction_np(i32*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
