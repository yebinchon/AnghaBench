; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_pipe.c_pipe_touch.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_pipe.c_pipe_touch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe = type { %struct.TYPE_5__, %struct.TYPE_4__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.timespec = type { i32, i32 }

@PIPE_ATIME = common dso_local global i32 0, align 4
@PIPE_MTIME = common dso_local global i32 0, align 4
@PIPE_CTIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pipe*, i32)* @pipe_touch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pipe_touch(%struct.pipe* %0, i32 %1) #0 {
  %3 = alloca %struct.pipe*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.timespec, align 4
  store %struct.pipe* %0, %struct.pipe** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 @nanotime(%struct.timespec* %5)
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @PIPE_ATIME, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.pipe*, %struct.pipe** %3, align 8
  %15 = getelementptr inbounds %struct.pipe, %struct.pipe* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  store i32 %13, i32* %16, align 4
  %17 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.pipe*, %struct.pipe** %3, align 8
  %20 = getelementptr inbounds %struct.pipe, %struct.pipe* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 4
  br label %22

22:                                               ; preds = %11, %2
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @PIPE_MTIME, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.pipe*, %struct.pipe** %3, align 8
  %31 = getelementptr inbounds %struct.pipe, %struct.pipe* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 4
  %33 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.pipe*, %struct.pipe** %3, align 8
  %36 = getelementptr inbounds %struct.pipe, %struct.pipe* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 4
  br label %38

38:                                               ; preds = %27, %22
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @PIPE_CTIME, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.pipe*, %struct.pipe** %3, align 8
  %47 = getelementptr inbounds %struct.pipe, %struct.pipe* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 4
  %49 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.pipe*, %struct.pipe** %3, align 8
  %52 = getelementptr inbounds %struct.pipe, %struct.pipe* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 4
  br label %54

54:                                               ; preds = %43, %38
  ret void
}

declare dso_local i32 @nanotime(%struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
