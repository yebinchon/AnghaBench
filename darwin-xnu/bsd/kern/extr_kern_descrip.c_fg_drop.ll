; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_descrip.c_fg_drop.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_descrip.c_fg_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fileproc = type { %struct.fileglob* }
%struct.fileglob = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fg_drop(%struct.fileproc* %0) #0 {
  %2 = alloca %struct.fileproc*, align 8
  %3 = alloca %struct.fileglob*, align 8
  store %struct.fileproc* %0, %struct.fileproc** %2, align 8
  %4 = load %struct.fileproc*, %struct.fileproc** %2, align 8
  %5 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %4, i32 0, i32 0
  %6 = load %struct.fileglob*, %struct.fileglob** %5, align 8
  store %struct.fileglob* %6, %struct.fileglob** %3, align 8
  %7 = load %struct.fileglob*, %struct.fileglob** %3, align 8
  %8 = getelementptr inbounds %struct.fileglob, %struct.fileglob* %7, i32 0, i32 0
  %9 = call i32 @lck_mtx_lock_spin(i32* %8)
  %10 = load %struct.fileglob*, %struct.fileglob** %3, align 8
  %11 = getelementptr inbounds %struct.fileglob, %struct.fileglob* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %11, align 4
  %14 = load %struct.fileglob*, %struct.fileglob** %3, align 8
  %15 = getelementptr inbounds %struct.fileglob, %struct.fileglob* %14, i32 0, i32 0
  %16 = call i32 @lck_mtx_unlock(i32* %15)
  ret void
}

declare dso_local i32 @lck_mtx_lock_spin(i32*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
