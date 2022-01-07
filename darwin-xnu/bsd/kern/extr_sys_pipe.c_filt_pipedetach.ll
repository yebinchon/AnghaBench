; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_pipe.c_filt_pipedetach.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_pipe.c_filt_pipedetach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.pipe = type { i32, %struct.TYPE_3__, %struct.pipe* }
%struct.TYPE_3__ = type { i32 }

@EVFILT_WRITE = common dso_local global i64 0, align 8
@PIPE_KNOTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.knote*)* @filt_pipedetach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filt_pipedetach(%struct.knote* %0) #0 {
  %2 = alloca %struct.knote*, align 8
  %3 = alloca %struct.pipe*, align 8
  store %struct.knote* %0, %struct.knote** %2, align 8
  %4 = load %struct.knote*, %struct.knote** %2, align 8
  %5 = getelementptr inbounds %struct.knote, %struct.knote* %4, i32 0, i32 1
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.pipe*
  store %struct.pipe* %9, %struct.pipe** %3, align 8
  %10 = load %struct.pipe*, %struct.pipe** %3, align 8
  %11 = call i32 @PIPE_LOCK(%struct.pipe* %10)
  %12 = load %struct.knote*, %struct.knote** %2, align 8
  %13 = getelementptr inbounds %struct.knote, %struct.knote* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @EVFILT_WRITE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %1
  %18 = load %struct.pipe*, %struct.pipe** %3, align 8
  %19 = getelementptr inbounds %struct.pipe, %struct.pipe* %18, i32 0, i32 2
  %20 = load %struct.pipe*, %struct.pipe** %19, align 8
  %21 = icmp eq %struct.pipe* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load %struct.pipe*, %struct.pipe** %3, align 8
  %24 = call i32 @PIPE_UNLOCK(%struct.pipe* %23)
  br label %54

25:                                               ; preds = %17
  %26 = load %struct.pipe*, %struct.pipe** %3, align 8
  %27 = getelementptr inbounds %struct.pipe, %struct.pipe* %26, i32 0, i32 2
  %28 = load %struct.pipe*, %struct.pipe** %27, align 8
  store %struct.pipe* %28, %struct.pipe** %3, align 8
  br label %29

29:                                               ; preds = %25, %1
  %30 = load %struct.pipe*, %struct.pipe** %3, align 8
  %31 = getelementptr inbounds %struct.pipe, %struct.pipe* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @PIPE_KNOTE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %29
  %37 = load %struct.pipe*, %struct.pipe** %3, align 8
  %38 = getelementptr inbounds %struct.pipe, %struct.pipe* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load %struct.knote*, %struct.knote** %2, align 8
  %41 = call i64 @KNOTE_DETACH(i32* %39, %struct.knote* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %36
  %44 = load i32, i32* @PIPE_KNOTE, align 4
  %45 = xor i32 %44, -1
  %46 = load %struct.pipe*, %struct.pipe** %3, align 8
  %47 = getelementptr inbounds %struct.pipe, %struct.pipe* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, %45
  store i32 %49, i32* %47, align 8
  br label %50

50:                                               ; preds = %43, %36
  br label %51

51:                                               ; preds = %50, %29
  %52 = load %struct.pipe*, %struct.pipe** %3, align 8
  %53 = call i32 @PIPE_UNLOCK(%struct.pipe* %52)
  br label %54

54:                                               ; preds = %51, %22
  ret void
}

declare dso_local i32 @PIPE_LOCK(%struct.pipe*) #1

declare dso_local i32 @PIPE_UNLOCK(%struct.pipe*) #1

declare dso_local i64 @KNOTE_DETACH(i32*, %struct.knote*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
