; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_generic.c_selthreadclear.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_generic.c_selthreadclear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.selinfo = type { i32, %struct.waitq }
%struct.waitq = type { i32 }

@SI_INITED = common dso_local global i32 0, align 4
@SI_RECORDED = common dso_local global i32 0, align 4
@SI_COLL = common dso_local global i32 0, align 4
@SI_CLEAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @selthreadclear(%struct.selinfo* %0) #0 {
  %2 = alloca %struct.selinfo*, align 8
  %3 = alloca %struct.waitq*, align 8
  store %struct.selinfo* %0, %struct.selinfo** %2, align 8
  %4 = load %struct.selinfo*, %struct.selinfo** %2, align 8
  %5 = getelementptr inbounds %struct.selinfo, %struct.selinfo* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @SI_INITED, align 4
  %8 = and i32 %6, %7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %45

11:                                               ; preds = %1
  %12 = load %struct.selinfo*, %struct.selinfo** %2, align 8
  %13 = getelementptr inbounds %struct.selinfo, %struct.selinfo* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SI_RECORDED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %11
  %19 = load %struct.selinfo*, %struct.selinfo** %2, align 8
  %20 = call i32 @selwakeup(%struct.selinfo* %19)
  %21 = load i32, i32* @SI_RECORDED, align 4
  %22 = load i32, i32* @SI_COLL, align 4
  %23 = or i32 %21, %22
  %24 = xor i32 %23, -1
  %25 = load %struct.selinfo*, %struct.selinfo** %2, align 8
  %26 = getelementptr inbounds %struct.selinfo, %struct.selinfo* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %18, %11
  %30 = load i32, i32* @SI_CLEAR, align 4
  %31 = load %struct.selinfo*, %struct.selinfo** %2, align 8
  %32 = getelementptr inbounds %struct.selinfo, %struct.selinfo* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load i32, i32* @SI_INITED, align 4
  %36 = xor i32 %35, -1
  %37 = load %struct.selinfo*, %struct.selinfo** %2, align 8
  %38 = getelementptr inbounds %struct.selinfo, %struct.selinfo* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load %struct.selinfo*, %struct.selinfo** %2, align 8
  %42 = getelementptr inbounds %struct.selinfo, %struct.selinfo* %41, i32 0, i32 1
  store %struct.waitq* %42, %struct.waitq** %3, align 8
  %43 = load %struct.waitq*, %struct.waitq** %3, align 8
  %44 = call i32 @waitq_deinit(%struct.waitq* %43)
  br label %45

45:                                               ; preds = %29, %10
  ret void
}

declare dso_local i32 @selwakeup(%struct.selinfo*) #1

declare dso_local i32 @waitq_deinit(%struct.waitq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
