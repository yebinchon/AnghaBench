; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_mach_loader.c_load_threadstack.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_mach_loader.c_load_threadstack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@UINT32_MAX = common dso_local global i32 0, align 4
@LOAD_BADMACHO = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@LOAD_FAILURE = common dso_local global i32 0, align 4
@LOAD_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, i32*, i32*, %struct.TYPE_3__*)* @load_threadstack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_threadstack(i32 %0, i32* %1, i32 %2, i32* %3, i32* %4, %struct.TYPE_3__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_3__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** %13, align 8
  br label %18

18:                                               ; preds = %73, %6
  %19 = load i32, i32* %10, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %78

21:                                               ; preds = %18
  %22 = load i32*, i32** %9, align 8
  %23 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %23, i32** %9, align 8
  %24 = load i32, i32* %22, align 4
  store i32 %24, i32* %16, align 4
  %25 = load i32*, i32** %9, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %9, align 8
  %27 = load i32, i32* %25, align 4
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* @UINT32_MAX, align 4
  %29 = sub nsw i32 %28, 2
  %30 = load i32, i32* %15, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %40, label %32

32:                                               ; preds = %21
  %33 = load i32, i32* @UINT32_MAX, align 4
  %34 = sext i32 %33 to i64
  %35 = udiv i64 %34, 4
  %36 = load i32, i32* %15, align 4
  %37 = add nsw i32 %36, 2
  %38 = sext i32 %37 to i64
  %39 = icmp ult i64 %35, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %32, %21
  %41 = load i32, i32* @LOAD_BADMACHO, align 4
  store i32 %41, i32* %7, align 4
  br label %80

42:                                               ; preds = %32
  %43 = load i32, i32* %15, align 4
  %44 = add nsw i32 %43, 2
  %45 = sext i32 %44 to i64
  %46 = mul i64 %45, 4
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %17, align 4
  %48 = load i32, i32* %17, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = load i32, i32* @LOAD_BADMACHO, align 4
  store i32 %52, i32* %7, align 4
  br label %80

53:                                               ; preds = %42
  %54 = load i32, i32* %17, align 4
  %55 = load i32, i32* %10, align 4
  %56 = sub nsw i32 %55, %54
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %16, align 4
  %59 = load i32*, i32** %9, align 8
  %60 = ptrtoint i32* %59 to i32
  %61 = load i32, i32* %15, align 4
  %62 = load i32*, i32** %11, align 8
  %63 = load i32*, i32** %12, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @thread_userstack(i32 %57, i32 %58, i32 %60, i32 %61, i32* %62, i32* %63, i32 %66)
  store i64 %67, i64* %14, align 8
  %68 = load i64, i64* %14, align 8
  %69 = load i64, i64* @KERN_SUCCESS, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %53
  %72 = load i32, i32* @LOAD_FAILURE, align 4
  store i32 %72, i32* %7, align 4
  br label %80

73:                                               ; preds = %53
  %74 = load i32, i32* %15, align 4
  %75 = load i32*, i32** %9, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  store i32* %77, i32** %9, align 8
  br label %18

78:                                               ; preds = %18
  %79 = load i32, i32* @LOAD_SUCCESS, align 4
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %78, %71, %51, %40
  %81 = load i32, i32* %7, align 4
  ret i32 %81
}

declare dso_local i64 @thread_userstack(i32, i32, i32, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
