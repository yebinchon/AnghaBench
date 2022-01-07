; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_arqmgr.c___ARQMPollCallback.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_arqmgr.c___ARQMPollCallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32 }

@ARQM_STACKENTRIES = common dso_local global i64 0, align 8
@__ARQMInfo = common dso_local global %struct.TYPE_3__* null, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @__ARQMPollCallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ARQMPollCallback(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %2, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %4, align 8
  store i64 0, i64* %3, align 8
  br label %5

5:                                                ; preds = %19, %1
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @ARQM_STACKENTRIES, align 8
  %8 = icmp ult i64 %6, %7
  br i1 %8, label %9, label %22

9:                                                ; preds = %5
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @__ARQMInfo, align 8
  %11 = load i64, i64* %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i64 %11
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %4, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 2
  %16 = icmp eq i32* %13, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  br label %22

18:                                               ; preds = %9
  br label %19

19:                                               ; preds = %18
  %20 = load i64, i64* %3, align 8
  %21 = add i64 %20, 1
  store i64 %21, i64* %3, align 8
  br label %5

22:                                               ; preds = %17, %5
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* @ARQM_STACKENTRIES, align 8
  %25 = icmp uge i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %33

27:                                               ; preds = %22
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store i32* null, i32** %29, align 8
  %30 = load i32, i32* @TRUE, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  br label %33

33:                                               ; preds = %27, %26
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
