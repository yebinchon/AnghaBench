; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_m_copyback_cow.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_m_copyback_cow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }

@M_COPYBACK0_COPYBACK = common dso_local global i32 0, align 4
@M_COPYBACK0_COW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbuf* @m_copyback_cow(%struct.mbuf* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mbuf* %0, %struct.mbuf** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %9, align 4
  %15 = add nsw i32 %13, %14
  %16 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %17 = call i32 @m_length(%struct.mbuf* %16)
  %18 = icmp sle i32 %15, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @VERIFY(i32 %19)
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i8*, i8** %10, align 8
  %24 = load i32, i32* @M_COPYBACK0_COPYBACK, align 4
  %25 = load i32, i32* @M_COPYBACK0_COW, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @m_copyback0(%struct.mbuf** %7, i32 %21, i32 %22, i8* %23, i32 %26, i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %5
  %32 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %33 = call i32 @m_freem(%struct.mbuf* %32)
  store %struct.mbuf* null, %struct.mbuf** %6, align 8
  br label %36

34:                                               ; preds = %5
  %35 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  store %struct.mbuf* %35, %struct.mbuf** %6, align 8
  br label %36

36:                                               ; preds = %34, %31
  %37 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  ret %struct.mbuf* %37
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @m_length(%struct.mbuf*) #1

declare dso_local i32 @m_copyback0(%struct.mbuf**, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
