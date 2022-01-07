; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_latm_parser.c_latm_find_frame_end.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_latm_parser.c_latm_find_frame_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@LATM_MASK = common dso_local global i32 0, align 4
@LATM_HEADER = common dso_local global i32 0, align 4
@LATM_SIZE_MASK = common dso_local global i32 0, align 4
@END_NOT_FOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i32)* @latm_find_frame_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @latm_find_frame_end(%struct.TYPE_7__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %8, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %9, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %10, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %57, label %26

26:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %27

27:                                               ; preds = %53, %26
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %56

31:                                               ; preds = %27
  %32 = load i32, i32* %12, align 4
  %33 = shl i32 %32, 8
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %33, %38
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* @LATM_MASK, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* @LATM_HEADER, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %31
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = sub nsw i32 0, %48
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  store i32 1, i32* %10, align 4
  br label %56

52:                                               ; preds = %31
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %11, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %11, align 4
  br label %27

56:                                               ; preds = %45, %27
  br label %57

57:                                               ; preds = %56, %3
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %87

60:                                               ; preds = %57
  %61 = load i32, i32* %7, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store i32 0, i32* %4, align 4
  br label %100

64:                                               ; preds = %60
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* @LATM_SIZE_MASK, align 4
  %67 = and i32 %65, %66
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %67, %70
  %72 = load i32, i32* %7, align 4
  %73 = icmp sle i32 %71, %72
  br i1 %73, label %74, label %86

74:                                               ; preds = %64
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  store i32 0, i32* %76, align 4
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  store i32 -1, i32* %78, align 4
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* @LATM_SIZE_MASK, align 4
  %81 = and i32 %79, %80
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = sub nsw i32 %81, %84
  store i32 %85, i32* %4, align 4
  br label %100

86:                                               ; preds = %64
  br label %87

87:                                               ; preds = %86, %57
  %88 = load i32, i32* %7, align 4
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, %88
  store i32 %92, i32* %90, align 4
  %93 = load i32, i32* %10, align 4
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* %12, align 4
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* @END_NOT_FOUND, align 4
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %87, %74, %63
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
