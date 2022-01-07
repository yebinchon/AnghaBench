; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vc2enc.c_encode_hq_slice.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vc2enc.c_encode_hq_slice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, i32, %struct.TYPE_16__, %struct.TYPE_14__* }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_14__ = type { i32, i32, i32, %struct.TYPE_13__*, i64** }
%struct.TYPE_13__ = type { i32** }

@MAX_DWT_LEVELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @encode_hq_slice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_hq_slice(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %23, %struct.TYPE_15__** %5, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 5
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  store %struct.TYPE_14__* %26, %struct.TYPE_14__** %6, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 4
  store %struct.TYPE_16__* %28, %struct.TYPE_16__** %7, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %8, align 4
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %9, align 4
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %10, align 4
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* @MAX_DWT_LEVELS, align 4
  %42 = zext i32 %41 to i64
  %43 = call i8* @llvm.stacksave()
  store i8* %43, i8** %12, align 8
  %44 = alloca [4 x i32], i64 %42, align 16
  store i64 %42, i64* %13, align 8
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %46 = call i32 @put_bits_ptr(%struct.TYPE_16__* %45)
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @memset(i32 %46, i32 0, i32 %49)
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @skip_put_bytes(%struct.TYPE_16__* %51, i32 %54)
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @put_bits(%struct.TYPE_16__* %56, i32 8, i32 %57)
  store i32 0, i32* %15, align 4
  br label %59

59:                                               ; preds = %100, %2
  %60 = load i32, i32* %15, align 4
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %103

65:                                               ; preds = %59
  %66 = load i32, i32* %15, align 4
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %16, align 4
  br label %71

71:                                               ; preds = %96, %65
  %72 = load i32, i32* %16, align 4
  %73 = icmp slt i32 %72, 4
  br i1 %73, label %74, label %99

74:                                               ; preds = %71
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 4
  %79 = load i64**, i64*** %78, align 8
  %80 = load i32, i32* %15, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64*, i64** %79, i64 %81
  %83 = load i64*, i64** %82, align 8
  %84 = load i32, i32* %16, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = sub nsw i64 %76, %87
  %89 = call i32 @FFMAX(i64 %88, i32 0)
  %90 = load i32, i32* %15, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [4 x i32], [4 x i32]* %44, i64 %91
  %93 = load i32, i32* %16, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [4 x i32], [4 x i32]* %92, i64 0, i64 %94
  store i32 %89, i32* %95, align 4
  br label %96

96:                                               ; preds = %74
  %97 = load i32, i32* %16, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %16, align 4
  br label %71

99:                                               ; preds = %71
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %15, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %15, align 4
  br label %59

103:                                              ; preds = %59
  store i32 0, i32* %14, align 4
  br label %104

104:                                              ; preds = %232, %103
  %105 = load i32, i32* %14, align 4
  %106 = icmp slt i32 %105, 3
  br i1 %106, label %107, label %235

107:                                              ; preds = %104
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %109 = call i32 @put_bits_count(%struct.TYPE_16__* %108)
  %110 = ashr i32 %109, 3
  store i32 %110, i32* %17, align 4
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %112 = call i32 @put_bits(%struct.TYPE_16__* %111, i32 8, i32 0)
  store i32 0, i32* %15, align 4
  br label %113

113:                                              ; preds = %160, %107
  %114 = load i32, i32* %15, align 4
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = icmp slt i32 %114, %117
  br i1 %118, label %119, label %163

119:                                              ; preds = %113
  %120 = load i32, i32* %15, align 4
  %121 = icmp ne i32 %120, 0
  %122 = xor i1 %121, true
  %123 = xor i1 %122, true
  %124 = zext i1 %123 to i32
  store i32 %124, i32* %16, align 4
  br label %125

125:                                              ; preds = %156, %119
  %126 = load i32, i32* %16, align 4
  %127 = icmp slt i32 %126, 4
  br i1 %127, label %128, label %159

128:                                              ; preds = %125
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* %9, align 4
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 3
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %134, align 8
  %136 = load i32, i32* %14, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 0
  %140 = load i32**, i32*** %139, align 8
  %141 = load i32, i32* %15, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32*, i32** %140, i64 %142
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %16, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %15, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [4 x i32], [4 x i32]* %44, i64 %149
  %151 = load i32, i32* %16, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [4 x i32], [4 x i32]* %150, i64 0, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @encode_subband(%struct.TYPE_14__* %129, %struct.TYPE_16__* %130, i32 %131, i32 %132, i32* %147, i32 %154)
  br label %156

156:                                              ; preds = %128
  %157 = load i32, i32* %16, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %16, align 4
  br label %125

159:                                              ; preds = %125
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %15, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %15, align 4
  br label %113

163:                                              ; preds = %113
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %165 = call i32 @avpriv_align_put_bits(%struct.TYPE_16__* %164)
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %167 = call i32 @put_bits_count(%struct.TYPE_16__* %166)
  %168 = ashr i32 %167, 3
  %169 = load i32, i32* %17, align 4
  %170 = sub nsw i32 %168, %169
  %171 = sub nsw i32 %170, 1
  store i32 %171, i32* %18, align 4
  %172 = load i32, i32* %14, align 4
  %173 = icmp eq i32 %172, 2
  br i1 %173, label %174, label %198

174:                                              ; preds = %163
  %175 = load i32, i32* %11, align 4
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %177 = call i32 @put_bits_count(%struct.TYPE_16__* %176)
  %178 = ashr i32 %177, 3
  %179 = sub nsw i32 %175, %178
  store i32 %179, i32* %21, align 4
  %180 = load i32, i32* %18, align 4
  %181 = load i32, i32* %21, align 4
  %182 = add nsw i32 %180, %181
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @FFALIGN(i32 %182, i32 %185)
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = sdiv i32 %186, %189
  store i32 %190, i32* %19, align 4
  %191 = load i32, i32* %19, align 4
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = mul nsw i32 %191, %194
  %196 = load i32, i32* %18, align 4
  %197 = sub nsw i32 %195, %196
  store i32 %197, i32* %20, align 4
  br label %215

198:                                              ; preds = %163
  %199 = load i32, i32* %18, align 4
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @FFALIGN(i32 %199, i32 %202)
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = sdiv i32 %203, %206
  store i32 %207, i32* %19, align 4
  %208 = load i32, i32* %19, align 4
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = mul nsw i32 %208, %211
  %213 = load i32, i32* %18, align 4
  %214 = sub nsw i32 %212, %213
  store i32 %214, i32* %20, align 4
  br label %215

215:                                              ; preds = %198, %174
  %216 = load i32, i32* %19, align 4
  %217 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %217, i32 0, i32 0
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* %17, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  store i32 %216, i32* %222, align 4
  %223 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %224 = call i32 @flush_put_bits(%struct.TYPE_16__* %223)
  %225 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %226 = call i32 @put_bits_ptr(%struct.TYPE_16__* %225)
  %227 = load i32, i32* %20, align 4
  %228 = call i32 @memset(i32 %226, i32 255, i32 %227)
  %229 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %230 = load i32, i32* %20, align 4
  %231 = call i32 @skip_put_bytes(%struct.TYPE_16__* %229, i32 %230)
  br label %232

232:                                              ; preds = %215
  %233 = load i32, i32* %14, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %14, align 4
  br label %104

235:                                              ; preds = %104
  %236 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %236)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32, i32, i32) #2

declare dso_local i32 @put_bits_ptr(%struct.TYPE_16__*) #2

declare dso_local i32 @skip_put_bytes(%struct.TYPE_16__*, i32) #2

declare dso_local i32 @put_bits(%struct.TYPE_16__*, i32, i32) #2

declare dso_local i32 @FFMAX(i64, i32) #2

declare dso_local i32 @put_bits_count(%struct.TYPE_16__*) #2

declare dso_local i32 @encode_subband(%struct.TYPE_14__*, %struct.TYPE_16__*, i32, i32, i32*, i32) #2

declare dso_local i32 @avpriv_align_put_bits(%struct.TYPE_16__*) #2

declare dso_local i32 @FFALIGN(i32, i32) #2

declare dso_local i32 @flush_put_bits(%struct.TYPE_16__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
