; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_dof_property.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_dof_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@KM_SLEEP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"unreadable DOF\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"truncated header\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"truncated DOF\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"invalid DOF size\00", align 1
@dtrace_dof_maxsize = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c"oversized DOF\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (i8*)* @dtrace_dof_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @dtrace_dof_property(i8* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = call i64 (...) @dtrace_is_restricted()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = call i32 (...) @dtrace_are_restrictions_relaxed()
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %70

12:                                               ; preds = %8, %1
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @PEReadNVRAMProperty(i8* %13, %struct.TYPE_6__* null, i32* %4)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %70

17:                                               ; preds = %12
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @KM_SLEEP, align 4
  %20 = call %struct.TYPE_6__* @kmem_alloc_aligned(i32 %18, i32 8, i32 %19)
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %5, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = call i32 @PEReadNVRAMProperty(i8* %21, %struct.TYPE_6__* %22, i32* %4)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %17
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %27 = call i32 @dtrace_dof_destroy(%struct.TYPE_6__* %26)
  %28 = call i32 @dtrace_dof_error(i32* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %70

29:                                               ; preds = %17
  %30 = load i32, i32* %4, align 4
  %31 = zext i32 %30 to i64
  %32 = icmp ult i64 %31, 4
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %35 = call i32 @dtrace_dof_destroy(%struct.TYPE_6__* %34)
  %36 = call i32 @dtrace_dof_error(i32* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %70

37:                                               ; preds = %29
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ult i32 %38, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %45 = call i32 @dtrace_dof_destroy(%struct.TYPE_6__* %44)
  %46 = call i32 @dtrace_dof_error(i32* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %70

47:                                               ; preds = %37
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %48, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %55 = call i32 @dtrace_dof_destroy(%struct.TYPE_6__* %54)
  %56 = call i32 @dtrace_dof_error(i32* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %70

57:                                               ; preds = %47
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i64, i64* @dtrace_dof_maxsize, align 8
  %62 = trunc i64 %61 to i32
  %63 = icmp uge i32 %60, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %66 = call i32 @dtrace_dof_destroy(%struct.TYPE_6__* %65)
  %67 = call i32 @dtrace_dof_error(i32* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %70

68:                                               ; preds = %57
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_6__* %69, %struct.TYPE_6__** %2, align 8
  br label %70

70:                                               ; preds = %68, %64, %53, %43, %33, %25, %16, %11
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  ret %struct.TYPE_6__* %71
}

declare dso_local i64 @dtrace_is_restricted(...) #1

declare dso_local i32 @dtrace_are_restrictions_relaxed(...) #1

declare dso_local i32 @PEReadNVRAMProperty(i8*, %struct.TYPE_6__*, i32*) #1

declare dso_local %struct.TYPE_6__* @kmem_alloc_aligned(i32, i32, i32) #1

declare dso_local i32 @dtrace_dof_destroy(%struct.TYPE_6__*) #1

declare dso_local i32 @dtrace_dof_error(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
