; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscFunctionImpl.c_getStatics_i8.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscFunctionImpl.c_getStatics_i8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT64_MAX = common dso_local global i64 0, align 8
@INT64_MIN = common dso_local global i64 0, align 8
@INT16_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64, i64*, i64, i64*, i64*, i64*, i64*, i64*, i64*)* @getStatics_i8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getStatics_i8(i64* %0, i64 %1, i64* %2, i64 %3, i64* %4, i64* %5, i64* %6, i64* %7, i64* %8, i64* %9) #0 {
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i64, align 8
  store i64* %0, i64** %11, align 8
  store i64 %1, i64* %12, align 8
  store i64* %2, i64** %13, align 8
  store i64 %3, i64* %14, align 8
  store i64* %4, i64** %15, align 8
  store i64* %5, i64** %16, align 8
  store i64* %6, i64** %17, align 8
  store i64* %7, i64** %18, align 8
  store i64* %8, i64** %19, align 8
  store i64* %9, i64** %20, align 8
  %22 = load i64, i64* @INT64_MAX, align 8
  %23 = load i64*, i64** %15, align 8
  store i64 %22, i64* %23, align 8
  %24 = load i64, i64* @INT64_MIN, align 8
  %25 = load i64*, i64** %16, align 8
  store i64 %24, i64* %25, align 8
  %26 = load i64*, i64** %18, align 8
  store i64 0, i64* %26, align 8
  %27 = load i64*, i64** %19, align 8
  store i64 0, i64* %27, align 8
  %28 = load i64, i64* %14, align 8
  %29 = load i64, i64* @INT16_MAX, align 8
  %30 = icmp sle i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  store i64 0, i64* %21, align 8
  br label %33

33:                                               ; preds = %89, %10
  %34 = load i64, i64* %21, align 8
  %35 = load i64, i64* %14, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %92

37:                                               ; preds = %33
  %38 = load i64*, i64** %13, align 8
  %39 = load i64, i64* %21, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = bitcast i64* %40 to i8*
  %42 = load i64, i64* %12, align 8
  %43 = call i64 @isNull(i8* %41, i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %37
  %46 = load i64*, i64** %20, align 8
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %46, align 8
  br label %89

49:                                               ; preds = %37
  %50 = load i64*, i64** %13, align 8
  %51 = load i64, i64* %21, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = load i64*, i64** %17, align 8
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, %53
  store i64 %56, i64* %54, align 8
  %57 = load i64*, i64** %15, align 8
  %58 = load i64, i64* %57, align 8
  %59 = load i64*, i64** %13, align 8
  %60 = load i64, i64* %21, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = icmp sgt i64 %58, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %49
  %65 = load i64*, i64** %13, align 8
  %66 = load i64, i64* %21, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = load i64*, i64** %15, align 8
  store i64 %68, i64* %69, align 8
  %70 = load i64, i64* %21, align 8
  %71 = load i64*, i64** %18, align 8
  store i64 %70, i64* %71, align 8
  br label %72

72:                                               ; preds = %64, %49
  %73 = load i64*, i64** %16, align 8
  %74 = load i64, i64* %73, align 8
  %75 = load i64*, i64** %13, align 8
  %76 = load i64, i64* %21, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = icmp slt i64 %74, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %72
  %81 = load i64*, i64** %13, align 8
  %82 = load i64, i64* %21, align 8
  %83 = getelementptr inbounds i64, i64* %81, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = load i64*, i64** %16, align 8
  store i64 %84, i64* %85, align 8
  %86 = load i64, i64* %21, align 8
  %87 = load i64*, i64** %19, align 8
  store i64 %86, i64* %87, align 8
  br label %88

88:                                               ; preds = %80, %72
  br label %89

89:                                               ; preds = %88, %45
  %90 = load i64, i64* %21, align 8
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* %21, align 8
  br label %33

92:                                               ; preds = %33
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @isNull(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
