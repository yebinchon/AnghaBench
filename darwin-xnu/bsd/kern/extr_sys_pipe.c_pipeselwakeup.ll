; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_pipe.c_pipeselwakeup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_pipe.c_pipeselwakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PIPE_SEL = common dso_local global i32 0, align 4
@PIPE_KNOTE = common dso_local global i32 0, align 4
@EV_RWBYTES = common dso_local global i32 0, align 4
@PIPE_ASYNC = common dso_local global i32 0, align 4
@SIGIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pipe*, %struct.pipe*)* @pipeselwakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pipeselwakeup(%struct.pipe* %0, %struct.pipe* %1) #0 {
  %3 = alloca %struct.pipe*, align 8
  %4 = alloca %struct.pipe*, align 8
  store %struct.pipe* %0, %struct.pipe** %3, align 8
  store %struct.pipe* %1, %struct.pipe** %4, align 8
  %5 = load %struct.pipe*, %struct.pipe** %3, align 8
  %6 = getelementptr inbounds %struct.pipe, %struct.pipe* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @PIPE_SEL, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load i32, i32* @PIPE_SEL, align 4
  %13 = xor i32 %12, -1
  %14 = load %struct.pipe*, %struct.pipe** %3, align 8
  %15 = getelementptr inbounds %struct.pipe, %struct.pipe* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load %struct.pipe*, %struct.pipe** %3, align 8
  %19 = getelementptr inbounds %struct.pipe, %struct.pipe* %18, i32 0, i32 2
  %20 = call i32 @selwakeup(%struct.TYPE_2__* %19)
  br label %21

21:                                               ; preds = %11, %2
  %22 = load %struct.pipe*, %struct.pipe** %3, align 8
  %23 = getelementptr inbounds %struct.pipe, %struct.pipe* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @PIPE_KNOTE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = load %struct.pipe*, %struct.pipe** %3, align 8
  %30 = getelementptr inbounds %struct.pipe, %struct.pipe* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @KNOTE(i32* %31, i32 1)
  br label %33

33:                                               ; preds = %28, %21
  %34 = load %struct.pipe*, %struct.pipe** %3, align 8
  %35 = load i32, i32* @EV_RWBYTES, align 4
  %36 = call i32 @postpipeevent(%struct.pipe* %34, i32 %35)
  %37 = load %struct.pipe*, %struct.pipe** %4, align 8
  %38 = icmp ne %struct.pipe* %37, null
  br i1 %38, label %39, label %70

39:                                               ; preds = %33
  %40 = load %struct.pipe*, %struct.pipe** %4, align 8
  %41 = getelementptr inbounds %struct.pipe, %struct.pipe* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @PIPE_ASYNC, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %70

46:                                               ; preds = %39
  %47 = load %struct.pipe*, %struct.pipe** %4, align 8
  %48 = getelementptr inbounds %struct.pipe, %struct.pipe* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %70

51:                                               ; preds = %46
  %52 = load %struct.pipe*, %struct.pipe** %4, align 8
  %53 = getelementptr inbounds %struct.pipe, %struct.pipe* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load %struct.pipe*, %struct.pipe** %4, align 8
  %58 = getelementptr inbounds %struct.pipe, %struct.pipe* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 0, %59
  %61 = load i32, i32* @SIGIO, align 4
  %62 = call i32 @gsignal(i32 %60, i32 %61)
  br label %69

63:                                               ; preds = %51
  %64 = load %struct.pipe*, %struct.pipe** %4, align 8
  %65 = getelementptr inbounds %struct.pipe, %struct.pipe* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @SIGIO, align 4
  %68 = call i32 @proc_signal(i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %63, %56
  br label %70

70:                                               ; preds = %69, %46, %39, %33
  ret void
}

declare dso_local i32 @selwakeup(%struct.TYPE_2__*) #1

declare dso_local i32 @KNOTE(i32*, i32) #1

declare dso_local i32 @postpipeevent(%struct.pipe*, i32) #1

declare dso_local i32 @gsignal(i32, i32) #1

declare dso_local i32 @proc_signal(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
