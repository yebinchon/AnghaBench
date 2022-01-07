; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmv2.c_ff_wmv2_add_mb.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmv2.c_ff_wmv2_add_mb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@AV_CODEC_FLAG_GRAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_wmv2_add_mb(%struct.TYPE_5__* %0, [64 x i32]* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca [64 x i32]*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store [64 x i32]* %1, [64 x i32]** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %13 = bitcast %struct.TYPE_5__* %12 to i32*
  store i32* %13, i32** %11, align 8
  %14 = load i32*, i32** %11, align 8
  %15 = load [64 x i32]*, [64 x i32]** %7, align 8
  %16 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0
  %17 = getelementptr inbounds [64 x i32], [64 x i32]* %16, i64 0, i64 0
  %18 = load i32*, i32** %8, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @wmv2_add_block(i32* %14, i32* %17, i32* %18, i32 %21, i32 0)
  %23 = load i32*, i32** %11, align 8
  %24 = load [64 x i32]*, [64 x i32]** %7, align 8
  %25 = getelementptr inbounds [64 x i32], [64 x i32]* %24, i64 1
  %26 = getelementptr inbounds [64 x i32], [64 x i32]* %25, i64 0, i64 0
  %27 = load i32*, i32** %8, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @wmv2_add_block(i32* %23, i32* %26, i32* %28, i32 %31, i32 1)
  %33 = load i32*, i32** %11, align 8
  %34 = load [64 x i32]*, [64 x i32]** %7, align 8
  %35 = getelementptr inbounds [64 x i32], [64 x i32]* %34, i64 2
  %36 = getelementptr inbounds [64 x i32], [64 x i32]* %35, i64 0, i64 0
  %37 = load i32*, i32** %8, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = mul nsw i32 8, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %37, i64 %42
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @wmv2_add_block(i32* %33, i32* %36, i32* %43, i32 %46, i32 2)
  %48 = load i32*, i32** %11, align 8
  %49 = load [64 x i32]*, [64 x i32]** %7, align 8
  %50 = getelementptr inbounds [64 x i32], [64 x i32]* %49, i64 3
  %51 = getelementptr inbounds [64 x i32], [64 x i32]* %50, i64 0, i64 0
  %52 = load i32*, i32** %8, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = mul nsw i32 8, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %53, i64 %58
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @wmv2_add_block(i32* %48, i32* %51, i32* %59, i32 %62, i32 3)
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @AV_CODEC_FLAG_GRAY, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %5
  br label %92

73:                                               ; preds = %5
  %74 = load i32*, i32** %11, align 8
  %75 = load [64 x i32]*, [64 x i32]** %7, align 8
  %76 = getelementptr inbounds [64 x i32], [64 x i32]* %75, i64 4
  %77 = getelementptr inbounds [64 x i32], [64 x i32]* %76, i64 0, i64 0
  %78 = load i32*, i32** %9, align 8
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @wmv2_add_block(i32* %74, i32* %77, i32* %78, i32 %81, i32 4)
  %83 = load i32*, i32** %11, align 8
  %84 = load [64 x i32]*, [64 x i32]** %7, align 8
  %85 = getelementptr inbounds [64 x i32], [64 x i32]* %84, i64 5
  %86 = getelementptr inbounds [64 x i32], [64 x i32]* %85, i64 0, i64 0
  %87 = load i32*, i32** %10, align 8
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @wmv2_add_block(i32* %83, i32* %86, i32* %87, i32 %90, i32 5)
  br label %92

92:                                               ; preds = %73, %72
  ret void
}

declare dso_local i32 @wmv2_add_block(i32*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
