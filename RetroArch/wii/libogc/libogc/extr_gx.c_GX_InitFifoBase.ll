; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_InitFifoBase.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_InitFifoBase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__gxfifo = type { i32, i32, i32, i64 }

@GX_FIFO_MINSIZE = common dso_local global i32 0, align 4
@GX_FIFO_HIWATERMARK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GX_InitFifoBase(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.__gxfifo*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = bitcast i32* %8 to %struct.__gxfifo*
  store %struct.__gxfifo* %9, %struct.__gxfifo** %7, align 8
  %10 = load %struct.__gxfifo*, %struct.__gxfifo** %7, align 8
  %11 = icmp ne %struct.__gxfifo* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @GX_FIFO_MINSIZE, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %3
  br label %47

17:                                               ; preds = %12
  %18 = load i8*, i8** %5, align 8
  %19 = ptrtoint i8* %18 to i32
  %20 = load %struct.__gxfifo*, %struct.__gxfifo** %7, align 8
  %21 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = ptrtoint i8* %22 to i32
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %23, %24
  %26 = sub nsw i32 %25, 4
  %27 = load %struct.__gxfifo*, %struct.__gxfifo** %7, align 8
  %28 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.__gxfifo*, %struct.__gxfifo** %7, align 8
  %31 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load %struct.__gxfifo*, %struct.__gxfifo** %7, align 8
  %33 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %32, i32 0, i32 3
  store i64 0, i64* %33, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* @GX_FIFO_HIWATERMARK, align 8
  %38 = sub nsw i64 %36, %37
  %39 = load i32, i32* %6, align 4
  %40 = ashr i32 %39, 1
  %41 = and i32 %40, 2147483616
  %42 = call i32 @GX_InitFifoLimits(i32* %34, i64 %38, i32 %41)
  %43 = load i32*, i32** %4, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @GX_InitFifoPtrs(i32* %43, i8* %44, i8* %45)
  br label %47

47:                                               ; preds = %17, %16
  ret void
}

declare dso_local i32 @GX_InitFifoLimits(i32*, i64, i32) #1

declare dso_local i32 @GX_InitFifoPtrs(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
