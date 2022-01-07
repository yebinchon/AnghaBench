; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty_ptmx.c_ptmx_free_ioctl.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty_ptmx.c_ptmx_free_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, %struct.ptmx_ioctl** }
%struct.ptmx_ioctl = type { i32, i32, i32* }

@_state = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PF_OPEN_M = common dso_local global i32 0, align 4
@PF_OPEN_S = common dso_local global i32 0, align 4
@M_TTYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ptmx_free_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptmx_free_ioctl(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ptmx_ioctl*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.ptmx_ioctl* null, %struct.ptmx_ioctl** %6, align 8
  %7 = call i32 (...) @DEVFS_LOCK()
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_state, i32 0, i32 0), align 8
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %10, %2
  %15 = call i32 (...) @DEVFS_UNLOCK()
  store i32 -1, i32* %3, align 4
  br label %74

16:                                               ; preds = %10
  %17 = load i32, i32* %5, align 4
  %18 = xor i32 %17, -1
  %19 = load %struct.ptmx_ioctl**, %struct.ptmx_ioctl*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_state, i32 0, i32 2), align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.ptmx_ioctl*, %struct.ptmx_ioctl** %19, i64 %21
  %23 = load %struct.ptmx_ioctl*, %struct.ptmx_ioctl** %22, align 8
  %24 = getelementptr inbounds %struct.ptmx_ioctl, %struct.ptmx_ioctl* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, %18
  store i32 %26, i32* %24, align 8
  %27 = load %struct.ptmx_ioctl**, %struct.ptmx_ioctl*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_state, i32 0, i32 2), align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.ptmx_ioctl*, %struct.ptmx_ioctl** %27, i64 %29
  %31 = load %struct.ptmx_ioctl*, %struct.ptmx_ioctl** %30, align 8
  %32 = getelementptr inbounds %struct.ptmx_ioctl, %struct.ptmx_ioctl* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @PF_OPEN_M, align 4
  %35 = load i32, i32* @PF_OPEN_S, align 4
  %36 = or i32 %34, %35
  %37 = and i32 %33, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %16
  %40 = load %struct.ptmx_ioctl**, %struct.ptmx_ioctl*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_state, i32 0, i32 2), align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.ptmx_ioctl*, %struct.ptmx_ioctl** %40, i64 %42
  %44 = load %struct.ptmx_ioctl*, %struct.ptmx_ioctl** %43, align 8
  store %struct.ptmx_ioctl* %44, %struct.ptmx_ioctl** %6, align 8
  %45 = load %struct.ptmx_ioctl**, %struct.ptmx_ioctl*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_state, i32 0, i32 2), align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.ptmx_ioctl*, %struct.ptmx_ioctl** %45, i64 %47
  store %struct.ptmx_ioctl* null, %struct.ptmx_ioctl** %48, align 8
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_state, i32 0, i32 1), align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_state, i32 0, i32 1), align 4
  br label %51

51:                                               ; preds = %39, %16
  %52 = call i32 (...) @DEVFS_UNLOCK()
  %53 = load %struct.ptmx_ioctl*, %struct.ptmx_ioctl** %6, align 8
  %54 = icmp ne %struct.ptmx_ioctl* %53, null
  br i1 %54, label %55, label %73

55:                                               ; preds = %51
  %56 = load %struct.ptmx_ioctl*, %struct.ptmx_ioctl** %6, align 8
  %57 = getelementptr inbounds %struct.ptmx_ioctl, %struct.ptmx_ioctl* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load %struct.ptmx_ioctl*, %struct.ptmx_ioctl** %6, align 8
  %62 = getelementptr inbounds %struct.ptmx_ioctl, %struct.ptmx_ioctl* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @devfs_remove(i32* %63)
  br label %65

65:                                               ; preds = %60, %55
  %66 = load %struct.ptmx_ioctl*, %struct.ptmx_ioctl** %6, align 8
  %67 = getelementptr inbounds %struct.ptmx_ioctl, %struct.ptmx_ioctl* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ttyfree(i32 %68)
  %70 = load %struct.ptmx_ioctl*, %struct.ptmx_ioctl** %6, align 8
  %71 = load i32, i32* @M_TTYS, align 4
  %72 = call i32 @FREE(%struct.ptmx_ioctl* %70, i32 %71)
  br label %73

73:                                               ; preds = %65, %51
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %14
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @DEVFS_LOCK(...) #1

declare dso_local i32 @DEVFS_UNLOCK(...) #1

declare dso_local i32 @devfs_remove(i32*) #1

declare dso_local i32 @ttyfree(i32) #1

declare dso_local i32 @FREE(%struct.ptmx_ioctl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
