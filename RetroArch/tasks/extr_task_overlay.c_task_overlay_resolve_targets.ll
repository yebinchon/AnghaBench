; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_overlay.c_task_overlay_resolve_targets.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_overlay.c_task_overlay_resolve_targets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.overlay = type { i32, i32* }
%struct.overlay_desc = type { i8*, i32 }

@.str = private unnamed_addr constant [48 x i8] c"[Overlay]: Couldn't find overlay called: \22%s\22.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.overlay*, i64, i64)* @task_overlay_resolve_targets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @task_overlay_resolve_targets(%struct.overlay* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.overlay*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.overlay*, align 8
  %10 = alloca %struct.overlay_desc*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.overlay* %0, %struct.overlay** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.overlay*, %struct.overlay** %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = getelementptr inbounds %struct.overlay, %struct.overlay* %13, i64 %14
  store %struct.overlay* %15, %struct.overlay** %9, align 8
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %56, %3
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.overlay*, %struct.overlay** %9, align 8
  %19 = getelementptr inbounds %struct.overlay, %struct.overlay* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ult i32 %17, %20
  br i1 %21, label %22, label %59

22:                                               ; preds = %16
  %23 = load %struct.overlay*, %struct.overlay** %9, align 8
  %24 = getelementptr inbounds %struct.overlay, %struct.overlay* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = bitcast i32* %28 to %struct.overlay_desc*
  store %struct.overlay_desc* %29, %struct.overlay_desc** %10, align 8
  %30 = load %struct.overlay_desc*, %struct.overlay_desc** %10, align 8
  %31 = getelementptr inbounds %struct.overlay_desc, %struct.overlay_desc* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %11, align 8
  %33 = load i64, i64* %6, align 8
  %34 = add i64 %33, 1
  %35 = load i64, i64* %7, align 8
  %36 = and i64 %34, %35
  store i64 %36, i64* %12, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = call i32 @string_is_empty(i8* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %51, label %40

40:                                               ; preds = %22
  %41 = load %struct.overlay*, %struct.overlay** %5, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = load i64, i64* %7, align 8
  %44 = call i64 @task_overlay_find_index(%struct.overlay* %41, i8* %42, i64 %43)
  store i64 %44, i64* %12, align 8
  %45 = load i64, i64* %12, align 8
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load i8*, i8** %11, align 8
  %49 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %48)
  store i32 0, i32* %4, align 4
  br label %60

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %50, %22
  %52 = load i64, i64* %12, align 8
  %53 = trunc i64 %52 to i32
  %54 = load %struct.overlay_desc*, %struct.overlay_desc** %10, align 8
  %55 = getelementptr inbounds %struct.overlay_desc, %struct.overlay_desc* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  br label %56

56:                                               ; preds = %51
  %57 = load i32, i32* %8, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %16

59:                                               ; preds = %16
  store i32 1, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %47
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local i64 @task_overlay_find_index(%struct.overlay*, i8*, i64) #1

declare dso_local i32 @RARCH_ERR(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
