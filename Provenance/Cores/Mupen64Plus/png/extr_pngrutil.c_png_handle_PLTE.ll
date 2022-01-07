; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_pngrutil.c_png_handle_PLTE.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_pngrutil.c_png_handle_PLTE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32, i32, i64 }
%struct.TYPE_17__ = type { i32, i64 }
%struct.TYPE_18__ = type { i8*, i8*, i8* }

@PNG_MAX_PALETTE_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"in png_handle_PLTE\00", align 1
@PNG_HAVE_IHDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"missing IHDR\00", align 1
@PNG_HAVE_PLTE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"duplicate\00", align 1
@PNG_HAVE_IDAT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"out of place\00", align 1
@PNG_COLOR_MASK_COLOR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"ignored in grayscale PNG\00", align 1
@PNG_COLOR_TYPE_PALETTE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@PNG_FLAG_CRC_ANCILLARY_USE = common dso_local global i32 0, align 4
@PNG_FLAG_CRC_ANCILLARY_NOWARN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"CRC error\00", align 1
@PNG_INFO_bKGD = common dso_local global i32 0, align 4
@PNG_INFO_hIST = common dso_local global i32 0, align 4
@PNG_INFO_tRNS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_handle_PLTE(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [3 x i8*], align 16
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i32, i32* @PNG_MAX_PALETTE_LENGTH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca %struct.TYPE_18__, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %18 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @PNG_HAVE_IHDR, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %27 = call i32 @png_chunk_error(%struct.TYPE_16__* %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %53

28:                                               ; preds = %3
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @PNG_HAVE_PLTE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %37 = call i32 @png_chunk_error(%struct.TYPE_16__* %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %52

38:                                               ; preds = %28
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @PNG_HAVE_IDAT, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @png_crc_finish(%struct.TYPE_16__* %46, i32 %47)
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %50 = call i32 @png_chunk_benign_error(%struct.TYPE_16__* %49, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %12, align 4
  br label %211

51:                                               ; preds = %38
  br label %52

52:                                               ; preds = %51, %35
  br label %53

53:                                               ; preds = %52, %25
  %54 = load i32, i32* @PNG_HAVE_PLTE, align 4
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @PNG_COLOR_MASK_COLOR, align 4
  %63 = and i32 %61, %62
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %53
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @png_crc_finish(%struct.TYPE_16__* %66, i32 %67)
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %70 = call i32 @png_chunk_benign_error(%struct.TYPE_16__* %69, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %12, align 4
  br label %211

71:                                               ; preds = %53
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @PNG_COLOR_TYPE_PALETTE, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @png_crc_finish(%struct.TYPE_16__* %78, i32 %79)
  store i32 1, i32* %12, align 4
  br label %211

81:                                               ; preds = %71
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @PNG_MAX_PALETTE_LENGTH, align 4
  %84 = mul nsw i32 3, %83
  %85 = icmp sgt i32 %82, %84
  br i1 %85, label %90, label %86

86:                                               ; preds = %81
  %87 = load i32, i32* %6, align 4
  %88 = srem i32 %87, 3
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %106

90:                                               ; preds = %86, %81
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @png_crc_finish(%struct.TYPE_16__* %91, i32 %92)
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @PNG_COLOR_TYPE_PALETTE, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %90
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %101 = call i32 @png_chunk_benign_error(%struct.TYPE_16__* %100, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  br label %105

102:                                              ; preds = %90
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %104 = call i32 @png_chunk_error(%struct.TYPE_16__* %103, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  br label %105

105:                                              ; preds = %102, %99
  store i32 1, i32* %12, align 4
  br label %211

106:                                              ; preds = %86
  %107 = load i32, i32* %6, align 4
  %108 = sdiv i32 %107, 3
  store i32 %108, i32* %10, align 4
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @PNG_COLOR_TYPE_PALETTE, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %106
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = shl i32 1, %117
  store i32 %118, i32* %9, align 4
  br label %121

119:                                              ; preds = %106
  %120 = load i32, i32* @PNG_MAX_PALETTE_LENGTH, align 4
  store i32 %120, i32* %9, align 4
  br label %121

121:                                              ; preds = %119, %114
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* %9, align 4
  %124 = icmp sgt i32 %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %121
  %126 = load i32, i32* %9, align 4
  store i32 %126, i32* %10, align 4
  br label %127

127:                                              ; preds = %125, %121
  store i32 0, i32* %11, align 4
  br label %128

128:                                              ; preds = %154, %127
  %129 = load i32, i32* %11, align 4
  %130 = load i32, i32* %10, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %157

132:                                              ; preds = %128
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %134 = getelementptr inbounds [3 x i8*], [3 x i8*]* %13, i64 0, i64 0
  %135 = call i32 @png_crc_read(%struct.TYPE_16__* %133, i8** %134, i32 3)
  %136 = getelementptr inbounds [3 x i8*], [3 x i8*]* %13, i64 0, i64 0
  %137 = load i8*, i8** %136, align 16
  %138 = load i32, i32* %11, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 2
  store i8* %137, i8** %141, align 8
  %142 = getelementptr inbounds [3 x i8*], [3 x i8*]* %13, i64 0, i64 1
  %143 = load i8*, i8** %142, align 8
  %144 = load i32, i32* %11, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 1
  store i8* %143, i8** %147, align 8
  %148 = getelementptr inbounds [3 x i8*], [3 x i8*]* %13, i64 0, i64 2
  %149 = load i8*, i8** %148, align 16
  %150 = load i32, i32* %11, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 0
  store i8* %149, i8** %153, align 8
  br label %154

154:                                              ; preds = %132
  %155 = load i32, i32* %11, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %11, align 4
  br label %128

157:                                              ; preds = %128
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @PNG_COLOR_TYPE_PALETTE, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %170

163:                                              ; preds = %157
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %165 = load i32, i32* %6, align 4
  %166 = load i32, i32* %10, align 4
  %167 = mul i32 %166, 3
  %168 = sub i32 %165, %167
  %169 = call i32 @png_crc_finish(%struct.TYPE_16__* %164, i32 %168)
  br label %206

170:                                              ; preds = %157
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %172 = call i64 @png_crc_error(%struct.TYPE_16__* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %205

174:                                              ; preds = %170
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @PNG_FLAG_CRC_ANCILLARY_USE, align 4
  %179 = and i32 %177, %178
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %193

181:                                              ; preds = %174
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @PNG_FLAG_CRC_ANCILLARY_NOWARN, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %181
  store i32 1, i32* %12, align 4
  br label %211

189:                                              ; preds = %181
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %191 = call i32 @png_chunk_error(%struct.TYPE_16__* %190, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  br label %192

192:                                              ; preds = %189
  br label %204

193:                                              ; preds = %174
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @PNG_FLAG_CRC_ANCILLARY_NOWARN, align 4
  %198 = and i32 %196, %197
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %193
  %201 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %202 = call i32 @png_chunk_warning(%struct.TYPE_16__* %201, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  br label %203

203:                                              ; preds = %200, %193
  br label %204

204:                                              ; preds = %203, %192
  br label %205

205:                                              ; preds = %204, %170
  br label %206

206:                                              ; preds = %205, %163
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %208 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %209 = load i32, i32* %10, align 4
  %210 = call i32 @png_set_PLTE(%struct.TYPE_16__* %207, %struct.TYPE_17__* %208, %struct.TYPE_18__* %17, i32 %209)
  store i32 0, i32* %12, align 4
  br label %211

211:                                              ; preds = %206, %188, %105, %77, %65, %45
  %212 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %212)
  %213 = load i32, i32* %12, align 4
  switch i32 %213, label %215 [
    i32 0, label %214
    i32 1, label %214
  ]

214:                                              ; preds = %211, %211
  ret void

215:                                              ; preds = %211
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @png_debug(i32, i8*) #2

declare dso_local i32 @png_chunk_error(%struct.TYPE_16__*, i8*) #2

declare dso_local i32 @png_crc_finish(%struct.TYPE_16__*, i32) #2

declare dso_local i32 @png_chunk_benign_error(%struct.TYPE_16__*, i8*) #2

declare dso_local i32 @png_crc_read(%struct.TYPE_16__*, i8**, i32) #2

declare dso_local i64 @png_crc_error(%struct.TYPE_16__*) #2

declare dso_local i32 @png_chunk_warning(%struct.TYPE_16__*, i8*) #2

declare dso_local i32 @png_set_PLTE(%struct.TYPE_16__*, %struct.TYPE_17__*, %struct.TYPE_18__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
