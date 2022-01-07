; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_atrac3plus.c_decode_gainc_data.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_atrac3plus.c_decode_gainc_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32* }

@ATRAC3P_SUBBANDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_8__*, i32, i32*)* @decode_gainc_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_gainc_data(i32* %0, %struct.TYPE_8__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  br label %14

14:                                               ; preds = %141, %4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %144

18:                                               ; preds = %14
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* @ATRAC3P_SUBBANDS, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 4, %28
  %30 = trunc i64 %29 to i32
  %31 = call i32 @memset(i32* %26, i32 0, i32 %30)
  %32 = load i32*, i32** %6, align 8
  %33 = call i64 @get_bits1(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %132

35:                                               ; preds = %18
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @get_bits(i32* %36, i32 4)
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %11, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = call i64 @get_bits1(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %35
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @get_bits(i32* %43, i32 4)
  %45 = add nsw i32 %44, 1
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  store i32 %45, i32* %52, align 8
  br label %62

53:                                               ; preds = %35
  %54 = load i32, i32* %11, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  store i32 %54, i32* %61, align 8
  br label %62

62:                                               ; preds = %53, %42
  %63 = load i32*, i32** %6, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @decode_gainc_npoints(i32* %63, %struct.TYPE_8__* %64, i32 %65, i32 %66)
  store i32 %67, i32* %13, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %84, label %69

69:                                               ; preds = %62
  %70 = load i32*, i32** %6, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @decode_gainc_levels(i32* %70, %struct.TYPE_8__* %71, i32 %72, i32 %73)
  store i32 %74, i32* %13, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %84, label %76

76:                                               ; preds = %69
  %77 = load i32*, i32** %6, align 8
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %11, align 4
  %81 = load i32*, i32** %9, align 8
  %82 = call i32 @decode_gainc_loc_codes(i32* %77, %struct.TYPE_8__* %78, i32 %79, i32 %80, i32* %81)
  store i32 %82, i32* %13, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %76, %69, %62
  %85 = load i32, i32* %13, align 4
  store i32 %85, i32* %5, align 4
  br label %145

86:                                               ; preds = %76
  %87 = load i32, i32* %11, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %131

89:                                               ; preds = %86
  %90 = load i32, i32* %11, align 4
  store i32 %90, i32* %12, align 4
  br label %91

91:                                               ; preds = %127, %89
  %92 = load i32, i32* %12, align 4
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp slt i32 %92, %100
  br i1 %101, label %102, label %130

102:                                              ; preds = %91
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %104, align 8
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %12, align 4
  %112 = sub nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %110, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = load i32, i32* %10, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %12, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  store i32 %115, i32* %126, align 4
  br label %127

127:                                              ; preds = %102
  %128 = load i32, i32* %12, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %12, align 4
  br label %91

130:                                              ; preds = %91
  br label %131

131:                                              ; preds = %130, %86
  br label %140

132:                                              ; preds = %18
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %134, align 8
  %136 = load i32, i32* %10, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  store i32 0, i32* %139, align 8
  br label %140

140:                                              ; preds = %132, %131
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %10, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %10, align 4
  br label %14

144:                                              ; preds = %14
  store i32 0, i32* %5, align 4
  br label %145

145:                                              ; preds = %144, %84
  %146 = load i32, i32* %5, align 4
  ret i32 %146
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @get_bits1(i32*) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @decode_gainc_npoints(i32*, %struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @decode_gainc_levels(i32*, %struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @decode_gainc_loc_codes(i32*, %struct.TYPE_8__*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
