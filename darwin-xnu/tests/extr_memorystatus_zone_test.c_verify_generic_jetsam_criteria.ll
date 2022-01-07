; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_memorystatus_zone_test.c_verify_generic_jetsam_criteria.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_memorystatus_zone_test.c_verify_generic_jetsam_criteria.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"Largest zone info\00", align 1
@largest_zone_name = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@largest_zone_info = common dso_local global i32 0, align 4
@VME_ZONE = common dso_local global i32 0, align 4
@VMOBJECTS_ZONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @verify_generic_jetsam_criteria to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_generic_jetsam_criteria() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @T_LOG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %3 = call i32 @print_zone_info(%struct.TYPE_3__* @largest_zone_name, i32* @largest_zone_info)
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @largest_zone_name, i32 0, i32 0), align 4
  %5 = load i32, i32* @VME_ZONE, align 4
  %6 = call i64 @strcmp(i32 %4, i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %0
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @largest_zone_name, i32 0, i32 0), align 4
  %10 = load i32, i32* @VMOBJECTS_ZONE, align 4
  %11 = call i64 @strcmp(i32 %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %8
  %14 = call i64 (...) @vme_zone_compares_to_vm_objects()
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 0, i32* %1, align 4
  br label %19

17:                                               ; preds = %13, %8
  store i32 1, i32* %1, align 4
  br label %19

18:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %19

19:                                               ; preds = %18, %17, %16
  %20 = load i32, i32* %1, align 4
  ret i32 %20
}

declare dso_local i32 @T_LOG(i8*) #1

declare dso_local i32 @print_zone_info(%struct.TYPE_3__*, i32*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i64 @vme_zone_compares_to_vm_objects(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
