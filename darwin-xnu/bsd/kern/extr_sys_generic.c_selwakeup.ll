; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_generic.c_selwakeup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_generic.c_selwakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.selinfo = type { i32, i32 }

@SI_INITED = common dso_local global i32 0, align 4
@SI_COLL = common dso_local global i32 0, align 4
@nselcoll = common dso_local global i32 0, align 4
@SI_RECORDED = common dso_local global i32 0, align 4
@NO_EVENT64 = common dso_local global i32 0, align 4
@THREAD_AWAKENED = common dso_local global i32 0, align 4
@WAITQ_ALL_PRIORITIES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @selwakeup(%struct.selinfo* %0) #0 {
  %2 = alloca %struct.selinfo*, align 8
  store %struct.selinfo* %0, %struct.selinfo** %2, align 8
  %3 = load %struct.selinfo*, %struct.selinfo** %2, align 8
  %4 = getelementptr inbounds %struct.selinfo, %struct.selinfo* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @SI_INITED, align 4
  %7 = and i32 %5, %6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %46

10:                                               ; preds = %1
  %11 = load %struct.selinfo*, %struct.selinfo** %2, align 8
  %12 = getelementptr inbounds %struct.selinfo, %struct.selinfo* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @SI_COLL, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %10
  %18 = load i32, i32* @nselcoll, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* @nselcoll, align 4
  %20 = load i32, i32* @SI_COLL, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.selinfo*, %struct.selinfo** %2, align 8
  %23 = getelementptr inbounds %struct.selinfo, %struct.selinfo* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %17, %10
  %27 = load %struct.selinfo*, %struct.selinfo** %2, align 8
  %28 = getelementptr inbounds %struct.selinfo, %struct.selinfo* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @SI_RECORDED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %26
  %34 = load %struct.selinfo*, %struct.selinfo** %2, align 8
  %35 = getelementptr inbounds %struct.selinfo, %struct.selinfo* %34, i32 0, i32 1
  %36 = load i32, i32* @NO_EVENT64, align 4
  %37 = load i32, i32* @THREAD_AWAKENED, align 4
  %38 = load i32, i32* @WAITQ_ALL_PRIORITIES, align 4
  %39 = call i32 @waitq_wakeup64_all(i32* %35, i32 %36, i32 %37, i32 %38)
  %40 = load i32, i32* @SI_RECORDED, align 4
  %41 = xor i32 %40, -1
  %42 = load %struct.selinfo*, %struct.selinfo** %2, align 8
  %43 = getelementptr inbounds %struct.selinfo, %struct.selinfo* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %9, %33, %26
  ret void
}

declare dso_local i32 @waitq_wakeup64_all(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
