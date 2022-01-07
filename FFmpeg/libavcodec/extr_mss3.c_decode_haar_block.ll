; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mss3.c_decode_haar_block.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mss3.c_decode_haar_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*, i32*, i32, i32, i32*)* @decode_haar_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_haar_block(i32* %0, %struct.TYPE_3__* %1, i32* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %24 = load i32, i32* %11, align 4
  %25 = ashr i32 %24, 1
  store i32 %25, i32* %13, align 4
  store i32 0, i32* %23, align 4
  br label %26

26:                                               ; preds = %79, %6
  %27 = load i32, i32* %23, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %82

30:                                               ; preds = %26
  store i32 0, i32* %22, align 4
  br label %31

31:                                               ; preds = %71, %30
  %32 = load i32, i32* %22, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %74

35:                                               ; preds = %31
  %36 = load i32, i32* %22, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %35
  %40 = load i32, i32* %23, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %39
  %44 = load i32*, i32** %7, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = call i32 @rac_get_model256_sym(i32* %44, i32* %46)
  %48 = load i32*, i32** %12, align 8
  %49 = load i32, i32* %22, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %47, i32* %51, align 4
  br label %61

52:                                               ; preds = %39, %35
  %53 = load i32*, i32** %7, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = call i32 @decode_coeff(i32* %53, i32* %55)
  %57 = load i32*, i32** %12, align 8
  %58 = load i32, i32* %22, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 %56, i32* %60, align 4
  br label %61

61:                                               ; preds = %52, %43
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %12, align 8
  %66 = load i32, i32* %22, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = mul nsw i32 %69, %64
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %61
  %72 = load i32, i32* %22, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %22, align 4
  br label %31

74:                                               ; preds = %31
  %75 = load i32, i32* %11, align 4
  %76 = load i32*, i32** %12, align 8
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  store i32* %78, i32** %12, align 8
  br label %79

79:                                               ; preds = %74
  %80 = load i32, i32* %23, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %23, align 4
  br label %26

82:                                               ; preds = %26
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %11, align 4
  %85 = mul nsw i32 %83, %84
  %86 = load i32*, i32** %12, align 8
  %87 = sext i32 %85 to i64
  %88 = sub i64 0, %87
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32* %89, i32** %12, align 8
  store i32 0, i32* %23, align 4
  br label %90

90:                                               ; preds = %199, %82
  %91 = load i32, i32* %23, align 4
  %92 = load i32, i32* %13, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %202

94:                                               ; preds = %90
  store i32 0, i32* %22, align 4
  br label %95

95:                                               ; preds = %186, %94
  %96 = load i32, i32* %22, align 4
  %97 = load i32, i32* %13, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %189

99:                                               ; preds = %95
  %100 = load i32*, i32** %12, align 8
  %101 = load i32, i32* %22, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %14, align 4
  %105 = load i32*, i32** %12, align 8
  %106 = load i32, i32* %22, align 4
  %107 = load i32, i32* %13, align 4
  %108 = add nsw i32 %106, %107
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %105, i64 %109
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %15, align 4
  %112 = load i32*, i32** %12, align 8
  %113 = load i32, i32* %22, align 4
  %114 = load i32, i32* %13, align 4
  %115 = load i32, i32* %11, align 4
  %116 = mul nsw i32 %114, %115
  %117 = add nsw i32 %113, %116
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %112, i64 %118
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %16, align 4
  %121 = load i32*, i32** %12, align 8
  %122 = load i32, i32* %22, align 4
  %123 = load i32, i32* %13, align 4
  %124 = load i32, i32* %11, align 4
  %125 = mul nsw i32 %123, %124
  %126 = add nsw i32 %122, %125
  %127 = load i32, i32* %13, align 4
  %128 = add nsw i32 %126, %127
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %121, i64 %129
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %17, align 4
  %132 = load i32, i32* %14, align 4
  %133 = load i32, i32* %15, align 4
  %134 = sub nsw i32 %132, %133
  store i32 %134, i32* %18, align 4
  %135 = load i32, i32* %16, align 4
  %136 = load i32, i32* %17, align 4
  %137 = sub nsw i32 %135, %136
  store i32 %137, i32* %19, align 4
  %138 = load i32, i32* %14, align 4
  %139 = load i32, i32* %15, align 4
  %140 = add nsw i32 %138, %139
  store i32 %140, i32* %20, align 4
  %141 = load i32, i32* %16, align 4
  %142 = load i32, i32* %17, align 4
  %143 = add nsw i32 %141, %142
  store i32 %143, i32* %21, align 4
  %144 = load i32, i32* %18, align 4
  %145 = load i32, i32* %19, align 4
  %146 = sub nsw i32 %144, %145
  %147 = call i32 @av_clip_uint8(i32 %146)
  %148 = load i32*, i32** %9, align 8
  %149 = load i32, i32* %22, align 4
  %150 = mul nsw i32 %149, 2
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %148, i64 %151
  store i32 %147, i32* %152, align 4
  %153 = load i32, i32* %18, align 4
  %154 = load i32, i32* %19, align 4
  %155 = add nsw i32 %153, %154
  %156 = call i32 @av_clip_uint8(i32 %155)
  %157 = load i32*, i32** %9, align 8
  %158 = load i32, i32* %22, align 4
  %159 = mul nsw i32 %158, 2
  %160 = load i32, i32* %10, align 4
  %161 = add nsw i32 %159, %160
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %157, i64 %162
  store i32 %156, i32* %163, align 4
  %164 = load i32, i32* %20, align 4
  %165 = load i32, i32* %21, align 4
  %166 = sub nsw i32 %164, %165
  %167 = call i32 @av_clip_uint8(i32 %166)
  %168 = load i32*, i32** %9, align 8
  %169 = load i32, i32* %22, align 4
  %170 = mul nsw i32 %169, 2
  %171 = add nsw i32 %170, 1
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %168, i64 %172
  store i32 %167, i32* %173, align 4
  %174 = load i32, i32* %20, align 4
  %175 = load i32, i32* %21, align 4
  %176 = add nsw i32 %174, %175
  %177 = call i32 @av_clip_uint8(i32 %176)
  %178 = load i32*, i32** %9, align 8
  %179 = load i32, i32* %22, align 4
  %180 = mul nsw i32 %179, 2
  %181 = add nsw i32 %180, 1
  %182 = load i32, i32* %10, align 4
  %183 = add nsw i32 %181, %182
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %178, i64 %184
  store i32 %177, i32* %185, align 4
  br label %186

186:                                              ; preds = %99
  %187 = load i32, i32* %22, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %22, align 4
  br label %95

189:                                              ; preds = %95
  %190 = load i32, i32* %11, align 4
  %191 = load i32*, i32** %12, align 8
  %192 = sext i32 %190 to i64
  %193 = getelementptr inbounds i32, i32* %191, i64 %192
  store i32* %193, i32** %12, align 8
  %194 = load i32, i32* %10, align 4
  %195 = mul nsw i32 %194, 2
  %196 = load i32*, i32** %9, align 8
  %197 = sext i32 %195 to i64
  %198 = getelementptr inbounds i32, i32* %196, i64 %197
  store i32* %198, i32** %9, align 8
  br label %199

199:                                              ; preds = %189
  %200 = load i32, i32* %23, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %23, align 4
  br label %90

202:                                              ; preds = %90
  ret void
}

declare dso_local i32 @rac_get_model256_sym(i32*, i32*) #1

declare dso_local i32 @decode_coeff(i32*, i32*) #1

declare dso_local i32 @av_clip_uint8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
