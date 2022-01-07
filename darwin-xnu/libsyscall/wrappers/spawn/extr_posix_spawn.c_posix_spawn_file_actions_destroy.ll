; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/spawn/extr_posix_spawn.c_posix_spawn_file_actions_destroy.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/spawn/extr_posix_spawn.c_posix_spawn_file_actions_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @posix_spawn_file_actions_destroy(i32** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32**, align 8
  %4 = alloca i32, align 4
  store i32** %0, i32*** %3, align 8
  %5 = load i32**, i32*** %3, align 8
  %6 = icmp eq i32** %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load i32**, i32*** %3, align 8
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %7, %1
  %12 = load i32, i32* @EINVAL, align 4
  store i32 %12, i32* %2, align 4
  br label %20

13:                                               ; preds = %7
  %14 = load i32**, i32*** %3, align 8
  %15 = bitcast i32** %14 to i32*
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @free(i32 %17)
  %19 = load i32**, i32*** %3, align 8
  store i32* null, i32** %19, align 8
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %13, %11
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i32 @free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
