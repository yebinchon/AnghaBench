; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_exec.c_exec_handle_spawnattr_policy.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_exec.c_exec_handle_spawnattr_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@TASK_APPTYPE_NONE = common dso_local global i32 0, align 4
@THREAD_QOS_UNSPECIFIED = common dso_local global i32 0, align 4
@TASK_UNSPECIFIED = common dso_local global i32 0, align 4
@POSIX_SPAWN_PROC_TYPE_MASK = common dso_local global i32 0, align 4
@TASK_APPTYPE_DAEMON_INTERACTIVE = common dso_local global i32 0, align 4
@TASK_APPTYPE_DAEMON_STANDARD = common dso_local global i32 0, align 4
@TASK_APPTYPE_DAEMON_ADAPTIVE = common dso_local global i32 0, align 4
@TASK_APPTYPE_DAEMON_BACKGROUND = common dso_local global i32 0, align 4
@TASK_APPTYPE_APP_DEFAULT = common dso_local global i32 0, align 4
@TASK_APPTYPE_APP_TAL = common dso_local global i32 0, align 4
@POSIX_SPAWN_PROC_CLAMP_NONE = common dso_local global i32 0, align 4
@THREAD_QOS_UTILITY = common dso_local global i32 0, align 4
@THREAD_QOS_BACKGROUND = common dso_local global i32 0, align 4
@THREAD_QOS_MAINTENANCE = common dso_local global i32 0, align 4
@PRIO_DARWIN_ROLE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32, i32, i32*, i32)* @exec_handle_spawnattr_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_handle_spawnattr_policy(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %17 = load i32, i32* @TASK_APPTYPE_NONE, align 4
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* @THREAD_QOS_UNSPECIFIED, align 4
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* @TASK_UNSPECIFIED, align 4
  store i32 %19, i32* %15, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @POSIX_SPAWN_PROC_TYPE_MASK, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %6
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @POSIX_SPAWN_PROC_TYPE_MASK, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %16, align 4
  %28 = load i32, i32* %16, align 4
  switch i32 %28, label %41 [
    i32 129, label %29
    i32 128, label %31
    i32 131, label %33
    i32 130, label %35
    i32 133, label %37
    i32 132, label %39
  ]

29:                                               ; preds = %24
  %30 = load i32, i32* @TASK_APPTYPE_DAEMON_INTERACTIVE, align 4
  store i32 %30, i32* %13, align 4
  br label %43

31:                                               ; preds = %24
  %32 = load i32, i32* @TASK_APPTYPE_DAEMON_STANDARD, align 4
  store i32 %32, i32* %13, align 4
  br label %43

33:                                               ; preds = %24
  %34 = load i32, i32* @TASK_APPTYPE_DAEMON_ADAPTIVE, align 4
  store i32 %34, i32* %13, align 4
  br label %43

35:                                               ; preds = %24
  %36 = load i32, i32* @TASK_APPTYPE_DAEMON_BACKGROUND, align 4
  store i32 %36, i32* %13, align 4
  br label %43

37:                                               ; preds = %24
  %38 = load i32, i32* @TASK_APPTYPE_APP_DEFAULT, align 4
  store i32 %38, i32* %13, align 4
  br label %43

39:                                               ; preds = %24
  %40 = load i32, i32* @TASK_APPTYPE_APP_TAL, align 4
  store i32 %40, i32* %13, align 4
  br label %43

41:                                               ; preds = %24
  %42 = load i32, i32* @TASK_APPTYPE_NONE, align 4
  store i32 %42, i32* %13, align 4
  br label %43

43:                                               ; preds = %41, %39, %37, %35, %33, %31, %29
  br label %44

44:                                               ; preds = %43, %6
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @POSIX_SPAWN_PROC_CLAMP_NONE, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %44
  %49 = load i32, i32* %9, align 4
  switch i32 %49, label %56 [
    i32 134, label %50
    i32 136, label %52
    i32 135, label %54
  ]

50:                                               ; preds = %48
  %51 = load i32, i32* @THREAD_QOS_UTILITY, align 4
  store i32 %51, i32* %14, align 4
  br label %58

52:                                               ; preds = %48
  %53 = load i32, i32* @THREAD_QOS_BACKGROUND, align 4
  store i32 %53, i32* %14, align 4
  br label %58

54:                                               ; preds = %48
  %55 = load i32, i32* @THREAD_QOS_MAINTENANCE, align 4
  store i32 %55, i32* %14, align 4
  br label %58

56:                                               ; preds = %48
  %57 = load i32, i32* @THREAD_QOS_UNSPECIFIED, align 4
  store i32 %57, i32* %14, align 4
  br label %58

58:                                               ; preds = %56, %54, %52, %50
  br label %59

59:                                               ; preds = %58, %44
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @PRIO_DARWIN_ROLE_DEFAULT, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @proc_darwin_role_to_task_role(i32 %64, i32* %15)
  br label %66

66:                                               ; preds = %63, %59
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* @TASK_APPTYPE_NONE, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %78, label %70

70:                                               ; preds = %66
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* @THREAD_QOS_UNSPECIFIED, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* @TASK_UNSPECIFIED, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %74, %70, %66
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* %15, align 4
  %85 = load i32*, i32** %11, align 8
  %86 = load i32, i32* %12, align 4
  %87 = call i32 @proc_set_task_spawnpolicy(i32 %81, i32 %82, i32 %83, i32 %84, i32* %85, i32 %86)
  br label %88

88:                                               ; preds = %78, %74
  ret i32 0
}

declare dso_local i32 @proc_darwin_role_to_task_role(i32, i32*) #1

declare dso_local i32 @proc_set_task_spawnpolicy(i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
