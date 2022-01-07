; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_common.c_hb_mixdown_get_best.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_common.c_hb_mixdown_get_best.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@HB_ACODEC_PASS_FLAG = common dso_local global i32 0, align 4
@HB_AMIXDOWN_NONE = common dso_local global i32 0, align 4
@HB_INVALID_AMIXDOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hb_mixdown_get_best(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @HB_ACODEC_PASS_FLAG, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @HB_AMIXDOWN_NONE, align 4
  store i32 %15, i32* %4, align 4
  br label %48

16:                                               ; preds = %3
  %17 = load i32, i32* @HB_INVALID_AMIXDOWN, align 4
  store i32 %17, i32* %8, align 4
  %18 = call %struct.TYPE_4__* @hb_mixdown_get_next(%struct.TYPE_4__* null)
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %9, align 8
  br label %19

19:                                               ; preds = %45, %16
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %21 = call %struct.TYPE_4__* @hb_mixdown_get_next(%struct.TYPE_4__* %20)
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %9, align 8
  %22 = icmp ne %struct.TYPE_4__* %21, null
  br i1 %22, label %23, label %46

23:                                               ; preds = %19
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @HB_INVALID_AMIXDOWN, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp sle i32 %30, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %27, %23
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i64 @hb_mixdown_is_supported(i32 %36, i32 %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %33
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %41, %33, %27
  br label %19

46:                                               ; preds = %19
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %46, %14
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local %struct.TYPE_4__* @hb_mixdown_get_next(%struct.TYPE_4__*) #1

declare dso_local i64 @hb_mixdown_is_supported(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
