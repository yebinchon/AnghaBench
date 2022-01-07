; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/libproc/extr_libproc.c_proc_set_owner_vmpressure.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/libproc/extr_libproc.c_proc_set_owner_vmpressure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PROC_INFO_CALL_SETCONTROL = common dso_local global i32 0, align 4
@PROC_SELFSET_VMRSRCOWNER = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_set_owner_vmpressure() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @PROC_INFO_CALL_SETCONTROL, align 4
  %4 = call i32 (...) @getpid()
  %5 = load i32, i32* @PROC_SELFSET_VMRSRCOWNER, align 4
  %6 = call i32 @__proc_info(i32 %3, i32 %4, i32 %5, i32 0, i32* null, i32 0)
  store i32 %6, i32* %2, align 4
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = load i32, i32* @errno, align 4
  store i32 %9, i32* %1, align 4
  br label %11

10:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %11

11:                                               ; preds = %10, %8
  %12 = load i32, i32* %1, align 4
  ret i32 %12
}

declare dso_local i32 @__proc_info(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @getpid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
