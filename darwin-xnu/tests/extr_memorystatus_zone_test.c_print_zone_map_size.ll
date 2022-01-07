; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_memorystatus_zone_test.c_print_zone_map_size.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_memorystatus_zone_test.c_print_zone_map_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"kern.zone_map_size_and_capacity\00", align 1
@T_QUIET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"sysctl kern.zone_map_size_and_capacity failed\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"Zone map capacity: %-30lldZone map size: %lld [%lld%% full]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @print_zone_map_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_zone_map_size() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [2 x i32], align 4
  %3 = alloca i64, align 8
  store i64 8, i64* %3, align 8
  %4 = bitcast [2 x i32]* %2 to i32**
  %5 = call i32 @sysctlbyname(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32** %4, i64* %3, i32* null, i32 0)
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* @T_QUIET, align 4
  %7 = load i32, i32* %1, align 4
  %8 = call i32 @T_ASSERT_POSIX_SUCCESS(i32 %7, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %9 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 1
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = mul nsw i32 %14, 100
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 1
  %17 = load i32, i32* %16, align 4
  %18 = sdiv i32 %15, %17
  %19 = call i32 @T_LOG(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %10, i32 %12, i32 %18)
  ret void
}

declare dso_local i32 @sysctlbyname(i8*, i32**, i64*, i32*, i32) #1

declare dso_local i32 @T_ASSERT_POSIX_SUCCESS(i32, i8*) #1

declare dso_local i32 @T_LOG(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
