; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dnxhdenc.c_dnxhd_10bit_dct_quantize_444.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dnxhdenc.c_dnxhd_10bit_dct_quantize_444.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32**, i32**, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32 (i32*)* }
%struct.TYPE_6__ = type { i32* }

@FF_IDCT_PERM_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*, i32, i32, i32*)* @dnxhd_10bit_dct_quantize_444 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dnxhd_10bit_dct_quantize_444(%struct.TYPE_9__* %0, i32* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 6
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %17, align 8
  store i32 0, i32* %19, align 4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32 (i32*)*, i32 (i32*)** %28, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 %29(i32* %30)
  %32 = load i32*, i32** %7, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 2
  %36 = ashr i32 %35, 2
  %37 = load i32*, i32** %7, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 %36, i32* %38, align 4
  store i32 1, i32* %15, align 4
  store i32 0, i32* %14, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 4
  br i1 %40, label %41, label %49

41:                                               ; preds = %5
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32**, i32*** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32*, i32** %44, i64 %46
  %48 = load i32*, i32** %47, align 8
  br label %57

49:                                               ; preds = %5
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load i32**, i32*** %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %52, i64 %54
  %56 = load i32*, i32** %55, align 8
  br label %57

57:                                               ; preds = %49, %41
  %58 = phi i32* [ %48, %41 ], [ %56, %49 ]
  store i32* %58, i32** %16, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = mul nsw i32 %61, 256
  store i32 %62, i32* %18, align 4
  %63 = load i32, i32* %18, align 4
  %64 = sub nsw i32 65536, %63
  %65 = sub nsw i32 %64, 1
  store i32 %65, i32* %20, align 4
  %66 = load i32, i32* %20, align 4
  %67 = shl i32 %66, 1
  store i32 %67, i32* %21, align 4
  store i32 63, i32* %11, align 4
  br label %68

68:                                               ; preds = %102, %57
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %15, align 4
  %71 = icmp sge i32 %69, %70
  br i1 %71, label %72, label %105

72:                                               ; preds = %68
  %73 = load i32*, i32** %17, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %12, align 4
  %78 = load i32*, i32** %7, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %16, align 8
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = mul nsw i32 %82, %87
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* %20, align 4
  %91 = add i32 %89, %90
  %92 = load i32, i32* %21, align 4
  %93 = icmp ugt i32 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %72
  %95 = load i32, i32* %11, align 4
  store i32 %95, i32* %14, align 4
  br label %105

96:                                               ; preds = %72
  %97 = load i32*, i32** %7, align 8
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32 0, i32* %100, align 4
  br label %101

101:                                              ; preds = %96
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %11, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %11, align 4
  br label %68

105:                                              ; preds = %94, %68
  %106 = load i32, i32* %15, align 4
  store i32 %106, i32* %11, align 4
  br label %107

107:                                              ; preds = %167, %105
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* %14, align 4
  %110 = icmp sle i32 %108, %109
  br i1 %110, label %111, label %170

111:                                              ; preds = %107
  %112 = load i32*, i32** %17, align 8
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %12, align 4
  %117 = load i32*, i32** %7, align 8
  %118 = load i32, i32* %12, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load i32*, i32** %16, align 8
  %123 = load i32, i32* %12, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = mul nsw i32 %121, %126
  store i32 %127, i32* %13, align 4
  %128 = load i32, i32* %13, align 4
  %129 = load i32, i32* %20, align 4
  %130 = add i32 %128, %129
  %131 = load i32, i32* %21, align 4
  %132 = icmp ugt i32 %130, %131
  br i1 %132, label %133, label %161

133:                                              ; preds = %111
  %134 = load i32, i32* %13, align 4
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %146

136:                                              ; preds = %133
  %137 = load i32, i32* %18, align 4
  %138 = load i32, i32* %13, align 4
  %139 = add nsw i32 %137, %138
  %140 = ashr i32 %139, 16
  store i32 %140, i32* %13, align 4
  %141 = load i32, i32* %13, align 4
  %142 = load i32*, i32** %7, align 8
  %143 = load i32, i32* %12, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  store i32 %141, i32* %145, align 4
  br label %157

146:                                              ; preds = %133
  %147 = load i32, i32* %18, align 4
  %148 = load i32, i32* %13, align 4
  %149 = sub nsw i32 %147, %148
  %150 = ashr i32 %149, 16
  store i32 %150, i32* %13, align 4
  %151 = load i32, i32* %13, align 4
  %152 = sub nsw i32 0, %151
  %153 = load i32*, i32** %7, align 8
  %154 = load i32, i32* %12, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  store i32 %152, i32* %156, align 4
  br label %157

157:                                              ; preds = %146, %136
  %158 = load i32, i32* %13, align 4
  %159 = load i32, i32* %19, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %19, align 4
  br label %166

161:                                              ; preds = %111
  %162 = load i32*, i32** %7, align 8
  %163 = load i32, i32* %12, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  store i32 0, i32* %165, align 4
  br label %166

166:                                              ; preds = %161, %157
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %11, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %11, align 4
  br label %107

170:                                              ; preds = %107
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %19, align 4
  %175 = icmp slt i32 %173, %174
  %176 = zext i1 %175 to i32
  %177 = load i32*, i32** %10, align 8
  store i32 %176, i32* %177, align 4
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 4
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @FF_IDCT_PERM_NONE, align 8
  %183 = icmp ne i64 %181, %182
  br i1 %183, label %184, label %193

184:                                              ; preds = %170
  %185 = load i32*, i32** %7, align 8
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 4
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = load i32*, i32** %17, align 8
  %191 = load i32, i32* %14, align 4
  %192 = call i32 @ff_block_permute(i32* %185, i32 %189, i32* %190, i32 %191)
  br label %193

193:                                              ; preds = %184, %170
  %194 = load i32, i32* %14, align 4
  ret i32 %194
}

declare dso_local i32 @ff_block_permute(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
