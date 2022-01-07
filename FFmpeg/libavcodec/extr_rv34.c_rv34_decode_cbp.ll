; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rv34.c_rv34_decode_cbp.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rv34.c_rv34_decode_cbp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__**, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@rv34_decode_cbp.cbp_masks = internal constant [3 x i32] [i32 1048576, i32 65536, i32 1114112], align 4
@rv34_decode_cbp.shifts = internal constant [4 x i32] [i32 0, i32 2, i32 8, i32 10], align 16
@rv34_count_ones = common dso_local global i32* null, align 8
@modulo_three_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*, i32)* @rv34_decode_cbp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rv34_decode_cbp(i32* %0, %struct.TYPE_7__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @rv34_decode_cbp.shifts, i64 0, i64 0), i32** %11, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @get_vlc2(i32* %15, i32 %23, i32 9, i32 2)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = and i32 %25, 15
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = ashr i32 %27, 4
  store i32 %28, i32* %8, align 4
  %29 = load i32*, i32** @rv34_count_ones, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %10, align 4
  store i32 8, i32* %14, align 4
  br label %34

34:                                               ; preds = %76, %3
  %35 = load i32, i32* %14, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %81

37:                                               ; preds = %34
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %14, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %75

42:                                               ; preds = %37
  %43 = load i32*, i32** %4, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %46, i64 %48
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %58, i64 %60
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @get_vlc2(i32* %43, i32 %55, i32 %67, i32 1)
  %69 = load i32*, i32** %11, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = shl i32 %68, %71
  %73 = load i32, i32* %9, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %42, %37
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %14, align 4
  %78 = ashr i32 %77, 1
  store i32 %78, i32* %14, align 4
  %79 = load i32*, i32** %11, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %11, align 8
  br label %34

81:                                               ; preds = %34
  store i32 0, i32* %12, align 4
  br label %82

82:                                               ; preds = %117, %81
  %83 = load i32, i32* %12, align 4
  %84 = icmp slt i32 %83, 4
  br i1 %84, label %85, label %120

85:                                               ; preds = %82
  %86 = load i32*, i32** @modulo_three_table, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %12, align 4
  %92 = mul nsw i32 2, %91
  %93 = sub nsw i32 6, %92
  %94 = ashr i32 %90, %93
  %95 = and i32 %94, 3
  store i32 %95, i32* %13, align 4
  %96 = load i32, i32* %13, align 4
  %97 = icmp eq i32 %96, 1
  br i1 %97, label %98, label %107

98:                                               ; preds = %85
  %99 = load i32*, i32** %4, align 8
  %100 = call i64 @get_bits1(i32* %99)
  %101 = getelementptr inbounds [3 x i32], [3 x i32]* @rv34_decode_cbp.cbp_masks, i64 0, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %12, align 4
  %104 = shl i32 %102, %103
  %105 = load i32, i32* %9, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %9, align 4
  br label %107

107:                                              ; preds = %98, %85
  %108 = load i32, i32* %13, align 4
  %109 = icmp eq i32 %108, 2
  br i1 %109, label %110, label %116

110:                                              ; preds = %107
  %111 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @rv34_decode_cbp.cbp_masks, i64 0, i64 2), align 4
  %112 = load i32, i32* %12, align 4
  %113 = shl i32 %111, %112
  %114 = load i32, i32* %9, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %9, align 4
  br label %116

116:                                              ; preds = %110, %107
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %12, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %12, align 4
  br label %82

120:                                              ; preds = %82
  %121 = load i32, i32* %9, align 4
  ret i32 %121
}

declare dso_local i32 @get_vlc2(i32*, i32, i32, i32) #1

declare dso_local i64 @get_bits1(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
