; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_sig.c_sigaltstack_kern_to_user32.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_sig.c_sigaltstack_kern_to_user32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kern_sigaltstack = type { i32, i32, i32 }
%struct.user32_sigaltstack = type { i32, i8*, i8* }

@user32_addr_t = common dso_local global i32 0, align 4
@user32_size_t = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kern_sigaltstack*, %struct.user32_sigaltstack*)* @sigaltstack_kern_to_user32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sigaltstack_kern_to_user32(%struct.kern_sigaltstack* %0, %struct.user32_sigaltstack* %1) #0 {
  %3 = alloca %struct.kern_sigaltstack*, align 8
  %4 = alloca %struct.user32_sigaltstack*, align 8
  store %struct.kern_sigaltstack* %0, %struct.kern_sigaltstack** %3, align 8
  store %struct.user32_sigaltstack* %1, %struct.user32_sigaltstack** %4, align 8
  %5 = load i32, i32* @user32_addr_t, align 4
  %6 = load %struct.kern_sigaltstack*, %struct.kern_sigaltstack** %3, align 8
  %7 = getelementptr inbounds %struct.kern_sigaltstack, %struct.kern_sigaltstack* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i8* @CAST_DOWN_EXPLICIT(i32 %5, i32 %8)
  %10 = load %struct.user32_sigaltstack*, %struct.user32_sigaltstack** %4, align 8
  %11 = getelementptr inbounds %struct.user32_sigaltstack, %struct.user32_sigaltstack* %10, i32 0, i32 2
  store i8* %9, i8** %11, align 8
  %12 = load i32, i32* @user32_size_t, align 4
  %13 = load %struct.kern_sigaltstack*, %struct.kern_sigaltstack** %3, align 8
  %14 = getelementptr inbounds %struct.kern_sigaltstack, %struct.kern_sigaltstack* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @CAST_DOWN_EXPLICIT(i32 %12, i32 %15)
  %17 = load %struct.user32_sigaltstack*, %struct.user32_sigaltstack** %4, align 8
  %18 = getelementptr inbounds %struct.user32_sigaltstack, %struct.user32_sigaltstack* %17, i32 0, i32 1
  store i8* %16, i8** %18, align 8
  %19 = load %struct.kern_sigaltstack*, %struct.kern_sigaltstack** %3, align 8
  %20 = getelementptr inbounds %struct.kern_sigaltstack, %struct.kern_sigaltstack* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.user32_sigaltstack*, %struct.user32_sigaltstack** %4, align 8
  %23 = getelementptr inbounds %struct.user32_sigaltstack, %struct.user32_sigaltstack* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  ret void
}

declare dso_local i8* @CAST_DOWN_EXPLICIT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
