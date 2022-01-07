; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty_ptmx.c_ptsd_kqfilter.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty_ptmx.c_ptsd_kqfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.knote = type { i32, %struct.tty*, i32 }
%struct.tty = type { i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ptmx_ioctl = type { %struct.tty* }

@cdevsw = common dso_local global %struct.TYPE_6__* null, align 8
@ptsopen = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@TS_ISOPEN = common dso_local global i32 0, align 4
@EVFILTID_PTSD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"ptsd kevent: unexpected filter: %d, kn = %p, tty = %p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ptsd_kqfilter(i32 %0, %struct.knote* %1) #0 {
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
  %15 = load i64, i64* @ptsopen, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.knote*, %struct.knote** %5, align 8
  %19 = load i32, i32* @ENODEV, align 4
  %20 = call i32 @knote_set_error(%struct.knote* %18, i32 %19)
  store i32 0, i32* %3, align 4
  br label %79

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
  br label %79

30:                                               ; preds = %21
  %31 = load %struct.ptmx_ioctl*, %struct.ptmx_ioctl** %7, align 8
  %32 = getelementptr inbounds %struct.ptmx_ioctl, %struct.ptmx_ioctl* %31, i32 0, i32 0
  %33 = load %struct.tty*, %struct.tty** %32, align 8
  store %struct.tty* %33, %struct.tty** %6, align 8
  %34 = load %struct.tty*, %struct.tty** %6, align 8
  %35 = call i32 @tty_lock(%struct.tty* %34)
  %36 = load %struct.tty*, %struct.tty** %6, align 8
  %37 = getelementptr inbounds %struct.tty, %struct.tty* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @TS_ISOPEN, align 4
  %40 = and i32 %38, %39
  %41 = call i32 @assert(i32 %40)
  %42 = load i32, i32* @EVFILTID_PTSD, align 4
  %43 = load %struct.knote*, %struct.knote** %5, align 8
  %44 = getelementptr inbounds %struct.knote, %struct.knote* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load %struct.tty*, %struct.tty** %6, align 8
  %46 = call i32 @ttyhold(%struct.tty* %45)
  %47 = load %struct.tty*, %struct.tty** %6, align 8
  %48 = load %struct.knote*, %struct.knote** %5, align 8
  %49 = getelementptr inbounds %struct.knote, %struct.knote* %48, i32 0, i32 1
  store %struct.tty* %47, %struct.tty** %49, align 8
  %50 = load %struct.knote*, %struct.knote** %5, align 8
  %51 = getelementptr inbounds %struct.knote, %struct.knote* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  switch i32 %52, label %65 [
    i32 129, label %53
    i32 128, label %59
  ]

53:                                               ; preds = %30
  %54 = load %struct.tty*, %struct.tty** %6, align 8
  %55 = getelementptr inbounds %struct.tty, %struct.tty* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load %struct.knote*, %struct.knote** %5, align 8
  %58 = call i32 @KNOTE_ATTACH(i32* %56, %struct.knote* %57)
  br label %72

59:                                               ; preds = %30
  %60 = load %struct.tty*, %struct.tty** %6, align 8
  %61 = getelementptr inbounds %struct.tty, %struct.tty* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load %struct.knote*, %struct.knote** %5, align 8
  %64 = call i32 @KNOTE_ATTACH(i32* %62, %struct.knote* %63)
  br label %72

65:                                               ; preds = %30
  %66 = load %struct.knote*, %struct.knote** %5, align 8
  %67 = getelementptr inbounds %struct.knote, %struct.knote* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.knote*, %struct.knote** %5, align 8
  %70 = load %struct.tty*, %struct.tty** %6, align 8
  %71 = call i32 @panic(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %68, %struct.knote* %69, %struct.tty* %70)
  br label %72

72:                                               ; preds = %65, %59, %53
  %73 = load %struct.knote*, %struct.knote** %5, align 8
  %74 = load %struct.tty*, %struct.tty** %6, align 8
  %75 = call i32 @ptsd_kqops_common(%struct.knote* %73, %struct.tty* %74)
  store i32 %75, i32* %8, align 4
  %76 = load %struct.tty*, %struct.tty** %6, align 8
  %77 = call i32 @tty_unlock(%struct.tty* %76)
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %72, %26, %17
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i64 @major(i32) #1

declare dso_local i32 @knote_set_error(%struct.knote*, i32) #1

declare dso_local %struct.ptmx_ioctl* @ptmx_get_ioctl(i32, i32) #1

declare dso_local i32 @minor(i32) #1

declare dso_local i32 @tty_lock(%struct.tty*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ttyhold(%struct.tty*) #1

declare dso_local i32 @KNOTE_ATTACH(i32*, %struct.knote*) #1

declare dso_local i32 @panic(i8*, i32, %struct.knote*, %struct.tty*) #1

declare dso_local i32 @ptsd_kqops_common(%struct.knote*, %struct.tty*) #1

declare dso_local i32 @tty_unlock(%struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
