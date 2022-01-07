; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h261enc.c_h261_encode_block.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h261enc.c_h261_encode_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32**, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32*, i32, %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i32* }

@ff_h261_rl_tcoeff = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i32*, i32)* @h261_encode_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @h261_encode_block(%struct.TYPE_11__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_9__* @ff_h261_rl_tcoeff, %struct.TYPE_9__** %17, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %53

24:                                               ; preds = %3
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp sgt i32 %28, 254
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  store i32 254, i32* %8, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  store i32 254, i32* %32, align 4
  br label %40

33:                                               ; preds = %24
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 1
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  store i32 1, i32* %8, align 4
  %37 = load i32*, i32** %5, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 1, i32* %38, align 4
  br label %39

39:                                               ; preds = %36, %33
  br label %40

40:                                               ; preds = %39, %30
  %41 = load i32, i32* %8, align 4
  %42 = icmp eq i32 %41, 128
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = call i32 @put_bits(i32* %45, i32 8, i32 255)
  br label %52

47:                                               ; preds = %40
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @put_bits(i32* %49, i32 8, i32 %50)
  br label %52

52:                                               ; preds = %47, %43
  store i32 1, i32* %10, align 4
  br label %84

53:                                               ; preds = %3
  %54 = load i32*, i32** %5, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %63, label %58

58:                                               ; preds = %53
  %59 = load i32*, i32** %5, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %82

63:                                               ; preds = %58, %53
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = icmp sgt i32 %70, -1
  br i1 %71, label %72, label %82

72:                                               ; preds = %63
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  %75 = load i32*, i32** %5, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp sgt i32 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i32 2, i32 3
  %81 = call i32 @put_bits(i32* %74, i32 2, i32 %80)
  store i32 1, i32* %10, align 4
  br label %83

82:                                               ; preds = %63, %58
  store i32 0, i32* %10, align 4
  br label %83

83:                                               ; preds = %82, %72
  br label %84

84:                                               ; preds = %83, %52
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %10, align 4
  %93 = sub nsw i32 %92, 1
  store i32 %93, i32* %13, align 4
  br label %94

94:                                               ; preds = %190, %84
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %12, align 4
  %97 = icmp sle i32 %95, %96
  br i1 %97, label %98, label %193

98:                                               ; preds = %94
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %11, align 4
  %107 = load i32*, i32** %5, align 8
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %189

114:                                              ; preds = %98
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* %13, align 4
  %117 = sub nsw i32 %115, %116
  %118 = sub nsw i32 %117, 1
  store i32 %118, i32* %9, align 4
  store i32 0, i32* %14, align 4
  %119 = load i32, i32* %8, align 4
  store i32 %119, i32* %15, align 4
  %120 = load i32, i32* %8, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %114
  store i32 1, i32* %14, align 4
  %123 = load i32, i32* %8, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %8, align 4
  br label %125

125:                                              ; preds = %122, %114
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @get_rl_index(%struct.TYPE_9__* %126, i32 0, i32 %127, i32 %128)
  store i32 %129, i32* %16, align 4
  %130 = load i32, i32* %9, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %125
  %133 = load i32, i32* %8, align 4
  %134 = icmp slt i32 %133, 16
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = load i32, i32* %16, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %16, align 4
  br label %138

138:                                              ; preds = %135, %132, %125
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 0
  %143 = load i32**, i32*** %142, align 8
  %144 = load i32, i32* %16, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32*, i32** %143, i64 %145
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  %152 = load i32**, i32*** %151, align 8
  %153 = load i32, i32* %16, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32*, i32** %152, i64 %154
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @put_bits(i32* %140, i32 %149, i32 %158)
  %160 = load i32, i32* %16, align 4
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = icmp eq i32 %160, %163
  br i1 %164, label %165, label %182

165:                                              ; preds = %138
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 1
  %168 = load i32, i32* %9, align 4
  %169 = call i32 @put_bits(i32* %167, i32 6, i32 %168)
  %170 = load i32, i32* %15, align 4
  %171 = icmp ne i32 %170, 0
  %172 = zext i1 %171 to i32
  %173 = call i32 @av_assert1(i32 %172)
  %174 = load i32, i32* %8, align 4
  %175 = icmp sle i32 %174, 127
  %176 = zext i1 %175 to i32
  %177 = call i32 @av_assert1(i32 %176)
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 1
  %180 = load i32, i32* %15, align 4
  %181 = call i32 @put_sbits(i32* %179, i32 8, i32 %180)
  br label %187

182:                                              ; preds = %138
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 1
  %185 = load i32, i32* %14, align 4
  %186 = call i32 @put_bits(i32* %184, i32 1, i32 %185)
  br label %187

187:                                              ; preds = %182, %165
  %188 = load i32, i32* %10, align 4
  store i32 %188, i32* %13, align 4
  br label %189

189:                                              ; preds = %187, %98
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* %10, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %10, align 4
  br label %94

193:                                              ; preds = %94
  %194 = load i32, i32* %12, align 4
  %195 = icmp sgt i32 %194, -1
  br i1 %195, label %196, label %214

196:                                              ; preds = %193
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 1
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 0
  %201 = load i32**, i32*** %200, align 8
  %202 = getelementptr inbounds i32*, i32** %201, i64 0
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 1
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 0
  %208 = load i32**, i32*** %207, align 8
  %209 = getelementptr inbounds i32*, i32** %208, i64 0
  %210 = load i32*, i32** %209, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 0
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @put_bits(i32* %198, i32 %205, i32 %212)
  br label %214

214:                                              ; preds = %196, %193
  ret void
}

declare dso_local i32 @put_bits(i32*, i32, i32) #1

declare dso_local i32 @get_rl_index(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @av_assert1(i32) #1

declare dso_local i32 @put_sbits(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
