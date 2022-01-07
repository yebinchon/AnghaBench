; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_usrreq.c_unp_discard.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_usrreq.c_unp_discard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fileglob = type { i32 }
%struct.fileproc = type { i32 }

@unp_disposed = common dso_local global i32 0, align 4
@FG_RMMSGQ = common dso_local global i32 0, align 4
@unp_rights = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fileglob*, i8*)* @unp_discard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unp_discard(%struct.fileglob* %0, i8* %1) #0 {
  %3 = alloca %struct.fileglob*, align 8
  %4 = alloca i8*, align 8
  store %struct.fileglob* %0, %struct.fileglob** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = call i8* (...) @current_proc()
  store i8* %8, i8** %4, align 8
  br label %9

9:                                                ; preds = %7, %2
  %10 = call i32 @OSAddAtomic(i32 1, i32* @unp_disposed)
  %11 = load %struct.fileglob*, %struct.fileglob** %3, align 8
  %12 = call i64 @fg_removeuipc_mark(%struct.fileglob* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %9
  %15 = load %struct.fileglob*, %struct.fileglob** %3, align 8
  %16 = getelementptr inbounds %struct.fileglob, %struct.fileglob* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @FG_RMMSGQ, align 4
  %19 = and i32 %17, %18
  %20 = call i32 @VERIFY(i32 %19)
  %21 = load %struct.fileglob*, %struct.fileglob** %3, align 8
  %22 = call i32 @fg_removeuipc(%struct.fileglob* %21)
  br label %23

23:                                               ; preds = %14, %9
  %24 = call i32 @OSAddAtomic(i32 -1, i32* @unp_rights)
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @proc_fdlock(i8* %25)
  %27 = load %struct.fileglob*, %struct.fileglob** %3, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @closef_locked(%struct.fileproc* null, %struct.fileglob* %27, i8* %28)
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @proc_fdunlock(i8* %30)
  ret void
}

declare dso_local i8* @current_proc(...) #1

declare dso_local i32 @OSAddAtomic(i32, i32*) #1

declare dso_local i64 @fg_removeuipc_mark(%struct.fileglob*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @fg_removeuipc(%struct.fileglob*) #1

declare dso_local i32 @proc_fdlock(i8*) #1

declare dso_local i32 @closef_locked(%struct.fileproc*, %struct.fileglob*, i8*) #1

declare dso_local i32 @proc_fdunlock(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
