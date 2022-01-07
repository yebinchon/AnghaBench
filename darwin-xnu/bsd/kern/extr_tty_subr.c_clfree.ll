; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty_subr.c_clfree.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty_subr.c_clfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clist = type { i32*, i32*, i32 }

@M_TTYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clfree(%struct.clist* %0) #0 {
  %2 = alloca %struct.clist*, align 8
  store %struct.clist* %0, %struct.clist** %2, align 8
  %3 = load %struct.clist*, %struct.clist** %2, align 8
  %4 = getelementptr inbounds %struct.clist, %struct.clist* %3, i32 0, i32 1
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = load %struct.clist*, %struct.clist** %2, align 8
  %9 = getelementptr inbounds %struct.clist, %struct.clist* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = load %struct.clist*, %struct.clist** %2, align 8
  %12 = getelementptr inbounds %struct.clist, %struct.clist* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @M_TTYS, align 4
  %15 = call i32 @FREE_ZONE(i32* %10, i32 %13, i32 %14)
  br label %16

16:                                               ; preds = %7, %1
  %17 = load %struct.clist*, %struct.clist** %2, align 8
  %18 = getelementptr inbounds %struct.clist, %struct.clist* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %16
  %22 = load %struct.clist*, %struct.clist** %2, align 8
  %23 = getelementptr inbounds %struct.clist, %struct.clist* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.clist*, %struct.clist** %2, align 8
  %26 = getelementptr inbounds %struct.clist, %struct.clist* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @QMEM(i32 %27)
  %29 = load i32, i32* @M_TTYS, align 4
  %30 = call i32 @FREE_ZONE(i32* %24, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %21, %16
  %32 = load %struct.clist*, %struct.clist** %2, align 8
  %33 = getelementptr inbounds %struct.clist, %struct.clist* %32, i32 0, i32 0
  store i32* null, i32** %33, align 8
  %34 = load %struct.clist*, %struct.clist** %2, align 8
  %35 = getelementptr inbounds %struct.clist, %struct.clist* %34, i32 0, i32 1
  store i32* null, i32** %35, align 8
  ret void
}

declare dso_local i32 @FREE_ZONE(i32*, i32, i32) #1

declare dso_local i32 @QMEM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
