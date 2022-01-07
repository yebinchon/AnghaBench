; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_subr.c_ureadc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_subr.c_ureadc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uio = type { i64, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"ureadc: non-positive resid\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"ureadc: non-positive iovcnt\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"ureadc: non-positive iovlen\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@caddr_t = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ureadc(i32 %0, %struct.uio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.uio*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.uio* %1, %struct.uio** %5, align 8
  %6 = load %struct.uio*, %struct.uio** %5, align 8
  %7 = call i64 @uio_resid(%struct.uio* %6)
  %8 = icmp sle i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = call i32 @panic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %2
  %12 = load %struct.uio*, %struct.uio** %5, align 8
  %13 = call i32 @uio_update(%struct.uio* %12, i32 0)
  %14 = load %struct.uio*, %struct.uio** %5, align 8
  %15 = getelementptr inbounds %struct.uio, %struct.uio* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = call i32 @panic(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %11
  %21 = load %struct.uio*, %struct.uio** %5, align 8
  %22 = call i64 @uio_curriovlen(%struct.uio* %21)
  %23 = icmp sle i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i32 @panic(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %20
  %27 = load %struct.uio*, %struct.uio** %5, align 8
  %28 = getelementptr inbounds %struct.uio, %struct.uio* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  switch i32 %30, label %54 [
    i32 129, label %31
    i32 130, label %31
    i32 132, label %31
    i32 133, label %31
    i32 128, label %31
    i32 131, label %31
    i32 134, label %44
    i32 135, label %44
  ]

31:                                               ; preds = %26, %26, %26, %26, %26, %26
  %32 = load %struct.uio*, %struct.uio** %5, align 8
  %33 = getelementptr inbounds %struct.uio, %struct.uio* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @subyte(i32 %37, i32 %38)
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = load i32, i32* @EFAULT, align 4
  store i32 %42, i32* %3, align 4
  br label %58

43:                                               ; preds = %31
  br label %55

44:                                               ; preds = %26, %26
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @caddr_t, align 4
  %47 = load %struct.uio*, %struct.uio** %5, align 8
  %48 = getelementptr inbounds %struct.uio, %struct.uio* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32* @CAST_DOWN(i32 %46, i32 %52)
  store i32 %45, i32* %53, align 4
  br label %55

54:                                               ; preds = %26
  br label %55

55:                                               ; preds = %54, %44, %43
  %56 = load %struct.uio*, %struct.uio** %5, align 8
  %57 = call i32 @uio_update(%struct.uio* %56, i32 1)
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %55, %41
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i64 @uio_resid(%struct.uio*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @uio_update(%struct.uio*, i32) #1

declare dso_local i64 @uio_curriovlen(%struct.uio*) #1

declare dso_local i32 @subyte(i32, i32) #1

declare dso_local i32* @CAST_DOWN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
