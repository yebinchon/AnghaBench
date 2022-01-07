; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_si.c___si_getxy.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_si.c___si_getxy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._xy = type { i32 }

@xy = common dso_local global %struct._xy** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct._xy* ()* @__si_getxy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct._xy* @__si_getxy() #0 {
  %1 = alloca %struct._xy*, align 8
  %2 = call i32 (...) @VIDEO_GetCurrentTvMode()
  switch i32 %2, label %11 [
    i32 129, label %3
    i32 130, label %3
    i32 131, label %3
    i32 128, label %7
  ]

3:                                                ; preds = %0, %0, %0
  %4 = load %struct._xy**, %struct._xy*** @xy, align 8
  %5 = getelementptr inbounds %struct._xy*, %struct._xy** %4, i64 0
  %6 = load %struct._xy*, %struct._xy** %5, align 8
  store %struct._xy* %6, %struct._xy** %1, align 8
  br label %12

7:                                                ; preds = %0
  %8 = load %struct._xy**, %struct._xy*** @xy, align 8
  %9 = getelementptr inbounds %struct._xy*, %struct._xy** %8, i64 1
  %10 = load %struct._xy*, %struct._xy** %9, align 8
  store %struct._xy* %10, %struct._xy** %1, align 8
  br label %12

11:                                               ; preds = %0
  store %struct._xy* null, %struct._xy** %1, align 8
  br label %12

12:                                               ; preds = %11, %7, %3
  %13 = load %struct._xy*, %struct._xy** %1, align 8
  ret %struct._xy* %13
}

declare dso_local i32 @VIDEO_GetCurrentTvMode(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
