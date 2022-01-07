; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg12enc.c_mpeg1_encode_block.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg12enc.c_mpeg1_encode_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32** }
%struct.TYPE_9__ = type { i32** }
%struct.TYPE_8__ = type { i32*, i32*, i64, i32, %struct.TYPE_7__, i64, i64 }
%struct.TYPE_7__ = type { i32* }

@ff_rl_mpeg1 = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@ff_rl_mpeg2 = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@mpeg1_max_level = common dso_local global i32** null, align 8
@mpeg1_index_run = common dso_local global i32** null, align 8
@AV_CODEC_ID_MPEG1VIDEO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32*, i32)* @mpeg1_encode_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpeg1_encode_block(%struct.TYPE_8__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [2 x i32]*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %20 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ff_rl_mpeg1, i32 0, i32 0), align 8
  %21 = bitcast i32** %20 to [2 x i32]*
  store [2 x i32]* %21, [2 x i32]** %19, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %15, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 6
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %74

33:                                               ; preds = %3
  %34 = load i32, i32* %6, align 4
  %35 = icmp sle i32 %34, 3
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %41

37:                                               ; preds = %33
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, 1
  %40 = add nsw i32 %39, 1
  br label %41

41:                                               ; preds = %37, %36
  %42 = phi i32 [ 0, %36 ], [ %40, %37 ]
  store i32 %42, i32* %18, align 4
  %43 = load i32*, i32** %5, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %18, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %46, %53
  store i32 %54, i32* %11, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %18, align 4
  %58 = call i32 @encode_dc(%struct.TYPE_8__* %55, i32 %56, i32 %57)
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %18, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 %59, i32* %65, align 4
  store i32 1, i32* %12, align 4
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 5
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %41
  %71 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ff_rl_mpeg2, i32 0, i32 0), align 8
  %72 = bitcast i32** %71 to [2 x i32]*
  store [2 x i32]* %72, [2 x i32]** %19, align 8
  br label %73

73:                                               ; preds = %70, %41
  br label %91

74:                                               ; preds = %3
  %75 = load i32*, i32** %5, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @abs(i32 %78) #3
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %89

81:                                               ; preds = %74
  %82 = load i32, i32* %8, align 4
  %83 = ashr i32 %82, 31
  store i32 %83, i32* %17, align 4
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 3
  %86 = load i32, i32* %17, align 4
  %87 = or i32 %86, 2
  %88 = call i32 @put_bits(i32* %85, i32 2, i32 %87)
  store i32 1, i32* %12, align 4
  br label %90

89:                                               ; preds = %74
  store i32 0, i32* %12, align 4
  store i32 -1, i32* %9, align 4
  br label %112

90:                                               ; preds = %81
  br label %91

91:                                               ; preds = %90, %73
  %92 = load i32, i32* %12, align 4
  %93 = sub nsw i32 %92, 1
  store i32 %93, i32* %9, align 4
  br label %94

94:                                               ; preds = %220, %91
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* %15, align 4
  %97 = icmp sle i32 %95, %96
  br i1 %97, label %98, label %223

98:                                               ; preds = %94
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 4
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %12, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %13, align 4
  %107 = load i32*, i32** %5, align 8
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %8, align 4
  br label %112

112:                                              ; preds = %98, %89
  %113 = load i32, i32* %8, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %219

115:                                              ; preds = %112
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* %9, align 4
  %118 = sub nsw i32 %116, %117
  %119 = sub nsw i32 %118, 1
  store i32 %119, i32* %14, align 4
  %120 = load i32, i32* %8, align 4
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* %16, align 4
  %122 = load i32, i32* %7, align 4
  %123 = call i32 @MASK_ABS(i32 %121, i32 %122)
  %124 = load i32, i32* %16, align 4
  %125 = and i32 %124, 1
  store i32 %125, i32* %16, align 4
  %126 = load i32, i32* %7, align 4
  %127 = load i32**, i32*** @mpeg1_max_level, align 8
  %128 = getelementptr inbounds i32*, i32** %127, i64 0
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %14, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = icmp sle i32 %126, %133
  br i1 %134, label %135, label %165

