; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_pipe.c_filt_pipewrite_common.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_pipe.c_filt_pipewrite_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i64, i32, i64, i32 }
%struct.pipe = type { i32, %struct.TYPE_2__, %struct.pipe* }
%struct.TYPE_2__ = type { i64, i64 }

@PIPE_DRAIN = common dso_local global i32 0, align 4
@PIPE_EOF = common dso_local global i32 0, align 4
@EV_EOF = common dso_local global i32 0, align 4
@PIPE_BUF = common dso_local global i64 0, align 8
@NOTE_LOWAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knote*, %struct.pipe*)* @filt_pipewrite_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filt_pipewrite_common(%struct.knote* %0, %struct.pipe* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.knote*, align 8
  %5 = alloca %struct.pipe*, align 8
  %6 = alloca %struct.pipe*, align 8
  %7 = alloca i64, align 8
  store %struct.knote* %0, %struct.knote** %4, align 8
  store %struct.pipe* %1, %struct.pipe** %5, align 8
  %8 = load %struct.pipe*, %struct.pipe** %5, align 8
  %9 = getelementptr inbounds %struct.pipe, %struct.pipe* %8, i32 0, i32 2
  %10 = load %struct.pipe*, %struct.pipe** %9, align 8
  store %struct.pipe* %10, %struct.pipe** %6, align 8
  %11 = load %struct.pipe*, %struct.pipe** %6, align 8
  %12 = icmp eq %struct.pipe* %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %2
  %14 = load %struct.pipe*, %struct.pipe** %6, align 8
  %15 = getelementptr inbounds %struct.pipe, %struct.pipe* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @PIPE_DRAIN, align 4
  %18 = load i32, i32* @PIPE_EOF, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %13, %2
  %23 = load %struct.knote*, %struct.knote** %4, align 8
  %24 = getelementptr inbounds %struct.knote, %struct.knote* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load i32, i32* @EV_EOF, align 4
  %26 = load %struct.knote*, %struct.knote** %4, align 8
  %27 = getelementptr inbounds %struct.knote, %struct.knote* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 8
  store i32 1, i32* %3, align 4
  br label %82

30:                                               ; preds = %13
  %31 = load %struct.pipe*, %struct.pipe** %6, align 8
  %32 = call i64 @MAX_PIPESIZE(%struct.pipe* %31)
  %33 = load %struct.pipe*, %struct.pipe** %6, align 8
  %34 = getelementptr inbounds %struct.pipe, %struct.pipe* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %32, %36
  %38 = load %struct.knote*, %struct.knote** %4, align 8
  %39 = getelementptr inbounds %struct.knote, %struct.knote* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load i64, i64* @PIPE_BUF, align 8
  store i64 %40, i64* %7, align 8
  %41 = load %struct.knote*, %struct.knote** %4, align 8
  %42 = getelementptr inbounds %struct.knote, %struct.knote* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @NOTE_LOWAT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %75

47:                                               ; preds = %30
  %48 = load %struct.pipe*, %struct.pipe** %6, align 8
  %49 = getelementptr inbounds %struct.pipe, %struct.pipe* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %47
  %54 = load %struct.knote*, %struct.knote** %4, align 8
  %55 = getelementptr inbounds %struct.knote, %struct.knote* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.pipe*, %struct.pipe** %6, align 8
  %58 = call i64 @MAX_PIPESIZE(%struct.pipe* %57)
  %59 = icmp sgt i64 %56, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load %struct.pipe*, %struct.pipe** %6, align 8
  %62 = call i64 @MAX_PIPESIZE(%struct.pipe* %61)
  store i64 %62, i64* %7, align 8
  br label %74

63:                                               ; preds = %53, %47
  %64 = load %struct.knote*, %struct.knote** %4, align 8
  %65 = getelementptr inbounds %struct.knote, %struct.knote* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %7, align 8
  %68 = icmp sgt i64 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load %struct.knote*, %struct.knote** %4, align 8
  %71 = getelementptr inbounds %struct.knote, %struct.knote* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %7, align 8
  br label %73

73:                                               ; preds = %69, %63
  br label %74

74:                                               ; preds = %73, %60
  br label %75

75:                                               ; preds = %74, %30
  %76 = load %struct.knote*, %struct.knote** %4, align 8
  %77 = getelementptr inbounds %struct.knote, %struct.knote* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %7, align 8
  %80 = icmp sge i64 %78, %79
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %75, %22
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i64 @MAX_PIPESIZE(%struct.pipe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
