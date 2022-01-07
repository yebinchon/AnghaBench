; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_telemetry.c_telemetry_ast.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_telemetry.c_telemetry_ast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AST_TELEMETRY_ALL = common dso_local global i32 0, align 4
@AST_TELEMETRY_IO = common dso_local global i32 0, align 4
@kIORecord = common dso_local global i32 0, align 4
@AST_TELEMETRY_USER = common dso_local global i32 0, align 4
@AST_TELEMETRY_KERNEL = common dso_local global i32 0, align 4
@AST_TELEMETRY_PMI = common dso_local global i32 0, align 4
@kPMIRecord = common dso_local global i32 0, align 4
@kInterruptRecord = common dso_local global i32 0, align 4
@kUserMode = common dso_local global i32 0, align 4
@telemetry_buffer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @telemetry_ast(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @AST_TELEMETRY_ALL, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  store i32 0, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @AST_TELEMETRY_IO, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @kIORecord, align 4
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %18, %2
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @AST_TELEMETRY_USER, align 4
  %25 = load i32, i32* @AST_TELEMETRY_KERNEL, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %23, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %22
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @AST_TELEMETRY_PMI, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @kPMIRecord, align 4
  br label %38

36:                                               ; preds = %29
  %37 = load i32, i32* @kInterruptRecord, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %40 = load i32, i32* %5, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %38, %22
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @AST_TELEMETRY_USER, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @kUserMode, align 4
  br label %50

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49, %47
  %51 = phi i32 [ %48, %47 ], [ 0, %49 ]
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %6, align 4
  %54 = or i32 %52, %53
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @telemetry_take_sample(i32 %55, i32 %56, i32* @telemetry_buffer)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @telemetry_take_sample(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
