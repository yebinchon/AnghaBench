; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpegts.c_write_section_data.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpegts.c_write_section_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32*, i32, i32, i32, i32, i32 (%struct.TYPE_10__*, i32*, i32)*, i32, i64 }

@MAX_SECTION_SIZE = common dso_local global i32 0, align 4
@AV_CRC_32_IEEE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.TYPE_10__*, i32*, i32, i32)* @write_section_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_section_data(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %11, align 8
  store i32* null, i32** %12, align 8
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %5
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @memcpy(i32* %24, i32* %25, i32 %26)
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 2
  store i32 -1, i32* %32, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 3
  store i32 0, i32* %34, align 8
  br label %69

35:                                               ; preds = %5
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %239

41:                                               ; preds = %35
  %42 = load i32, i32* @MAX_SECTION_SIZE, align 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = sub nsw i32 %42, %45
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %13, align 4
  br label %52

52:                                               ; preds = %50, %41
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %55, i64 %59
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @memcpy(i32* %60, i32* %61, i32 %62)
  %64 = load i32, i32* %13, align 4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, %64
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %52, %21
  store i32 0, i32* %14, align 4
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  store i32* %72, i32** %12, align 8
  br label %73

73:                                               ; preds = %238, %69
  %74 = load i32*, i32** %12, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = ptrtoint i32* %74 to i64
  %79 = ptrtoint i32* %77 to i64
  %80 = sub i64 %78, %79
  %81 = sdiv exact i64 %80, 4
  %82 = load i32, i32* @MAX_SECTION_SIZE, align 4
  %83 = sext i32 %82 to i64
  %84 = icmp slt i64 %81, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %73
  %86 = load i32*, i32** %12, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 255
  br label %90

90:                                               ; preds = %85, %73
  %91 = phi i1 [ false, %73 ], [ %89, %85 ]
  br i1 %91, label %92, label %239

92:                                               ; preds = %90
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %97, label %118

97:                                               ; preds = %92
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %14, align 4
  %102 = sub nsw i32 %100, %101
  %103 = icmp sge i32 %102, 3
  br i1 %103, label %104, label %118

104:                                              ; preds = %97
  %105 = load i32*, i32** %12, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 1
  %107 = call i32 @AV_RB16(i32* %106)
  %108 = and i32 %107, 4095
  %109 = add nsw i32 %108, 3
  store i32 %109, i32* %13, align 4
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* @MAX_SECTION_SIZE, align 4
  %112 = icmp sgt i32 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %104
  br label %239

114:                                              ; preds = %104
  %115 = load i32, i32* %13, align 4
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 4
  br label %118

118:                                              ; preds = %114, %97, %92
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, -1
  br i1 %122, label %123, label %233

123:                                              ; preds = %118
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* %14, align 4
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %127, %130
  %132 = icmp sge i32 %126, %131
  br i1 %132, label %133, label %233

133:                                              ; preds = %123
  store i32 1, i32* %15, align 4
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 3
  store i32 1, i32* %135, align 8
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 7
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %200

140:                                              ; preds = %133
  %141 = load i32, i32* @AV_CRC_32_IEEE, align 4
  %142 = call i32 @av_crc_get_table(i32 %141)
  %143 = load i32*, i32** %12, align 8
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @av_crc(i32 %142, i32 -1, i32* %143, i32 %146)
  %148 = icmp ne i32 %147, 0
  %149 = xor i1 %148, true
  %150 = zext i1 %149 to i32
  store i32 %150, i32* %15, align 4
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = icmp sge i32 %153, 4
  br i1 %154, label %155, label %166

155:                                              ; preds = %140
  %156 = load i32*, i32** %12, align 8
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %156, i64 %160
  %162 = getelementptr inbounds i32, i32* %161, i64 -4
  %163 = call i32 @AV_RB32(i32* %162)
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 6
  store i32 %163, i32* %165, align 8
  br label %166

166:                                              ; preds = %155, %140
  %167 = load i32, i32* %15, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %177

169:                                              ; preds = %166
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = getelementptr inbounds i32, i32* %172, i64 %175
  store i32 100, i32* %176, align 4
  br label %199

177:                                              ; preds = %166
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = getelementptr inbounds i32, i32* %180, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = icmp sgt i32 %185, -10
  br i1 %186, label %187, label %197

187:                                              ; preds = %177
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = getelementptr inbounds i32, i32* %190, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = add nsw i32 %195, -1
  store i32 %196, i32* %194, align 4
  br label %198

197:                                              ; preds = %177
  store i32 2, i32* %15, align 4
  br label %198

198:                                              ; preds = %197, %187
  br label %199

199:                                              ; preds = %198, %169
  br label %200

200:                                              ; preds = %199, %133
  %201 = load i32, i32* %15, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %219

203:                                              ; preds = %200
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 5
  %206 = load i32 (%struct.TYPE_10__*, i32*, i32)*, i32 (%struct.TYPE_10__*, i32*, i32)** %205, align 8
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %208 = load i32*, i32** %12, align 8
  %209 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 4
  %212 = call i32 %206(%struct.TYPE_10__* %207, i32* %208, i32 %211)
  %213 = load i32, i32* %15, align 4
  %214 = icmp ne i32 %213, 1
  br i1 %214, label %215, label %218

215:                                              ; preds = %203
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 4
  store i32 -1, i32* %217, align 4
  br label %218

218:                                              ; preds = %215, %203
  br label %219

219:                                              ; preds = %218, %200
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 4
  %223 = load i32*, i32** %12, align 8
  %224 = sext i32 %222 to i64
  %225 = getelementptr inbounds i32, i32* %223, i64 %224
  store i32* %225, i32** %12, align 8
  %226 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* %14, align 4
  %230 = add nsw i32 %229, %228
  store i32 %230, i32* %14, align 4
  %231 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 2
  store i32 -1, i32* %232, align 4
  br label %238

233:                                              ; preds = %123, %118
  %234 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 2
  store i32 -1, i32* %235, align 4
  %236 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 3
  store i32 0, i32* %237, align 8
  br label %239

238:                                              ; preds = %219
  br label %73

239:                                              ; preds = %40, %113, %233, %90
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @AV_RB16(i32*) #1

declare dso_local i32 @av_crc(i32, i32, i32*, i32) #1

declare dso_local i32 @av_crc_get_table(i32) #1

declare dso_local i32 @AV_RB32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
