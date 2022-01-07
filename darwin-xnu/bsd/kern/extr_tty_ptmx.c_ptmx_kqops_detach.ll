; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty_ptmx.c_ptmx_kqops_detach.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty_ptmx.c_ptmx_kqops_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i32, %struct.ptmx_ioctl* }
%struct.ptmx_ioctl = type { %struct.TYPE_3__, %struct.TYPE_4__, %struct.tty* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.tty = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"invalid knote %p detach, filter: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.knote*)* @ptmx_kqops_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ptmx_kqops_detach(%struct.knote* %0) #0 {
  %2 = alloca %struct.knote*, align 8
  %3 = alloca %struct.ptmx_ioctl*, align 8
  %4 = alloca %struct.tty*, align 8
  store %struct.knote* %0, %struct.knote** %2, align 8
  %5 = load %struct.knote*, %struct.knote** %2, align 8
  %6 = getelementptr inbounds %struct.knote, %struct.knote* %5, i32 0, i32 1
  %7 = load %struct.ptmx_ioctl*, %struct.ptmx_ioctl** %6, align 8
  store %struct.ptmx_ioctl* %7, %struct.ptmx_ioctl** %3, align 8
  %8 = load %struct.ptmx_ioctl*, %struct.ptmx_ioctl** %3, align 8
  %9 = getelementptr inbounds %struct.ptmx_ioctl, %struct.ptmx_ioctl* %8, i32 0, i32 2
  %10 = load %struct.tty*, %struct.tty** %9, align 8
  store %struct.tty* %10, %struct.tty** %4, align 8
  %11 = load %struct.tty*, %struct.tty** %4, align 8
  %12 = icmp ne %struct.tty* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.tty*, %struct.tty** %4, align 8
  %16 = call i32 @tty_lock(%struct.tty* %15)
  %17 = load %struct.knote*, %struct.knote** %2, align 8
  %18 = getelementptr inbounds %struct.knote, %struct.knote* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %32 [
    i32 129, label %20
    i32 128, label %26
  ]

20:                                               ; preds = %1
  %21 = load %struct.ptmx_ioctl*, %struct.ptmx_ioctl** %3, align 8
  %22 = getelementptr inbounds %struct.ptmx_ioctl, %struct.ptmx_ioctl* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.knote*, %struct.knote** %2, align 8
  %25 = call i32 @KNOTE_DETACH(i32* %23, %struct.knote* %24)
  br label %38

26:                                               ; preds = %1
  %27 = load %struct.ptmx_ioctl*, %struct.ptmx_ioctl** %3, align 8
  %28 = getelementptr inbounds %struct.ptmx_ioctl, %struct.ptmx_ioctl* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load %struct.knote*, %struct.knote** %2, align 8
  %31 = call i32 @KNOTE_DETACH(i32* %29, %struct.knote* %30)
  br label %38

32:                                               ; preds = %1
  %33 = load %struct.knote*, %struct.knote** %2, align 8
  %34 = load %struct.knote*, %struct.knote** %2, align 8
  %35 = getelementptr inbounds %struct.knote, %struct.knote* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @panic(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.knote* %33, i32 %36)
  br label %38

38:                                               ; preds = %32, %26, %20
  %39 = load %struct.knote*, %struct.knote** %2, align 8
  %40 = getelementptr inbounds %struct.knote, %struct.knote* %39, i32 0, i32 1
  store %struct.ptmx_ioctl* null, %struct.ptmx_ioctl** %40, align 8
  %41 = load %struct.tty*, %struct.tty** %4, align 8
  %42 = call i32 @tty_unlock(%struct.tty* %41)
  %43 = load %struct.tty*, %struct.tty** %4, align 8
  %44 = call i32 @ttyfree(%struct.tty* %43)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @tty_lock(%struct.tty*) #1

declare dso_local i32 @KNOTE_DETACH(i32*, %struct.knote*) #1

declare dso_local i32 @panic(i8*, %struct.knote*, i32) #1

declare dso_local i32 @tty_unlock(%struct.tty*) #1

declare dso_local i32 @ttyfree(%struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
