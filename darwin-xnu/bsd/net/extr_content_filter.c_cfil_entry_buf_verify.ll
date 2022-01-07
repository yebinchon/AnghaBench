; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_entry_buf_verify.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_entry_buf_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfe_buf = type { i64, i64, i64, %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfe_buf*)* @cfil_entry_buf_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfil_entry_buf_verify(%struct.cfe_buf* %0) #0 {
  %2 = alloca %struct.cfe_buf*, align 8
  store %struct.cfe_buf* %0, %struct.cfe_buf** %2, align 8
  %3 = load %struct.cfe_buf*, %struct.cfe_buf** %2, align 8
  %4 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %3, i32 0, i32 3
  %5 = call i32 @CFIL_QUEUE_VERIFY(%struct.TYPE_2__* %4)
  %6 = load %struct.cfe_buf*, %struct.cfe_buf** %2, align 8
  %7 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %6, i32 0, i32 4
  %8 = call i32 @CFIL_QUEUE_VERIFY(%struct.TYPE_2__* %7)
  %9 = load %struct.cfe_buf*, %struct.cfe_buf** %2, align 8
  %10 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.cfe_buf*, %struct.cfe_buf** %2, align 8
  %14 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp sge i64 %12, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @VERIFY(i32 %18)
  %20 = load %struct.cfe_buf*, %struct.cfe_buf** %2, align 8
  %21 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.cfe_buf*, %struct.cfe_buf** %2, align 8
  %24 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp sge i64 %22, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @VERIFY(i32 %27)
  %29 = load %struct.cfe_buf*, %struct.cfe_buf** %2, align 8
  %30 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.cfe_buf*, %struct.cfe_buf** %2, align 8
  %34 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp sle i64 %32, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @VERIFY(i32 %37)
  ret void
}

declare dso_local i32 @CFIL_QUEUE_VERIFY(%struct.TYPE_2__*) #1

declare dso_local i32 @VERIFY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
