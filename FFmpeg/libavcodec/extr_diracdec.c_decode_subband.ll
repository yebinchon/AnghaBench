; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_diracdec.c_decode_subband.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_diracdec.c_decode_subband.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i64, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32* }

@DIRAC_MAX_QUANT_INDEX = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Unsupported quant %d\0A\00", align 1
@ff_dirac_qscale_tab = common dso_local global i32* null, align 8
@ff_dirac_qoffset_intra_tab = common dso_local global i32* null, align 8
@int32_t = common dso_local global i32 0, align 4
@int16_t = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32*, i32, i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_6__*)* @decode_subband to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_subband(%struct.TYPE_7__* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.TYPE_6__* %6, %struct.TYPE_6__* %7) #0 {
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_6__*, align 8
  %16 = alloca %struct.TYPE_6__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.TYPE_6__* %6, %struct.TYPE_6__** %15, align 8
  store %struct.TYPE_6__* %7, %struct.TYPE_6__** %16, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %12, align 4
  %31 = mul nsw i32 %29, %30
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sdiv i32 %31, %34
  store i32 %35, i32* %17, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %12, align 4
  %40 = add nsw i32 %39, 1
  %41 = mul nsw i32 %38, %40
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sdiv i32 %41, %44
  store i32 %45, i32* %18, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %13, align 4
  %50 = mul nsw i32 %48, %49
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = sdiv i32 %50, %53
  store i32 %54, i32* %19, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %13, align 4
  %59 = add nsw i32 %58, 1
  %60 = mul nsw i32 %57, %59
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sdiv i32 %60, %63
  store i32 %64, i32* %20, align 4
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %19, align 4
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = mul nsw i32 %68, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %67, i64 %73
  store i32* %74, i32** %23, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %76 = icmp ne %struct.TYPE_6__* %75, null
  br i1 %76, label %77, label %88

77:                                               ; preds = %8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 3
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %19, align 4
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = mul nsw i32 %81, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %80, i64 %86
  br label %89

88:                                               ; preds = %8
  br label %89

89:                                               ; preds = %88, %77
  %90 = phi i32* [ %87, %77 ], [ null, %88 ]
  store i32* %90, i32** %24, align 8
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* @DIRAC_MAX_QUANT_INDEX, align 4
  %93 = sub nsw i32 %92, 1
  %94 = icmp sgt i32 %91, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %89
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @AV_LOG_ERROR, align 4
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @av_log(i32 %98, i32 %99, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %100)
  br label %212

102:                                              ; preds = %89
  %103 = load i32*, i32** @ff_dirac_qscale_tab, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %21, align 4
  %108 = load i32*, i32** @ff_dirac_qoffset_intra_tab, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, 2
  store i32 %113, i32* %22, align 4
  %114 = load i32*, i32** %10, align 8
  %115 = call i32 @get_bits_count(i32* %114)
  %116 = load i32, i32* %14, align 4
  %117 = icmp sge i32 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %102
  br label %212

119:                                              ; preds = %102
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %168

124:                                              ; preds = %119
  %125 = load i32, i32* %19, align 4
  store i32 %125, i32* %26, align 4
  br label %126

126:                                              ; preds = %164, %124
  %127 = load i32, i32* %26, align 4
  %128 = load i32, i32* %20, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %167

130:                                              ; preds = %126
  %131 = load i32, i32* %17, align 4
  store i32 %131, i32* %25, align 4
  br label %132

132:                                              ; preds = %144, %130
  %133 = load i32, i32* %25, align 4
  %134 = load i32, i32* %18, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %147

136:                                              ; preds = %132
  %137 = load i32, i32* @int32_t, align 4
  %138 = load i32, i32* %25, align 4
  %139 = load i32*, i32** %10, align 8
  %140 = load i32, i32* %14, align 4
  %141 = load i32*, i32** %23, align 8
  %142 = load i32*, i32** %24, align 8
  %143 = call i32 @PARSE_VALUES(i32 %137, i32 %138, i32* %139, i32 %140, i32* %141, i32* %142)
  br label %144

144:                                              ; preds = %136
  %145 = load i32, i32* %25, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %25, align 4
  br label %132

147:                                              ; preds = %132
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = load i32*, i32** %23, align 8
  %152 = sext i32 %150 to i64
  %153 = getelementptr inbounds i32, i32* %151, i64 %152
  store i32* %153, i32** %23, align 8
  %154 = load i32*, i32** %24, align 8
  %155 = icmp ne i32* %154, null
  br i1 %155, label %156, label %163

156:                                              ; preds = %147
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = load i32*, i32** %24, align 8
  %161 = sext i32 %159 to i64
  %162 = getelementptr inbounds i32, i32* %160, i64 %161
  store i32* %162, i32** %24, align 8
  br label %163

163:                                              ; preds = %156, %147
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %26, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %26, align 4
  br label %126

167:                                              ; preds = %126
  br label %212

168:                                              ; preds = %119
  %169 = load i32, i32* %19, align 4
  store i32 %169, i32* %26, align 4
  br label %170

170:                                              ; preds = %208, %168
  %171 = load i32, i32* %26, align 4
  %172 = load i32, i32* %20, align 4
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %174, label %211

174:                                              ; preds = %170
  %175 = load i32, i32* %17, align 4
  store i32 %175, i32* %25, align 4
  br label %176

176:                                              ; preds = %188, %174
  %177 = load i32, i32* %25, align 4
  %178 = load i32, i32* %18, align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %180, label %191

180:                                              ; preds = %176
  %181 = load i32, i32* @int16_t, align 4
  %182 = load i32, i32* %25, align 4
  %183 = load i32*, i32** %10, align 8
  %184 = load i32, i32* %14, align 4
  %185 = load i32*, i32** %23, align 8
  %186 = load i32*, i32** %24, align 8
  %187 = call i32 @PARSE_VALUES(i32 %181, i32 %182, i32* %183, i32 %184, i32* %185, i32* %186)
  br label %188

188:                                              ; preds = %180
  %189 = load i32, i32* %25, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %25, align 4
  br label %176

191:                                              ; preds = %176
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = load i32*, i32** %23, align 8
  %196 = sext i32 %194 to i64
  %197 = getelementptr inbounds i32, i32* %195, i64 %196
  store i32* %197, i32** %23, align 8
  %198 = load i32*, i32** %24, align 8
  %199 = icmp ne i32* %198, null
  br i1 %199, label %200, label %207

200:                                              ; preds = %191
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = load i32*, i32** %24, align 8
  %205 = sext i32 %203 to i64
  %206 = getelementptr inbounds i32, i32* %204, i64 %205
  store i32* %206, i32** %24, align 8
  br label %207

207:                                              ; preds = %200, %191
  br label %208

208:                                              ; preds = %207
  %209 = load i32, i32* %26, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %26, align 4
  br label %170

211:                                              ; preds = %170
  br label %212

212:                                              ; preds = %95, %118, %211, %167
  ret void
}

declare dso_local i32 @av_log(i32, i32, i8*, i32) #1

declare dso_local i32 @get_bits_count(i32*) #1

declare dso_local i32 @PARSE_VALUES(i32, i32, i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
