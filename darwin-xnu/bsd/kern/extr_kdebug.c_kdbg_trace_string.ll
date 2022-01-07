; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kdebug.c_kdbg_trace_string.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kdebug.c_kdbg_trace_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kdbg_trace_string(%struct.proc* %0, i64* %1, i64* %2, i64* %3, i64* %4) #0 {
  %6 = alloca %struct.proc*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [4 x i64], align 16
  store %struct.proc* %0, %struct.proc** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64* %4, i64** %10, align 8
  %14 = load %struct.proc*, %struct.proc** %6, align 8
  %15 = icmp ne %struct.proc* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %5
  %17 = load i64*, i64** %7, align 8
  store i64 0, i64* %17, align 8
  %18 = load i64*, i64** %8, align 8
  store i64 0, i64* %18, align 8
  %19 = load i64*, i64** %9, align 8
  store i64 0, i64* %19, align 8
  %20 = load i64*, i64** %10, align 8
  store i64 0, i64* %20, align 8
  br label %55

21:                                               ; preds = %5
  %22 = load %struct.proc*, %struct.proc** %6, align 8
  %23 = getelementptr inbounds %struct.proc, %struct.proc* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %11, align 8
  %25 = load %struct.proc*, %struct.proc** %6, align 8
  %26 = getelementptr inbounds %struct.proc, %struct.proc* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i64 @strlen(i8* %27)
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %12, align 4
  %30 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 0
  store i64 0, i64* %30, align 16
  %31 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 1
  store i64 0, i64* %31, align 8
  %32 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 2
  store i64 0, i64* %32, align 16
  %33 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 3
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* %12, align 4
  %35 = icmp sgt i32 %34, 32
  br i1 %35, label %36, label %37

36:                                               ; preds = %21
  store i32 32, i32* %12, align 4
  br label %37

37:                                               ; preds = %36, %21
  %38 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 0
  %39 = bitcast i64* %38 to i8*
  %40 = load i8*, i8** %11, align 8
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @strncpy(i8* %39, i8* %40, i32 %41)
  %43 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 0
  %44 = load i64, i64* %43, align 16
  %45 = load i64*, i64** %7, align 8
  store i64 %44, i64* %45, align 8
  %46 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64*, i64** %8, align 8
  store i64 %47, i64* %48, align 8
  %49 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 2
  %50 = load i64, i64* %49, align 16
  %51 = load i64*, i64** %9, align 8
  store i64 %50, i64* %51, align 8
  %52 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 3
  %53 = load i64, i64* %52, align 8
  %54 = load i64*, i64** %10, align 8
  store i64 %53, i64* %54, align 8
  br label %55

55:                                               ; preds = %37, %16
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
