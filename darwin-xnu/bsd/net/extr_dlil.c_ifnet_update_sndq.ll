; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_ifnet_update_sndq.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_ifnet_update_sndq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifclassq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.tb_profile = type { i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ifnet_update_sndq(%struct.ifclassq* %0, i32 %1) #0 {
  %3 = alloca %struct.ifclassq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tb_profile, align 4
  store %struct.ifclassq* %0, %struct.ifclassq** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ifclassq*, %struct.ifclassq** %3, align 8
  %7 = call i32 @IFCQ_LOCK_ASSERT_HELD(%struct.ifclassq* %6)
  %8 = load %struct.ifclassq*, %struct.ifclassq** %3, align 8
  %9 = call i32 @IFCQ_IS_READY(%struct.ifclassq* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %35

12:                                               ; preds = %2
  %13 = load %struct.ifclassq*, %struct.ifclassq** %3, align 8
  %14 = call i64 @IFCQ_TBR_IS_ENABLED(%struct.ifclassq* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.tb_profile, %struct.tb_profile* %5, i32 0, i32 0
  %18 = load %struct.ifclassq*, %struct.ifclassq** %3, align 8
  %19 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %17, align 4
  %22 = getelementptr inbounds %struct.tb_profile, %struct.tb_profile* %5, i32 0, i32 1
  %23 = load %struct.ifclassq*, %struct.ifclassq** %3, align 8
  %24 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %22, align 4
  %27 = getelementptr inbounds %struct.tb_profile, %struct.tb_profile* %5, i32 0, i32 2
  store i32 0, i32* %27, align 4
  %28 = load %struct.ifclassq*, %struct.ifclassq** %3, align 8
  %29 = load i32, i32* @FALSE, align 4
  %30 = call i32 @ifclassq_tbr_set(%struct.ifclassq* %28, %struct.tb_profile* %5, i32 %29)
  br label %31

31:                                               ; preds = %16, %12
  %32 = load %struct.ifclassq*, %struct.ifclassq** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @ifclassq_update(%struct.ifclassq* %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %11
  ret void
}

declare dso_local i32 @IFCQ_LOCK_ASSERT_HELD(%struct.ifclassq*) #1

declare dso_local i32 @IFCQ_IS_READY(%struct.ifclassq*) #1

declare dso_local i64 @IFCQ_TBR_IS_ENABLED(%struct.ifclassq*) #1

declare dso_local i32 @ifclassq_tbr_set(%struct.ifclassq*, %struct.tb_profile*, i32) #1

declare dso_local i32 @ifclassq_update(%struct.ifclassq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
