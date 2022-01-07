; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty_ptmx.c_ptmx_kqfilter.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty_ptmx.c_ptmx_kqfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.knote = type { i32, %struct.ptmx_ioctl*, i32 }
%struct.ptmx_ioctl = type { %struct.TYPE_5__, %struct.TYPE_4__, %struct.tty* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.tty = type { i32 }

@cdevsw = common dso_local global %struct.TYPE_6__* null, align 8
@ptcopen = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@EVFILTID_PTMX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"ptmx kevent: unexpected filter: %d, kn = %p, tty = %p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ptmx_kqfilter(i32 %0, %struct.knote* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.knote*, align 8
  %6 = alloca %struct.tty*, align 8
  %7 = alloca %struct.ptmx_ioctl*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.knote* %1, %struct.knote** %5, align 8
  store %struct.tty* null, %struct.tty** %6, align 8
  store %struct.ptmx_ioctl* null, %struct.ptmx_ioctl** %7, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cdevsw, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @major(i32 %10)
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ptcopen, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.knote*, %struct.knote** %5, align 8
  %19 = load i32, i32* @ENODEV, align 4
  %20 = call i32 @knote_set_error(%struct.knote* %18, i32 %19)
  store i32 0, i32* %3, align 4
  br label %74

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @minor(i32 %22)
  %24 = call %struct.ptmx_ioctl* @ptmx_get_ioctl(i32 %23, i32 0)
  store %struct.ptmx_ioctl* %24, %struct.ptmx_ioctl** %7, align 8
  %25 = icmp eq %struct.ptmx_ioctl* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load %struct.knote*, %struct.knote** %5, align 8
  %28 = load i32, i32* @ENXIO, align 4
  %29 = call i32 @knote_set_error(%struct.knote* %27, i32 %28)
  store i32 0, i32* %3, align 4
  br label %74

30:                                               ; preds = %21
  %31 = load %struct.ptmx_ioctl*, %struct.ptmx_ioctl** %7, align 8
  %32 = getelementptr inbounds %struct.ptmx_ioctl, %struct.ptmx_ioctl* %31, i32 0, i32 2
  %33 = load %struct.tty*, %struct.tty** %32, align 8
  store %struct.tty* %33, %struct.tty** %6, align 8
  %34 = load %struct.tty*, %struct.tty** %6, align 8
  %35 = call i32 @tty_lock(%struct.tty* %34)
  %36 = load i32, i32* @EVFILTID_PTMX, align 4
  %37 = load %struct.knote*, %struct.knote** %5, align 8
  %38 = getelementptr inbounds %struct.knote, %struct.knote* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.ptmx_ioctl*, %struct.ptmx_ioctl** %7, align 8
  %40 = load %struct.knote*, %struct.knote** %5, align 8
  %41 = getelementptr inbounds %struct.knote, %struct.knote* %40, i32 0, i32 1
  store %struct.ptmx_ioctl* %39, %struct.ptmx_ioctl** %41, align 8
  %42 = load %struct.knote*, %struct.knote** %5, align 8
  %43 = getelementptr inbounds %struct.knote, %struct.knote* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  switch i32 %44, label %57 [
    i32 129, label %45
    i32 128, label %51
  ]

45:                                               ; preds = %30
  %46 = load %struct.ptmx_ioctl*, %struct.ptmx_ioctl** %7, align 8
  %47 = getelementptr inbounds %struct.ptmx_ioctl, %struct.ptmx_ioctl* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load %struct.knote*, %struct.knote** %5, align 8
  %50 = call i32 @KNOTE_ATTACH(i32* %48, %struct.knote* %49)
  br label %64

51:                                               ; preds = %30
  %52 = load %struct.ptmx_ioctl*, %struct.ptmx_ioctl** %7, align 8
  %53 = getelementptr inbounds %struct.ptmx_ioctl, %struct.ptmx_ioctl* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load %struct.knote*, %struct.knote** %5, align 8
  %56 = call i32 @KNOTE_ATTACH(i32* %54, %struct.knote* %55)
  br label %64

57:                                               ; preds = %30
  %58 = load %struct.knote*, %struct.knote** %5, align 8
  %59 = getelementptr inbounds %struct.knote, %struct.knote* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.knote*, %struct.knote** %5, align 8
  %62 = load %struct.tty*, %struct.tty** %6, align 8
  %63 = call i32 @panic(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %60, %struct.knote* %61, %struct.tty* %62)
  br label %64

64:                                               ; preds = %57, %51, %45
  %65 = load %struct.knote*, %struct.knote** %5, align 8
  %66 = load %struct.ptmx_ioctl*, %struct.ptmx_ioctl** %7, align 8
  %67 = load %struct.tty*, %struct.tty** %6, align 8
  %68 = call i32 @ptmx_kqops_common(%struct.knote* %65, %struct.ptmx_ioctl* %66, %struct.tty* %67)
  store i32 %68, i32* %8, align 4
  %69 = load %struct.tty*, %struct.tty** %6, align 8
  %70 = call i32 @ttyhold(%struct.tty* %69)
  %71 = load %struct.tty*, %struct.tty** %6, align 8
  %72 = call i32 @tty_unlock(%struct.tty* %71)
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %64, %26, %17
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i64 @major(i32) #1

declare dso_local i32 @knote_set_error(%struct.knote*, i32) #1

declare dso_local %struct.ptmx_ioctl* @ptmx_get_ioctl(i32, i32) #1

declare dso_local i32 @minor(i32) #1

declare dso_local i32 @tty_lock(%struct.tty*) #1

declare dso_local i32 @KNOTE_ATTACH(i32*, %struct.knote*) #1

declare dso_local i32 @panic(i8*, i32, %struct.knote*, %struct.tty*) #1

declare dso_local i32 @ptmx_kqops_common(%struct.knote*, %struct.ptmx_ioctl*, %struct.tty*) #1

declare dso_local i32 @ttyhold(%struct.tty*) #1

declare dso_local i32 @tty_unlock(%struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
