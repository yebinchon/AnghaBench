; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_pcb.c_inp_flush.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_pcb.c_inp_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { i64, %struct.ifnet*, %struct.TYPE_4__ }
%struct.ifnet = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ifnet* }

@SO_TC_ALL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inp_flush(%struct.inpcb* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inpcb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca %struct.ifnet*, align 8
  store %struct.inpcb* %0, %struct.inpcb** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %10 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @SO_TC_ALL, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @SO_VALID_TC(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %3, align 4
  br label %66

21:                                               ; preds = %15, %2
  %22 = load i64, i64* %6, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %66

25:                                               ; preds = %21
  %26 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %27 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = icmp ne %struct.TYPE_3__* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %33 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load %struct.ifnet*, %struct.ifnet** %36, align 8
  br label %39

38:                                               ; preds = %25
  br label %39

39:                                               ; preds = %38, %31
  %40 = phi %struct.ifnet* [ %37, %31 ], [ null, %38 ]
  store %struct.ifnet* %40, %struct.ifnet** %7, align 8
  %41 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %42 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %41, i32 0, i32 1
  %43 = load %struct.ifnet*, %struct.ifnet** %42, align 8
  store %struct.ifnet* %43, %struct.ifnet** %8, align 8
  %44 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %45 = icmp ne %struct.ifnet* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %39
  %47 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @so_tc2msc(i32 %48)
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @if_qflush_sc(%struct.ifnet* %47, i32 %49, i64 %50, i32* null, i32* null, i32 0)
  br label %52

52:                                               ; preds = %46, %39
  %53 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %54 = icmp ne %struct.ifnet* %53, null
  br i1 %54, label %55, label %65

55:                                               ; preds = %52
  %56 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %57 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %58 = icmp ne %struct.ifnet* %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @so_tc2msc(i32 %61)
  %63 = load i64, i64* %6, align 8
  %64 = call i32 @if_qflush_sc(%struct.ifnet* %60, i32 %62, i64 %63, i32* null, i32* null, i32 0)
  br label %65

65:                                               ; preds = %59, %55, %52
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %24, %19
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @SO_VALID_TC(i32) #1

declare dso_local i32 @if_qflush_sc(%struct.ifnet*, i32, i64, i32*, i32*, i32) #1

declare dso_local i32 @so_tc2msc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
