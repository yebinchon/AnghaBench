; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty_ptmx.c_ptsd_kqops_detach.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty_ptmx.c_ptsd_kqops_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i32, %struct.tty* }
%struct.tty = type { i32, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@TS_ISOPEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"invalid knote %p detach, filter: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.knote*)* @ptsd_kqops_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ptsd_kqops_detach(%struct.knote* %0) #0 {
  %2 = alloca %struct.knote*, align 8
  %3 = alloca %struct.tty*, align 8
  store %struct.knote* %0, %struct.knote** %2, align 8
  %4 = load %struct.knote*, %struct.knote** %2, align 8
  %5 = getelementptr inbounds %struct.knote, %struct.knote* %4, i32 0, i32 1
  %6 = load %struct.tty*, %struct.tty** %5, align 8
  store %struct.tty* %6, %struct.tty** %3, align 8
  %7 = load %struct.tty*, %struct.tty** %3, align 8
  %8 = icmp ne %struct.tty* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.tty*, %struct.tty** %3, align 8
  %12 = call i32 @tty_lock(%struct.tty* %11)
  %13 = load %struct.tty*, %struct.tty** %3, align 8
  %14 = getelementptr inbounds %struct.tty, %struct.tty* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @TS_ISOPEN, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %42

19:                                               ; preds = %1
  %20 = load %struct.knote*, %struct.knote** %2, align 8
  %21 = getelementptr inbounds %struct.knote, %struct.knote* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %35 [
    i32 129, label %23
    i32 128, label %29
  ]

23:                                               ; preds = %19
  %24 = load %struct.tty*, %struct.tty** %3, align 8
  %25 = getelementptr inbounds %struct.tty, %struct.tty* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.knote*, %struct.knote** %2, align 8
  %28 = call i32 @KNOTE_DETACH(i32* %26, %struct.knote* %27)
  br label %41

29:                                               ; preds = %19
  %30 = load %struct.tty*, %struct.tty** %3, align 8
  %31 = getelementptr inbounds %struct.tty, %struct.tty* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load %struct.knote*, %struct.knote** %2, align 8
  %34 = call i32 @KNOTE_DETACH(i32* %32, %struct.knote* %33)
  br label %41

35:                                               ; preds = %19
  %36 = load %struct.knote*, %struct.knote** %2, align 8
  %37 = load %struct.knote*, %struct.knote** %2, align 8
  %38 = getelementptr inbounds %struct.knote, %struct.knote* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @panic(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.knote* %36, i32 %39)
  br label %41

41:                                               ; preds = %35, %29, %23
  br label %42

42:                                               ; preds = %41, %1
  %43 = load %struct.knote*, %struct.knote** %2, align 8
  %44 = getelementptr inbounds %struct.knote, %struct.knote* %43, i32 0, i32 1
  store %struct.tty* null, %struct.tty** %44, align 8
  %45 = load %struct.tty*, %struct.tty** %3, align 8
  %46 = call i32 @tty_unlock(%struct.tty* %45)
  %47 = load %struct.tty*, %struct.tty** %3, align 8
  %48 = call i32 @ttyfree(%struct.tty* %47)
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
