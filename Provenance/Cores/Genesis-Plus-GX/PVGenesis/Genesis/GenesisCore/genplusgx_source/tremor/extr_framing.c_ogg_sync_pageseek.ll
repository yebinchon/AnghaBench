; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/tremor/extr_framing.c_ogg_sync_pageseek.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/tremor/extr_framing.c_ogg_sync_pageseek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32, i64, i64, %struct.TYPE_14__*, i64 }
%struct.TYPE_14__ = type { i32, i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_13__ = type { i64, i64, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ogg_sync_pageseek(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store i64 0, i64* %8, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %16 = call i32 @ogg_page_release(%struct.TYPE_13__* %15)
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %7, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 4
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %23 = call i32 @oggbyte_init(i32* %6, %struct.TYPE_14__* %22)
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %50

28:                                               ; preds = %2
  %29 = load i64, i64* %7, align 8
  %30 = icmp slt i64 %29, 27
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  br label %291

32:                                               ; preds = %28
  %33 = call i32 @oggbyte_read1(i32* %6, i32 0)
  %34 = icmp ne i32 %33, 79
  br i1 %34, label %44, label %35

35:                                               ; preds = %32
  %36 = call i32 @oggbyte_read1(i32* %6, i32 1)
  %37 = icmp ne i32 %36, 103
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  %39 = call i32 @oggbyte_read1(i32* %6, i32 2)
  %40 = icmp ne i32 %39, 103
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = call i32 @oggbyte_read1(i32* %6, i32 3)
  %43 = icmp ne i32 %42, 83
  br i1 %43, label %44, label %45

44:                                               ; preds = %41, %38, %35, %32
  br label %199

45:                                               ; preds = %41
  %46 = call i32 @oggbyte_read1(i32* %6, i32 26)
  %47 = add nsw i32 %46, 27
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  br label %50

50:                                               ; preds = %45, %2
  %51 = load i64, i64* %7, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = icmp slt i64 %51, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %291

58:                                               ; preds = %50
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %84

63:                                               ; preds = %58
  store i32 0, i32* %9, align 4
  br label %64

64:                                               ; preds = %80, %63
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = sub nsw i32 %68, 27
  %70 = icmp slt i32 %65, %69
  br i1 %70, label %71, label %83

71:                                               ; preds = %64
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 27, %72
  %74 = call i32 @oggbyte_read1(i32* %6, i32 %73)
  %75 = sext i32 %74 to i64
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, %75
  store i64 %79, i64* %77, align 8
  br label %80

80:                                               ; preds = %71
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %64

83:                                               ; preds = %64
  br label %84

84:                                               ; preds = %83, %58
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %87, %91
  %93 = load i64, i64* %7, align 8
  %94 = icmp sgt i64 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %84
  br label %291

96:                                               ; preds = %84
  %97 = call i64 @oggbyte_read4(i32* %6, i32 22)
  store i64 %97, i64* %10, align 8
  %98 = call i32 @oggbyte_set4(i32* %6, i64 0, i32 22)
  %99 = load i64, i64* %10, align 8
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 4
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %101, align 8
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %105, %109
  %111 = call i64 @_checksum(%struct.TYPE_14__* %102, i64 %110)
  %112 = icmp ne i64 %99, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %96
  %114 = load i64, i64* %10, align 8
  %115 = call i32 @oggbyte_set4(i32* %6, i64 %114, i32 22)
  br label %199

116:                                              ; preds = %96
  %117 = load i64, i64* %10, align 8
  %118 = call i32 @oggbyte_set4(i32* %6, i64 %117, i32 22)
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %120 = icmp ne %struct.TYPE_13__* %119, null
  br i1 %120, label %121, label %154

121:                                              ; preds = %116
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 4
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 3
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = sext i32 %128 to i64
  %130 = call i8* @ogg_buffer_split(%struct.TYPE_14__** %123, i64* %125, i64 %129)
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 3
  store i8* %130, i8** %132, align 8
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = sext i32 %135 to i64
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 0
  store i64 %136, i64* %138, align 8
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 4
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 3
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = call i8* @ogg_buffer_split(%struct.TYPE_14__** %140, i64* %142, i64 %145)
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 2
  store i8* %146, i8** %148, align 8
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 1
  store i64 %151, i64* %153, align 8
  br label %178

154:                                              ; preds = %116
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 4
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %156, align 8
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = sext i32 %160 to i64
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = add nsw i64 %161, %164
  %166 = call i8* @ogg_buffer_pretruncate(%struct.TYPE_14__* %157, i64 %165)
  %167 = bitcast i8* %166 to %struct.TYPE_14__*
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 4
  store %struct.TYPE_14__* %167, %struct.TYPE_14__** %169, align 8
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 4
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %171, align 8
  %173 = icmp ne %struct.TYPE_14__* %172, null
  br i1 %173, label %177, label %174

174:                                              ; preds = %154
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 3
  store i64 0, i64* %176, align 8
  br label %177

177:                                              ; preds = %174, %154
  br label %178

178:                                              ; preds = %177, %121
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = sext i32 %181 to i64
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 2
  %185 = load i64, i64* %184, align 8
  %186 = add nsw i64 %182, %185
  store i64 %186, i64* %8, align 8
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 5
  store i64 0, i64* %188, align 8
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 1
  store i32 0, i32* %190, align 8
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 2
  store i64 0, i64* %192, align 8
  %193 = load i64, i64* %8, align 8
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = sub nsw i64 %196, %193
  store i64 %197, i64* %195, align 8
  %198 = load i64, i64* %8, align 8
  store i64 %198, i64* %3, align 8
  br label %293

199:                                              ; preds = %113, %44
  %200 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 1
  store i32 0, i32* %201, align 8
  %202 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 2
  store i64 0, i64* %203, align 8
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 4
  %206 = load %struct.TYPE_14__*, %struct.TYPE_14__** %205, align 8
  %207 = call i8* @ogg_buffer_pretruncate(%struct.TYPE_14__* %206, i64 1)
  %208 = bitcast i8* %207 to %struct.TYPE_14__*
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 4
  store %struct.TYPE_14__* %208, %struct.TYPE_14__** %210, align 8
  %211 = load i64, i64* %8, align 8
  %212 = add nsw i64 %211, -1
  store i64 %212, i64* %8, align 8
  br label %213

213:                                              ; preds = %276, %199
  %214 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 4
  %216 = load %struct.TYPE_14__*, %struct.TYPE_14__** %215, align 8
  %217 = icmp ne %struct.TYPE_14__* %216, null
  br i1 %217, label %218, label %277

218:                                              ; preds = %213
  %219 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i32 0, i32 4
  %221 = load %struct.TYPE_14__*, %struct.TYPE_14__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 0, i32 2
  %223 = load %struct.TYPE_11__*, %struct.TYPE_11__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i32 0, i32 0
  %225 = load i8*, i8** %224, align 8
  %226 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i32 0, i32 4
  %228 = load %struct.TYPE_14__*, %struct.TYPE_14__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i8, i8* %225, i64 %231
  store i8* %232, i8** %11, align 8
  %233 = load i8*, i8** %11, align 8
  %234 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i32 0, i32 4
  %236 = load %struct.TYPE_14__*, %struct.TYPE_14__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = call i8* @memchr(i8* %233, i8 signext 79, i64 %238)
  store i8* %239, i8** %12, align 8
  %240 = load i8*, i8** %12, align 8
  %241 = icmp ne i8* %240, null
  br i1 %241, label %242, label %259

242:                                              ; preds = %218
  %243 = load i8*, i8** %12, align 8
  %244 = load i8*, i8** %11, align 8
  %245 = ptrtoint i8* %243 to i64
  %246 = ptrtoint i8* %244 to i64
  %247 = sub i64 %245, %246
  store i64 %247, i64* %13, align 8
  %248 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 4
  %250 = load %struct.TYPE_14__*, %struct.TYPE_14__** %249, align 8
  %251 = load i64, i64* %13, align 8
  %252 = call i8* @ogg_buffer_pretruncate(%struct.TYPE_14__* %250, i64 %251)
  %253 = bitcast i8* %252 to %struct.TYPE_14__*
  %254 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %254, i32 0, i32 4
  store %struct.TYPE_14__* %253, %struct.TYPE_14__** %255, align 8
  %256 = load i64, i64* %13, align 8
  %257 = load i64, i64* %8, align 8
  %258 = sub nsw i64 %257, %256
  store i64 %258, i64* %8, align 8
  br label %277

259:                                              ; preds = %218
  %260 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %260, i32 0, i32 4
  %262 = load %struct.TYPE_14__*, %struct.TYPE_14__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %262, i32 0, i32 1
  %264 = load i64, i64* %263, align 8
  store i64 %264, i64* %14, align 8
  %265 = load i64, i64* %14, align 8
  %266 = load i64, i64* %8, align 8
  %267 = sub nsw i64 %266, %265
  store i64 %267, i64* %8, align 8
  %268 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %269 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %268, i32 0, i32 4
  %270 = load %struct.TYPE_14__*, %struct.TYPE_14__** %269, align 8
  %271 = load i64, i64* %14, align 8
  %272 = call i8* @ogg_buffer_pretruncate(%struct.TYPE_14__* %270, i64 %271)
  %273 = bitcast i8* %272 to %struct.TYPE_14__*
  %274 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %275 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %274, i32 0, i32 4
  store %struct.TYPE_14__* %273, %struct.TYPE_14__** %275, align 8
  br label %276

276:                                              ; preds = %259
  br label %213

277:                                              ; preds = %242, %213
  %278 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %279 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %278, i32 0, i32 4
  %280 = load %struct.TYPE_14__*, %struct.TYPE_14__** %279, align 8
  %281 = icmp ne %struct.TYPE_14__* %280, null
  br i1 %281, label %285, label %282

282:                                              ; preds = %277
  %283 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %284 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %283, i32 0, i32 3
  store i64 0, i64* %284, align 8
  br label %285

285:                                              ; preds = %282, %277
  %286 = load i64, i64* %8, align 8
  %287 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %288 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = add nsw i64 %289, %286
  store i64 %290, i64* %288, align 8
  br label %291

291:                                              ; preds = %285, %95, %57, %31
  %292 = load i64, i64* %8, align 8
  store i64 %292, i64* %3, align 8
  br label %293

293:                                              ; preds = %291, %178
  %294 = load i64, i64* %3, align 8
  ret i64 %294
}

declare dso_local i32 @ogg_page_release(%struct.TYPE_13__*) #1

declare dso_local i32 @oggbyte_init(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @oggbyte_read1(i32*, i32) #1

declare dso_local i64 @oggbyte_read4(i32*, i32) #1

declare dso_local i32 @oggbyte_set4(i32*, i64, i32) #1

declare dso_local i64 @_checksum(%struct.TYPE_14__*, i64) #1

declare dso_local i8* @ogg_buffer_split(%struct.TYPE_14__**, i64*, i64) #1

declare dso_local i8* @ogg_buffer_pretruncate(%struct.TYPE_14__*, i64) #1

declare dso_local i8* @memchr(i8*, i8 signext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
