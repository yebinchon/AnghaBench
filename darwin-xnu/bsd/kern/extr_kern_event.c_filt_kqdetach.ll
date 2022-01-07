; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_filt_kqdetach.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_filt_kqdetach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.kqfile = type { %struct.TYPE_4__, %struct.kqueue }
%struct.TYPE_4__ = type { i32 }
%struct.kqueue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.knote*)* @filt_kqdetach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filt_kqdetach(%struct.knote* %0) #0 {
  %2 = alloca %struct.knote*, align 8
  %3 = alloca %struct.kqfile*, align 8
  %4 = alloca %struct.kqueue*, align 8
  store %struct.knote* %0, %struct.knote** %2, align 8
  %5 = load %struct.knote*, %struct.knote** %2, align 8
  %6 = getelementptr inbounds %struct.knote, %struct.knote* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.kqfile*
  store %struct.kqfile* %10, %struct.kqfile** %3, align 8
  %11 = load %struct.kqfile*, %struct.kqfile** %3, align 8
  %12 = getelementptr inbounds %struct.kqfile, %struct.kqfile* %11, i32 0, i32 1
  store %struct.kqueue* %12, %struct.kqueue** %4, align 8
  %13 = load %struct.kqueue*, %struct.kqueue** %4, align 8
  %14 = call i32 @kqlock(%struct.kqueue* %13)
  %15 = load %struct.kqfile*, %struct.kqfile** %3, align 8
  %16 = getelementptr inbounds %struct.kqfile, %struct.kqfile* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.knote*, %struct.knote** %2, align 8
  %19 = call i32 @KNOTE_DETACH(i32* %17, %struct.knote* %18)
  %20 = load %struct.kqueue*, %struct.kqueue** %4, align 8
  %21 = call i32 @kqunlock(%struct.kqueue* %20)
  ret void
}

declare dso_local i32 @kqlock(%struct.kqueue*) #1

declare dso_local i32 @KNOTE_DETACH(i32*, %struct.knote*) #1

declare dso_local i32 @kqunlock(%struct.kqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
