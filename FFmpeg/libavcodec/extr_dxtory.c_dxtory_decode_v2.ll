; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxtory.c_dxtory_decode_v2.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxtory.c_dxtory_decode_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Not enough slice data available\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i32*, i32, i64 (i32*, i32*, i32, i32, i32**)*, i32 (i32**)*, i32)* @dxtory_decode_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dxtory_decode_v2(%struct.TYPE_7__* %0, i32* %1, i32* %2, i32 %3, i64 (i32*, i32*, i32, i32, i32**)* %4, i32 (i32**)* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64 (i32*, i32*, i32, i32, i32**)*, align 8
  %14 = alloca i32 (i32**)*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca [3 x [8 x i32]], align 16
  %26 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i64 (i32*, i32*, i32, i32, i32**)* %4, i64 (i32*, i32*, i32, i32, i32**)** %13, align 8
  store i32 (i32**)* %5, i32 (i32**)** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %21, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = load i32, i32* %12, align 4
  %30 = call i32 @load_buffer(%struct.TYPE_7__* %27, i32* %28, i32 %29, i32* %16, i32* %19, i32* %22)
  store i32 %30, i32* %26, align 4
  %31 = load i32, i32* %26, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %7
  %34 = load i32, i32* %26, align 4
  store i32 %34, i32* %8, align 4
  br label %155

35:                                               ; preds = %7
  %36 = load i32, i32* %22, align 4
  store i32 %36, i32* %24, align 4
  %37 = load i32, i32* %16, align 4
  store i32 %37, i32* %17, align 4
  store i32 0, i32* %20, align 4
  br label %38

38:                                               ; preds = %63, %35
  %39 = load i32, i32* %20, align 4
  %40 = load i32, i32* %19, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %66

42:                                               ; preds = %38
  %43 = call i32 @bytestream2_get_le32(i32* %17)
  store i32 %43, i32* %23, align 4
  %44 = load i32, i32* %23, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = mul nsw i32 %47, %50
  %52 = load i32, i32* %19, align 4
  %53 = mul nsw i32 8, %52
  %54 = sdiv i32 %51, %53
  %55 = add nsw i32 16, %54
  %56 = icmp sle i32 %44, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %42
  %58 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %58, i32* %8, align 4
  br label %155

59:                                               ; preds = %42
  %60 = load i32, i32* %23, align 4
  %61 = load i32, i32* %24, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %24, align 4
  br label %63

63:                                               ; preds = %59
  %64 = load i32, i32* %20, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %20, align 4
  br label %38

66:                                               ; preds = %38
  %67 = load i32, i32* %24, align 4
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %24, align 4
  %72 = mul nsw i32 %70, %71
  %73 = sdiv i32 %72, 100
  %74 = sub nsw i32 %67, %73
  %75 = load i32, i32* %12, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %66
  %78 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %78, i32* %8, align 4
  br label %155

79:                                               ; preds = %66
  %80 = load i32, i32* %15, align 4
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 4
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %84 = load i32*, i32** %10, align 8
  %85 = call i32 @ff_get_buffer(%struct.TYPE_7__* %83, i32* %84, i32 0)
  store i32 %85, i32* %26, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %79
  %88 = load i32, i32* %26, align 4
  store i32 %88, i32* %8, align 4
  br label %155

89:                                               ; preds = %79
  store i32 0, i32* %20, align 4
  br label %90

90:                                               ; preds = %141, %89
  %91 = load i32, i32* %20, align 4
  %92 = load i32, i32* %19, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %144

94:                                               ; preds = %90
  %95 = call i32 @bytestream2_get_le32(i32* %16)
  store i32 %95, i32* %23, align 4
  %96 = load i32 (i32**)*, i32 (i32**)** %14, align 8
  %97 = getelementptr inbounds [3 x [8 x i32]], [3 x [8 x i32]]* %25, i64 0, i64 0
  %98 = bitcast [8 x i32]* %97 to i32**
  %99 = call i32 %96(i32** %98)
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %101 = load i32*, i32** %11, align 8
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* %23, align 4
  %104 = load i32, i32* %22, align 4
  %105 = call i32 @check_slice_size(%struct.TYPE_7__* %100, i32* %101, i32 %102, i32 %103, i32 %104)
  store i32 %105, i32* %26, align 4
  %106 = load i32, i32* %26, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %94
  %109 = load i32, i32* %26, align 4
  store i32 %109, i32* %8, align 4
  br label %155

110:                                              ; preds = %94
  %111 = load i32*, i32** %11, align 8
  %112 = load i32, i32* %22, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = getelementptr inbounds i32, i32* %114, i64 16
  %116 = load i32, i32* %23, align 4
  %117 = sub nsw i32 %116, 16
  %118 = call i32 @init_get_bits8(i32* %18, i32* %115, i32 %117)
  store i32 %118, i32* %26, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %110
  %121 = load i32, i32* %26, align 4
  store i32 %121, i32* %8, align 4
  br label %155

122:                                              ; preds = %110
  %123 = load i64 (i32*, i32*, i32, i32, i32**)*, i64 (i32*, i32*, i32, i32, i32**)** %13, align 8
  %124 = load i32*, i32** %10, align 8
  %125 = load i32, i32* %21, align 4
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %21, align 4
  %130 = sub nsw i32 %128, %129
  %131 = getelementptr inbounds [3 x [8 x i32]], [3 x [8 x i32]]* %25, i64 0, i64 0
  %132 = bitcast [8 x i32]* %131 to i32**
  %133 = call i64 %123(i32* %18, i32* %124, i32 %125, i32 %130, i32** %132)
  %134 = load i32, i32* %21, align 4
  %135 = sext i32 %134 to i64
  %136 = add nsw i64 %135, %133
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %21, align 4
  %138 = load i32, i32* %23, align 4
  %139 = load i32, i32* %22, align 4
  %140 = add nsw i32 %139, %138
  store i32 %140, i32* %22, align 4
  br label %141

141:                                              ; preds = %122
  %142 = load i32, i32* %20, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %20, align 4
  br label %90

144:                                              ; preds = %90
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %21, align 4
  %149 = sub nsw i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %144
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %153 = call i32 @avpriv_request_sample(%struct.TYPE_7__* %152, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %154

154:                                              ; preds = %151, %144
  store i32 0, i32* %8, align 4
  br label %155

155:                                              ; preds = %154, %120, %108, %87, %77, %57, %33
  %156 = load i32, i32* %8, align 4
  ret i32 %156
}

declare dso_local i32 @load_buffer(%struct.TYPE_7__*, i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bytestream2_get_le32(i32*) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @check_slice_size(%struct.TYPE_7__*, i32*, i32, i32, i32) #1

declare dso_local i32 @init_get_bits8(i32*, i32*, i32) #1

declare dso_local i32 @avpriv_request_sample(%struct.TYPE_7__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
