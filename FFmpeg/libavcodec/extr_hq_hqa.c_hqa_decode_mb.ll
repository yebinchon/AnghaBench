; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hq_hqa.c_hqa_decode_mb.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hq_hqa.c_hqa_decode_mb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32**, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i32, i32*, i32, i32)* @hqa_decode_mb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hqa_decode_mb(%struct.TYPE_7__* %0, i32* %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %18 = load i32*, i32** %11, align 8
  %19 = call i32 @get_bits_left(i32* %18)
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %21, label %23

21:                                               ; preds = %6
  %22 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %22, i32* %7, align 4
  br label %220

23:                                               ; preds = %6
  %24 = load i32*, i32** %11, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @get_vlc2(i32* %24, i32 %28, i32 5, i32 1)
  store i32 %29, i32* %17, align 4
  store i32 0, i32* %15, align 4
  br label %30

30:                                               ; preds = %42, %23
  %31 = load i32, i32* %15, align 4
  %32 = icmp slt i32 %31, 12
  br i1 %32, label %33, label %45

33:                                               ; preds = %30
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32**, i32*** %35, align 8
  %37 = load i32, i32* %15, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32*, i32** %36, i64 %38
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @memset(i32* %40, i32 0, i32 8)
  br label %42

42:                                               ; preds = %33
  %43 = load i32, i32* %15, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %15, align 4
  br label %30

45:                                               ; preds = %30
  store i32 0, i32* %15, align 4
  br label %46

46:                                               ; preds = %58, %45
  %47 = load i32, i32* %15, align 4
  %48 = icmp slt i32 %47, 12
  br i1 %48, label %49, label %61

49:                                               ; preds = %46
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32**, i32*** %51, align 8
  %53 = load i32, i32* %15, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %52, i64 %54
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  store i32 -8192, i32* %57, align 4
  br label %58

58:                                               ; preds = %49
  %59 = load i32, i32* %15, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %15, align 4
  br label %46

61:                                               ; preds = %46
  %62 = load i32, i32* %17, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %119

64:                                               ; preds = %61
  %65 = load i32*, i32** %11, align 8
  %66 = call i32 @get_bits1(i32* %65)
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %17, align 4
  %68 = shl i32 %67, 4
  %69 = load i32, i32* %17, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %17, align 4
  %71 = load i32, i32* %17, align 4
  %72 = and i32 %71, 3
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %64
  %75 = load i32, i32* %17, align 4
  %76 = or i32 %75, 1280
  store i32 %76, i32* %17, align 4
  br label %77

77:                                               ; preds = %74, %64
  %78 = load i32, i32* %17, align 4
  %79 = and i32 %78, 12
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i32, i32* %17, align 4
  %83 = or i32 %82, 2560
  store i32 %83, i32* %17, align 4
  br label %84

84:                                               ; preds = %81, %77
  store i32 0, i32* %15, align 4
  br label %85

85:                                               ; preds = %115, %84
  %86 = load i32, i32* %15, align 4
  %87 = icmp slt i32 %86, 12
  br i1 %87, label %88, label %118

88:                                               ; preds = %85
  %89 = load i32, i32* %17, align 4
  %90 = load i32, i32* %15, align 4
  %91 = shl i32 1, %90
  %92 = and i32 %89, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %88
  br label %115

95:                                               ; preds = %88
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %97 = load i32*, i32** %11, align 8
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i32**, i32*** %99, align 8
  %101 = load i32, i32* %15, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32*, i32** %100, i64 %102
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* %15, align 4
  %107 = icmp sge i32 %106, 8
  %108 = zext i1 %107 to i32
  %109 = call i32 @hq_decode_block(%struct.TYPE_7__* %96, i32* %97, i32* %104, i32 %105, i32 %108, i32 1)
  store i32 %109, i32* %16, align 4
  %110 = load i32, i32* %16, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %95
  %113 = load i32, i32* %16, align 4
  store i32 %113, i32* %7, align 4
  br label %220

114:                                              ; preds = %95
  br label %115

115:                                              ; preds = %114, %94
  %116 = load i32, i32* %15, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %15, align 4
  br label %85

118:                                              ; preds = %85
  br label %119

119:                                              ; preds = %118, %61
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %121 = load i32*, i32** %9, align 8
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* %13, align 4
  %124 = load i32, i32* %14, align 4
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load i32**, i32*** %126, align 8
  %128 = getelementptr inbounds i32*, i32** %127, i64 0
  %129 = load i32*, i32** %128, align 8
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load i32**, i32*** %131, align 8
  %133 = getelementptr inbounds i32*, i32** %132, i64 2
  %134 = load i32*, i32** %133, align 8
  %135 = call i32 @put_blocks(%struct.TYPE_7__* %120, i32* %121, i32 3, i32 %122, i32 %123, i32 %124, i32* %129, i32* %134)
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %137 = load i32*, i32** %9, align 8
  %138 = load i32, i32* %12, align 4
  %139 = add nsw i32 %138, 8
  %140 = load i32, i32* %13, align 4
  %141 = load i32, i32* %14, align 4
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = load i32**, i32*** %143, align 8
  %145 = getelementptr inbounds i32*, i32** %144, i64 1
  %146 = load i32*, i32** %145, align 8
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = load i32**, i32*** %148, align 8
  %150 = getelementptr inbounds i32*, i32** %149, i64 3
  %151 = load i32*, i32** %150, align 8
  %152 = call i32 @put_blocks(%struct.TYPE_7__* %136, i32* %137, i32 3, i32 %139, i32 %140, i32 %141, i32* %146, i32* %151)
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %154 = load i32*, i32** %9, align 8
  %155 = load i32, i32* %12, align 4
  %156 = load i32, i32* %13, align 4
  %157 = load i32, i32* %14, align 4
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 0
  %160 = load i32**, i32*** %159, align 8
  %161 = getelementptr inbounds i32*, i32** %160, i64 4
  %162 = load i32*, i32** %161, align 8
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  %165 = load i32**, i32*** %164, align 8
  %166 = getelementptr inbounds i32*, i32** %165, i64 6
  %167 = load i32*, i32** %166, align 8
  %168 = call i32 @put_blocks(%struct.TYPE_7__* %153, i32* %154, i32 0, i32 %155, i32 %156, i32 %157, i32* %162, i32* %167)
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %170 = load i32*, i32** %9, align 8
  %171 = load i32, i32* %12, align 4
  %172 = add nsw i32 %171, 8
  %173 = load i32, i32* %13, align 4
  %174 = load i32, i32* %14, align 4
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 0
  %177 = load i32**, i32*** %176, align 8
  %178 = getelementptr inbounds i32*, i32** %177, i64 5
  %179 = load i32*, i32** %178, align 8
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 0
  %182 = load i32**, i32*** %181, align 8
  %183 = getelementptr inbounds i32*, i32** %182, i64 7
  %184 = load i32*, i32** %183, align 8
  %185 = call i32 @put_blocks(%struct.TYPE_7__* %169, i32* %170, i32 0, i32 %172, i32 %173, i32 %174, i32* %179, i32* %184)
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %187 = load i32*, i32** %9, align 8
  %188 = load i32, i32* %12, align 4
  %189 = ashr i32 %188, 1
  %190 = load i32, i32* %13, align 4
  %191 = load i32, i32* %14, align 4
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 0
  %194 = load i32**, i32*** %193, align 8
  %195 = getelementptr inbounds i32*, i32** %194, i64 8
  %196 = load i32*, i32** %195, align 8
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 0
  %199 = load i32**, i32*** %198, align 8
  %200 = getelementptr inbounds i32*, i32** %199, i64 9
  %201 = load i32*, i32** %200, align 8
  %202 = call i32 @put_blocks(%struct.TYPE_7__* %186, i32* %187, i32 2, i32 %189, i32 %190, i32 %191, i32* %196, i32* %201)
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %204 = load i32*, i32** %9, align 8
  %205 = load i32, i32* %12, align 4
  %206 = ashr i32 %205, 1
  %207 = load i32, i32* %13, align 4
  %208 = load i32, i32* %14, align 4
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 0
  %211 = load i32**, i32*** %210, align 8
  %212 = getelementptr inbounds i32*, i32** %211, i64 10
  %213 = load i32*, i32** %212, align 8
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 0
  %216 = load i32**, i32*** %215, align 8
  %217 = getelementptr inbounds i32*, i32** %216, i64 11
  %218 = load i32*, i32** %217, align 8
  %219 = call i32 @put_blocks(%struct.TYPE_7__* %203, i32* %204, i32 1, i32 %206, i32 %207, i32 %208, i32* %213, i32* %218)
  store i32 0, i32* %7, align 4
  br label %220

220:                                              ; preds = %119, %112, %21
  %221 = load i32, i32* %7, align 4
  ret i32 %221
}

declare dso_local i32 @get_bits_left(i32*) #1

declare dso_local i32 @get_vlc2(i32*, i32, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i32 @hq_decode_block(%struct.TYPE_7__*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @put_blocks(%struct.TYPE_7__*, i32*, i32, i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
