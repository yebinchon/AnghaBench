; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_pcb.c_inp_restricted_recv.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_pcb.c_inp_restricted_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { i32 }
%struct.ifnet = type { i8* }
%struct.TYPE_3__ = type { i32 }

@TRUE = common dso_local global i64 0, align 8
@log_restricted = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"pid %d (%s) is unable to receive packets on %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @inp_restricted_recv(%struct.inpcb* %0, %struct.ifnet* %1) #0 {
  %3 = alloca %struct.inpcb*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i64, align 8
  store %struct.inpcb* %0, %struct.inpcb** %3, align 8
  store %struct.ifnet* %1, %struct.ifnet** %4, align 8
  %6 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %7 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %8 = call i64 @_inp_restricted_recv(%struct.inpcb* %6, %struct.ifnet* %7)
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @TRUE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %2
  %13 = load i64, i64* @log_restricted, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %12
  %16 = call %struct.TYPE_3__* (...) @current_proc()
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.TYPE_3__* (...) @current_proc()
  %20 = call i8* @proc_best_name(%struct.TYPE_3__* %19)
  %21 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %22 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %18, i8* %20, i8* %23)
  br label %25

25:                                               ; preds = %15, %12, %2
  %26 = load i64, i64* %5, align 8
  ret i64 %26
}

declare dso_local i64 @_inp_restricted_recv(%struct.inpcb*, %struct.ifnet*) #1

declare dso_local i32 @printf(i8*, i32, i8*, i8*) #1

declare dso_local %struct.TYPE_3__* @current_proc(...) #1

declare dso_local i8* @proc_best_name(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
