; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_m_normalize.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_m_normalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { %struct.mbuf* }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@mb_normalized = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbuf* @m_normalize(%struct.mbuf* %0) #0 {
  %2 = alloca %struct.mbuf*, align 8
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca %struct.mbuf**, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.mbuf*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %2, align 8
  store %struct.mbuf* null, %struct.mbuf** %3, align 8
  store %struct.mbuf** %3, %struct.mbuf*** %4, align 8
  %8 = load i64, i64* @FALSE, align 8
  store i64 %8, i64* %5, align 8
  br label %9

9:                                                ; preds = %41, %1
  %10 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %11 = icmp ne %struct.mbuf* %10, null
  br i1 %11, label %12, label %43

12:                                               ; preds = %9
  %13 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %14 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %13, i32 0, i32 0
  %15 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  store %struct.mbuf* %15, %struct.mbuf** %6, align 8
  %16 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %17 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %16, i32 0, i32 0
  store %struct.mbuf* null, %struct.mbuf** %17, align 8
  %18 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %19 = call i64 @MBUF_MULTIPAGES(%struct.mbuf* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %12
  %22 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %23 = call %struct.mbuf* @m_expand(%struct.mbuf* %22, %struct.mbuf** %7)
  store %struct.mbuf* %23, %struct.mbuf** %2, align 8
  %24 = icmp eq %struct.mbuf* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %27 = call i32 @m_freem(%struct.mbuf* %26)
  %28 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %29 = call i32 @m_freem(%struct.mbuf* %28)
  store %struct.mbuf* null, %struct.mbuf** %3, align 8
  br label %43

30:                                               ; preds = %21
  %31 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %32 = load %struct.mbuf**, %struct.mbuf*** %4, align 8
  store %struct.mbuf* %31, %struct.mbuf** %32, align 8
  %33 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %34 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %33, i32 0, i32 0
  store %struct.mbuf** %34, %struct.mbuf*** %4, align 8
  %35 = load i64, i64* @TRUE, align 8
  store i64 %35, i64* %5, align 8
  br label %41

36:                                               ; preds = %12
  %37 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %38 = load %struct.mbuf**, %struct.mbuf*** %4, align 8
  store %struct.mbuf* %37, %struct.mbuf** %38, align 8
  %39 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %40 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %39, i32 0, i32 0
  store %struct.mbuf** %40, %struct.mbuf*** %4, align 8
  br label %41

41:                                               ; preds = %36, %30
  %42 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  store %struct.mbuf* %42, %struct.mbuf** %2, align 8
  br label %9

43:                                               ; preds = %25, %9
  %44 = load i64, i64* %5, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = call i32 @atomic_add_32(i32* @mb_normalized, i32 1)
  br label %48

48:                                               ; preds = %46, %43
  %49 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  ret %struct.mbuf* %49
}

declare dso_local i64 @MBUF_MULTIPAGES(%struct.mbuf*) #1

declare dso_local %struct.mbuf* @m_expand(%struct.mbuf*, %struct.mbuf**) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @atomic_add_32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
