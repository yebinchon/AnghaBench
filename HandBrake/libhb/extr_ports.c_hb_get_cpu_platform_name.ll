; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_ports.c_hb_get_cpu_platform_name.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_ports.c_hb_get_cpu_platform_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@hb_cpu_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [32 x i8] c"Intel microarchitecture Bonnell\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Intel microarchitecture Sandy Bridge\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Intel microarchitecture Ivy Bridge\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Intel microarchitecture Silvermont\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Intel microarchitecture Haswell\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Intel microarchitecture Broadwell\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Intel microarchitecture Skylake\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Intel microarchitecture Airmont\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"Intel microarchitecture Kaby Lake\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"Intel microarchitecture Ice Lake\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @hb_get_cpu_platform_name() #0 {
  %1 = alloca i8*, align 8
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hb_cpu_info, i32 0, i32 0), align 4
  switch i32 %2, label %13 [
    i32 136, label %3
    i32 128, label %4
    i32 132, label %5
    i32 129, label %6
    i32 134, label %7
    i32 137, label %8
    i32 130, label %9
    i32 135, label %10
    i32 131, label %11
    i32 133, label %12
  ]

3:                                                ; preds = %0
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  br label %14

4:                                                ; preds = %0
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8** %1, align 8
  br label %14

5:                                                ; preds = %0
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8** %1, align 8
  br label %14

6:                                                ; preds = %0
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8** %1, align 8
  br label %14

7:                                                ; preds = %0
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8** %1, align 8
  br label %14

8:                                                ; preds = %0
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i8** %1, align 8
  br label %14

9:                                                ; preds = %0
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8** %1, align 8
  br label %14

10:                                               ; preds = %0
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i8** %1, align 8
  br label %14

11:                                               ; preds = %0
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i8** %1, align 8
  br label %14

12:                                               ; preds = %0
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i8** %1, align 8
  br label %14

13:                                               ; preds = %0
  store i8* null, i8** %1, align 8
  br label %14

14:                                               ; preds = %13, %12, %11, %10, %9, %8, %7, %6, %5, %4, %3
  %15 = load i8*, i8** %1, align 8
  ret i8* %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
