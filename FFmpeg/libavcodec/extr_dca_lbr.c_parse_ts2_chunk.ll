; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_lbr.c_parse_ts2_chunk.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_lbr.c_parse_ts2_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_8__*, i32, i32)* @parse_ts2_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_ts2_chunk(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %76

15:                                               ; preds = %4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @init_get_bits8(i32* %17, i32 %20, i32 %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  store i32 -1, i32* %5, align 4
  br label %76

27:                                               ; preds = %15
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i64 @parse_grid_2(%struct.TYPE_9__* %28, i32 %29, i32 %30, i32 1, i32 3, i32 0)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 -1, i32* %5, align 4
  br label %76

34:                                               ; preds = %27
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @parse_ts(%struct.TYPE_9__* %35, i32 %36, i32 %37, i32 6, i32 %40, i32 0)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  store i32 -1, i32* %5, align 4
  br label %76

44:                                               ; preds = %34
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %62

48:                                               ; preds = %44
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i64 @parse_grid_1_sec_ch(%struct.TYPE_9__* %49, i32 %50)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 -1, i32* %5, align 4
  br label %76

54:                                               ; preds = %48
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i64 @parse_grid_2(%struct.TYPE_9__* %55, i32 %56, i32 %57, i32 0, i32 3, i32 1)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  store i32 -1, i32* %5, align 4
  br label %76

61:                                               ; preds = %54
  br label %62

62:                                               ; preds = %61, %44
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @parse_ts(%struct.TYPE_9__* %63, i32 %64, i32 %65, i32 %68, i32 %71, i32 1)
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %62
  store i32 -1, i32* %5, align 4
  br label %76

75:                                               ; preds = %62
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %75, %74, %60, %53, %43, %33, %26, %14
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i64 @init_get_bits8(i32*, i32, i32) #1

declare dso_local i64 @parse_grid_2(%struct.TYPE_9__*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @parse_ts(%struct.TYPE_9__*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @parse_grid_1_sec_ch(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
