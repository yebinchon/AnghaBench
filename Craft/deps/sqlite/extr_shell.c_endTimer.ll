; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_shell.c_endTimer.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_shell.c_endTimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.rusage = type { i32, i32 }

@enableTimer = common dso_local global i64 0, align 8
@RUSAGE_SELF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"CPU Time: user %f sys %f\0A\00", align 1
@sBegin = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @endTimer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @endTimer() #0 {
  %1 = alloca %struct.rusage, align 4
  %2 = load i64, i64* @enableTimer, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %12

4:                                                ; preds = %0
  %5 = load i32, i32* @RUSAGE_SELF, align 4
  %6 = call i32 @getrusage(i32 %5, %struct.rusage* %1)
  %7 = getelementptr inbounds %struct.rusage, %struct.rusage* %1, i32 0, i32 1
  %8 = call double @timeDiff(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sBegin, i32 0, i32 1), i32* %7)
  %9 = getelementptr inbounds %struct.rusage, %struct.rusage* %1, i32 0, i32 0
  %10 = call double @timeDiff(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sBegin, i32 0, i32 0), i32* %9)
  %11 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), double %8, double %10)
  br label %12

12:                                               ; preds = %4, %0
  ret void
}

declare dso_local i32 @getrusage(i32, %struct.rusage*) #1

declare dso_local i32 @printf(i8*, double, double) #1

declare dso_local double @timeDiff(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
