; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacenc_utils.h_ff_init_nextband_map.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacenc_utils.h_ff_init_nextband_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64*, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i64* }

@RESERVED_BT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i8*)* @ff_init_nextband_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ff_init_nextband_map(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i8* %1, i8** %4, align 8
  store i8 0, i8* %5, align 1
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %18, %2
  %9 = load i32, i32* %7, align 4
  %10 = icmp slt i32 %9, 128
  br i1 %10, label %11, label %21

11:                                               ; preds = %8
  %12 = load i32, i32* %7, align 4
  %13 = trunc i32 %12 to i8
  %14 = load i8*, i8** %4, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  store i8 %13, i8* %17, align 1
  br label %18

18:                                               ; preds = %11
  %19 = load i32, i32* %7, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %7, align 4
  br label %8

21:                                               ; preds = %8
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %77, %21
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %23, %27
  br i1 %28, label %29, label %90

29:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %73, %29
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %31, %35
  br i1 %36, label %37, label %76

37:                                               ; preds = %30
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = mul nsw i32 %41, 16
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %40, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %72, label %49

49:                                               ; preds = %37
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = mul nsw i32 %53, 16
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %54, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %52, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @RESERVED_BT, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %49
  %63 = load i32, i32* %6, align 4
  %64 = mul nsw i32 %63, 16
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %64, %65
  %67 = trunc i32 %66 to i8
  %68 = load i8*, i8** %4, align 8
  %69 = load i8, i8* %5, align 1
  %70 = zext i8 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  store i8 %67, i8* %71, align 1
  store i8 %67, i8* %5, align 1
  br label %72

72:                                               ; preds = %62, %49, %37
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  br label %30

76:                                               ; preds = %30
  br label %77

77:                                               ; preds = %76
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 2
  %81 = load i64*, i64** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %87, %85
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %6, align 4
  br label %22

90:                                               ; preds = %22
  %91 = load i8, i8* %5, align 1
  %92 = load i8*, i8** %4, align 8
  %93 = load i8, i8* %5, align 1
  %94 = zext i8 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  store i8 %91, i8* %95, align 1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
