; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_svq1dec.c_svq1_decode_delta_block.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_svq1dec.c_svq1_decode_delta_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64, i64 }

@svq1_block_type = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str = private unnamed_addr constant [37 x i8] c"Error in svq1_motion_inter_block %i\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Error in svq1_motion_inter_4v_block %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*, i32*, i32, %struct.TYPE_6__*, i32, i32, i32, i32)* @svq1_decode_delta_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svq1_decode_delta_block(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32 %5, %struct.TYPE_6__* %6, i32 %7, i32 %8, i32 %9, i32 %10) #0 {
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_6__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32* %0, i32** %12, align 8
  store i32* %1, i32** %13, align 8
  store i32* %2, i32** %14, align 8
  store i32* %3, i32** %15, align 8
  store i32* %4, i32** %16, align 8
  store i32 %5, i32* %17, align 4
  store %struct.TYPE_6__* %6, %struct.TYPE_6__** %18, align 8
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  store i32 %10, i32* %22, align 4
  store i32 0, i32* %24, align 4
  %25 = load i32*, i32** %14, align 8
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @svq1_block_type, i32 0, i32 0), align 4
  %27 = call i32 @get_vlc2(i32* %25, i32 %26, i32 2, i32 2)
  store i32 %27, i32* %23, align 4
  %28 = load i32, i32* %23, align 4
  %29 = icmp eq i32 %28, 128
  br i1 %29, label %33, label %30

30:                                               ; preds = %11
  %31 = load i32, i32* %23, align 4
  %32 = icmp eq i32 %31, 129
  br i1 %32, label %33, label %68

33:                                               ; preds = %30, %11
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %35 = load i32, i32* %19, align 4
  %36 = sdiv i32 %35, 8
  %37 = add nsw i32 %36, 3
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %42 = load i32, i32* %19, align 4
  %43 = sdiv i32 %42, 8
  %44 = add nsw i32 %43, 3
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %49 = load i32, i32* %19, align 4
  %50 = sdiv i32 %49, 8
  %51 = add nsw i32 %50, 2
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  store i64 0, i64* %54, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %56 = load i32, i32* %19, align 4
  %57 = sdiv i32 %56, 8
  %58 = add nsw i32 %57, 2
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i64 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i64 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  store i64 0, i64* %67, align 8
  br label %68

68:                                               ; preds = %33, %30
  %69 = load i32, i32* %23, align 4
  switch i32 %69, label %128 [
    i32 128, label %70
    i32 131, label %77
    i32 130, label %100
    i32 129, label %123
  ]

70:                                               ; preds = %68
  %71 = load i32*, i32** %15, align 8
  %72 = load i32*, i32** %16, align 8
  %73 = load i32, i32* %17, align 4
  %74 = load i32, i32* %19, align 4
  %75 = load i32, i32* %20, align 4
  %76 = call i32 @svq1_skip_block(i32* %71, i32* %72, i32 %73, i32 %74, i32 %75)
  br label %128

77:                                               ; preds = %68
  %78 = load i32*, i32** %13, align 8
  %79 = load i32*, i32** %14, align 8
  %80 = load i32*, i32** %15, align 8
  %81 = load i32*, i32** %16, align 8
  %82 = load i32, i32* %17, align 4
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %84 = load i32, i32* %19, align 4
  %85 = load i32, i32* %20, align 4
  %86 = load i32, i32* %21, align 4
  %87 = load i32, i32* %22, align 4
  %88 = call i32 @svq1_motion_inter_block(i32* %78, i32* %79, i32* %80, i32* %81, i32 %82, %struct.TYPE_6__* %83, i32 %84, i32 %85, i32 %86, i32 %87)
  store i32 %88, i32* %24, align 4
  %89 = load i32, i32* %24, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %77
  %92 = load i32*, i32** %12, align 8
  %93 = load i32, i32* %24, align 4
  %94 = call i32 @ff_dlog(i32* %92, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %93)
  br label %128

95:                                               ; preds = %77
  %96 = load i32*, i32** %14, align 8
  %97 = load i32*, i32** %15, align 8
  %98 = load i32, i32* %17, align 4
  %99 = call i32 @svq1_decode_block_non_intra(i32* %96, i32* %97, i32 %98)
  store i32 %99, i32* %24, align 4
  br label %128

100:                                              ; preds = %68
  %101 = load i32*, i32** %13, align 8
  %102 = load i32*, i32** %14, align 8
  %103 = load i32*, i32** %15, align 8
  %104 = load i32*, i32** %16, align 8
  %105 = load i32, i32* %17, align 4
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %107 = load i32, i32* %19, align 4
  %108 = load i32, i32* %20, align 4
  %109 = load i32, i32* %21, align 4
  %110 = load i32, i32* %22, align 4
  %111 = call i32 @svq1_motion_inter_4v_block(i32* %101, i32* %102, i32* %103, i32* %104, i32 %105, %struct.TYPE_6__* %106, i32 %107, i32 %108, i32 %109, i32 %110)
  store i32 %111, i32* %24, align 4
  %112 = load i32, i32* %24, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %100
  %115 = load i32*, i32** %12, align 8
  %116 = load i32, i32* %24, align 4
  %117 = call i32 @ff_dlog(i32* %115, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %116)
  br label %128

118:                                              ; preds = %100
  %119 = load i32*, i32** %14, align 8
  %120 = load i32*, i32** %15, align 8
  %121 = load i32, i32* %17, align 4
  %122 = call i32 @svq1_decode_block_non_intra(i32* %119, i32* %120, i32 %121)
  store i32 %122, i32* %24, align 4
  br label %128

123:                                              ; preds = %68
  %124 = load i32*, i32** %14, align 8
  %125 = load i32*, i32** %15, align 8
  %126 = load i32, i32* %17, align 4
  %127 = call i32 @svq1_decode_block_intra(i32* %124, i32* %125, i32 %126)
  store i32 %127, i32* %24, align 4
  br label %128

128:                                              ; preds = %68, %123, %118, %114, %95, %91, %70
  %129 = load i32, i32* %24, align 4
  ret i32 %129
}

declare dso_local i32 @get_vlc2(i32*, i32, i32, i32) #1

declare dso_local i32 @svq1_skip_block(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @svq1_motion_inter_block(i32*, i32*, i32*, i32*, i32, %struct.TYPE_6__*, i32, i32, i32, i32) #1

declare dso_local i32 @ff_dlog(i32*, i8*, i32) #1

declare dso_local i32 @svq1_decode_block_non_intra(i32*, i32*, i32) #1

declare dso_local i32 @svq1_motion_inter_4v_block(i32*, i32*, i32*, i32*, i32, %struct.TYPE_6__*, i32, i32, i32, i32) #1

declare dso_local i32 @svq1_decode_block_intra(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
