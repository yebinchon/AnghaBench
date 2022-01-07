; ModuleID = '/home/carl/AnghaBench/RetroArch/wiiu/extr_main.c___init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wiiu/extr_main.c___init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__CTOR_LIST__ = external dso_local constant void ()*, align 8
@__CTOR_END__ = external dso_local constant void ()*, align 8

; Function Attrs: noinline nounwind optnone uwtable
define weak dso_local void @__init() #0 {
  %1 = alloca void ()**, align 8
  store void ()** @__CTOR_LIST__, void ()*** %1, align 8
  br label %2

2:                                                ; preds = %5, %0
  %3 = load void ()**, void ()*** %1, align 8
  %4 = icmp ult void ()** %3, @__CTOR_END__
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = load void ()**, void ()*** %1, align 8
  %7 = getelementptr inbounds void ()*, void ()** %6, i32 1
  store void ()** %7, void ()*** %1, align 8
  %8 = load void ()*, void ()** %6, align 8
  call void %8()
  br label %2

9:                                                ; preds = %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
