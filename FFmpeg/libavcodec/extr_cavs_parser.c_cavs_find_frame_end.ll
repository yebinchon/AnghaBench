; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cavs_parser.c_cavs_find_frame_end.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cavs_parser.c_cavs_find_frame_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@PIC_I_START_CODE = common dso_local global i32 0, align 4
@PIC_PB_START_CODE = common dso_local global i32 0, align 4
@SLICE_MAX_START_CODE = common dso_local global i32 0, align 4
@END_NOT_FOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32)* @cavs_find_frame_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cavs_find_frame_end(%struct.TYPE_3__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %10, align 4
  store i32 0, i32* %9, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %48, label %19

19:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %44, %19
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %47

24:                                               ; preds = %20
  %25 = load i32, i32* %10, align 4
  %26 = shl i32 %25, 8
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %26, %31
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @PIC_I_START_CODE, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %24
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @PIC_PB_START_CODE, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36, %24
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %9, align 4
  store i32 1, i32* %8, align 4
  br label %47

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  br label %20

47:                                               ; preds = %40, %20
  br label %48

48:                                               ; preds = %47, %3
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %89

51:                                               ; preds = %48
  %52 = load i32, i32* %7, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %97

55:                                               ; preds = %51
  br label %56

56:                                               ; preds = %85, %55
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %88

60:                                               ; preds = %56
  %61 = load i32, i32* %10, align 4
  %62 = shl i32 %61, 8
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %62, %67
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = and i32 %69, -256
  %71 = icmp eq i32 %70, 256
  br i1 %71, label %72, label %84

72:                                               ; preds = %60
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @SLICE_MAX_START_CODE, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %72
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  store i32 0, i32* %78, align 4
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  store i32 -1, i32* %80, align 4
  %81 = load i32, i32* %9, align 4
  %82 = sub nsw i32 %81, 3
  store i32 %82, i32* %4, align 4
  br label %97

83:                                               ; preds = %72
  br label %84

84:                                               ; preds = %83, %60
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %9, align 4
  br label %56

88:                                               ; preds = %56
  br label %89

89:                                               ; preds = %88, %48
  %90 = load i32, i32* %8, align 4
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* %10, align 4
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* @END_NOT_FOUND, align 4
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %89, %76, %54
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
