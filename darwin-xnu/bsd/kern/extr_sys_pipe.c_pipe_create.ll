; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_pipe.c_pipe_create.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_pipe.c_pipe_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe = type { i32 }

@pipe_zone = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PIPE_ATIME = common dso_local global i32 0, align 4
@PIPE_MTIME = common dso_local global i32 0, align 4
@PIPE_CTIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pipe**)* @pipe_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pipe_create(%struct.pipe** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pipe**, align 8
  %4 = alloca %struct.pipe*, align 8
  store %struct.pipe** %0, %struct.pipe*** %3, align 8
  %5 = load i32, i32* @pipe_zone, align 4
  %6 = call i64 @zalloc(i32 %5)
  %7 = inttoptr i64 %6 to %struct.pipe*
  store %struct.pipe* %7, %struct.pipe** %4, align 8
  %8 = load %struct.pipe*, %struct.pipe** %4, align 8
  %9 = load %struct.pipe**, %struct.pipe*** %3, align 8
  store %struct.pipe* %8, %struct.pipe** %9, align 8
  %10 = icmp eq %struct.pipe* %8, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  store i32 %12, i32* %2, align 4
  br label %23

13:                                               ; preds = %1
  %14 = load %struct.pipe*, %struct.pipe** %4, align 8
  %15 = call i32 @bzero(%struct.pipe* %14, i32 4)
  %16 = load %struct.pipe*, %struct.pipe** %4, align 8
  %17 = load i32, i32* @PIPE_ATIME, align 4
  %18 = load i32, i32* @PIPE_MTIME, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @PIPE_CTIME, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @pipe_touch(%struct.pipe* %16, i32 %21)
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %13, %11
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i64 @zalloc(i32) #1

declare dso_local i32 @bzero(%struct.pipe*, i32) #1

declare dso_local i32 @pipe_touch(%struct.pipe*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
