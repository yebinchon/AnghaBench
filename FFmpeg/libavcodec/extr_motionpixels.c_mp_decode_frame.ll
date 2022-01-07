; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_motionpixels.c_mp_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_motionpixels.c_mp_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, i32*, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32*, i32, i64, %struct.TYPE_14__*, i32, %struct.TYPE_16__*, i64, %struct.TYPE_15__, i32 }
%struct.TYPE_14__ = type { i64* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32 (i32*, i32*, i32)* }
%struct.TYPE_18__ = type { i32, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, i8*, i32*, %struct.TYPE_18__*)* @mp_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_decode_frame(%struct.TYPE_19__* %0, i8* %1, i32* %2, %struct.TYPE_18__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_18__* %3, %struct.TYPE_18__** %9, align 8
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %10, align 8
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %11, align 4
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 3
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  store %struct.TYPE_17__* %27, %struct.TYPE_17__** %12, align 8
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 3
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %32 = call i32 @ff_reget_buffer(%struct.TYPE_19__* %28, %struct.TYPE_14__* %31, i32 0)
  store i32 %32, i32* %18, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %4
  %35 = load i32, i32* %18, align 4
  store i32 %35, i32* %5, align 4
  br label %223

36:                                               ; preds = %4
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 6
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 8
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @av_fast_padded_malloc(i64* %38, i32* %40, i32 %41)
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 6
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %36
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = call i32 @AVERROR(i32 %48)
  store i32 %49, i32* %5, align 4
  br label %223

50:                                               ; preds = %36
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 7
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %53, align 8
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 6
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i32*
  %59 = load i32*, i32** %10, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sdiv i32 %60, 4
  %62 = call i32 %54(i32* %58, i32* %59, i32 %61)
  %63 = load i32, i32* %11, align 4
  %64 = and i32 %63, 3
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %82

66:                                               ; preds = %50
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 6
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* %11, align 4
  %71 = and i32 %70, -4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %69, %72
  %74 = load i32*, i32** %10, align 8
  %75 = load i32, i32* %11, align 4
  %76 = and i32 %75, -4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  %79 = load i32, i32* %11, align 4
  %80 = and i32 %79, 3
  %81 = call i32 @memcpy(i64 %73, i32* %78, i32 %80)
  br label %82

82:                                               ; preds = %66, %50
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 6
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* %11, align 4
  %87 = mul nsw i32 %86, 8
  %88 = call i32 @init_get_bits(i32* %13, i64 %85, i32 %87)
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = mul nsw i32 %94, %97
  %99 = call i32 @memset(i32* %91, i32 0, i32 %98)
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, 2
  %106 = icmp ne i32 %105, 0
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  store i32 %108, i32* %14, align 4
  br label %109

109:                                              ; preds = %123, %82
  %110 = load i32, i32* %14, align 4
  %111 = icmp slt i32 %110, 2
  br i1 %111, label %112, label %126

112:                                              ; preds = %109
  %113 = call i32 @get_bits(i32* %13, i32 12)
  store i32 %113, i32* %15, align 4
  %114 = call i32 @get_bits(i32* %13, i32 12)
  store i32 %114, i32* %16, align 4
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %116 = load i32, i32* %15, align 4
  %117 = load i32, i32* %14, align 4
  %118 = call i32 @mp_read_changes_map(%struct.TYPE_17__* %115, i32* %13, i32 %116, i32 8, i32 %117)
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %120 = load i32, i32* %16, align 4
  %121 = load i32, i32* %14, align 4
  %122 = call i32 @mp_read_changes_map(%struct.TYPE_17__* %119, i32* %13, i32 %120, i32 4, i32 %121)
  br label %123

123:                                              ; preds = %112
  %124 = load i32, i32* %14, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %14, align 4
  br label %109

126:                                              ; preds = %109
  %127 = call i32 @get_bits(i32* %13, i32 4)
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 8
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %126
  br label %211

135:                                              ; preds = %126
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  %140 = load i32, i32* %139, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %156

142:                                              ; preds = %135
  %143 = call i32 @get_bits(i32* %13, i32 15)
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 3
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 0
  %148 = load i64*, i64** %147, align 8
  %149 = getelementptr inbounds i64, i64* %148, i64 0
  %150 = load i64, i64* %149, align 8
  %151 = inttoptr i64 %150 to i32*
  store i32 %143, i32* %151, align 4
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 0
  store i32 1, i32* %155, align 4
  br label %156

156:                                              ; preds = %142, %135
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %158 = call i64 @mp_read_codes_table(%struct.TYPE_17__* %157, i32* %13)
  %159 = icmp slt i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %156
  br label %211

161:                                              ; preds = %156
  %162 = call i32 @get_bits(i32* %13, i32 18)
  store i32 %162, i32* %17, align 4
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 2
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 0
  %167 = load i32, i32* %166, align 4
  %168 = icmp ne i32 %167, 5
  br i1 %168, label %169, label %173

169:                                              ; preds = %161
  %170 = call i32 @get_bits(i32* %13, i32 18)
  %171 = load i32, i32* %17, align 4
  %172 = add nsw i32 %171, %170
  store i32 %172, i32* %17, align 4
  br label %173

173:                                              ; preds = %169, %161
  %174 = load i32, i32* %17, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %173
  br label %211

177:                                              ; preds = %173
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  %181 = icmp sle i64 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %177
  br label %211

183:                                              ; preds = %177
  %184 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %184, i32 0, i32 4
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i32 0, i32 2
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %193 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %192, i32 0, i32 5
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i64 0
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 1
  %197 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %198 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %197, i32 0, i32 5
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i64 0
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %200, i32 0, i32 0
  %202 = call i64 @init_vlc(i32* %185, i64 %188, i32 %191, i32* %196, i32 4, i32 1, i32* %201, i32 4, i32 4, i32 0)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %183
  br label %211

205:                                              ; preds = %183
  %206 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %207 = call i32 @mp_decode_frame_helper(%struct.TYPE_17__* %206, i32* %13)
  %208 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %209 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %208, i32 0, i32 4
  %210 = call i32 @ff_free_vlc(i32* %209)
  br label %211

211:                                              ; preds = %205, %204, %182, %176, %160, %134
  %212 = load i8*, i8** %7, align 8
  %213 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %214 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %213, i32 0, i32 3
  %215 = load %struct.TYPE_14__*, %struct.TYPE_14__** %214, align 8
  %216 = call i32 @av_frame_ref(i8* %212, %struct.TYPE_14__* %215)
  store i32 %216, i32* %18, align 4
  %217 = icmp slt i32 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %211
  %219 = load i32, i32* %18, align 4
  store i32 %219, i32* %5, align 4
  br label %223

220:                                              ; preds = %211
  %221 = load i32*, i32** %8, align 8
  store i32 1, i32* %221, align 4
  %222 = load i32, i32* %11, align 4
  store i32 %222, i32* %5, align 4
  br label %223

223:                                              ; preds = %220, %218, %47, %34
  %224 = load i32, i32* %5, align 4
  ret i32 %224
}

declare dso_local i32 @ff_reget_buffer(%struct.TYPE_19__*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @av_fast_padded_malloc(i64*, i32*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

declare dso_local i32 @init_get_bits(i32*, i64, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @mp_read_changes_map(%struct.TYPE_17__*, i32*, i32, i32, i32) #1

declare dso_local i64 @mp_read_codes_table(%struct.TYPE_17__*, i32*) #1

declare dso_local i64 @init_vlc(i32*, i64, i32, i32*, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @mp_decode_frame_helper(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @ff_free_vlc(i32*) #1

declare dso_local i32 @av_frame_ref(i8*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
