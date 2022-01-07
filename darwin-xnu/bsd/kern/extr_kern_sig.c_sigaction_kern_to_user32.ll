; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_sig.c_sigaction_kern_to_user32.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_sig.c_sigaction_kern_to_user32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kern_sigaction = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.user32_sigaction = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@user32_addr_t = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kern_sigaction*, %struct.user32_sigaction*)* @sigaction_kern_to_user32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sigaction_kern_to_user32(%struct.kern_sigaction* %0, %struct.user32_sigaction* %1) #0 {
  %3 = alloca %struct.kern_sigaction*, align 8
  %4 = alloca %struct.user32_sigaction*, align 8
  store %struct.kern_sigaction* %0, %struct.kern_sigaction** %3, align 8
  store %struct.user32_sigaction* %1, %struct.user32_sigaction** %4, align 8
  %5 = load i32, i32* @user32_addr_t, align 4
  %6 = load %struct.kern_sigaction*, %struct.kern_sigaction** %3, align 8
  %7 = getelementptr inbounds %struct.kern_sigaction, %struct.kern_sigaction* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @CAST_DOWN_EXPLICIT(i32 %5, i32 %9)
  %11 = load %struct.user32_sigaction*, %struct.user32_sigaction** %4, align 8
  %12 = getelementptr inbounds %struct.user32_sigaction, %struct.user32_sigaction* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i32 %10, i32* %13, align 4
  %14 = load %struct.kern_sigaction*, %struct.kern_sigaction** %3, align 8
  %15 = getelementptr inbounds %struct.kern_sigaction, %struct.kern_sigaction* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.user32_sigaction*, %struct.user32_sigaction** %4, align 8
  %18 = getelementptr inbounds %struct.user32_sigaction, %struct.user32_sigaction* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.kern_sigaction*, %struct.kern_sigaction** %3, align 8
  %20 = getelementptr inbounds %struct.kern_sigaction, %struct.kern_sigaction* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.user32_sigaction*, %struct.user32_sigaction** %4, align 8
  %23 = getelementptr inbounds %struct.user32_sigaction, %struct.user32_sigaction* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  ret void
}

declare dso_local i32 @CAST_DOWN_EXPLICIT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
