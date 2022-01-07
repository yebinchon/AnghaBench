; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_memorystatus_zone_test.c_query_zone_info.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_memorystatus_zone_test.c_query_zone_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@query_zone_info.num_calls = internal global i32 0, align 4
@current_test = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@zone_info_array = common dso_local global i32* null, align 8
@T_QUIET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"mach_zone_info_for_zone(%s) returned %d [%s]\00", align 1
@largest_zone_name = common dso_local global i32 0, align 4
@largest_zone_info = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"mach_zone_info_for_largest_zone returned %d [%s]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @query_zone_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @query_zone_info() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %32, %0
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @current_test, i32 0, i32 0), align 8
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %35

7:                                                ; preds = %3
  %8 = call i32 (...) @mach_host_self()
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @current_test, i32 0, i32 1), align 8
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i64 %11
  %13 = load i32*, i32** @zone_info_array, align 8
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @mach_zone_info_for_zone(i32 %8, i32 %18, i32* %16)
  store i32 %19, i32* %2, align 4
  %20 = load i32, i32* @T_QUIET, align 4
  %21 = load i32, i32* %2, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @current_test, i32 0, i32 1), align 8
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* %2, align 4
  %30 = call i32 @mach_error_string(i32 %29)
  %31 = call i32 (i32, i8*, i32, i32, ...) @T_ASSERT_MACH_SUCCESS(i32 %21, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28, i32 %30)
  br label %32

32:                                               ; preds = %7
  %33 = load i32, i32* %1, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %1, align 4
  br label %3

35:                                               ; preds = %3
  %36 = call i32 (...) @mach_host_self()
  %37 = call i32 @mach_zone_info_for_largest_zone(i32 %36, i32* @largest_zone_name, i32* @largest_zone_info)
  store i32 %37, i32* %2, align 4
  %38 = load i32, i32* @T_QUIET, align 4
  %39 = load i32, i32* %2, align 4
  %40 = load i32, i32* %2, align 4
  %41 = load i32, i32* %2, align 4
  %42 = call i32 @mach_error_string(i32 %41)
  %43 = call i32 (i32, i8*, i32, i32, ...) @T_ASSERT_MACH_SUCCESS(i32 %39, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %42)
  %44 = load i32, i32* @query_zone_info.num_calls, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* @query_zone_info.num_calls, align 4
  %46 = load i32, i32* @query_zone_info.num_calls, align 4
  %47 = srem i32 %46, 10
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %35
  br label %68

50:                                               ; preds = %35
  store i32 0, i32* %1, align 4
  br label %51

51:                                               ; preds = %65, %50
  %52 = load i32, i32* %1, align 4
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @current_test, i32 0, i32 0), align 8
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %68

55:                                               ; preds = %51
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @current_test, i32 0, i32 1), align 8
  %57 = load i32, i32* %1, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %58
  %60 = load i32*, i32** @zone_info_array, align 8
  %61 = load i32, i32* %1, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = call i32 @print_zone_info(%struct.TYPE_4__* %59, i32* %63)
  br label %65

65:                                               ; preds = %55
  %66 = load i32, i32* %1, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %1, align 4
  br label %51

68:                                               ; preds = %49, %51
  ret void
}

declare dso_local i32 @mach_zone_info_for_zone(i32, i32, i32*) #1

declare dso_local i32 @mach_host_self(...) #1

declare dso_local i32 @T_ASSERT_MACH_SUCCESS(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @mach_error_string(i32) #1

declare dso_local i32 @mach_zone_info_for_largest_zone(i32, i32*, i32*) #1

declare dso_local i32 @print_zone_info(%struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
