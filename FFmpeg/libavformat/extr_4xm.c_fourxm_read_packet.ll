; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_4xm.c_fourxm_read_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_4xm.c_fourxm_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i8*, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_13__*)* @fourxm_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fourxm_read_packet(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [8 x i8], align 1
  %14 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %6, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %21

21:                                               ; preds = %242, %2
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br i1 %24, label %25, label %243

25:                                               ; preds = %21
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0
  %30 = call i32 @avio_read(i32* %28, i8* %29, i32 8)
  store i32 %30, i32* %10, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %3, align 4
  br label %245

34:                                               ; preds = %25
  %35 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0
  %36 = call i32 @AV_RL32(i8* %35)
  store i32 %36, i32* %8, align 4
  %37 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 4
  %38 = call i32 @AV_RL32(i8* %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32*, i32** %7, align 8
  %40 = call i64 @avio_feof(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i32, i32* @EIO, align 4
  %44 = call i32 @AVERROR(i32 %43)
  store i32 %44, i32* %3, align 4
  br label %245

45:                                               ; preds = %34
  %46 = load i32, i32* %8, align 4
  switch i32 %46, label %238 [
    i32 135, label %47
    i32 131, label %54
    i32 129, label %54
    i32 133, label %54
    i32 132, label %54
    i32 130, label %54
    i32 134, label %54
    i32 128, label %110
  ]

47:                                               ; preds = %45
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @avio_rl32(i32* %52)
  br label %242

54:                                               ; preds = %45, %45, %45, %45, %45, %45
  %55 = load i32, i32* %9, align 4
  %56 = add i32 %55, 8
  %57 = load i32, i32* %9, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %65, label %59

59:                                               ; preds = %54
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %61 = load i32, i32* %9, align 4
  %62 = add i32 %61, 8
  %63 = call i32 @av_new_packet(%struct.TYPE_13__* %60, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %59, %54
  %66 = load i32, i32* @EIO, align 4
  %67 = call i32 @AVERROR(i32 %66)
  store i32 %67, i32* %3, align 4
  br label %245

68:                                               ; preds = %59
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @avio_tell(i32* %81)
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0
  %89 = call i32 @memcpy(i8* %87, i8* %88, i32 8)
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 8
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @avio_read(i32* %92, i8* %96, i32 %97)
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %10, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %68
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %103 = call i32 @av_packet_unref(%struct.TYPE_13__* %102)
  br label %109

104:                                              ; preds = %68
  store i32 1, i32* %12, align 4
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %106, 8
  %108 = call i32 @av_shrink_packet(%struct.TYPE_13__* %105, i32 %107)
  br label %109

109:                                              ; preds = %104, %101
  br label %242

110:                                              ; preds = %45
  %111 = load i32*, i32** %7, align 8
  %112 = call i32 @avio_rl32(i32* %111)
  store i32 %112, i32* %11, align 4
  %113 = load i32*, i32** %7, align 8
  %114 = call i32 @avio_skip(i32* %113, i32 4)
  %115 = load i32, i32* %9, align 4
  %116 = sub i32 %115, 8
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %11, align 4
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = icmp ult i32 %117, %120
  br i1 %121, label %122, label %233

122:                                              ; preds = %110
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 2
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %124, align 8
  %126 = load i32, i32* %11, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %233

132:                                              ; preds = %122
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %137 = load i32, i32* %9, align 4
  %138 = call i32 @av_get_packet(i32* %135, %struct.TYPE_13__* %136, i32 %137)
  store i32 %138, i32* %10, align 4
  %139 = load i32, i32* %10, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %132
  %142 = load i32, i32* @EIO, align 4
  %143 = call i32 @AVERROR(i32 %142)
  store i32 %143, i32* %3, align 4
  br label %245

144:                                              ; preds = %132
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 2
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %146, align 8
  %148 = load i32, i32* %11, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 8
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 2
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %156, align 8
  %158 = load i32, i32* %11, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 8
  store i32 1, i32* %12, align 4
  %165 = load i32, i32* %9, align 4
  store i32 %165, i32* %14, align 4
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 2
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %167, align 8
  %169 = load i32, i32* %11, align 4
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %187

175:                                              ; preds = %144
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 2
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %177, align 8
  %179 = load i32, i32* %11, align 4
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = mul nsw i32 2, %183
  %185 = load i32, i32* %14, align 4
  %186 = sub nsw i32 %185, %184
  store i32 %186, i32* %14, align 4
  br label %187

187:                                              ; preds = %175, %144
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 2
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %189, align 8
  %191 = load i32, i32* %11, align 4
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* %14, align 4
  %197 = sdiv i32 %196, %195
  store i32 %197, i32* %14, align 4
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 2
  %200 = load %struct.TYPE_11__*, %struct.TYPE_11__** %199, align 8
  %201 = load i32, i32* %11, align 4
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %187
  %208 = load i32, i32* %14, align 4
  %209 = mul nsw i32 %208, 2
  store i32 %209, i32* %14, align 4
  br label %222

210:                                              ; preds = %187
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 2
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %212, align 8
  %214 = load i32, i32* %11, align 4
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 4
  %219 = sdiv i32 %218, 8
  %220 = load i32, i32* %14, align 4
  %221 = sdiv i32 %220, %219
  store i32 %221, i32* %14, align 4
  br label %222

222:                                              ; preds = %210, %207
  %223 = load i32, i32* %14, align 4
  %224 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %224, i32 0, i32 2
  %226 = load %struct.TYPE_11__*, %struct.TYPE_11__** %225, align 8
  %227 = load i32, i32* %11, align 4
  %228 = zext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = add nsw i32 %231, %223
  store i32 %232, i32* %230, align 4
  br label %237

233:                                              ; preds = %122, %110
  %234 = load i32*, i32** %7, align 8
  %235 = load i32, i32* %9, align 4
  %236 = call i32 @avio_skip(i32* %234, i32 %235)
  br label %237

237:                                              ; preds = %233, %222
  br label %242

238:                                              ; preds = %45
  %239 = load i32*, i32** %7, align 8
  %240 = load i32, i32* %9, align 4
  %241 = call i32 @avio_skip(i32* %239, i32 %240)
  br label %242

242:                                              ; preds = %238, %237, %109, %47
  br label %21

243:                                              ; preds = %21
  %244 = load i32, i32* %10, align 4
  store i32 %244, i32* %3, align 4
  br label %245

245:                                              ; preds = %243, %141, %65, %42, %32
  %246 = load i32, i32* %3, align 4
  ret i32 %246
}

declare dso_local i32 @avio_read(i32*, i8*, i32) #1

declare dso_local i32 @AV_RL32(i8*) #1

declare dso_local i64 @avio_feof(i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avio_rl32(i32*) #1

declare dso_local i32 @av_new_packet(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @avio_tell(i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_13__*) #1

declare dso_local i32 @av_shrink_packet(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @avio_skip(i32*, i32) #1

declare dso_local i32 @av_get_packet(i32*, %struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
