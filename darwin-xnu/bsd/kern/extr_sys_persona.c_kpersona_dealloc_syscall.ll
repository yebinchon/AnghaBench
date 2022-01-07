; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_persona.c_kpersona_dealloc_syscall.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_persona.c_kpersona_dealloc_syscall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.persona = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @kpersona_dealloc_syscall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kpersona_dealloc_syscall(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.persona*, align 8
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %7 = call i32 (...) @kauth_cred_get()
  %8 = call i32 @kauth_cred_issuser(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @EPERM, align 4
  store i32 %11, i32* %2, align 4
  br label %32

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @copyin(i32 %13, i32* %5, i32 4)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %32

19:                                               ; preds = %12
  %20 = load i32, i32* %5, align 4
  %21 = call %struct.persona* @persona_lookup_and_invalidate(i32 %20)
  store %struct.persona* %21, %struct.persona** %6, align 8
  %22 = load %struct.persona*, %struct.persona** %6, align 8
  %23 = icmp ne %struct.persona* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @ESRCH, align 4
  store i32 %25, i32* %2, align 4
  br label %32

26:                                               ; preds = %19
  %27 = load %struct.persona*, %struct.persona** %6, align 8
  %28 = call i32 @persona_put(%struct.persona* %27)
  %29 = load %struct.persona*, %struct.persona** %6, align 8
  %30 = call i32 @persona_put(%struct.persona* %29)
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %26, %24, %17, %10
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @kauth_cred_issuser(i32) #1

declare dso_local i32 @kauth_cred_get(...) #1

declare dso_local i32 @copyin(i32, i32*, i32) #1

declare dso_local %struct.persona* @persona_lookup_and_invalidate(i32) #1

declare dso_local i32 @persona_put(%struct.persona*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
