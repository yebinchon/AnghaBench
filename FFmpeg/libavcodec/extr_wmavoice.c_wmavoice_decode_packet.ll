; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmavoice.c_wmavoice_decode_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmavoice.c_wmavoice_decode_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@SFRAME_CACHE_MAXSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i8*, i32*, %struct.TYPE_9__*)* @wmavoice_decode_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wmavoice_decode_packet(%struct.TYPE_10__* %0, i8* %1, i32* %2, %struct.TYPE_9__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %9, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %10, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 6
  store i32* %21, i32** %11, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %12, align 4
  br label %25

25:                                               ; preds = %32, %4
  %26 = load i32, i32* %12, align 4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sgt i32 %26, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %12, align 4
  %37 = sub nsw i32 %36, %35
  store i32 %37, i32* %12, align 4
  br label %25

38:                                               ; preds = %25
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 6
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @init_get_bits8(i32* %40, i32 %43, i32 %44)
  %46 = load i32, i32* %12, align 4
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = srem i32 %46, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %166, label %52

52:                                               ; preds = %38
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %52
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  store i32 0, i32* %57, align 4
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  store i32 0, i32* %59, align 4
  br label %70

60:                                               ; preds = %52
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %62 = call i32 @parse_packet_header(%struct.TYPE_8__* %61)
  store i32 %62, i32* %13, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* %13, align 4
  store i32 %65, i32* %5, align 4
  br label %250

66:                                               ; preds = %60
  %67 = load i32, i32* %13, align 4
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %66, %55
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %153

75:                                               ; preds = %70
  %76 = load i32*, i32** %11, align 8
  %77 = call i32 @get_bits_count(i32* %76)
  store i32 %77, i32* %15, align 4
  %78 = load i32, i32* %15, align 4
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %78, %81
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = mul nsw i32 %85, 8
  %87 = icmp sgt i32 %82, %86
  br i1 %87, label %88, label %97

88:                                               ; preds = %75
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = mul nsw i32 %91, 8
  %93 = load i32, i32* %15, align 4
  %94 = sub nsw i32 %92, %93
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  br label %97

97:                                               ; preds = %88, %75
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 4
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %12, align 4
  %104 = load i32*, i32** %11, align 8
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @copy_bits(i32* %99, i32 %102, i32 %103, i32* %104, i32 %107)
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 4
  %111 = call i32 @flush_put_bits(i32* %110)
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, %114
  store i32 %118, i32* %116, align 4
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %120 = load i8*, i8** %7, align 8
  %121 = load i32*, i32** %8, align 8
  %122 = call i32 @synth_superframe(%struct.TYPE_10__* %119, i8* %120, i32* %121)
  store i32 %122, i32* %13, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %141

124:                                              ; preds = %97
  %125 = load i32*, i32** %8, align 8
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %141

128:                                              ; preds = %124
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %15, align 4
  %133 = add nsw i32 %132, %131
  store i32 %133, i32* %15, align 4
  %134 = load i32, i32* %15, align 4
  %135 = and i32 %134, 7
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 3
  store i32 %135, i32* %137, align 4
  %138 = load i32, i32* %15, align 4
  %139 = ashr i32 %138, 3
  store i32 %139, i32* %13, align 4
  %140 = load i32, i32* %13, align 4
  store i32 %140, i32* %5, align 4
  br label %250

141:                                              ; preds = %124, %97
  %142 = load i32*, i32** %11, align 8
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %15, align 4
  %147 = sub nsw i32 %145, %146
  %148 = load i32*, i32** %11, align 8
  %149 = call i32 @get_bits_count(i32* %148)
  %150 = add nsw i32 %147, %149
  %151 = call i32 @skip_bits_long(i32* %142, i32 %150)
  br label %152

152:                                              ; preds = %141
  br label %165

153:                                              ; preds = %70
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %153
  %159 = load i32*, i32** %11, align 8
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @skip_bits_long(i32* %159, i32 %162)
  br label %164

164:                                              ; preds = %158, %153
  br label %165

165:                                              ; preds = %164, %152
  br label %178

166:                                              ; preds = %38
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %166
  %172 = load i32*, i32** %11, align 8
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @skip_bits(i32* %172, i32 %175)
  br label %177

177:                                              ; preds = %171, %166
  br label %178

178:                                              ; preds = %177, %165
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 2
  store i32 0, i32* %180, align 4
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 3
  store i32 0, i32* %182, align 4
  %183 = load i32*, i32** %11, align 8
  %184 = call i32 @get_bits_left(i32* %183)
  store i32 %184, i32* %14, align 4
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = add nsw i32 %187, -1
  store i32 %188, i32* %186, align 4
  %189 = icmp eq i32 %187, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %178
  %191 = load i32*, i32** %8, align 8
  store i32 0, i32* %191, align 4
  %192 = load i32, i32* %12, align 4
  store i32 %192, i32* %5, align 4
  br label %250

193:                                              ; preds = %178
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = icmp sgt i32 %196, 0
  br i1 %197, label %198, label %222

198:                                              ; preds = %193
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %200 = load i8*, i8** %7, align 8
  %201 = load i32*, i32** %8, align 8
  %202 = call i32 @synth_superframe(%struct.TYPE_10__* %199, i8* %200, i32* %201)
  store i32 %202, i32* %13, align 4
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %198
  %205 = load i32, i32* %13, align 4
  store i32 %205, i32* %5, align 4
  br label %250

206:                                              ; preds = %198
  %207 = load i32*, i32** %8, align 8
  %208 = load i32, i32* %207, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %220

210:                                              ; preds = %206
  %211 = load i32*, i32** %11, align 8
  %212 = call i32 @get_bits_count(i32* %211)
  store i32 %212, i32* %16, align 4
  %213 = load i32, i32* %16, align 4
  %214 = and i32 %213, 7
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 3
  store i32 %214, i32* %216, align 4
  %217 = load i32, i32* %16, align 4
  %218 = ashr i32 %217, 3
  store i32 %218, i32* %13, align 4
  %219 = load i32, i32* %13, align 4
  store i32 %219, i32* %5, align 4
  br label %250

220:                                              ; preds = %206
  br label %221

221:                                              ; preds = %220
  br label %247

222:                                              ; preds = %193
  %223 = load i32, i32* %14, align 4
  %224 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 2
  store i32 %223, i32* %225, align 4
  %226 = icmp sgt i32 %223, 0
  br i1 %226, label %227, label %246

227:                                              ; preds = %222
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 4
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 5
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* @SFRAME_CACHE_MAXSIZE, align 4
  %234 = call i32 @init_put_bits(i32* %229, i32 %232, i32 %233)
  %235 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 4
  %237 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %238 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* %12, align 4
  %241 = load i32*, i32** %11, align 8
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @copy_bits(i32* %236, i32 %239, i32 %240, i32* %241, i32 %244)
  br label %246

246:                                              ; preds = %227, %222
  br label %247

247:                                              ; preds = %246, %221
  br label %248

248:                                              ; preds = %247
  %249 = load i32, i32* %12, align 4
  store i32 %249, i32* %5, align 4
  br label %250

250:                                              ; preds = %248, %210, %204, %190, %128, %64
  %251 = load i32, i32* %5, align 4
  ret i32 %251
}

declare dso_local i32 @init_get_bits8(i32*, i32, i32) #1

declare dso_local i32 @parse_packet_header(%struct.TYPE_8__*) #1

declare dso_local i32 @get_bits_count(i32*) #1

declare dso_local i32 @copy_bits(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @flush_put_bits(i32*) #1

declare dso_local i32 @synth_superframe(%struct.TYPE_10__*, i8*, i32*) #1

declare dso_local i32 @skip_bits_long(i32*, i32) #1

declare dso_local i32 @skip_bits(i32*, i32) #1

declare dso_local i32 @get_bits_left(i32*) #1

declare dso_local i32 @init_put_bits(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
