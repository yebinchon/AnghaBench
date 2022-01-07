; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_signature_lookup.c_get_l1dist.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_signature_lookup.c_get_l1dist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64* }

@SIGELEM_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*, i64*, i64*)* @get_l1dist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_l1dist(i32* %0, %struct.TYPE_3__* %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %90, %4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @SIGELEM_SIZE, align 4
  %16 = sdiv i32 %15, 5
  %17 = icmp ult i32 %14, %16
  br i1 %17, label %18, label %93

18:                                               ; preds = %13
  %19 = load i64*, i64** %7, align 8
  %20 = load i32, i32* %9, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = load i64*, i64** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %23, %28
  br i1 %29, label %30, label %89

30:                                               ; preds = %18
  %31 = load i64*, i64** %7, align 8
  %32 = load i32, i32* %9, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %11, align 8
  %36 = load i64*, i64** %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %12, align 8
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* %12, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %66

44:                                               ; preds = %30
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = load i64, i64* %12, align 8
  %49 = sub nsw i64 243, %48
  %50 = load i64, i64* %12, align 8
  %51 = sub nsw i64 242, %50
  %52 = mul nsw i64 %49, %51
  %53 = sdiv i64 %52, 2
  %54 = sub nsw i64 29403, %53
  %55 = load i64, i64* %11, align 8
  %56 = add nsw i64 %54, %55
  %57 = load i64, i64* %12, align 8
  %58 = sub nsw i64 %56, %57
  %59 = sub nsw i64 %58, 1
  %60 = getelementptr inbounds i64, i64* %47, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = zext i32 %62 to i64
  %64 = add nsw i64 %63, %61
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %10, align 4
  br label %88

66:                                               ; preds = %30
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = load i64, i64* %11, align 8
  %71 = sub nsw i64 243, %70
  %72 = load i64, i64* %11, align 8
  %73 = sub nsw i64 242, %72
  %74 = mul nsw i64 %71, %73
  %75 = sdiv i64 %74, 2
  %76 = sub nsw i64 29403, %75
  %77 = load i64, i64* %12, align 8
  %78 = add nsw i64 %76, %77
  %79 = load i64, i64* %11, align 8
  %80 = sub nsw i64 %78, %79
  %81 = sub nsw i64 %80, 1
  %82 = getelementptr inbounds i64, i64* %69, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* %10, align 4
  %85 = zext i32 %84 to i64
  %86 = add nsw i64 %85, %83
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %10, align 4
  br label %88

88:                                               ; preds = %66, %44
  br label %89

89:                                               ; preds = %88, %18
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %9, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %9, align 4
  br label %13

93:                                               ; preds = %13
  %94 = load i32, i32* %10, align 4
  ret i32 %94
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
