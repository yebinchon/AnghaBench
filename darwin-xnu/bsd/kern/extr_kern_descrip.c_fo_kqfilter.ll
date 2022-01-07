; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_descrip.c_fo_kqfilter.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_descrip.c_fo_kqfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fileproc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.knote = type { i32 }
%struct.kevent_internal_s = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fo_kqfilter(%struct.fileproc* %0, %struct.knote* %1, %struct.kevent_internal_s* %2, i32 %3) #0 {
  %5 = alloca %struct.fileproc*, align 8
  %6 = alloca %struct.knote*, align 8
  %7 = alloca %struct.kevent_internal_s*, align 8
  %8 = alloca i32, align 4
  store %struct.fileproc* %0, %struct.fileproc** %5, align 8
  store %struct.knote* %1, %struct.knote** %6, align 8
  store %struct.kevent_internal_s* %2, %struct.kevent_internal_s** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.fileproc*, %struct.fileproc** %5, align 8
  %10 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = bitcast {}** %12 to i32 (%struct.fileproc*, %struct.knote*, %struct.kevent_internal_s*, i32)**
  %14 = load i32 (%struct.fileproc*, %struct.knote*, %struct.kevent_internal_s*, i32)*, i32 (%struct.fileproc*, %struct.knote*, %struct.kevent_internal_s*, i32)** %13, align 8
  %15 = load %struct.fileproc*, %struct.fileproc** %5, align 8
  %16 = load %struct.knote*, %struct.knote** %6, align 8
  %17 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 %14(%struct.fileproc* %15, %struct.knote* %16, %struct.kevent_internal_s* %17, i32 %18)
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