135:                                              ; preds = %115
  %136 = load i32**, i32*** @mpeg1_index_run, align 8
  %137 = getelementptr inbounds i32*, i32** %136, i64 0
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %14, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %7, align 4
  %144 = add nsw i32 %142, %143
  %145 = sub nsw i32 %144, 1
  store i32 %145, i32* %17, align 4
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 3
  %148 = load [2 x i32]*, [2 x i32]** %19, align 8
  %149 = load i32, i32* %17, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [2 x i32], [2 x i32]* %148, i64 %150
  %152 = getelementptr inbounds [2 x i32], [2 x i32]* %151, i64 0, i64 1
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %153, 1
  %155 = load [2 x i32]*, [2 x i32]** %19, align 8
  %156 = load i32, i32* %17, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [2 x i32], [2 x i32]* %155, i64 %157
  %159 = getelementptr inbounds [2 x i32], [2 x i32]* %158, i64 0, i64 0
  %160 = load i32, i32* %159, align 4
  %161 = shl i32 %160, 1
  %162 = load i32, i32* %16, align 4
  %163 = add nsw i32 %161, %162
  %164 = call i32 @put_bits(i32* %147, i32 %154, i32 %163)
  br label %217

165:                                              ; preds = %115
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 3
  %168 = load [2 x i32]*, [2 x i32]** %19, align 8
  %169 = getelementptr inbounds [2 x i32], [2 x i32]* %168, i64 111
  %170 = getelementptr inbounds [2 x i32], [2 x i32]* %169, i64 0, i64 1
  %171 = load i32, i32* %170, align 4
  %172 = load [2 x i32]*, [2 x i32]** %19, align 8
  %173 = getelementptr inbounds [2 x i32], [2 x i32]* %172, i64 111
  %174 = getelementptr inbounds [2 x i32], [2 x i32]* %173, i64 0, i64 0
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @put_bits(i32* %167, i32 %171, i32 %175)
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 3
  %179 = load i32, i32* %14, align 4
  %180 = call i32 @put_bits(i32* %178, i32 6, i32 %179)
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @AV_CODEC_ID_MPEG1VIDEO, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %211

186:                                              ; preds = %165
  %187 = load i32, i32* %7, align 4
  %188 = icmp slt i32 %187, 128
  br i1 %188, label %189, label %194

189:                                              ; preds = %186
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 3
  %192 = load i32, i32* %8, align 4
  %193 = call i32 @put_sbits(i32* %191, i32 8, i32 %192)
  br label %210

194:                                              ; preds = %186
  %195 = load i32, i32* %8, align 4
  %196 = icmp slt i32 %195, 0
  br i1 %196, label %197, label %204

197:                                              ; preds = %194
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 3
  %200 = load i32, i32* %8, align 4
  %201 = add nsw i32 32769, %200
  %202 = add nsw i32 %201, 255
  %203 = call i32 @put_bits(i32* %199, i32 16, i32 %202)
  br label %209

204:                                              ; preds = %194
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 3
  %207 = load i32, i32* %8, align 4
  %208 = call i32 @put_sbits(i32* %206, i32 16, i32 %207)
  br label %209

209:                                              ; preds = %204, %197
  br label %210

210:                                              ; preds = %209, %189
  br label %216

211:                                              ; preds = %165
  %212 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 3
  %214 = load i32, i32* %8, align 4
  %215 = call i32 @put_sbits(i32* %213, i32 12, i32 %214)
  br label %216

216:                                              ; preds = %211, %210
  br label %217

217:                                              ; preds = %216, %135
  %218 = load i32, i32* %12, align 4
  store i32 %218, i32* %9, align 4
  br label %219

219:                                              ; preds = %217, %112
  br label %220

220:                                              ; preds = %219
  %221 = load i32, i32* %12, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %12, align 4
  br label %94

223:                                              ; preds = %94
  %224 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 3
  %226 = load [2 x i32]*, [2 x i32]** %19, align 8
  %227 = getelementptr inbounds [2 x i32], [2 x i32]* %226, i64 112
  %228 = getelementptr inbounds [2 x i32], [2 x i32]* %227, i64 0, i64 1
  %229 = load i32, i32* %228, align 4
  %230 = load [2 x i32]*, [2 x i32]** %19, align 8
  %231 = getelementptr inbounds [2 x i32], [2 x i32]* %230, i64 112
  %232 = getelementptr inbounds [2 x i32], [2 x i32]* %231, i64 0, i64 0
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @put_bits(i32* %225, i32 %229, i32 %233)
  ret void
}

declare dso_local i32 @encode_dc(%struct.TYPE_8__*, i32, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @put_bits(i32*, i32, i32) #1

declare dso_local i32 @MASK_ABS(i32, i32) #1

declare dso_local i32 @put_sbits(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
