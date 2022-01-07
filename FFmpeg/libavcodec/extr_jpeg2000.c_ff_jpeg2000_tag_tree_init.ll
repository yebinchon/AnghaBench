; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_jpeg2000.c_ff_jpeg2000_tag_tree_init.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_jpeg2000.c_ff_jpeg2000_tag_tree_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (i32, i32)* @ff_jpeg2000_tag_tree_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @ff_jpeg2000_tag_tree_init(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @tag_tree_size(i32 %16, i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = call %struct.TYPE_4__* @av_mallocz_array(i32 %19, i32 8)
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %8, align 8
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %9, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %22 = icmp ne %struct.TYPE_4__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %91

24:                                               ; preds = %2
  br label %25

25:                                               ; preds = %84, %24
  %26 = load i32, i32* %4, align 4
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %5, align 4
  %30 = icmp sgt i32 %29, 1
  br label %31

31:                                               ; preds = %28, %25
  %32 = phi i1 [ true, %25 ], [ %30, %28 ]
  br i1 %32, label %33, label %86

33:                                               ; preds = %31
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  %38 = ashr i32 %37, 1
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  %41 = ashr i32 %40, 1
  store i32 %41, i32* %5, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %7, align 4
  %45 = mul nsw i32 %43, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %46
  store %struct.TYPE_4__* %47, %struct.TYPE_4__** %10, align 8
  store i32 0, i32* %12, align 4
  br label %48

48:                                               ; preds = %81, %33
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %84

52:                                               ; preds = %48
  store i32 0, i32* %13, align 4
  br label %53

53:                                               ; preds = %77, %52
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %80

57:                                               ; preds = %53
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %59 = load i32, i32* %12, align 4
  %60 = ashr i32 %59, 1
  %61 = load i32, i32* %4, align 4
  %62 = mul nsw i32 %60, %61
  %63 = load i32, i32* %13, align 4
  %64 = ashr i32 %63, 1
  %65 = add nsw i32 %62, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %66
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %6, align 4
  %71 = mul nsw i32 %69, %70
  %72 = load i32, i32* %13, align 4
  %73 = add nsw i32 %71, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store %struct.TYPE_4__* %67, %struct.TYPE_4__** %76, align 8
  br label %77

77:                                               ; preds = %57
  %78 = load i32, i32* %13, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %13, align 4
  br label %53

80:                                               ; preds = %53
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %12, align 4
  br label %48

84:                                               ; preds = %48
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  store %struct.TYPE_4__* %85, %struct.TYPE_4__** %9, align 8
  br label %25

86:                                               ; preds = %31
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i64 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %89, align 8
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  store %struct.TYPE_4__* %90, %struct.TYPE_4__** %3, align 8
  br label %91

91:                                               ; preds = %86, %23
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  ret %struct.TYPE_4__* %92
}

declare dso_local i32 @tag_tree_size(i32, i32) #1

declare dso_local %struct.TYPE_4__* @av_mallocz_array(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
