; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_main.c_CL_DemoCompleted.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_main.c_CL_DemoCompleted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, double }

@cl_timedemo = common dso_local global %struct.TYPE_4__* null, align 8
@clc = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str = private unnamed_addr constant [37 x i8] c"%i frames, %3.1f seconds: %3.1f fps\0A\00", align 1
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_DemoCompleted() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cl_timedemo, align 8
  %3 = icmp ne %struct.TYPE_4__* %2, null
  br i1 %3, label %4, label %28

4:                                                ; preds = %0
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cl_timedemo, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %28

9:                                                ; preds = %4
  %10 = call i32 (...) @Sys_Milliseconds()
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @clc, i32 0, i32 0), align 8
  %12 = sub nsw i32 %10, %11
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* %1, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %9
  %16 = load double, double* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @clc, i32 0, i32 1), align 8
  %17 = load i32, i32* %1, align 4
  %18 = sitofp i32 %17 to double
  %19 = fdiv double %18, 1.000000e+03
  %20 = fptosi double %19 to i32
  %21 = load double, double* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @clc, i32 0, i32 1), align 8
  %22 = fmul double %21, 1.000000e+03
  %23 = load i32, i32* %1, align 4
  %24 = sitofp i32 %23 to double
  %25 = fdiv double %22, %24
  %26 = call i32 @Com_Printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), double %16, i32 %20, double %25)
  br label %27

27:                                               ; preds = %15, %9
  br label %28

28:                                               ; preds = %27, %4, %0
  %29 = load i32, i32* @qtrue, align 4
  %30 = call i32 @CL_Disconnect(i32 %29)
  %31 = call i32 (...) @CL_NextDemo()
  ret void
}

declare dso_local i32 @Sys_Milliseconds(...) #1

declare dso_local i32 @Com_Printf(i8*, double, i32, double) #1

declare dso_local i32 @CL_Disconnect(i32) #1

declare dso_local i32 @CL_NextDemo(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
