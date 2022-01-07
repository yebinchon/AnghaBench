; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty.c_filt_ttydetach.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty.c_filt_ttydetach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i32* }
%struct.tty = type { %struct.selinfo, %struct.selinfo }
%struct.selinfo = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.knote*)* @filt_ttydetach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filt_ttydetach(%struct.knote* %0) #0 {
  %2 = alloca %struct.knote*, align 8
  %3 = alloca %struct.tty*, align 8
  %4 = alloca %struct.selinfo*, align 8
  store %struct.knote* %0, %struct.knote** %2, align 8
  %5 = load %struct.knote*, %struct.knote** %2, align 8
  %6 = call %struct.tty* @tty_lock_from_knote(%struct.knote* %5)
  store %struct.tty* %6, %struct.tty** %3, align 8
  %7 = load %struct.tty*, %struct.tty** %3, align 8
  %8 = icmp ne %struct.tty* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load %struct.knote*, %struct.knote** %2, align 8
  %11 = load i32, i32* @ENOENT, align 4
  %12 = call i32 @knote_set_error(%struct.knote* %10, i32 %11)
  br label %33

13:                                               ; preds = %1
  store %struct.selinfo* null, %struct.selinfo** %4, align 8
  %14 = load %struct.knote*, %struct.knote** %2, align 8
  %15 = call i32 @knote_get_seltype(%struct.knote* %14)
  switch i32 %15, label %22 [
    i32 129, label %16
    i32 128, label %19
  ]

16:                                               ; preds = %13
  %17 = load %struct.tty*, %struct.tty** %3, align 8
  %18 = getelementptr inbounds %struct.tty, %struct.tty* %17, i32 0, i32 1
  store %struct.selinfo* %18, %struct.selinfo** %4, align 8
  br label %22

19:                                               ; preds = %13
  %20 = load %struct.tty*, %struct.tty** %3, align 8
  %21 = getelementptr inbounds %struct.tty, %struct.tty* %20, i32 0, i32 0
  store %struct.selinfo* %21, %struct.selinfo** %4, align 8
  br label %22

22:                                               ; preds = %13, %19, %16
  %23 = load %struct.selinfo*, %struct.selinfo** %4, align 8
  %24 = getelementptr inbounds %struct.selinfo, %struct.selinfo* %23, i32 0, i32 0
  %25 = load %struct.knote*, %struct.knote** %2, align 8
  %26 = call i32 @KNOTE_DETACH(i32* %24, %struct.knote* %25)
  %27 = load %struct.knote*, %struct.knote** %2, align 8
  %28 = getelementptr inbounds %struct.knote, %struct.knote* %27, i32 0, i32 0
  store i32* null, i32** %28, align 8
  %29 = load %struct.tty*, %struct.tty** %3, align 8
  %30 = call i32 @tty_unlock(%struct.tty* %29)
  %31 = load %struct.tty*, %struct.tty** %3, align 8
  %32 = call i32 @ttyfree(%struct.tty* %31)
  br label %33

33:                                               ; preds = %22, %9
  ret void
}

declare dso_local %struct.tty* @tty_lock_from_knote(%struct.knote*) #1

declare dso_local i32 @knote_set_error(%struct.knote*, i32) #1

declare dso_local i32 @knote_get_seltype(%struct.knote*) #1

declare dso_local i32 @KNOTE_DETACH(i32*, %struct.knote*) #1

declare dso_local i32 @tty_unlock(%struct.tty*) #1

declare dso_local i32 @ttyfree(%struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
