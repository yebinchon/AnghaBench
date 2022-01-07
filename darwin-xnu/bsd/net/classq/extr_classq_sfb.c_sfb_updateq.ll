; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/classq/extr_classq_sfb.c_sfb_updateq.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/classq/extr_classq_sfb.c_sfb_updateq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfb = type { i8*, i32, i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@classq_verbose = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"%s: SFB qid=%d, adapting to new eff_rate=%llu bps\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"%s: SFB qid=%d, resetting due to link %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"UP\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"DOWN\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sfb_updateq(%struct.sfb* %0, i32 %1) #0 {
  %3 = alloca %struct.sfb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i8*, align 8
  store %struct.sfb* %0, %struct.sfb** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.sfb*, %struct.sfb** %3, align 8
  %8 = getelementptr inbounds %struct.sfb, %struct.sfb* %7, i32 0, i32 3
  %9 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  store %struct.ifnet* %9, %struct.ifnet** %5, align 8
  %10 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %11 = icmp ne %struct.ifnet* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @VERIFY(i32 %12)
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %70 [
    i32 132, label %15
    i32 128, label %50
    i32 131, label %50
    i32 130, label %69
    i32 129, label %69
  ]

15:                                               ; preds = %2
  %16 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %17 = call i8* @ifnet_output_linkrate(%struct.ifnet* %16)
  store i8* %17, i8** %6, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load %struct.sfb*, %struct.sfb** %3, align 8
  %20 = getelementptr inbounds %struct.sfb, %struct.sfb* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = icmp eq i8* %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %71

24:                                               ; preds = %15
  %25 = load i32, i32* @classq_verbose, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  %28 = load i32, i32* @LOG_DEBUG, align 4
  %29 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %30 = call i32 @if_name(%struct.ifnet* %29)
  %31 = load %struct.sfb*, %struct.sfb** %3, align 8
  %32 = getelementptr inbounds %struct.sfb, %struct.sfb* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @log(i32 %28, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %33, i8* %34)
  br label %36

36:                                               ; preds = %27, %24
  %37 = load %struct.sfb*, %struct.sfb** %3, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @sfb_calc_holdtime(%struct.sfb* %37, i8* %38)
  %40 = load %struct.sfb*, %struct.sfb** %3, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @sfb_calc_pboxtime(%struct.sfb* %40, i8* %41)
  %43 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %44 = load %struct.sfb*, %struct.sfb** %3, align 8
  %45 = getelementptr inbounds %struct.sfb, %struct.sfb* %44, i32 0, i32 2
  %46 = call i32 @ifclassq_calc_target_qdelay(%struct.ifnet* %43, i32* %45)
  %47 = load %struct.sfb*, %struct.sfb** %3, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @sfb_calc_update_interval(%struct.sfb* %47, i8* %48)
  br label %71

50:                                               ; preds = %2, %2
  %51 = load i32, i32* @classq_verbose, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %50
  %54 = load i32, i32* @LOG_DEBUG, align 4
  %55 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %56 = call i32 @if_name(%struct.ifnet* %55)
  %57 = load %struct.sfb*, %struct.sfb** %3, align 8
  %58 = getelementptr inbounds %struct.sfb, %struct.sfb* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = icmp eq i32 %60, 128
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %64 = call i32 @log(i32 %54, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %59, i8* %63)
  br label %65

65:                                               ; preds = %53, %50
  %66 = load %struct.sfb*, %struct.sfb** %3, align 8
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @sfb_resetq(%struct.sfb* %66, i32 %67)
  br label %71

69:                                               ; preds = %2, %2
  br label %70

70:                                               ; preds = %2, %69
  br label %71

71:                                               ; preds = %70, %65, %36, %23
  ret void
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i8* @ifnet_output_linkrate(%struct.ifnet*) #1

declare dso_local i32 @log(i32, i8*, i32, i32, i8*) #1

declare dso_local i32 @if_name(%struct.ifnet*) #1

declare dso_local i32 @sfb_calc_holdtime(%struct.sfb*, i8*) #1

declare dso_local i32 @sfb_calc_pboxtime(%struct.sfb*, i8*) #1

declare dso_local i32 @ifclassq_calc_target_qdelay(%struct.ifnet*, i32*) #1

declare dso_local i32 @sfb_calc_update_interval(%struct.sfb*, i8*) #1

declare dso_local i32 @sfb_resetq(%struct.sfb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
