; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/7zip/extr_7zIn.c_SzArEx_Open2.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/7zip/extr_7zIn.c_SzArEx_Open2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32 }
%struct.TYPE_21__ = type { i32 (%struct.TYPE_21__*, i32*, i32)* }
%struct.TYPE_24__ = type { i64*, i32 }
%struct.TYPE_22__ = type { i64*, i32 }

@k7zStartHeaderSize = common dso_local global i32 0, align 4
@SZ_SEEK_CUR = common dso_local global i32 0, align 4
@SZ_ERROR_NO_ARCHIVE = common dso_local global i64 0, align 8
@k7zMajorVersion = common dso_local global i64 0, align 8
@SZ_ERROR_UNSUPPORTED = common dso_local global i64 0, align 8
@SZ_ERROR_CRC = common dso_local global i64 0, align 8
@SZ_ERROR_MEM = common dso_local global i64 0, align 8
@SZ_OK = common dso_local global i64 0, align 8
@SZ_SEEK_END = common dso_local global i32 0, align 4
@SZ_ERROR_INPUT_EOF = common dso_local global i64 0, align 8
@SZ_ERROR_ARCHIVE = common dso_local global i64 0, align 8
@k7zIdEncodedHeader = common dso_local global i64 0, align 8
@k7zIdHeader = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_23__*, %struct.TYPE_21__*, i32*, i32*)* @SzArEx_Open2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @SzArEx_Open2(%struct.TYPE_23__* %0, %struct.TYPE_21__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_24__, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_22__, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.TYPE_24__, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %6, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %24 = load i32, i32* @k7zStartHeaderSize, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %10, align 8
  %27 = alloca i64, i64 %25, align 16
  store i64 %25, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 0
  %30 = load i32 (%struct.TYPE_21__*, i32*, i32)*, i32 (%struct.TYPE_21__*, i32*, i32)** %29, align 8
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %32 = load i32, i32* @SZ_SEEK_CUR, align 4
  %33 = call i32 %30(%struct.TYPE_21__* %31, i32* %12, i32 %32)
  %34 = call i32 @RINOK(i32 %33)
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %36 = load i32, i32* @k7zStartHeaderSize, align 4
  %37 = load i64, i64* @SZ_ERROR_NO_ARCHIVE, align 8
  %38 = call i32 @LookInStream_Read2(%struct.TYPE_21__* %35, i64* %27, i32 %36, i64 %37)
  %39 = call i32 @RINOK(i32 %38)
  %40 = call i32 @TestSignatureCandidate(i64* %27)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %4
  %43 = load i64, i64* @SZ_ERROR_NO_ARCHIVE, align 8
  store i64 %43, i64* %5, align 8
  store i32 1, i32* %19, align 4
  br label %241

44:                                               ; preds = %4
  %45 = getelementptr inbounds i64, i64* %27, i64 6
  %46 = load i64, i64* %45, align 16
  %47 = load i64, i64* @k7zMajorVersion, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i64, i64* @SZ_ERROR_UNSUPPORTED, align 8
  store i64 %50, i64* %5, align 8
  store i32 1, i32* %19, align 4
  br label %241

51:                                               ; preds = %44
  %52 = getelementptr inbounds i64, i64* %27, i64 12
  %53 = call i64 @GetUi64(i64* %52)
  store i64 %53, i64* %13, align 8
  %54 = getelementptr inbounds i64, i64* %27, i64 20
  %55 = call i64 @GetUi64(i64* %54)
  store i64 %55, i64* %14, align 8
  %56 = getelementptr inbounds i64, i64* %27, i64 28
  %57 = call i64 @GetUi32(i64* %56)
  store i64 %57, i64* %16, align 8
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* @k7zStartHeaderSize, align 4
  %60 = add nsw i32 %58, %59
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = getelementptr inbounds i64, i64* %27, i64 12
  %64 = call i64 @CrcCalc(i64* %63, i64 20)
  %65 = getelementptr inbounds i64, i64* %27, i64 8
  %66 = call i64 @GetUi32(i64* %65)
  %67 = icmp ne i64 %64, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %51
  %69 = load i64, i64* @SZ_ERROR_CRC, align 8
  store i64 %69, i64* %5, align 8
  store i32 1, i32* %19, align 4
  br label %241

70:                                               ; preds = %51
  %71 = load i64, i64* %14, align 8
  store i64 %71, i64* %15, align 8
  %72 = load i64, i64* %15, align 8
  %73 = load i64, i64* %14, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i64, i64* @SZ_ERROR_MEM, align 8
  store i64 %76, i64* %5, align 8
  store i32 1, i32* %19, align 4
  br label %241

77:                                               ; preds = %70
  %78 = load i64, i64* %15, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load i64, i64* @SZ_OK, align 8
  store i64 %81, i64* %5, align 8
  store i32 1, i32* %19, align 4
  br label %241

82:                                               ; preds = %77
  %83 = load i64, i64* %13, align 8
  %84 = load i64, i64* %13, align 8
  %85 = load i64, i64* %14, align 8
  %86 = add i64 %84, %85
  %87 = icmp ugt i64 %83, %86
  br i1 %87, label %97, label %88

88:                                               ; preds = %82
  %89 = load i64, i64* %13, align 8
  %90 = load i64, i64* %13, align 8
  %91 = load i64, i64* %14, align 8
  %92 = add i64 %90, %91
  %93 = load i32, i32* @k7zStartHeaderSize, align 4
  %94 = sext i32 %93 to i64
  %95 = add i64 %92, %94
  %96 = icmp ugt i64 %89, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %88, %82
  %98 = load i64, i64* @SZ_ERROR_NO_ARCHIVE, align 8
  store i64 %98, i64* %5, align 8
  store i32 1, i32* %19, align 4
  br label %241

99:                                               ; preds = %88
  store i32 0, i32* %20, align 4
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 0
  %102 = load i32 (%struct.TYPE_21__*, i32*, i32)*, i32 (%struct.TYPE_21__*, i32*, i32)** %101, align 8
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %104 = load i32, i32* @SZ_SEEK_END, align 4
  %105 = call i32 %102(%struct.TYPE_21__* %103, i32* %20, i32 %104)
  %106 = call i32 @RINOK(i32 %105)
  %107 = load i32, i32* %20, align 4
  %108 = sext i32 %107 to i64
  %109 = load i32, i32* %12, align 4
  %110 = sext i32 %109 to i64
  %111 = load i64, i64* %13, align 8
  %112 = add i64 %110, %111
  %113 = icmp ult i64 %108, %112
  br i1 %113, label %136, label %114

114:                                              ; preds = %99
  %115 = load i32, i32* %20, align 4
  %116 = sext i32 %115 to i64
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* @k7zStartHeaderSize, align 4
  %119 = add nsw i32 %117, %118
  %120 = sext i32 %119 to i64
  %121 = load i64, i64* %13, align 8
  %122 = add i64 %120, %121
  %123 = icmp ult i64 %116, %122
  br i1 %123, label %136, label %124

124:                                              ; preds = %114
  %125 = load i32, i32* %20, align 4
  %126 = sext i32 %125 to i64
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* @k7zStartHeaderSize, align 4
  %129 = add nsw i32 %127, %128
  %130 = sext i32 %129 to i64
  %131 = load i64, i64* %13, align 8
  %132 = add i64 %130, %131
  %133 = load i64, i64* %14, align 8
  %134 = add i64 %132, %133
  %135 = icmp ult i64 %126, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %124, %114, %99
  %137 = load i64, i64* @SZ_ERROR_INPUT_EOF, align 8
  store i64 %137, i64* %5, align 8
  store i32 1, i32* %19, align 4
  br label %241

138:                                              ; preds = %124
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %140 = load i32, i32* %12, align 4
  %141 = load i32, i32* @k7zStartHeaderSize, align 4
  %142 = add nsw i32 %140, %141
  %143 = sext i32 %142 to i64
  %144 = load i64, i64* %13, align 8
  %145 = add i64 %143, %144
  %146 = trunc i64 %145 to i32
  %147 = call i32 @LookInStream_SeekTo(%struct.TYPE_21__* %139, i32 %146)
  %148 = call i32 @RINOK(i32 %147)
  %149 = load i64, i64* %15, align 8
  %150 = load i32*, i32** %9, align 8
  %151 = call i32 @Buf_Create(%struct.TYPE_24__* %17, i64 %149, i32* %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %155, label %153

153:                                              ; preds = %138
  %154 = load i64, i64* @SZ_ERROR_MEM, align 8
  store i64 %154, i64* %5, align 8
  store i32 1, i32* %19, align 4
  br label %241

155:                                              ; preds = %138
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 0
  %158 = load i64*, i64** %157, align 8
  %159 = load i64, i64* %15, align 8
  %160 = call i64 @LookInStream_Read(%struct.TYPE_21__* %156, i64* %158, i64 %159)
  store i64 %160, i64* %18, align 8
  %161 = load i64, i64* %18, align 8
  %162 = load i64, i64* @SZ_OK, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %237

164:                                              ; preds = %155
  %165 = load i64, i64* @SZ_ERROR_ARCHIVE, align 8
  store i64 %165, i64* %18, align 8
  %166 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 0
  %167 = load i64*, i64** %166, align 8
  %168 = load i64, i64* %15, align 8
  %169 = call i64 @CrcCalc(i64* %167, i64 %168)
  %170 = load i64, i64* %16, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %236

172:                                              ; preds = %164
  %173 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 0
  %174 = load i64*, i64** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 0
  store i64* %174, i64** %175, align 8
  %176 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 1
  store i32 %177, i32* %178, align 8
  %179 = call i64 @SzReadID(%struct.TYPE_22__* %21, i64* %22)
  store i64 %179, i64* %18, align 8
  %180 = load i64, i64* %18, align 8
  %181 = load i64, i64* @SZ_OK, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %219

183:                                              ; preds = %172
  %184 = load i64, i64* %22, align 8
  %185 = load i64, i64* @k7zIdEncodedHeader, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %218

187:                                              ; preds = %183
  %188 = call i32 @Buf_Init(%struct.TYPE_24__* %23)
  %189 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %190 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load i32*, i32** %9, align 8
  %194 = call i64 @SzReadAndDecodePackedStreams(%struct.TYPE_21__* %189, %struct.TYPE_22__* %21, %struct.TYPE_24__* %23, i32 %192, i32* %193)
  store i64 %194, i64* %18, align 8
  %195 = load i64, i64* %18, align 8
  %196 = load i64, i64* @SZ_OK, align 8
  %197 = icmp ne i64 %195, %196
  br i1 %197, label %198, label %201

198:                                              ; preds = %187
  %199 = load i32*, i32** %9, align 8
  %200 = call i32 @Buf_Free(%struct.TYPE_24__* %23, i32* %199)
  br label %217

201:                                              ; preds = %187
  %202 = load i32*, i32** %9, align 8
  %203 = call i32 @Buf_Free(%struct.TYPE_24__* %17, i32* %202)
  %204 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 0
  %205 = load i64*, i64** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 0
  store i64* %205, i64** %206, align 8
  %207 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 1
  store i32 %208, i32* %209, align 8
  %210 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 0
  %211 = load i64*, i64** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 0
  store i64* %211, i64** %212, align 8
  %213 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 1
  %214 = load i32, i32* %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 1
  store i32 %214, i32* %215, align 8
  %216 = call i64 @SzReadID(%struct.TYPE_22__* %21, i64* %22)
  store i64 %216, i64* %18, align 8
  br label %217

217:                                              ; preds = %201, %198
  br label %218

218:                                              ; preds = %217, %183
  br label %219

219:                                              ; preds = %218, %172
  %220 = load i64, i64* %18, align 8
  %221 = load i64, i64* @SZ_OK, align 8
  %222 = icmp eq i64 %220, %221
  br i1 %222, label %223, label %235

223:                                              ; preds = %219
  %224 = load i64, i64* %22, align 8
  %225 = load i64, i64* @k7zIdHeader, align 8
  %226 = icmp eq i64 %224, %225
  br i1 %226, label %227, label %232

227:                                              ; preds = %223
  %228 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %229 = load i32*, i32** %8, align 8
  %230 = load i32*, i32** %9, align 8
  %231 = call i64 @SzReadHeader(%struct.TYPE_23__* %228, %struct.TYPE_22__* %21, i32* %229, i32* %230)
  store i64 %231, i64* %18, align 8
  br label %234

232:                                              ; preds = %223
  %233 = load i64, i64* @SZ_ERROR_UNSUPPORTED, align 8
  store i64 %233, i64* %18, align 8
  br label %234

234:                                              ; preds = %232, %227
  br label %235

235:                                              ; preds = %234, %219
  br label %236

236:                                              ; preds = %235, %164
  br label %237

237:                                              ; preds = %236, %155
  %238 = load i32*, i32** %9, align 8
  %239 = call i32 @Buf_Free(%struct.TYPE_24__* %17, i32* %238)
  %240 = load i64, i64* %18, align 8
  store i64 %240, i64* %5, align 8
  store i32 1, i32* %19, align 4
  br label %241

241:                                              ; preds = %237, %153, %136, %97, %80, %75, %68, %49, %42
  %242 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %242)
  %243 = load i64, i64* %5, align 8
  ret i64 %243
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @RINOK(i32) #2

declare dso_local i32 @LookInStream_Read2(%struct.TYPE_21__*, i64*, i32, i64) #2

declare dso_local i32 @TestSignatureCandidate(i64*) #2

declare dso_local i64 @GetUi64(i64*) #2

declare dso_local i64 @GetUi32(i64*) #2

declare dso_local i64 @CrcCalc(i64*, i64) #2

declare dso_local i32 @LookInStream_SeekTo(%struct.TYPE_21__*, i32) #2

declare dso_local i32 @Buf_Create(%struct.TYPE_24__*, i64, i32*) #2

declare dso_local i64 @LookInStream_Read(%struct.TYPE_21__*, i64*, i64) #2

declare dso_local i64 @SzReadID(%struct.TYPE_22__*, i64*) #2

declare dso_local i32 @Buf_Init(%struct.TYPE_24__*) #2

declare dso_local i64 @SzReadAndDecodePackedStreams(%struct.TYPE_21__*, %struct.TYPE_22__*, %struct.TYPE_24__*, i32, i32*) #2

declare dso_local i32 @Buf_Free(%struct.TYPE_24__*, i32*) #2

declare dso_local i64 @SzReadHeader(%struct.TYPE_23__*, %struct.TYPE_22__*, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
