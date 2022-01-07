; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_s337m.c_s337m_probe.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_s337m.c_s337m_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@AVPROBE_SCORE_EXTENSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @s337m_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s337m_probe(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [3 x i32], align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 0, i32* %4, align 4
  %14 = bitcast [3 x i32]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 12, i1 false)
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %94, %1
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %97

21:                                               ; preds = %15
  %22 = load i32, i32* %4, align 4
  %23 = shl i32 %22, 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %23, %30
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @IS_LE_MARKER(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %21
  br label %94

36:                                               ; preds = %21
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  store i32* %43, i32** %13, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i64 @IS_16LE_MARKER(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %36
  %48 = load i32*, i32** %13, align 8
  %49 = call i32 @AV_RL16(i32* %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32*, i32** %13, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  %52 = call i32 @AV_RL16(i32* %51)
  store i32 %52, i32* %11, align 4
  br label %59

53:                                               ; preds = %36
  %54 = load i32*, i32** %13, align 8
  %55 = call i32 @AV_RL24(i32* %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32*, i32** %13, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 3
  %58 = call i32 @AV_RL24(i32* %57)
  store i32 %58, i32* %11, align 4
  br label %59

59:                                               ; preds = %53, %47
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call i64 @s337m_get_offset_and_codec(i32* null, i32 %60, i32 %61, i32 %62, i32* %12, i32* null)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %94

66:                                               ; preds = %59
  %67 = load i32, i32* %4, align 4
  %68 = call i64 @IS_16LE_MARKER(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %77

71:                                               ; preds = %66
  %72 = load i32, i32* %4, align 4
  %73 = call i64 @IS_20LE_MARKER(i32 %72)
  %74 = icmp ne i64 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i32 1, i32 2
  br label %77

77:                                               ; preds = %71, %70
  %78 = phi i32 [ 0, %70 ], [ %76, %71 ]
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  %84 = load i32, i32* %4, align 4
  %85 = call i64 @IS_16LE_MARKER(i32 %84)
  %86 = icmp ne i64 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i32 4, i32 6
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* %7, align 4
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %77, %65, %35
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %7, align 4
  br label %15

97:                                               ; preds = %15
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %98

98:                                               ; preds = %122, %97
  %99 = load i32, i32* %6, align 4
  %100 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %101 = call i32 @FF_ARRAY_ELEMS(i32* %100)
  %102 = icmp slt i32 %99, %101
  br i1 %102, label %103, label %125

103:                                              ; preds = %98
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %108, %107
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %6, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = icmp slt i32 %113, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %103
  %120 = load i32, i32* %6, align 4
  store i32 %120, i32* %9, align 4
  br label %121

121:                                              ; preds = %119, %103
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %6, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %6, align 4
  br label %98

125:                                              ; preds = %98
  %126 = load i32, i32* %9, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = icmp sgt i32 %129, 3
  br i1 %130, label %131, label %143

131:                                              ; preds = %125
  %132 = load i32, i32* %9, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = mul nsw i32 %135, 4
  %137 = load i32, i32* %8, align 4
  %138 = mul nsw i32 %137, 3
  %139 = icmp sgt i32 %136, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %131
  %141 = load i32, i32* @AVPROBE_SCORE_EXTENSION, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %2, align 4
  br label %144

143:                                              ; preds = %131, %125
  store i32 0, i32* %2, align 4
  br label %144

144:                                              ; preds = %143, %140
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @IS_LE_MARKER(i32) #2

declare dso_local i64 @IS_16LE_MARKER(i32) #2

declare dso_local i32 @AV_RL16(i32*) #2

declare dso_local i32 @AV_RL24(i32*) #2

declare dso_local i64 @s337m_get_offset_and_codec(i32*, i32, i32, i32, i32*, i32*) #2

declare dso_local i64 @IS_20LE_MARKER(i32) #2

declare dso_local i32 @FF_ARRAY_ELEMS(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
