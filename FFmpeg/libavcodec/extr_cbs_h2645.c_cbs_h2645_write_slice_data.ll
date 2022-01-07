; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cbs_h2645.c_cbs_h2645_write_slice_data.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cbs_h2645.c_cbs_h2645_write_slice_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i64, i32)* @cbs_h2645_write_slice_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbs_h2645_write_slice_data(i32* %0, i32* %1, i32* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i64, i64* %10, align 8
  %17 = load i32, i32* %11, align 4
  %18 = add nsw i32 %17, 7
  %19 = sdiv i32 %18, 8
  %20 = sext i32 %19 to i64
  %21 = sub i64 %16, %20
  store i64 %21, i64* %12, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = load i32, i32* %11, align 4
  %24 = sdiv i32 %23, 8
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  store i32* %26, i32** %13, align 8
  %27 = load i32, i32* %11, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %5
  %30 = load i64, i64* %10, align 8
  %31 = mul i64 8, %30
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = icmp ugt i64 %31, %33
  br label %35

35:                                               ; preds = %29, %5
  %36 = phi i1 [ false, %5 ], [ %34, %29 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @av_assert0(i32 %37)
  %39 = load i64, i64* %10, align 8
  %40 = mul i64 %39, 8
  %41 = add i64 %40, 8
  %42 = load i32*, i32** %8, align 8
  %43 = call i64 @put_bits_left(i32* %42)
  %44 = icmp ugt i64 %41, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %35
  %46 = load i32, i32* @ENOSPC, align 4
  %47 = call i32 @AVERROR(i32 %46)
  store i32 %47, i32* %6, align 4
  br label %169

48:                                               ; preds = %35
  %49 = load i64, i64* %12, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  br label %115

52:                                               ; preds = %48
  %53 = load i32, i32* %11, align 4
  %54 = srem i32 %53, 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %52
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* %11, align 4
  %59 = srem i32 %58, 8
  %60 = sub nsw i32 8, %59
  %61 = load i32*, i32** %13, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %13, align 8
  %63 = load i32, i32* %61, align 4
  %64 = load i32, i32* %11, align 4
  %65 = srem i32 %64, 8
  %66 = sub nsw i32 8, %65
  %67 = call i32 @MAX_UINT_BITS(i32 %66)
  %68 = and i32 %63, %67
  %69 = call i32 @put_bits(i32* %57, i32 %60, i32 %68)
  br label %70

70:                                               ; preds = %56, %52
  %71 = load i32*, i32** %8, align 8
  %72 = call i32 @put_bits_count(i32* %71)
  %73 = srem i32 %72, 8
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %70
  %76 = load i32*, i32** %8, align 8
  %77 = call i32 @flush_put_bits(i32* %76)
  %78 = load i32*, i32** %8, align 8
  %79 = call i32 @put_bits_ptr(i32* %78)
  %80 = load i32*, i32** %13, align 8
  %81 = load i64, i64* %12, align 8
  %82 = call i32 @memcpy(i32 %79, i32* %80, i64 %81)
  %83 = load i32*, i32** %8, align 8
  %84 = load i64, i64* %12, align 8
  %85 = call i32 @skip_put_bytes(i32* %83, i64 %84)
  br label %168

86:                                               ; preds = %70
  br label %87

87:                                               ; preds = %95, %86
  %88 = load i64, i64* %12, align 8
  %89 = icmp ugt i64 %88, 4
  br i1 %89, label %90, label %100

90:                                               ; preds = %87
  %91 = load i32*, i32** %8, align 8
  %92 = load i32*, i32** %13, align 8
  %93 = call i32 @AV_RB32(i32* %92)
  %94 = call i32 @put_bits32(i32* %91, i32 %93)
  br label %95

95:                                               ; preds = %90
  %96 = load i64, i64* %12, align 8
  %97 = sub i64 %96, 4
  store i64 %97, i64* %12, align 8
  %98 = load i32*, i32** %13, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 4
  store i32* %99, i32** %13, align 8
  br label %87

100:                                              ; preds = %87
  br label %101

101:                                              ; preds = %109, %100
  %102 = load i64, i64* %12, align 8
  %103 = icmp ugt i64 %102, 1
  br i1 %103, label %104, label %114

104:                                              ; preds = %101
  %105 = load i32*, i32** %8, align 8
  %106 = load i32*, i32** %13, align 8
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @put_bits(i32* %105, i32 8, i32 %107)
  br label %109

109:                                              ; preds = %104
  %110 = load i64, i64* %12, align 8
  %111 = add i64 %110, -1
  store i64 %111, i64* %12, align 8
  %112 = load i32*, i32** %13, align 8
  %113 = getelementptr inbounds i32, i32* %112, i32 1
  store i32* %113, i32** %13, align 8
  br label %101

114:                                              ; preds = %101
  br label %115

115:                                              ; preds = %114, %51
  %116 = load i64, i64* %12, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load i32*, i32** %13, align 8
  %120 = load i32, i32* %119, align 4
  br label %129

121:                                              ; preds = %115
  %122 = load i32*, i32** %13, align 8
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %11, align 4
  %125 = srem i32 %124, 8
  %126 = sub nsw i32 8, %125
  %127 = call i32 @MAX_UINT_BITS(i32 %126)
  %128 = and i32 %123, %127
  br label %129

129:                                              ; preds = %121, %118
  %130 = phi i32 [ %120, %118 ], [ %128, %121 ]
  store i32 %130, i32* %14, align 4
  %131 = load i32, i32* %14, align 4
  %132 = call i32 @av_assert0(i32 %131)
  %133 = load i32*, i32** %13, align 8
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @ff_ctz(i32 %134)
  store i32 %135, i32* %15, align 4
  %136 = load i32, i32* %14, align 4
  %137 = load i32, i32* %15, align 4
  %138 = ashr i32 %136, %137
  store i32 %138, i32* %14, align 4
  %139 = load i64, i64* %12, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %129
  %142 = load i32, i32* %15, align 4
  %143 = sub nsw i32 8, %142
  br label %150

144:                                              ; preds = %129
  %145 = load i32, i32* %15, align 4
  %146 = sub nsw i32 8, %145
  %147 = load i32, i32* %11, align 4
  %148 = srem i32 %147, 8
  %149 = sub nsw i32 %146, %148
  br label %150

150:                                              ; preds = %144, %141
  %151 = phi i32 [ %143, %141 ], [ %149, %144 ]
  store i32 %151, i32* %15, align 4
  %152 = load i32*, i32** %8, align 8
  %153 = load i32, i32* %15, align 4
  %154 = load i32, i32* %14, align 4
  %155 = call i32 @put_bits(i32* %152, i32 %153, i32 %154)
  %156 = load i32*, i32** %8, align 8
  %157 = call i32 @put_bits_count(i32* %156)
  %158 = srem i32 %157, 8
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %167

160:                                              ; preds = %150
  %161 = load i32*, i32** %8, align 8
  %162 = load i32*, i32** %8, align 8
  %163 = call i32 @put_bits_count(i32* %162)
  %164 = srem i32 %163, 8
  %165 = sub nsw i32 8, %164
  %166 = call i32 @put_bits(i32* %161, i32 %165, i32 0)
  br label %167

167:                                              ; preds = %160, %150
  br label %168

168:                                              ; preds = %167, %75
  store i32 0, i32* %6, align 4
  br label %169

169:                                              ; preds = %168, %45
  %170 = load i32, i32* %6, align 4
  ret i32 %170
}

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i64 @put_bits_left(i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @put_bits(i32*, i32, i32) #1

declare dso_local i32 @MAX_UINT_BITS(i32) #1

declare dso_local i32 @put_bits_count(i32*) #1

declare dso_local i32 @flush_put_bits(i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

declare dso_local i32 @put_bits_ptr(i32*) #1

declare dso_local i32 @skip_put_bytes(i32*, i64) #1

declare dso_local i32 @put_bits32(i32*, i32) #1

declare dso_local i32 @AV_RB32(i32*) #1

declare dso_local i32 @ff_ctz(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
