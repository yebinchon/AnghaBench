; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_InitFifoPtrs.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_InitFifoPtrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__gxfifo = type { i8*, i64, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GX_InitFifoPtrs(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.__gxfifo*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = bitcast i32* %10 to %struct.__gxfifo*
  store %struct.__gxfifo* %11, %struct.__gxfifo** %9, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i32 @_CPU_ISR_Disable(i8* %12)
  %14 = load i8*, i8** %6, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = ptrtoint i8* %14 to i64
  %17 = ptrtoint i8* %15 to i64
  %18 = sub i64 %16, %17
  %19 = inttoptr i64 %18 to i8*
  store i8* %19, i8** %8, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = load %struct.__gxfifo*, %struct.__gxfifo** %9, align 8
  %22 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load %struct.__gxfifo*, %struct.__gxfifo** %9, align 8
  %25 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %24, i32 0, i32 3
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load %struct.__gxfifo*, %struct.__gxfifo** %9, align 8
  %28 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = icmp ult i8* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %3
  %32 = load %struct.__gxfifo*, %struct.__gxfifo** %9, align 8
  %33 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = getelementptr i8, i8* %35, i64 %34
  store i8* %36, i8** %8, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = load %struct.__gxfifo*, %struct.__gxfifo** %9, align 8
  %39 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  br label %40

40:                                               ; preds = %31, %3
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @_CPU_ISR_Restore(i8* %41)
  ret void
}

declare dso_local i32 @_CPU_ISR_Disable(i8*) #1

declare dso_local i32 @_CPU_ISR_Restore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
