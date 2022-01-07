; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_subr_log.c_log_putc_locked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_subr_log.c_log_putc_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msgbuf = type { i8*, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @log_putc_locked(%struct.msgbuf* %0, i8 signext %1) #0 {
  %3 = alloca %struct.msgbuf*, align 8
  %4 = alloca i8, align 1
  store %struct.msgbuf* %0, %struct.msgbuf** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load i8, i8* %4, align 1
  %6 = load %struct.msgbuf*, %struct.msgbuf** %3, align 8
  %7 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = load %struct.msgbuf*, %struct.msgbuf** %3, align 8
  %10 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, 1
  store i64 %12, i64* %10, align 8
  %13 = getelementptr inbounds i8, i8* %8, i64 %11
  store i8 %5, i8* %13, align 1
  %14 = load %struct.msgbuf*, %struct.msgbuf** %3, align 8
  %15 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.msgbuf*, %struct.msgbuf** %3, align 8
  %18 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp sge i64 %16, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.msgbuf*, %struct.msgbuf** %3, align 8
  %23 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  br label %24

24:                                               ; preds = %21, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
