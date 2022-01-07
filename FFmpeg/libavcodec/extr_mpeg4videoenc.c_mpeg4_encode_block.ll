; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg4videoenc.c_mpeg4_encode_block.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg4videoenc.c_mpeg4_encode_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i64 }

@uni_mpeg4_intra_rl_bits = common dso_local global i32* null, align 8
@uni_mpeg4_intra_rl_len = common dso_local global i64* null, align 8
@uni_mpeg4_inter_rl_bits = common dso_local global i32* null, align 8
@uni_mpeg4_inter_rl_len = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, i32, i32, i64*, i32*, i32*)* @mpeg4_encode_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpeg4_encode_block(%struct.TYPE_3__* %0, i32* %1, i32 %2, i32 %3, i64* %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64* %4, i64** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %19, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %7
  %38 = load i32*, i32** %13, align 8
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @mpeg4_encode_dc(i32* %38, i32 %39, i32 %40)
  %42 = load i32, i32* %19, align 4
  %43 = icmp slt i32 %42, 1
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %167

45:                                               ; preds = %37
  store i32 1, i32* %15, align 4
  %46 = load i32*, i32** @uni_mpeg4_intra_rl_bits, align 8
  store i32* %46, i32** %17, align 8
  %47 = load i64*, i64** @uni_mpeg4_intra_rl_len, align 8
  store i64* %47, i64** %18, align 8
  br label %55

48:                                               ; preds = %7
  %49 = load i32, i32* %19, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  br label %167

52:                                               ; preds = %48
  store i32 0, i32* %15, align 4
  %53 = load i32*, i32** @uni_mpeg4_inter_rl_bits, align 8
  store i32* %53, i32** %17, align 8
  %54 = load i64*, i64** @uni_mpeg4_inter_rl_len, align 8
  store i64* %54, i64** %18, align 8
  br label %55

55:                                               ; preds = %52, %45
  %56 = load i32, i32* %15, align 4
  %57 = sub nsw i32 %56, 1
  store i32 %57, i32* %16, align 4
  br label %58

58:                                               ; preds = %116, %55
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* %19, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %119

62:                                               ; preds = %58
  %63 = load i32*, i32** %9, align 8
  %64 = load i64*, i64** %12, align 8
  %65 = load i32, i32* %15, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds i32, i32* %63, i64 %68
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %20, align 4
  %71 = load i32, i32* %20, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %115

73:                                               ; preds = %62
  %74 = load i32, i32* %15, align 4
  %75 = load i32, i32* %16, align 4
  %76 = sub nsw i32 %74, %75
  %77 = sub nsw i32 %76, 1
  store i32 %77, i32* %21, align 4
  %78 = load i32, i32* %20, align 4
  %79 = add nsw i32 %78, 64
  store i32 %79, i32* %20, align 4
  %80 = load i32, i32* %20, align 4
  %81 = and i32 %80, -128
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %100

83:                                               ; preds = %73
  %84 = load i32, i32* %21, align 4
  %85 = load i32, i32* %20, align 4
  %86 = call i32 @UNI_MPEG4_ENC_INDEX(i32 0, i32 %84, i32 %85)
  store i32 %86, i32* %22, align 4
  %87 = load i32*, i32** %14, align 8
  %88 = load i64*, i64** %18, align 8
  %89 = load i32, i32* %22, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = trunc i64 %92 to i32
  %94 = load i32*, i32** %17, align 8
  %95 = load i32, i32* %22, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @put_bits(i32* %87, i32 %93, i32 %98)
  br label %113

100:                                              ; preds = %73
  %101 = load i32*, i32** %14, align 8
  %102 = load i32, i32* %21, align 4
  %103 = shl i32 %102, 14
  %104 = add nsw i32 31457280, %103
  %105 = add nsw i32 %104, 8192
  %106 = load i32, i32* %20, align 4
  %107 = sub nsw i32 %106, 64
  %108 = and i32 %107, 4095
  %109 = shl i32 %108, 1
  %110 = add nsw i32 %105, %109
  %111 = add nsw i32 %110, 1
  %112 = call i32 @put_bits(i32* %101, i32 30, i32 %111)
  br label %113

113:                                              ; preds = %100, %83
  %114 = load i32, i32* %15, align 4
  store i32 %114, i32* %16, align 4
  br label %115

115:                                              ; preds = %113, %62
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %15, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %15, align 4
  br label %58

119:                                              ; preds = %58
  %120 = load i32*, i32** %9, align 8
  %121 = load i64*, i64** %12, align 8
  %122 = load i32, i32* %15, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i64, i64* %121, i64 %123
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds i32, i32* %120, i64 %125
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %23, align 4
  %128 = load i32, i32* %15, align 4
  %129 = load i32, i32* %16, align 4
  %130 = sub nsw i32 %128, %129
  %131 = sub nsw i32 %130, 1
  store i32 %131, i32* %24, align 4
  %132 = load i32, i32* %23, align 4
  %133 = add nsw i32 %132, 64
  store i32 %133, i32* %23, align 4
  %134 = load i32, i32* %23, align 4
  %135 = and i32 %134, -128
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %154

137:                                              ; preds = %119
  %138 = load i32, i32* %24, align 4
  %139 = load i32, i32* %23, align 4
  %140 = call i32 @UNI_MPEG4_ENC_INDEX(i32 1, i32 %138, i32 %139)
  store i32 %140, i32* %25, align 4
  %141 = load i32*, i32** %14, align 8
  %142 = load i64*, i64** %18, align 8
  %143 = load i32, i32* %25, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i64, i64* %142, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = trunc i64 %146 to i32
  %148 = load i32*, i32** %17, align 8
  %149 = load i32, i32* %25, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @put_bits(i32* %141, i32 %147, i32 %152)
  br label %167

154:                                              ; preds = %119
  %155 = load i32*, i32** %14, align 8
  %156 = load i32, i32* %24, align 4
  %157 = shl i32 %156, 14
  %158 = add nsw i32 32505856, %157
  %159 = add nsw i32 %158, 8192
  %160 = load i32, i32* %23, align 4
  %161 = sub nsw i32 %160, 64
  %162 = and i32 %161, 4095
  %163 = shl i32 %162, 1
  %164 = add nsw i32 %159, %163
  %165 = add nsw i32 %164, 1
  %166 = call i32 @put_bits(i32* %155, i32 30, i32 %165)
  br label %167

167:                                              ; preds = %44, %51, %154, %137
  ret void
}

declare dso_local i32 @mpeg4_encode_dc(i32*, i32, i32) #1

declare dso_local i32 @UNI_MPEG4_ENC_INDEX(i32, i32, i32) #1

declare dso_local i32 @put_bits(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
