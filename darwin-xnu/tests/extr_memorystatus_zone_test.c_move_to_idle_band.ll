; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_memorystatus_zone_test.c_move_to_idle_band.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_memorystatus_zone_test.c_move_to_idle_band.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@JETSAM_PRIORITY_IDLE = common dso_local global i32 0, align 4
@MEMORYSTATUS_CMD_SET_PRIORITY_PROPERTIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"memorystatus call to change jetsam priority failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @move_to_idle_band to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @move_to_idle_band() #0 {
  %1 = alloca %struct.TYPE_3__, align 8
  %2 = load i32, i32* @JETSAM_PRIORITY_IDLE, align 4
  %3 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  store i32 %2, i32* %3, align 8
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  store i64 0, i64* %4, align 8
  %5 = load i32, i32* @MEMORYSTATUS_CMD_SET_PRIORITY_PROPERTIES, align 4
  %6 = call i32 (...) @getpid()
  %7 = call i64 @memorystatus_control(i32 %5, i32 %6, i32 0, %struct.TYPE_3__* %1, i32 16)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = call i32 @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @exit(i32 -1) #3
  unreachable

12:                                               ; preds = %0
  ret void
}

declare dso_local i64 @memorystatus_control(i32, i32, i32, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @printf(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
