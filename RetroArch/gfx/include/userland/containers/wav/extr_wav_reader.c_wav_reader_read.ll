; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/wav/extr_wav_reader.c_wav_reader_read.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/wav/extr_wav_reader.c_wav_reader_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__**, %struct.TYPE_12__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i64, i64, i64 }
%struct.TYPE_16__ = type { i32, i32, i64, i64, i64, i32, i64 }

@VC_CONTAINER_PACKET_FLAG_FRAME_START = common dso_local global i64 0, align 8
@VC_CONTAINER_ERROR_EOS = common dso_local global i32 0, align 4
@VC_CONTAINER_READ_FLAG_SKIP = common dso_local global i64 0, align 8
@VC_CONTAINER_READ_FLAG_INFO = common dso_local global i64 0, align 8
@VC_CONTAINER_PACKET_FLAG_FRAME_END = common dso_local global i64 0, align 8
@VC_CONTAINER_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_16__*, i64)* @wav_reader_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wav_reader_read(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  store %struct.TYPE_17__* %17, %struct.TYPE_17__** %8, align 8
  store i64 0, i64* %9, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = mul nsw i32 %20, 8000000
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %24, i64 0
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sdiv i32 %21, %30
  store i32 %31, i32* %12, align 4
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %11, align 8
  %35 = load i64, i64* %11, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %3
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %11, align 8
  %41 = load i64, i64* @VC_CONTAINER_PACKET_FLAG_FRAME_START, align 8
  %42 = load i64, i64* %9, align 8
  %43 = or i64 %42, %41
  store i64 %43, i64* %9, align 8
  br label %44

44:                                               ; preds = %37, %3
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* %11, align 8
  %52 = add nsw i64 %50, %51
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = icmp sgt i64 %52, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %44
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = sub nsw i64 %60, %64
  store i64 %65, i64* %11, align 8
  br label %66

66:                                               ; preds = %57, %44
  %67 = load i64, i64* %11, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i32, i32* @VC_CONTAINER_ERROR_EOS, align 4
  store i32 %70, i32* %4, align 4
  br label %201

71:                                               ; preds = %66
  %72 = load i64, i64* %7, align 8
  %73 = load i64, i64* @VC_CONTAINER_READ_FLAG_SKIP, align 8
  %74 = and i64 %72, %73
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %99

76:                                               ; preds = %71
  %77 = load i64, i64* %7, align 8
  %78 = load i64, i64* @VC_CONTAINER_READ_FLAG_INFO, align 8
  %79 = and i64 %77, %78
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %99, label %81

81:                                               ; preds = %76
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %83 = load i64, i64* %11, align 8
  %84 = call i64 @SKIP_BYTES(%struct.TYPE_15__* %82, i64 %83)
  store i64 %84, i64* %10, align 8
  %85 = load i64, i64* %11, align 8
  %86 = load i64, i64* %10, align 8
  %87 = sub nsw i64 %85, %86
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 1
  store i64 %87, i64* %89, align 8
  %90 = load i64, i64* %10, align 8
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %94, %90
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %92, align 8
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %98 = call i32 @STREAM_STATUS(%struct.TYPE_15__* %97)
  store i32 %98, i32* %4, align 4
  br label %201

99:                                               ; preds = %76, %71
  %100 = load i64, i64* %9, align 8
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 4
  store i64 %100, i64* %102, align 8
  %103 = load i32, i32* %12, align 4
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 0
  store i32 %103, i32* %107, align 8
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 6
  store i64 0, i64* %109, align 8
  %110 = load i64, i64* %7, align 8
  %111 = load i64, i64* @VC_CONTAINER_READ_FLAG_SKIP, align 8
  %112 = and i64 %110, %111
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %148

114:                                              ; preds = %99
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %116 = load i64, i64* %11, align 8
  %117 = call i64 @SKIP_BYTES(%struct.TYPE_15__* %115, i64 %116)
  store i64 %117, i64* %10, align 8
  %118 = load i64, i64* %11, align 8
  %119 = load i64, i64* %10, align 8
  %120 = sub nsw i64 %118, %119
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 1
  store i64 %120, i64* %122, align 8
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %133, label %127

127:                                              ; preds = %114
  %128 = load i64, i64* @VC_CONTAINER_PACKET_FLAG_FRAME_END, align 8
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 4
  %131 = load i64, i64* %130, align 8
  %132 = or i64 %131, %128
  store i64 %132, i64* %130, align 8
  br label %133

133:                                              ; preds = %127, %114
  %134 = load i64, i64* %10, align 8
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = sext i32 %137 to i64
  %139 = add nsw i64 %138, %134
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %136, align 8
  %141 = load i64, i64* %10, align 8
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = add nsw i64 %144, %141
  store i64 %145, i64* %143, align 8
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %147 = call i32 @STREAM_STATUS(%struct.TYPE_15__* %146)
  store i32 %147, i32* %4, align 4
  br label %201

148:                                              ; preds = %99
  %149 = load i64, i64* %7, align 8
  %150 = load i64, i64* @VC_CONTAINER_READ_FLAG_INFO, align 8
  %151 = and i64 %149, %150
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %148
  %154 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  store i32 %154, i32* %4, align 4
  br label %201

155:                                              ; preds = %148
  %156 = load i64, i64* %11, align 8
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 3
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = sub nsw i64 %159, %162
  %164 = call i64 @MIN(i64 %156, i64 %163)
  store i64 %164, i64* %10, align 8
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 5
  %168 = load i32, i32* %167, align 8
  %169 = load i64, i64* %10, align 8
  %170 = call i64 @READ_BYTES(%struct.TYPE_15__* %165, i32 %168, i64 %169)
  store i64 %170, i64* %10, align 8
  %171 = load i64, i64* %11, align 8
  %172 = load i64, i64* %10, align 8
  %173 = sub nsw i64 %171, %172
  %174 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 1
  store i64 %173, i64* %175, align 8
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %186, label %180

180:                                              ; preds = %155
  %181 = load i64, i64* @VC_CONTAINER_PACKET_FLAG_FRAME_END, align 8
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 4
  %184 = load i64, i64* %183, align 8
  %185 = or i64 %184, %181
  store i64 %185, i64* %183, align 8
  br label %186

186:                                              ; preds = %180, %155
  %187 = load i64, i64* %10, align 8
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = sext i32 %190 to i64
  %192 = add nsw i64 %191, %187
  %193 = trunc i64 %192 to i32
  store i32 %193, i32* %189, align 8
  %194 = load i64, i64* %10, align 8
  %195 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 2
  %197 = load i64, i64* %196, align 8
  %198 = add nsw i64 %197, %194
  store i64 %198, i64* %196, align 8
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %200 = call i32 @STREAM_STATUS(%struct.TYPE_15__* %199)
  store i32 %200, i32* %4, align 4
  br label %201

201:                                              ; preds = %186, %153, %133, %81, %69
  %202 = load i32, i32* %4, align 4
  ret i32 %202
}

declare dso_local i64 @SKIP_BYTES(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @STREAM_STATUS(%struct.TYPE_15__*) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i64 @READ_BYTES(%struct.TYPE_15__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
