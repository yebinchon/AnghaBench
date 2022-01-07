; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_flacenc.c_write_subframes.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_flacenc.c_write_subframes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i64, i32, i32, %struct.TYPE_9__, i32*, i32*, i32 }
%struct.TYPE_9__ = type { i32, i32, i32* }
%struct.TYPE_7__ = type { i32 }

@FLAC_SUBFRAME_CONSTANT = common dso_local global i64 0, align 8
@FLAC_SUBFRAME_VERBATIM = common dso_local global i64 0, align 8
@FLAC_SUBFRAME_LPC = common dso_local global i64 0, align 8
@INT32_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @write_subframes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_subframes(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %250, %1
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %253

20:                                               ; preds = %14
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i64 %26
  store %struct.TYPE_10__* %27, %struct.TYPE_10__** %4, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 6
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %10, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 6
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds i32, i32* %33, i64 %37
  store i32* %38, i32** %11, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = call i32 @put_bits(i32* %40, i32 1, i32 0)
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @put_bits(i32* %43, i32 6, i32 %46)
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i32 @put_bits(i32* %49, i32 1, i32 %56)
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %20
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @put_bits(i32* %64, i32 %67, i32 1)
  br label %69

69:                                               ; preds = %62, %20
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @FLAC_SUBFRAME_CONSTANT, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %69
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = load i32*, i32** %10, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @put_sbits(i32* %77, i32 %80, i32 %83)
  br label %249

85:                                               ; preds = %69
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @FLAC_SUBFRAME_VERBATIM, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %107

91:                                               ; preds = %85
  br label %92

92:                                               ; preds = %96, %91
  %93 = load i32*, i32** %10, align 8
  %94 = load i32*, i32** %11, align 8
  %95 = icmp ult i32* %93, %94
  br i1 %95, label %96, label %106

96:                                               ; preds = %92
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = load i32*, i32** %10, align 8
  %103 = getelementptr inbounds i32, i32* %102, i32 1
  store i32* %103, i32** %10, align 8
  %104 = load i32, i32* %102, align 4
  %105 = call i32 @put_sbits(i32* %98, i32 %101, i32 %104)
  br label %92

106:                                              ; preds = %92
  br label %248

107:                                              ; preds = %85
  store i32 0, i32* %5, align 4
  br label %108

108:                                              ; preds = %124, %107
  %109 = load i32, i32* %5, align 4
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = icmp slt i32 %109, %112
  br i1 %113, label %114, label %127

114:                                              ; preds = %108
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = load i32*, i32** %10, align 8
  %121 = getelementptr inbounds i32, i32* %120, i32 1
  store i32* %121, i32** %10, align 8
  %122 = load i32, i32* %120, align 4
  %123 = call i32 @put_sbits(i32* %116, i32 %119, i32 %122)
  br label %124

124:                                              ; preds = %114
  %125 = load i32, i32* %5, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %5, align 4
  br label %108

127:                                              ; preds = %108
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @FLAC_SUBFRAME_LPC, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %171

133:                                              ; preds = %127
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  store i32 %137, i32* %12, align 4
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 1
  %140 = load i32, i32* %12, align 4
  %141 = sub nsw i32 %140, 1
  %142 = call i32 @put_bits(i32* %139, i32 4, i32 %141)
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 8
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @put_sbits(i32* %144, i32 5, i32 %147)
  store i32 0, i32* %5, align 4
  br label %149

149:                                              ; preds = %167, %133
  %150 = load i32, i32* %5, align 4
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 4
  %154 = icmp slt i32 %150, %153
  br i1 %154, label %155, label %170

155:                                              ; preds = %149
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 1
  %158 = load i32, i32* %12, align 4
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 7
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %5, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @put_sbits(i32* %157, i32 %158, i32 %165)
  br label %167

167:                                              ; preds = %155
  %168 = load i32, i32* %5, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %5, align 4
  br label %149

170:                                              ; preds = %149
  br label %171

171:                                              ; preds = %170, %127
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 5
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = sub nsw i32 %177, 4
  %179 = call i32 @put_bits(i32* %173, i32 2, i32 %178)
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 5
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  store i32 %183, i32* %7, align 4
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i32, i32* %7, align 4
  %189 = zext i32 %188 to i64
  %190 = lshr i64 %187, %189
  %191 = trunc i64 %190 to i32
  store i32 %191, i32* %8, align 4
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 1
  %194 = load i32, i32* %7, align 4
  %195 = call i32 @put_bits(i32* %193, i32 4, i32 %194)
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 6
  %198 = load i32*, i32** %197, align 8
  %199 = load i32, i32* %8, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  store i32* %201, i32** %9, align 8
  store i32 0, i32* %6, align 4
  br label %202

202:                                              ; preds = %244, %171
  %203 = load i32, i32* %6, align 4
  %204 = load i32, i32* %7, align 4
  %205 = shl i32 1, %204
  %206 = icmp slt i32 %203, %205
  br i1 %206, label %207, label %247

207:                                              ; preds = %202
  %208 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 5
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 2
  %211 = load i32*, i32** %210, align 8
  %212 = load i32, i32* %6, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  store i32 %215, i32* %13, align 4
  %216 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 1
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 5
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* %13, align 4
  %223 = call i32 @put_bits(i32* %217, i32 %221, i32 %222)
  br label %224

224:                                              ; preds = %228, %207
  %225 = load i32*, i32** %10, align 8
  %226 = load i32*, i32** %9, align 8
  %227 = icmp ult i32* %225, %226
  br i1 %227, label %228, label %237

228:                                              ; preds = %224
  %229 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i32 0, i32 1
  %231 = load i32*, i32** %10, align 8
  %232 = getelementptr inbounds i32, i32* %231, i32 1
  store i32* %232, i32** %10, align 8
  %233 = load i32, i32* %231, align 4
  %234 = load i32, i32* %13, align 4
  %235 = load i32, i32* @INT32_MAX, align 4
  %236 = call i32 @set_sr_golomb_flac(i32* %230, i32 %233, i32 %234, i32 %235, i32 0)
  br label %224

237:                                              ; preds = %224
  %238 = load i32*, i32** %11, align 8
  %239 = load i32*, i32** %9, align 8
  %240 = load i32, i32* %8, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %239, i64 %241
  %243 = call i32* @FFMIN(i32* %238, i32* %242)
  store i32* %243, i32** %9, align 8
  br label %244

244:                                              ; preds = %237
  %245 = load i32, i32* %6, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %6, align 4
  br label %202

247:                                              ; preds = %202
  br label %248

248:                                              ; preds = %247, %106
  br label %249

249:                                              ; preds = %248, %75
  br label %250

250:                                              ; preds = %249
  %251 = load i32, i32* %3, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %3, align 4
  br label %14

253:                                              ; preds = %14
  ret void
}

declare dso_local i32 @put_bits(i32*, i32, i32) #1

declare dso_local i32 @put_sbits(i32*, i32, i32) #1

declare dso_local i32 @set_sr_golomb_flac(i32*, i32, i32, i32, i32) #1

declare dso_local i32* @FFMIN(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
