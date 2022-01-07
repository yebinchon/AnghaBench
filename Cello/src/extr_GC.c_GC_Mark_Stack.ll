; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_GC.c_GC_Mark_Stack.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_GC.c_GC_Mark_Stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GC = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.GC*)* @GC_Mark_Stack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GC_Mark_Stack(%struct.GC* %0) #0 {
  %2 = alloca %struct.GC*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.GC* %0, %struct.GC** %2, align 8
  store i64 0, i64* %3, align 8
  %8 = load %struct.GC*, %struct.GC** %2, align 8
  %9 = getelementptr inbounds %struct.GC, %struct.GC* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %4, align 8
  %11 = ptrtoint i64* %3 to i64
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %60

16:                                               ; preds = %1
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* %5, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %38

20:                                               ; preds = %16
  %21 = load i64, i64* %5, align 8
  store i64 %21, i64* %6, align 8
  br label %22

22:                                               ; preds = %32, %20
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* %4, align 8
  %25 = icmp sge i64 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %22
  %27 = load %struct.GC*, %struct.GC** %2, align 8
  %28 = load i64, i64* %6, align 8
  %29 = inttoptr i64 %28 to i64*
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @GC_Mark_Item(%struct.GC* %27, i64 %30)
  br label %32

32:                                               ; preds = %26
  %33 = load i64, i64* %6, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = getelementptr inbounds i8, i8* %34, i64 -8
  %36 = ptrtoint i8* %35 to i64
  store i64 %36, i64* %6, align 8
  br label %22

37:                                               ; preds = %22
  br label %38

38:                                               ; preds = %37, %16
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* %5, align 8
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %42, label %60

42:                                               ; preds = %38
  %43 = load i64, i64* %5, align 8
  store i64 %43, i64* %7, align 8
  br label %44

44:                                               ; preds = %54, %42
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* %4, align 8
  %47 = icmp sle i64 %45, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %44
  %49 = load %struct.GC*, %struct.GC** %2, align 8
  %50 = load i64, i64* %7, align 8
  %51 = inttoptr i64 %50 to i64*
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @GC_Mark_Item(%struct.GC* %49, i64 %52)
  br label %54

54:                                               ; preds = %48
  %55 = load i64, i64* %7, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = getelementptr inbounds i8, i8* %56, i64 8
  %58 = ptrtoint i8* %57 to i64
  store i64 %58, i64* %7, align 8
  br label %44

59:                                               ; preds = %44
  br label %60

60:                                               ; preds = %15, %59, %38
  ret void
}

declare dso_local i32 @GC_Mark_Item(%struct.GC*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
