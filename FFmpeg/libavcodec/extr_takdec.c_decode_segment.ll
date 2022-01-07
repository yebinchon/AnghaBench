; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_takdec.c_decode_segment.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_takdec.c_decode_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CParam = type { i32, i32, i32, i32, i64 }
%struct.TYPE_3__ = type { i32 }

@xcodes = common dso_local global %struct.CParam* null, align 8
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32*, i32)* @decode_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_segment(%struct.TYPE_3__* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.CParam, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i32* %17, i32** %11, align 8
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %4
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 4
  %25 = trunc i64 %24 to i32
  %26 = call i32 @memset(i32* %21, i32 0, i32 %25)
  store i32 0, i32* %5, align 4
  br label %142

27:                                               ; preds = %4
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.CParam*, %struct.CParam** @xcodes, align 8
  %30 = call i32 @FF_ARRAY_ELEMS(%struct.CParam* %29)
  %31 = icmp sgt i32 %28, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %33, i32* %5, align 4
  br label %142

34:                                               ; preds = %27
  %35 = load %struct.CParam*, %struct.CParam** @xcodes, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.CParam, %struct.CParam* %35, i64 %38
  %40 = bitcast %struct.CParam* %10 to i8*
  %41 = bitcast %struct.CParam* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 %41, i64 24, i1 false)
  store i32 0, i32* %12, align 4
  br label %42

42:                                               ; preds = %138, %34
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %141

46:                                               ; preds = %42
  %47 = load i32*, i32** %11, align 8
  %48 = getelementptr inbounds %struct.CParam, %struct.CParam* %10, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @get_bits_long(i32* %47, i32 %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = getelementptr inbounds %struct.CParam, %struct.CParam* %10, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp uge i32 %51, %53
  br i1 %54, label %55, label %127

55:                                               ; preds = %46
  %56 = load i32*, i32** %11, align 8
  %57 = call i64 @get_bits1(i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %127

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.CParam, %struct.CParam* %10, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = shl i32 1, %61
  %63 = load i32, i32* %13, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %13, align 4
  %66 = getelementptr inbounds %struct.CParam, %struct.CParam* %10, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = icmp uge i32 %65, %67
  br i1 %68, label %69, label %121

69:                                               ; preds = %59
  %70 = load i32*, i32** %11, align 8
  %71 = call i32 @get_unary(i32* %70, i32 1, i32 9)
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %14, align 4
  %73 = icmp eq i32 %72, 9
  br i1 %73, label %74, label %110

74:                                               ; preds = %69
  %75 = load i32*, i32** %11, align 8
  %76 = call i32 @get_bits(i32* %75, i32 3)
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %15, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %103

79:                                               ; preds = %74
  %80 = load i32, i32* %15, align 4
  %81 = icmp eq i32 %80, 7
  br i1 %81, label %82, label %92

82:                                               ; preds = %79
  %83 = load i32*, i32** %11, align 8
  %84 = call i32 @get_bits(i32* %83, i32 5)
  %85 = load i32, i32* %15, align 4
  %86 = add nsw i32 %85, %84
  store i32 %86, i32* %15, align 4
  %87 = load i32, i32* %15, align 4
  %88 = icmp sgt i32 %87, 29
  br i1 %88, label %89, label %91

89:                                               ; preds = %82
  %90 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %90, i32* %5, align 4
  br label %142

91:                                               ; preds = %82
  br label %92

92:                                               ; preds = %91, %79
  %93 = load i32*, i32** %11, align 8
  %94 = load i32, i32* %15, align 4
  %95 = call i32 @get_bits_long(i32* %93, i32 %94)
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %14, align 4
  %97 = getelementptr inbounds %struct.CParam, %struct.CParam* %10, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %14, align 4
  %100 = mul i32 %98, %99
  %101 = load i32, i32* %13, align 4
  %102 = add i32 %101, %100
  store i32 %102, i32* %13, align 4
  br label %103

103:                                              ; preds = %92, %74
  %104 = getelementptr inbounds %struct.CParam, %struct.CParam* %10, i32 0, i32 4
  %105 = load i64, i64* %104, align 8
  %106 = load i32, i32* %13, align 4
  %107 = zext i32 %106 to i64
  %108 = add nsw i64 %107, %105
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %13, align 4
  br label %120

110:                                              ; preds = %69
  %111 = getelementptr inbounds %struct.CParam, %struct.CParam* %10, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %14, align 4
  %114 = mul i32 %112, %113
  %115 = getelementptr inbounds %struct.CParam, %struct.CParam* %10, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = sub i32 %114, %116
  %118 = load i32, i32* %13, align 4
  %119 = add i32 %118, %117
  store i32 %119, i32* %13, align 4
  br label %120

120:                                              ; preds = %110, %103
  br label %126

121:                                              ; preds = %59
  %122 = getelementptr inbounds %struct.CParam, %struct.CParam* %10, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %13, align 4
  %125 = sub i32 %124, %123
  store i32 %125, i32* %13, align 4
  br label %126

126:                                              ; preds = %121, %120
  br label %127

127:                                              ; preds = %126, %55, %46
  %128 = load i32, i32* %13, align 4
  %129 = lshr i32 %128, 1
  %130 = load i32, i32* %13, align 4
  %131 = and i32 %130, 1
  %132 = sub i32 0, %131
  %133 = xor i32 %129, %132
  %134 = load i32*, i32** %8, align 8
  %135 = load i32, i32* %12, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  store i32 %133, i32* %137, align 4
  br label %138

138:                                              ; preds = %127
  %139 = load i32, i32* %12, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %12, align 4
  br label %42

141:                                              ; preds = %42
  store i32 0, i32* %5, align 4
  br label %142

142:                                              ; preds = %141, %89, %32, %20
  %143 = load i32, i32* %5, align 4
  ret i32 %143
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @FF_ARRAY_ELEMS(%struct.CParam*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @get_bits_long(i32*, i32) #1

declare dso_local i64 @get_bits1(i32*) #1

declare dso_local i32 @get_unary(i32*, i32, i32) #1

declare dso_local i32 @get_bits(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
