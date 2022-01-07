; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_ifnet_set_output_sched_model.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_ifnet_set_output_sched_model.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i64, %struct.ifclassq }
%struct.ifclassq = type { i32 }

@IFNET_SCHED_MODEL_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IFEF_TXSTART = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ifnet_set_output_sched_model(%struct.ifnet* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ifclassq*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %10 = icmp eq %struct.ifnet* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @IFNET_SCHED_MODEL_MAX, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %11, %2
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %3, align 4
  br label %49

17:                                               ; preds = %11
  %18 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %19 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @IFEF_TXSTART, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* @ENXIO, align 4
  store i32 %25, i32* %3, align 4
  br label %49

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %26
  %28 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %29 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %28, i32 0, i32 2
  store %struct.ifclassq* %29, %struct.ifclassq** %6, align 8
  %30 = load %struct.ifclassq*, %struct.ifclassq** %6, align 8
  %31 = call i32 @IFCQ_LOCK(%struct.ifclassq* %30)
  %32 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %33 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %7, align 8
  %35 = load i64, i64* %5, align 8
  %36 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %37 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  %38 = load %struct.ifclassq*, %struct.ifclassq** %6, align 8
  %39 = call i32 @ifclassq_pktsched_setup(%struct.ifclassq* %38)
  store i32 %39, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %27
  %42 = load i64, i64* %7, align 8
  %43 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %44 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  br label %45

45:                                               ; preds = %41, %27
  %46 = load %struct.ifclassq*, %struct.ifclassq** %6, align 8
  %47 = call i32 @IFCQ_UNLOCK(%struct.ifclassq* %46)
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %45, %24, %15
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @IFCQ_LOCK(%struct.ifclassq*) #1

declare dso_local i32 @ifclassq_pktsched_setup(%struct.ifclassq*) #1

declare dso_local i32 @IFCQ_UNLOCK(%struct.ifclassq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
