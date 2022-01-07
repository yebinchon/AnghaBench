; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_knote_attach.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_knote_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.klist = type { i32 }
%struct.knote = type { i32 }

@kn_selnext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @knote_attach(%struct.klist* %0, %struct.knote* %1) #0 {
  %3 = alloca %struct.klist*, align 8
  %4 = alloca %struct.knote*, align 8
  %5 = alloca i32, align 4
  store %struct.klist* %0, %struct.klist** %3, align 8
  store %struct.knote* %1, %struct.knote** %4, align 8
  %6 = load %struct.klist*, %struct.klist** %3, align 8
  %7 = call i32 @SLIST_EMPTY(%struct.klist* %6)
  store i32 %7, i32* %5, align 4
  %8 = load %struct.klist*, %struct.klist** %3, align 8
  %9 = load %struct.knote*, %struct.knote** %4, align 8
  %10 = load i32, i32* @kn_selnext, align 4
  %11 = call i32 @SLIST_INSERT_HEAD(%struct.klist* %8, %struct.knote* %9, i32 %10)
  %12 = load i32, i32* %5, align 4
  ret i32 %12
}

declare dso_local i32 @SLIST_EMPTY(%struct.klist*) #1

declare dso_local i32 @SLIST_INSERT_HEAD(%struct.klist*, %struct.knote*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
