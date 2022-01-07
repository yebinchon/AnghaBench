; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_intrax8.c_x8_get_ac_rlf.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_intrax8.c_x8_get_ac_rlf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32 }

@AC_VLC_BITS = common dso_local global i32 0, align 4
@AC_VLC_MTD = common dso_local global i32 0, align 4
@ac_decode_table = common dso_local global i32* null, align 8
@x8_get_ac_rlf.crazy_mix_runlevel = internal constant [32 x i32] [i32 34, i32 50, i32 51, i32 83, i32 35, i32 66, i32 67, i32 99, i32 36, i32 82, i32 52, i32 115, i32 37, i32 98, i32 68, i32 131, i32 38, i32 114, i32 53, i32 84, i32 39, i32 130, i32 69, i32 100, i32 40, i32 146, i32 54, i32 116, i32 41, i32 162, i32 70, i32 132], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, i32*, i32*, i32*)* @x8_get_ac_rlf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x8_get_ac_rlf(%struct.TYPE_5__* %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %22, i64 %24
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @AC_VLC_BITS, align 4
  %30 = load i32, i32* @AC_VLC_MTD, align 4
  %31 = call i32 @get_vlc2(i32 %19, i32 %28, i32 %29, i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %32, 46
  br i1 %33, label %34, label %63

34:                                               ; preds = %5
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32*, i32** %8, align 8
  store i32 64, i32* %38, align 4
  %39 = load i32*, i32** %10, align 8
  store i32 64, i32* %39, align 4
  %40 = load i32*, i32** %9, align 8
  store i32 64, i32* %40, align 4
  br label %154

41:                                               ; preds = %34
  %42 = load i32, i32* %11, align 4
  %43 = icmp sgt i32 %42, 22
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %13, align 4
  %45 = load i32*, i32** %10, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* %13, align 4
  %47 = mul nsw i32 23, %46
  %48 = load i32, i32* %11, align 4
  %49 = sub nsw i32 %48, %47
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = and i32 %50, 30
  %52 = ashr i32 15007744, %51
  %53 = and i32 %52, 3
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  %55 = shl i32 %54, 3
  %56 = ashr i32 66319, %55
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %13, align 4
  %59 = and i32 %57, %58
  %60 = load i32*, i32** %8, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* %14, align 4
  %62 = load i32*, i32** %9, align 8
  store i32 %61, i32* %62, align 4
  br label %153

63:                                               ; preds = %5
  %64 = load i32, i32* %11, align 4
  %65 = icmp slt i32 %64, 73
  br i1 %65, label %66, label %105

66:                                               ; preds = %63
  %67 = load i32, i32* %11, align 4
  %68 = sub nsw i32 %67, 46
  store i32 %68, i32* %11, align 4
  %69 = load i32*, i32** @ac_decode_table, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %15, align 4
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %15, align 4
  %78 = and i32 %77, 15
  %79 = call i32 @get_bits(i32 %76, i32 %78)
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %15, align 4
  %81 = ashr i32 %80, 8
  store i32 %81, i32* %15, align 4
  %82 = load i32, i32* %15, align 4
  %83 = and i32 %82, 255
  store i32 %83, i32* %16, align 4
  %84 = load i32, i32* %15, align 4
  %85 = ashr i32 %84, 8
  store i32 %85, i32* %15, align 4
  %86 = load i32, i32* %15, align 4
  %87 = and i32 %86, 255
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %16, align 4
  %90 = and i32 %88, %89
  %91 = add nsw i32 %87, %90
  %92 = load i32*, i32** %8, align 8
  store i32 %91, i32* %92, align 4
  %93 = load i32, i32* %15, align 4
  %94 = ashr i32 %93, 8
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* %16, align 4
  %97 = xor i32 %96, -1
  %98 = and i32 %95, %97
  %99 = add nsw i32 %94, %98
  %100 = load i32*, i32** %9, align 8
  store i32 %99, i32* %100, align 4
  %101 = load i32, i32* %11, align 4
  %102 = icmp sgt i32 %101, 12
  %103 = zext i1 %102 to i32
  %104 = load i32*, i32** %10, align 8
  store i32 %103, i32* %104, align 4
  br label %152

105:                                              ; preds = %63
  %106 = load i32, i32* %11, align 4
  %107 = icmp slt i32 %106, 75
  br i1 %107, label %108, label %131

108:                                              ; preds = %105
  %109 = load i32, i32* %11, align 4
  %110 = and i32 %109, 1
  %111 = icmp ne i32 %110, 0
  %112 = xor i1 %111, true
  %113 = zext i1 %112 to i32
  %114 = load i32*, i32** %10, align 8
  store i32 %113, i32* %114, align 4
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @get_bits(i32 %117, i32 5)
  store i32 %118, i32* %12, align 4
  %119 = load i32, i32* %12, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [32 x i32], [32 x i32]* @x8_get_ac_rlf.crazy_mix_runlevel, i64 0, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = ashr i32 %122, 4
  %124 = load i32*, i32** %8, align 8
  store i32 %123, i32* %124, align 4
  %125 = load i32, i32* %12, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [32 x i32], [32 x i32]* @x8_get_ac_rlf.crazy_mix_runlevel, i64 0, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = and i32 %128, 15
  %130 = load i32*, i32** %9, align 8
  store i32 %129, i32* %130, align 4
  br label %151

131:                                              ; preds = %105
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* %11, align 4
  %136 = and i32 %135, 1
  %137 = mul nsw i32 3, %136
  %138 = sub nsw i32 7, %137
  %139 = call i32 @get_bits(i32 %134, i32 %138)
  %140 = load i32*, i32** %9, align 8
  store i32 %139, i32* %140, align 4
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @get_bits(i32 %143, i32 6)
  %145 = load i32*, i32** %8, align 8
  store i32 %144, i32* %145, align 4
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @get_bits1(i32 %148)
  %150 = load i32*, i32** %10, align 8
  store i32 %149, i32* %150, align 4
  br label %151

151:                                              ; preds = %131, %108
  br label %152

152:                                              ; preds = %151, %66
  br label %153

153:                                              ; preds = %152, %41
  br label %154

154:                                              ; preds = %153, %37
  ret void
}

declare dso_local i32 @get_vlc2(i32, i32, i32, i32) #1

declare dso_local i32 @get_bits(i32, i32) #1

declare dso_local i32 @get_bits1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
