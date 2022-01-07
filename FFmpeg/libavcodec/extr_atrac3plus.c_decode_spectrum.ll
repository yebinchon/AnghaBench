; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_atrac3plus.c_decode_spectrum.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_atrac3plus.c_decode_spectrum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32*, i32*, i64, i32*, i32* }

@ATRAC3P_POWER_COMP_OFF = common dso_local global i32 0, align 4
@ff_atrac3p_qu_to_spec_pos = common dso_local global i64* null, align 8
@atrac3p_ct_restricted_to_full = common dso_local global i32*** null, align 8
@atrac3p_spectra_tabs = common dso_local global %struct.TYPE_7__* null, align 8
@spec_vlc_tabs = common dso_local global i32* null, align 8
@atrac3p_subband_to_num_powgrps = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_8__*, i32, i32*)* @decode_spectrum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_spectrum(i32* %0, %struct.TYPE_8__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_7__*, align 8
  %17 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %237, %4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %240

22:                                               ; preds = %18
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i64 %27
  store %struct.TYPE_9__* %28, %struct.TYPE_9__** %17, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 4
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @memset(i32* %31, i32 0, i32 8)
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* @ATRAC3P_POWER_COMP_OFF, align 4
  %37 = call i32 @memset(i32* %35, i32 %36, i32 8)
  store i32 0, i32* %11, align 4
  br label %38

38:                                               ; preds = %202, %22
  %39 = load i32, i32* %11, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %205

44:                                               ; preds = %38
  %45 = load i64*, i64** @ff_atrac3p_qu_to_spec_pos, align 8
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %45, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = load i64*, i64** @ff_atrac3p_qu_to_spec_pos, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = sub i64 %50, %55
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %15, align 4
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %12, align 4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %139

74:                                               ; preds = %44
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %95, label %79

79:                                               ; preds = %74
  %80 = load i32***, i32**** @atrac3p_ct_restricted_to_full, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds i32**, i32*** %80, i64 %83
  %85 = load i32**, i32*** %84, align 8
  %86 = load i32, i32* %12, align 4
  %87 = sub nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32*, i32** %85, i64 %88
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %13, align 4
  br label %95

95:                                               ; preds = %79, %74
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = mul i64 %98, 8
  %100 = load i32, i32* %13, align 4
  %101 = sext i32 %100 to i64
  %102 = add i64 %99, %101
  %103 = mul i64 %102, 7
  %104 = load i32, i32* %12, align 4
  %105 = sext i32 %104 to i64
  %106 = add i64 %103, %105
  %107 = sub i64 %106, 1
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %14, align 4
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** @atrac3p_spectra_tabs, align 8
  %110 = load i32, i32* %14, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i64 %111
  store %struct.TYPE_7__* %112, %struct.TYPE_7__** %16, align 8
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp sge i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %95
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %14, align 4
  br label %121

121:                                              ; preds = %117, %95
  %122 = load i32*, i32** %5, align 8
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %124 = load i32*, i32** @spec_vlc_tabs, align 8
  %125 = load i32, i32* %14, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 4
  %130 = load i32*, i32** %129, align 8
  %131 = load i64*, i64** @ff_atrac3p_qu_to_spec_pos, align 8
  %132 = load i32, i32* %11, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i64, i64* %131, i64 %133
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds i32, i32* %130, i64 %135
  %137 = load i32, i32* %15, align 4
  %138 = call i32 @decode_qu_spectra(i32* %122, %struct.TYPE_7__* %123, i32* %127, i32* %136, i32 %137)
  br label %201

139:                                              ; preds = %44
  %140 = load i32, i32* %10, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %200

142:                                              ; preds = %139
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 2
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i64 0
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %11, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %200

154:                                              ; preds = %142
  %155 = load i32, i32* %13, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %200, label %157

157:                                              ; preds = %154
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 4
  %160 = load i32*, i32** %159, align 8
  %161 = load i64*, i64** @ff_atrac3p_qu_to_spec_pos, align 8
  %162 = load i32, i32* %11, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i64, i64* %161, i64 %163
  %165 = load i64, i64* %164, align 8
  %166 = getelementptr inbounds i32, i32* %160, i64 %165
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 2
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i64 0
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 4
  %172 = load i32*, i32** %171, align 8
  %173 = load i64*, i64** @ff_atrac3p_qu_to_spec_pos, align 8
  %174 = load i32, i32* %11, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i64, i64* %173, i64 %175
  %177 = load i64, i64* %176, align 8
  %178 = getelementptr inbounds i32, i32* %172, i64 %177
  %179 = load i32, i32* %15, align 4
  %180 = sext i32 %179 to i64
  %181 = mul i64 %180, 4
  %182 = trunc i64 %181 to i32
  %183 = call i32 @memcpy(i32* %166, i32* %178, i32 %182)
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 2
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i64 0
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 0
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %11, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 0
  %196 = load i32*, i32** %195, align 8
  %197 = load i32, i32* %11, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  store i32 %193, i32* %199, align 4
  br label %200

200:                                              ; preds = %157, %154, %142, %139
  br label %201

201:                                              ; preds = %200, %121
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %11, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %11, align 4
  br label %38

205:                                              ; preds = %38
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = icmp sgt i32 %208, 2
  br i1 %209, label %210, label %236

210:                                              ; preds = %205
  %211 = load i32*, i32** @atrac3p_subband_to_num_powgrps, align 8
  %212 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = sub nsw i32 %214, 1
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %211, i64 %216
  %218 = load i32, i32* %217, align 4
  store i32 %218, i32* %15, align 4
  store i32 0, i32* %9, align 4
  br label %219

219:                                              ; preds = %232, %210
  %220 = load i32, i32* %9, align 4
  %221 = load i32, i32* %15, align 4
  %222 = icmp slt i32 %220, %221
  br i1 %222, label %223, label %235

223:                                              ; preds = %219
  %224 = load i32*, i32** %5, align 8
  %225 = call i32 @get_bits(i32* %224, i32 4)
  %226 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 3
  %228 = load i32*, i32** %227, align 8
  %229 = load i32, i32* %9, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  store i32 %225, i32* %231, align 4
  br label %232

232:                                              ; preds = %223
  %233 = load i32, i32* %9, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %9, align 4
  br label %219

235:                                              ; preds = %219
  br label %236

236:                                              ; preds = %235, %205
  br label %237

237:                                              ; preds = %236
  %238 = load i32, i32* %10, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %10, align 4
  br label %18

240:                                              ; preds = %18
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @decode_qu_spectra(i32*, %struct.TYPE_7__*, i32*, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @get_bits(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
