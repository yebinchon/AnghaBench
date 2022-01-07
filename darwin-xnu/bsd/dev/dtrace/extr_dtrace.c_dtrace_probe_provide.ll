; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_probe_provide.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_probe_provide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32 (i32, %struct.modctl*)*, i32 (i32, i32*)* }
%struct.modctl = type { %struct.modctl* }

@dtrace_provider_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@dtrace_provider = common dso_local global %struct.TYPE_6__* null, align 8
@mod_lock = common dso_local global i32 0, align 4
@dtrace_modctl_list = common dso_local global %struct.modctl* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_6__*)* @dtrace_probe_provide to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dtrace_probe_provide(i32* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.modctl*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %8 = call i32 @LCK_MTX_ASSERT(i32* @dtrace_provider_lock, i32 %7)
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = icmp eq %struct.TYPE_6__* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dtrace_provider, align 8
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %4, align 8
  br label %13

13:                                               ; preds = %11, %2
  br label %14

14:                                               ; preds = %52, %13
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32 (i32, i32*)*, i32 (i32, i32*)** %17, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 %18(i32 %21, i32* %22)
  %24 = call i32 @lck_mtx_lock(i32* @mod_lock)
  %25 = load %struct.modctl*, %struct.modctl** @dtrace_modctl_list, align 8
  store %struct.modctl* %25, %struct.modctl** %5, align 8
  br label %26

26:                                               ; preds = %29, %14
  %27 = load %struct.modctl*, %struct.modctl** %5, align 8
  %28 = icmp ne %struct.modctl* %27, null
  br i1 %28, label %29, label %42

29:                                               ; preds = %26
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32 (i32, %struct.modctl*)*, i32 (i32, %struct.modctl*)** %32, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.modctl*, %struct.modctl** %5, align 8
  %38 = call i32 %33(i32 %36, %struct.modctl* %37)
  %39 = load %struct.modctl*, %struct.modctl** %5, align 8
  %40 = getelementptr inbounds %struct.modctl, %struct.modctl* %39, i32 0, i32 0
  %41 = load %struct.modctl*, %struct.modctl** %40, align 8
  store %struct.modctl* %41, %struct.modctl** %5, align 8
  br label %26

42:                                               ; preds = %26
  %43 = call i32 @lck_mtx_unlock(i32* @mod_lock)
  br label %44

44:                                               ; preds = %42
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  store %struct.TYPE_6__* %50, %struct.TYPE_6__** %4, align 8
  %51 = icmp ne %struct.TYPE_6__* %50, null
  br label %52

52:                                               ; preds = %47, %44
  %53 = phi i1 [ false, %44 ], [ %51, %47 ]
  br i1 %53, label %14, label %54

54:                                               ; preds = %52
  ret void
}

declare dso_local i32 @LCK_MTX_ASSERT(i32*, i32) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
