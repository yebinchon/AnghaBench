; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_sig.c_sigaction_kern_to_user64.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_sig.c_sigaction_kern_to_user64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kern_sigaction = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.user64_sigaction = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kern_sigaction*, %struct.user64_sigaction*)* @sigaction_kern_to_user64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sigaction_kern_to_user64(%struct.kern_sigaction* %0, %struct.user64_sigaction* %1) #0 {
  %3 = alloca %struct.kern_sigaction*, align 8
  %4 = alloca %struct.user64_sigaction*, align 8
  store %struct.kern_sigaction* %0, %struct.kern_sigaction** %3, align 8
  store %struct.user64_sigaction* %1, %struct.user64_sigaction** %4, align 8
  %5 = load %struct.kern_sigaction*, %struct.kern_sigaction** %3, align 8
  %6 = getelementptr inbounds %struct.kern_sigaction, %struct.kern_sigaction* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.user64_sigaction*, %struct.user64_sigaction** %4, align 8
  %10 = getelementptr inbounds %struct.user64_sigaction, %struct.user64_sigaction* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i32 %8, i32* %11, align 4
  %12 = load %struct.kern_sigaction*, %struct.kern_sigaction** %3, align 8
  %13 = getelementptr inbounds %struct.kern_sigaction, %struct.kern_sigaction* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.user64_sigaction*, %struct.user64_sigaction** %4, align 8
  %16 = getelementptr inbounds %struct.user64_sigaction, %struct.user64_sigaction* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.kern_sigaction*, %struct.kern_sigaction** %3, align 8
  %18 = getelementptr inbounds %struct.kern_sigaction, %struct.kern_sigaction* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.user64_sigaction*, %struct.user64_sigaction** %4, align 8
  %21 = getelementptr inbounds %struct.user64_sigaction, %struct.user64_sigaction* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
