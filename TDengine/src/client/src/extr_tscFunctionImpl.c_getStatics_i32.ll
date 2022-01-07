; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscFunctionImpl.c_getStatics_i32.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscFunctionImpl.c_getStatics_i32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT64_MAX = common dso_local global i64 0, align 8
@INT64_MIN = common dso_local global i64 0, align 8
@INT16_MAX = common dso_local global i64 0, align 8
@TSDB_DATA_TYPE_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64*, i64, i64*, i64*, i64*, i64*, i64*, i64*)* @getStatics_i32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getStatics_i32(i64* %0, i64* %1, i64 %2, i64* %3, i64* %4, i64* %5, i64* %6, i64* %7, i64* %8) #0 {
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64, align 8
  store i64* %0, i64** %10, align 8
  store i64* %1, i64** %11, align 8
  store i64 %2, i64* %12, align 8
  store i64* %3, i64** %13, align 8
  store i64* %4, i64** %14, align 8
  store i64* %5, i64** %15, align 8
  store i64* %6, i64** %16, align 8
  store i64* %7, i64** %17, align 8
  store i64* %8, i64** %18, align 8
  %20 = load i64, i64* @INT64_MAX, align 8
  %21 = load i64*, i64** %13, align 8
  store i64 %20, i64* %21, align 8
  %22 = load i64, i64* @INT64_MIN, align 8
  %23 = load i64*, i64** %14, align 8
  store i64 %22, i64* %23, align 8
  %24 = load i64*, i64** %16, align 8
  store i64 0, i64* %24, align 8
  %25 = load i64*, i64** %17, align 8
  store i64 0, i64* %25, align 8
  %26 = load i64, i64* %12, align 8
  %27 = load i64, i64* @INT16_MAX, align 8
  %28 = icmp sle i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  store i64 0, i64* %19, align 8
  br label %31

31:                                               ; preds = %86, %9
  %32 = load i64, i64* %19, align 8
  %33 = load i64, i64* %12, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %89

35:                                               ; preds = %31
  %36 = load i64*, i64** %11, align 8
  %37 = load i64, i64* %19, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i32, i32* @TSDB_DATA_TYPE_INT, align 4
  %40 = call i64 @isNull(i64* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load i64*, i64** %18, align 8
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %43, align 8
  br label %86

46:                                               ; preds = %35
  %47 = load i64*, i64** %11, align 8
  %48 = load i64, i64* %19, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = load i64*, i64** %15, align 8
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, %50
  store i64 %53, i64* %51, align 8
  %54 = load i64*, i64** %13, align 8
  %55 = load i64, i64* %54, align 8
  %56 = load i64*, i64** %11, align 8
  %57 = load i64, i64* %19, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = icmp sgt i64 %55, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %46
  %62 = load i64*, i64** %11, align 8
  %63 = load i64, i64* %19, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = load i64*, i64** %13, align 8
  store i64 %65, i64* %66, align 8
  %67 = load i64, i64* %19, align 8
  %68 = load i64*, i64** %16, align 8
  store i64 %67, i64* %68, align 8
  br label %69

69:                                               ; preds = %61, %46
  %70 = load i64*, i64** %14, align 8
  %71 = load i64, i64* %70, align 8
  %72 = load i64*, i64** %11, align 8
  %73 = load i64, i64* %19, align 8
  %74 = getelementptr inbounds i64, i64* %72, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = icmp slt i64 %71, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %69
  %78 = load i64*, i64** %11, align 8
  %79 = load i64, i64* %19, align 8
  %80 = getelementptr inbounds i64, i64* %78, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = load i64*, i64** %14, align 8
  store i64 %81, i64* %82, align 8
  %83 = load i64, i64* %19, align 8
  %84 = load i64*, i64** %17, align 8
  store i64 %83, i64* %84, align 8
  br label %85

85:                                               ; preds = %77, %69
  br label %86

86:                                               ; preds = %85, %42
  %87 = load i64, i64* %19, align 8
  %88 = add nsw i64 %87, 1
  store i64 %88, i64* %19, align 8
  br label %31

89:                                               ; preds = %31
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @isNull(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
