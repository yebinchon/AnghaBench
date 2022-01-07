; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_tcq.c_tcq_add_queue.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_tcq.c_tcq_add_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcq_if = type { i32**, i32 }
%struct.tcq_class = type { i32 }

@TCQ_MAXPRI = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcq_add_queue(%struct.tcq_if* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.tcq_class** %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.tcq_if*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.tcq_class**, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.tcq_class*, align 8
  store %struct.tcq_if* %0, %struct.tcq_if** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.tcq_class** %5, %struct.tcq_class*** %14, align 8
  store i32 %6, i32* %15, align 4
  %17 = load %struct.tcq_if*, %struct.tcq_if** %9, align 8
  %18 = getelementptr inbounds %struct.tcq_if, %struct.tcq_if* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @IFCQ_LOCK_ASSERT_HELD(i32 %19)
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @TCQ_MAXPRI, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %7
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %8, align 4
  br label %63

26:                                               ; preds = %7
  %27 = load %struct.tcq_if*, %struct.tcq_if** %9, align 8
  %28 = getelementptr inbounds %struct.tcq_if, %struct.tcq_if* %27, i32 0, i32 0
  %29 = load i32**, i32*** %28, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32*, i32** %29, i64 %31
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = load i32, i32* @EBUSY, align 4
  store i32 %36, i32* %8, align 4
  br label %63

37:                                               ; preds = %26
  %38 = load %struct.tcq_if*, %struct.tcq_if** %9, align 8
  %39 = load i32, i32* %13, align 4
  %40 = call i32* @tcq_clh_to_clp(%struct.tcq_if* %38, i32 %39)
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @EBUSY, align 4
  store i32 %43, i32* %8, align 4
  br label %63

44:                                               ; preds = %37
  %45 = load %struct.tcq_if*, %struct.tcq_if** %9, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %15, align 4
  %51 = call %struct.tcq_class* @tcq_class_create(%struct.tcq_if* %45, i32 %46, i32 %47, i32 %48, i32 %49, i32 %50)
  store %struct.tcq_class* %51, %struct.tcq_class** %16, align 8
  %52 = load %struct.tcq_class*, %struct.tcq_class** %16, align 8
  %53 = icmp eq %struct.tcq_class* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %44
  %55 = load i32, i32* @ENOMEM, align 4
  store i32 %55, i32* %8, align 4
  br label %63

56:                                               ; preds = %44
  %57 = load %struct.tcq_class**, %struct.tcq_class*** %14, align 8
  %58 = icmp ne %struct.tcq_class** %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load %struct.tcq_class*, %struct.tcq_class** %16, align 8
  %61 = load %struct.tcq_class**, %struct.tcq_class*** %14, align 8
  store %struct.tcq_class* %60, %struct.tcq_class** %61, align 8
  br label %62

62:                                               ; preds = %59, %56
  store i32 0, i32* %8, align 4
  br label %63

63:                                               ; preds = %62, %54, %42, %35, %24
  %64 = load i32, i32* %8, align 4
  ret i32 %64
}

declare dso_local i32 @IFCQ_LOCK_ASSERT_HELD(i32) #1

declare dso_local i32* @tcq_clh_to_clp(%struct.tcq_if*, i32) #1

declare dso_local %struct.tcq_class* @tcq_class_create(%struct.tcq_if*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
