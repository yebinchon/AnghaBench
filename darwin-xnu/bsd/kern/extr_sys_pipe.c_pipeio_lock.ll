; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_pipe.c_pipeio_lock.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_pipe.c_pipeio_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe = type { i32 }

@PIPE_LOCKFL = common dso_local global i32 0, align 4
@PIPE_LWANT = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"pipelk\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pipe*, i32)* @pipeio_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pipeio_lock(%struct.pipe* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pipe*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pipe* %0, %struct.pipe** %4, align 8
  store i32 %1, i32* %5, align 4
  br label %7

7:                                                ; preds = %38, %2
  %8 = load %struct.pipe*, %struct.pipe** %4, align 8
  %9 = getelementptr inbounds %struct.pipe, %struct.pipe* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @PIPE_LOCKFL, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %39

14:                                               ; preds = %7
  %15 = load i32, i32* @PIPE_LWANT, align 4
  %16 = load %struct.pipe*, %struct.pipe** %4, align 8
  %17 = getelementptr inbounds %struct.pipe, %struct.pipe* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load %struct.pipe*, %struct.pipe** %4, align 8
  %21 = load %struct.pipe*, %struct.pipe** %4, align 8
  %22 = call i32 @PIPE_MTX(%struct.pipe* %21)
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %14
  %26 = load i32, i32* @PRIBIO, align 4
  %27 = load i32, i32* @PCATCH, align 4
  %28 = or i32 %26, %27
  br label %31

29:                                               ; preds = %14
  %30 = load i32, i32* @PRIBIO, align 4
  br label %31

31:                                               ; preds = %29, %25
  %32 = phi i32 [ %28, %25 ], [ %30, %29 ]
  %33 = call i32 @msleep(%struct.pipe* %20, i32 %22, i32 %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %45

38:                                               ; preds = %31
  br label %7

39:                                               ; preds = %7
  %40 = load i32, i32* @PIPE_LOCKFL, align 4
  %41 = load %struct.pipe*, %struct.pipe** %4, align 8
  %42 = getelementptr inbounds %struct.pipe, %struct.pipe* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %39, %36
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @msleep(%struct.pipe*, i32, i32, i8*, i32) #1

declare dso_local i32 @PIPE_MTX(%struct.pipe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
