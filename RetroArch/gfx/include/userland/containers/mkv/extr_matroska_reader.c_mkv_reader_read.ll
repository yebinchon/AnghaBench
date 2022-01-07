; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mkv/extr_matroska_reader.c_mkv_reader_read.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mkv/extr_matroska_reader.c_mkv_reader_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, %struct.TYPE_20__**, %struct.TYPE_16__* }
%struct.TYPE_20__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32, i32, i32, i64, %struct.TYPE_19__*, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { %struct.TYPE_24__ }
%struct.TYPE_22__ = type { i64, i32, i32, i32, i32, i32, i32 }

@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@VC_CONTAINER_READ_FLAG_FORCE_TRACK = common dso_local global i32 0, align 4
@VC_CONTAINER_ERROR_EOS = common dso_local global i64 0, align 8
@VC_CONTAINER_ERROR_CORRUPTED = common dso_local global i64 0, align 8
@VC_CONTAINER_ERROR_CONTINUE = common dso_local global i64 0, align 8
@VC_CONTAINER_READ_FLAG_SKIP = common dso_local global i32 0, align 4
@VC_CONTAINER_READ_FLAG_INFO = common dso_local global i32 0, align 4
@VC_CONTAINER_PACKET_FLAG_KEYFRAME = common dso_local global i32 0, align 4
@VC_CONTAINER_PACKET_FLAG_FRAME_START = common dso_local global i32 0, align 4
@VC_CONTAINER_PACKET_FLAG_FRAME_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_21__*, %struct.TYPE_22__*, i32)* @mkv_reader_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mkv_reader_read(%struct.TYPE_21__* %0, %struct.TYPE_22__* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  store %struct.TYPE_23__* %19, %struct.TYPE_23__** %8, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %9, align 8
  %20 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %20, i64* %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 0
  store %struct.TYPE_24__* %22, %struct.TYPE_24__** %14, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @VC_CONTAINER_READ_FLAG_FORCE_TRACK, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %3
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %29, align 8
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %30, i64 %33
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %34, align 8
  store %struct.TYPE_20__* %35, %struct.TYPE_20__** %9, align 8
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %41, align 8
  store %struct.TYPE_24__* %42, %struct.TYPE_24__** %14, align 8
  br label %43

43:                                               ; preds = %27, %3
  %44 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %45 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i64, i64* @VC_CONTAINER_ERROR_EOS, align 8
  store i64 %49, i64* %4, align 8
  br label %220

50:                                               ; preds = %43
  %51 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i64, i64* @VC_CONTAINER_ERROR_CORRUPTED, align 8
  store i64 %56, i64* %4, align 8
  br label %220

57:                                               ; preds = %50
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %60 = call i64 @mkv_read_next_frame_header(%struct.TYPE_21__* %58, %struct.TYPE_24__* %59, i32* %12, i32* %13)
  store i64 %60, i64* %10, align 8
  %61 = load i64, i64* %10, align 8
  %62 = load i64, i64* @VC_CONTAINER_ERROR_EOS, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  br label %67

67:                                               ; preds = %64, %57
  %68 = load i64, i64* %10, align 8
  %69 = load i64, i64* @VC_CONTAINER_ERROR_CORRUPTED, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %72, i32 0, i32 1
  store i32 1, i32* %73, align 4
  br label %74

74:                                               ; preds = %71, %67
  %75 = load i64, i64* %10, align 8
  %76 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i64, i64* %10, align 8
  store i64 %79, i64* %4, align 8
  br label %220

80:                                               ; preds = %74
  %81 = load i32, i32* %12, align 4
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp sge i32 %81, %84
  br i1 %85, label %97, label %86

86:                                               ; preds = %80
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %88, align 8
  %90 = load i32, i32* %12, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %89, i64 %91
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %108, label %97

97:                                               ; preds = %86, %80
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %100 = call i64 @mkv_read_frame_data(%struct.TYPE_21__* %98, %struct.TYPE_24__* %99, i32 0, i32* %13)
  store i64 %100, i64* %10, align 8
  %101 = load i64, i64* %10, align 8
  %102 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %97
  %105 = load i64, i64* %10, align 8
  store i64 %105, i64* %4, align 8
  br label %220

106:                                              ; preds = %97
  %107 = load i64, i64* @VC_CONTAINER_ERROR_CONTINUE, align 8
  store i64 %107, i64* %4, align 8
  br label %220

108:                                              ; preds = %86
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* @VC_CONTAINER_READ_FLAG_SKIP, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %108
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* @VC_CONTAINER_READ_FLAG_INFO, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %113
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %120 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %121 = call i64 @mkv_read_frame_data(%struct.TYPE_21__* %119, %struct.TYPE_24__* %120, i32 0, i32* %13)
  store i64 %121, i64* %4, align 8
  br label %220

122:                                              ; preds = %113, %108
  %123 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %124 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 5
  store i32 %125, i32* %127, align 8
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 6
  store i32 %125, i32* %129, align 4
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 3
  store i32 0, i32* %131, align 8
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %133 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = and i32 %134, 128
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %122
  %138 = load i32, i32* @VC_CONTAINER_PACKET_FLAG_KEYFRAME, align 4
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = or i32 %141, %138
  store i32 %142, i32* %140, align 8
  br label %143

143:                                              ; preds = %137, %122
  %144 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %145 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %144, i32 0, i32 4
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %145, align 8
  %147 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %148 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %147, i32 0, i32 3
  %149 = load i64, i64* %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %160, label %154

154:                                              ; preds = %143
  %155 = load i32, i32* @VC_CONTAINER_PACKET_FLAG_FRAME_START, align 4
  %156 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = or i32 %158, %155
  store i32 %159, i32* %157, align 8
  br label %160

160:                                              ; preds = %154, %143
  %161 = load i32, i32* @VC_CONTAINER_PACKET_FLAG_FRAME_END, align 4
  %162 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 8
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 8
  %166 = load i32, i32* %13, align 4
  %167 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %167, i32 0, i32 1
  store i32 %166, i32* %168, align 8
  %169 = load i32, i32* %12, align 4
  %170 = sext i32 %169 to i64
  %171 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %171, i32 0, i32 0
  store i64 %170, i64* %172, align 8
  %173 = load i32, i32* %7, align 4
  %174 = load i32, i32* @VC_CONTAINER_READ_FLAG_SKIP, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %160
  %178 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %179 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %180 = call i64 @mkv_read_frame_data(%struct.TYPE_21__* %178, %struct.TYPE_24__* %179, i32 0, i32* %13)
  store i64 %180, i64* %4, align 8
  br label %220

181:                                              ; preds = %160
  %182 = load i32, i32* %7, align 4
  %183 = load i32, i32* @VC_CONTAINER_READ_FLAG_INFO, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %181
  %187 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %187, i64* %4, align 8
  br label %220

188:                                              ; preds = %181
  br label %189

189:                                              ; preds = %188
  %190 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  store i32 %192, i32* %11, align 4
  %193 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %194 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %195 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 4
  %198 = call i64 @mkv_read_frame_data(%struct.TYPE_21__* %193, %struct.TYPE_24__* %194, i32 %197, i32* %11)
  store i64 %198, i64* %10, align 8
  %199 = load i64, i64* %10, align 8
  %200 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %201 = icmp ne i64 %199, %200
  br i1 %201, label %202, label %204

202:                                              ; preds = %189
  %203 = load i64, i64* %10, align 8
  store i64 %203, i64* %4, align 8
  br label %220

204:                                              ; preds = %189
  %205 = load i32, i32* %11, align 4
  %206 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %206, i32 0, i32 1
  store i32 %205, i32* %207, align 8
  %208 = load i32, i32* %11, align 4
  %209 = load i32, i32* %13, align 4
  %210 = icmp ne i32 %208, %209
  br i1 %210, label %211, label %218

211:                                              ; preds = %204
  %212 = load i32, i32* @VC_CONTAINER_PACKET_FLAG_FRAME_END, align 4
  %213 = xor i32 %212, -1
  %214 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 8
  %217 = and i32 %216, %213
  store i32 %217, i32* %215, align 8
  br label %218

218:                                              ; preds = %211, %204
  %219 = load i64, i64* %10, align 8
  store i64 %219, i64* %4, align 8
  br label %220

220:                                              ; preds = %218, %202, %186, %177, %118, %106, %104, %78, %55, %48
  %221 = load i64, i64* %4, align 8
  ret i64 %221
}

declare dso_local i64 @mkv_read_next_frame_header(%struct.TYPE_21__*, %struct.TYPE_24__*, i32*, i32*) #1

declare dso_local i64 @mkv_read_frame_data(%struct.TYPE_21__*, %struct.TYPE_24__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
