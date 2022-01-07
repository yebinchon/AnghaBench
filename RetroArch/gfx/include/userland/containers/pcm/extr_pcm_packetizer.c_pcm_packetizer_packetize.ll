; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/pcm/extr_pcm_packetizer.c_pcm_packetizer_packetize.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/pcm/extr_pcm_packetizer.c_pcm_packetizer_packetize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i64, i64, i64, i64, i64, i64, i32 }
%struct.TYPE_11__ = type { i64, i32, i32, i32, i32, i32 }

@VC_PACKETIZER_FLAG_FLUSH = common dso_local global i32 0, align 4
@VC_CONTAINER_ERROR_INCOMPLETE_DATA = common dso_local global i32 0, align 4
@VC_CONTAINER_TIME_UNKNOWN = common dso_local global i32 0, align 4
@VC_CONTAINER_PACKET_FLAG_FRAME_END = common dso_local global i32 0, align 4
@FACTOR_SHIFT = common dso_local global i64 0, align 8
@VC_CONTAINER_PACKET_FLAG_FRAME_START = common dso_local global i32 0, align 4
@VC_PACKETIZER_FLAG_INFO = common dso_local global i32 0, align 4
@VC_CONTAINER_SUCCESS = common dso_local global i32 0, align 4
@VC_PACKETIZER_FLAG_SKIP = common dso_local global i32 0, align 4
@CONVERSION_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_11__*, i32)* @pcm_packetizer_packetize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm_packetizer_packetize(%struct.TYPE_9__* %0, %struct.TYPE_11__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %8, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  store i32* %23, i32** %9, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  store i32* %27, i32** %10, align 8
  br label %28

28:                                               ; preds = %3, %224
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %223 [
    i32 128, label %32
    i32 129, label %92
  ]

32:                                               ; preds = %28
  %33 = load i32*, i32** %9, align 8
  %34 = call i64 @bytestream_size(i32* %33)
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ult i64 %34, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %32
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @VC_PACKETIZER_FLAG_FLUSH, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @VC_CONTAINER_ERROR_INCOMPLETE_DATA, align 4
  store i32 %45, i32* %4, align 4
  br label %225

46:                                               ; preds = %39, %32
  %47 = load i32*, i32** %9, align 8
  %48 = call i64 @bytestream_size(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* @VC_CONTAINER_ERROR_INCOMPLETE_DATA, align 4
  store i32 %51, i32* %4, align 4
  br label %225

52:                                               ; preds = %46
  %53 = load i32*, i32** %9, align 8
  %54 = call i64 @bytestream_size(i32* %53)
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 2
  store i64 %54, i64* %56, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ugt i64 %59, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %52
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 2
  store i64 %67, i64* %69, align 8
  br label %70

70:                                               ; preds = %64, %52
  %71 = load i32*, i32** %9, align 8
  %72 = call i32 @bytestream_get_timestamps_and_offset(i32* %71, i32* %11, i32* %12, i64* %13, i32 1)
  %73 = load i32*, i32** %10, align 8
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @vc_container_time_set(i32* %73, i32 %74)
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* @VC_CONTAINER_TIME_UNKNOWN, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %70
  %80 = load i32*, i32** %10, align 8
  %81 = load i64, i64* %13, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = udiv i64 %81, %84
  %86 = call i32 @vc_container_time_add(i32* %80, i64 %85)
  br label %87

87:                                               ; preds = %79, %70
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 4
  store i64 0, i64* %89, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  store i32 129, i32* %91, align 8
  br label %92

92:                                               ; preds = %28, %87
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  %99 = sub i64 %95, %98
  store i64 %99, i64* %14, align 8
  %100 = load i32, i32* @VC_CONTAINER_TIME_UNKNOWN, align 4
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 4
  store i32 %100, i32* %102, align 4
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 5
  store i32 %100, i32* %104, align 8
  %105 = load i32, i32* @VC_CONTAINER_PACKET_FLAG_FRAME_END, align 4
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 8
  %108 = load i64, i64* %14, align 8
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 5
  %111 = load i64, i64* %110, align 8
  %112 = mul i64 %108, %111
  %113 = load i64, i64* @FACTOR_SHIFT, align 8
  %114 = lshr i64 %112, %113
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  store i64 %114, i64* %116, align 8
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 4
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %133, label %121

121:                                              ; preds = %92
  %122 = load i32*, i32** %10, align 8
  %123 = call i32 @vc_container_time_get(i32* %122)
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 4
  store i32 %123, i32* %125, align 4
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 5
  store i32 %123, i32* %127, align 8
  %128 = load i32, i32* @VC_CONTAINER_PACKET_FLAG_FRAME_START, align 4
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = or i32 %131, %128
  store i32 %132, i32* %130, align 8
  br label %133

133:                                              ; preds = %121, %92
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* @VC_PACKETIZER_FLAG_INFO, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %133
  %139 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  store i32 %139, i32* %4, align 4
  br label %225

140:                                              ; preds = %133
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* @VC_PACKETIZER_FLAG_SKIP, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %140
  %146 = load i32*, i32** %9, align 8
  %147 = load i64, i64* %14, align 8
  %148 = call i32 @bytestream_skip(i32* %146, i64 %147)
  br label %200

149:                                              ; preds = %140
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = call i64 @MIN(i64 %152, i32 %155)
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 0
  store i64 %156, i64* %158, align 8
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @FACTOR_SHIFT, align 8
  %163 = shl i64 %161, %162
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 5
  %166 = load i64, i64* %165, align 8
  %167 = udiv i64 %163, %166
  store i64 %167, i64* %14, align 8
  %168 = load i64, i64* %14, align 8
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 5
  %171 = load i64, i64* %170, align 8
  %172 = mul i64 %168, %171
  %173 = load i64, i64* @FACTOR_SHIFT, align 8
  %174 = lshr i64 %172, %173
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 0
  store i64 %174, i64* %176, align 8
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 7
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @CONVERSION_NONE, align 4
  %181 = icmp ne i32 %179, %180
  br i1 %181, label %182, label %190

182:                                              ; preds = %149
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %184 = load i32*, i32** %9, align 8
  %185 = load i64, i64* %14, align 8
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @convert_pcm(%struct.TYPE_9__* %183, i32* %184, i64 %185, i32 %188)
  br label %199

190:                                              ; preds = %149
  %191 = load i32*, i32** %9, align 8
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = call i32 @bytestream_get(i32* %191, i32 %194, i64 %197)
  br label %199

199:                                              ; preds = %190, %182
  br label %200

200:                                              ; preds = %199, %145
  %201 = load i64, i64* %14, align 8
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 4
  %204 = load i64, i64* %203, align 8
  %205 = add i64 %204, %201
  store i64 %205, i64* %203, align 8
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 4
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 2
  %211 = load i64, i64* %210, align 8
  %212 = icmp eq i64 %208, %211
  br i1 %212, label %213, label %221

213:                                              ; preds = %200
  %214 = load i32*, i32** %10, align 8
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 6
  %217 = load i64, i64* %216, align 8
  %218 = call i32 @vc_container_time_add(i32* %214, i64 %217)
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 0
  store i32 128, i32* %220, align 8
  br label %221

221:                                              ; preds = %213, %200
  %222 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  store i32 %222, i32* %4, align 4
  br label %225

223:                                              ; preds = %28
  br label %224

224:                                              ; preds = %223
  br label %28

225:                                              ; preds = %221, %138, %50, %44
  %226 = load i32, i32* %4, align 4
  ret i32 %226
}

declare dso_local i64 @bytestream_size(i32*) #1

declare dso_local i32 @bytestream_get_timestamps_and_offset(i32*, i32*, i32*, i64*, i32) #1

declare dso_local i32 @vc_container_time_set(i32*, i32) #1

declare dso_local i32 @vc_container_time_add(i32*, i64) #1

declare dso_local i32 @vc_container_time_get(i32*) #1

declare dso_local i32 @bytestream_skip(i32*, i64) #1

declare dso_local i64 @MIN(i64, i32) #1

declare dso_local i32 @convert_pcm(%struct.TYPE_9__*, i32*, i64, i32) #1

declare dso_local i32 @bytestream_get(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
