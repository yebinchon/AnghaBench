; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_mach_loader.c_load_threadstate.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_mach_loader.c_load_threadstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64* }

@LOAD_FAILURE = common dso_local global i32 0, align 4
@LOAD_BADMACHO = common dso_local global i32 0, align 4
@LOAD_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i64, %struct.TYPE_3__*)* @load_threadstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_threadstate(i32 %0, i64* %1, i64 %2, %struct.TYPE_3__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %9, align 8
  store i64* null, i64** %13, align 8
  store i64 0, i64* %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i64, i64* %8, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %4
  %20 = load i64, i64* %8, align 8
  store i64 %20, i64* %14, align 8
  %21 = load i64, i64* %14, align 8
  %22 = call i64* @kalloc(i64 %21)
  store i64* %22, i64** %13, align 8
  %23 = load i64*, i64** %13, align 8
  %24 = icmp eq i64* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* @LOAD_FAILURE, align 4
  store i32 %26, i32* %5, align 4
  br label %76

27:                                               ; preds = %19
  %28 = load i64*, i64** %13, align 8
  %29 = load i64*, i64** %7, align 8
  %30 = load i64, i64* %14, align 8
  %31 = call i32 @memcpy(i64* %28, i64* %29, i64 %30)
  %32 = load i64*, i64** %13, align 8
  store i64* %32, i64** %7, align 8
  br label %33

33:                                               ; preds = %27, %4
  br label %34

34:                                               ; preds = %55, %33
  %35 = load i64, i64* %8, align 8
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %59

37:                                               ; preds = %34
  %38 = load i64*, i64** %7, align 8
  %39 = getelementptr inbounds i64, i64* %38, i32 1
  store i64* %39, i64** %7, align 8
  %40 = load i64, i64* %38, align 8
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %11, align 4
  %42 = load i64*, i64** %7, align 8
  %43 = getelementptr inbounds i64, i64* %42, i32 1
  store i64* %43, i64** %7, align 8
  %44 = load i64, i64* %42, align 8
  store i64 %44, i64* %10, align 8
  %45 = load i64, i64* %10, align 8
  %46 = call i64 @os_add_and_mul_overflow(i64 %45, i32 2, i32 8, i64* %12)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %37
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* %12, align 8
  %51 = call i64 @os_sub_overflow(i64 %49, i64 %50, i64* %8)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48, %37
  %54 = load i32, i32* @LOAD_BADMACHO, align 4
  store i32 %54, i32* %15, align 4
  br label %67

55:                                               ; preds = %48
  %56 = load i64, i64* %10, align 8
  %57 = load i64*, i64** %7, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 %56
  store i64* %58, i64** %7, align 8
  br label %34

59:                                               ; preds = %34
  %60 = load i64*, i64** %13, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  store i64* %60, i64** %62, align 8
  %63 = load i64, i64* %14, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load i32, i32* @LOAD_SUCCESS, align 4
  store i32 %66, i32* %5, align 4
  br label %76

67:                                               ; preds = %53
  %68 = load i64*, i64** %13, align 8
  %69 = icmp ne i64* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load i64*, i64** %13, align 8
  %72 = load i64, i64* %14, align 8
  %73 = call i32 @kfree(i64* %71, i64 %72)
  br label %74

74:                                               ; preds = %70, %67
  %75 = load i32, i32* %15, align 4
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %74, %59, %25
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i64* @kalloc(i64) #1

declare dso_local i32 @memcpy(i64*, i64*, i64) #1

declare dso_local i64 @os_add_and_mul_overflow(i64, i32, i32, i64*) #1

declare dso_local i64 @os_sub_overflow(i64, i64, i64*) #1

declare dso_local i32 @kfree(i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
