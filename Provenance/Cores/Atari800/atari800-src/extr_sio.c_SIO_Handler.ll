; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_sio.c_SIO_Handler.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_sio.c_SIO_Handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIO_MAX_DRIVES = common dso_local global i64 0, align 8
@SIO_drive_status = common dso_local global i64* null, align 8
@SIO_OFF = common dso_local global i64 0, align 8
@BINLOAD_start_binloading = common dso_local global i64 0, align 8
@DataBuffer = common dso_local global i32 0, align 4
@delay_counter = common dso_local global i32 0, align 4
@last_ypos = common dso_local global i32 0, align 4
@ANTIC_ypos = common dso_local global i32 0, align 4
@CPU_regPC = common dso_local global i32 0, align 4
@SECTOR_DELAY = common dso_local global i32 0, align 4
@SIO_format_sectorsize = common dso_local global i32* null, align 8
@SIO_format_sectorcount = common dso_local global i32* null, align 8
@SIO_LAST_READ = common dso_local global i32 0, align 4
@SIO_last_op = common dso_local global i32 0, align 4
@SIO_last_drive = common dso_local global i32 0, align 4
@SIO_last_op_time = common dso_local global i32 0, align 4
@SIO_LAST_WRITE = common dso_local global i32 0, align 4
@CPU_regY = common dso_local global i32 0, align 4
@CPU_SetN = common dso_local global i32 0, align 4
@CPU_ClrN = common dso_local global i32 0, align 4
@CPU_regA = common dso_local global i64 0, align 8
@CPU_SetC = common dso_local global i32 0, align 4
@POKEY_OFFSET_AUDC1 = common dso_local global i32 0, align 4
@POKEY_OFFSET_AUDC2 = common dso_local global i32 0, align 4
@POKEY_OFFSET_AUDC3 = common dso_local global i32 0, align 4
@POKEY_OFFSET_AUDC4 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SIO_Handler() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = call i8* @MEMORY_dGetWordAligned(i32 778)
  %10 = ptrtoint i8* %9 to i32
  store i32 %10, i32* %1, align 4
  %11 = call i32 @MEMORY_dGetByte(i32 768)
  %12 = call i32 @MEMORY_dGetByte(i32 769)
  %13 = add nsw i32 %11, %12
  %14 = add nsw i32 %13, 255
  %15 = sub nsw i32 %14, 49
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %2, align 8
  store i64 0, i64* %3, align 8
  %17 = call i8* @MEMORY_dGetWordAligned(i32 772)
  store i8* %17, i8** %4, align 8
  %18 = call i8* @MEMORY_dGetWordAligned(i32 776)
  %19 = ptrtoint i8* %18 to i32
  store i32 %19, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %20 = call i32 @MEMORY_dGetByte(i32 770)
  store i32 %20, i32* %7, align 4
  %21 = call i32 @MEMORY_dGetByte(i32 768)
  %22 = call i32 @MEMORY_dGetByte(i32 769)
  %23 = add i32 %21, %22
  %24 = icmp ugt i32 %23, 255
  br i1 %24, label %25, label %28

25:                                               ; preds = %0
  %26 = load i64, i64* %2, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %2, align 8
  br label %28

28:                                               ; preds = %25, %0
  %29 = call i32 @MEMORY_dGetByte(i32 768)
  %30 = icmp ne i32 %29, 96
  br i1 %30, label %31, label %207

31:                                               ; preds = %28
  %32 = load i64, i64* %2, align 8
  %33 = load i64, i64* @SIO_MAX_DRIVES, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %207

35:                                               ; preds = %31
  %36 = load i64*, i64** @SIO_drive_status, align 8
  %37 = load i64, i64* %2, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SIO_OFF, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %45, label %42

42:                                               ; preds = %35
  %43 = load i64, i64* @BINLOAD_start_binloading, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %207

45:                                               ; preds = %42, %35
  %46 = load i32, i32* %7, align 4
  switch i32 %46, label %205 [
    i32 78, label %47
    i32 79, label %63
    i32 80, label %75
    i32 87, label %75
    i32 208, label %75
    i32 215, label %75
    i32 82, label %93
    i32 210, label %93
    i32 83, label %133
    i32 33, label %149
    i32 161, label %149
    i32 34, label %184
    i32 162, label %184
  ]

47:                                               ; preds = %45
  %48 = load i32, i32* %5, align 4
  %49 = icmp eq i32 12, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %47
  %51 = load i64, i64* %2, align 8
  %52 = load i32, i32* @DataBuffer, align 4
  %53 = call i64 @SIO_ReadStatusBlock(i64 %51, i32 %52)
  store i64 %53, i64* %3, align 8
  %54 = load i64, i64* %3, align 8
  %55 = icmp eq i64 %54, 67
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load i32, i32* @DataBuffer, align 4
  %58 = load i8*, i8** %4, align 8
  %59 = call i32 @MEMORY_CopyToMem(i32 %57, i8* %58, i32 12)
  br label %60

60:                                               ; preds = %56, %50
  br label %62

61:                                               ; preds = %47
  store i64 69, i64* %3, align 8
  br label %62

62:                                               ; preds = %61, %60
  br label %206

63:                                               ; preds = %45
  %64 = load i32, i32* %5, align 4
  %65 = icmp eq i32 12, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = load i8*, i8** %4, align 8
  %68 = load i32, i32* @DataBuffer, align 4
  %69 = call i32 @MEMORY_CopyFromMem(i8* %67, i32 %68, i32 12)
  %70 = load i64, i64* %2, align 8
  %71 = load i32, i32* @DataBuffer, align 4
  %72 = call i64 @SIO_WriteStatusBlock(i64 %70, i32 %71)
  store i64 %72, i64* %3, align 8
  br label %74

73:                                               ; preds = %63
  store i64 69, i64* %3, align 8
  br label %74

74:                                               ; preds = %73, %66
  br label %206

75:                                               ; preds = %45, %45, %45, %45
  %76 = load i64, i64* %2, align 8
  %77 = load i32, i32* %1, align 4
  %78 = call i32 @SIO_SizeOfSector(i64 %76, i32 %77, i32* %6, i32* null)
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %75
  %83 = load i8*, i8** %4, align 8
  %84 = load i32, i32* @DataBuffer, align 4
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @MEMORY_CopyFromMem(i8* %83, i32 %84, i32 %85)
  %87 = load i64, i64* %2, align 8
  %88 = load i32, i32* %1, align 4
  %89 = load i32, i32* @DataBuffer, align 4
  %90 = call i64 @SIO_WriteSector(i64 %87, i32 %88, i32 %89)
  store i64 %90, i64* %3, align 8
  br label %92

91:                                               ; preds = %75
  store i64 69, i64* %3, align 8
  br label %92

92:                                               ; preds = %91, %82
  br label %206

93:                                               ; preds = %45, %45
  %94 = load i32, i32* %1, align 4
  %95 = icmp eq i32 %94, 1
  br i1 %95, label %96, label %110

96:                                               ; preds = %93
  %97 = load i32, i32* @delay_counter, align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %96
  %100 = load i32, i32* @last_ypos, align 4
  %101 = load i32, i32* @ANTIC_ypos, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = load i32, i32* @ANTIC_ypos, align 4
  store i32 %104, i32* @last_ypos, align 4
  %105 = load i32, i32* @delay_counter, align 4
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* @delay_counter, align 4
  br label %107

107:                                              ; preds = %103, %99
  store i32 58457, i32* @CPU_regPC, align 4
  br label %269

108:                                              ; preds = %96
  %109 = load i32, i32* @SECTOR_DELAY, align 4
  store i32 %109, i32* @delay_counter, align 4
  br label %111

110:                                              ; preds = %93
  store i32 0, i32* @delay_counter, align 4
  br label %111

111:                                              ; preds = %110, %108
  %112 = load i64, i64* %2, align 8
  %113 = load i32, i32* %1, align 4
  %114 = call i32 @SIO_SizeOfSector(i64 %112, i32 %113, i32* %6, i32* null)
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* %5, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %131

118:                                              ; preds = %111
  %119 = load i64, i64* %2, align 8
  %120 = load i32, i32* %1, align 4
  %121 = load i32, i32* @DataBuffer, align 4
  %122 = call i64 @SIO_ReadSector(i64 %119, i32 %120, i32 %121)
  store i64 %122, i64* %3, align 8
  %123 = load i64, i64* %3, align 8
  %124 = icmp eq i64 %123, 67
  br i1 %124, label %125, label %130

125:                                              ; preds = %118
  %126 = load i32, i32* @DataBuffer, align 4
  %127 = load i8*, i8** %4, align 8
  %128 = load i32, i32* %6, align 4
  %129 = call i32 @MEMORY_CopyToMem(i32 %126, i8* %127, i32 %128)
  br label %130

130:                                              ; preds = %125, %118
  br label %132

131:                                              ; preds = %111
  store i64 69, i64* %3, align 8
  br label %132

132:                                              ; preds = %131, %130
  br label %206

133:                                              ; preds = %45
  %134 = load i32, i32* %5, align 4
  %135 = icmp eq i32 4, %134
  br i1 %135, label %136, label %147

136:                                              ; preds = %133
  %137 = load i64, i64* %2, align 8
  %138 = load i32, i32* @DataBuffer, align 4
  %139 = call i64 @SIO_DriveStatus(i64 %137, i32 %138)
  store i64 %139, i64* %3, align 8
  %140 = load i64, i64* %3, align 8
  %141 = icmp eq i64 %140, 67
  br i1 %141, label %142, label %146

142:                                              ; preds = %136
  %143 = load i32, i32* @DataBuffer, align 4
  %144 = load i8*, i8** %4, align 8
  %145 = call i32 @MEMORY_CopyToMem(i32 %143, i8* %144, i32 4)
  br label %146

146:                                              ; preds = %142, %136
  br label %148

147:                                              ; preds = %133
  store i64 69, i64* %3, align 8
  br label %148

148:                                              ; preds = %147, %146
  br label %206

149:                                              ; preds = %45, %45
  %150 = load i32*, i32** @SIO_format_sectorsize, align 8
  %151 = load i64, i64* %2, align 8
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  %153 = load i32, i32* %152, align 4
  store i32 %153, i32* %6, align 4
  %154 = load i32, i32* %6, align 4
  %155 = load i32, i32* %5, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %174

157:                                              ; preds = %149
  %158 = load i64, i64* %2, align 8
  %159 = load i32, i32* @DataBuffer, align 4
  %160 = load i32, i32* %6, align 4
  %161 = load i32*, i32** @SIO_format_sectorcount, align 8
  %162 = load i64, i64* %2, align 8
  %163 = getelementptr inbounds i32, i32* %161, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = call i64 @SIO_FormatDisk(i64 %158, i32 %159, i32 %160, i32 %164)
  store i64 %165, i64* %3, align 8
  %166 = load i64, i64* %3, align 8
  %167 = icmp eq i64 %166, 67
  br i1 %167, label %168, label %173

168:                                              ; preds = %157
  %169 = load i32, i32* @DataBuffer, align 4
  %170 = load i8*, i8** %4, align 8
  %171 = load i32, i32* %6, align 4
  %172 = call i32 @MEMORY_CopyToMem(i32 %169, i8* %170, i32 %171)
  br label %173

173:                                              ; preds = %168, %157
  br label %183

174:                                              ; preds = %149
  %175 = load i64, i64* %2, align 8
  %176 = load i32, i32* @DataBuffer, align 4
  %177 = load i32, i32* %6, align 4
  %178 = load i32*, i32** @SIO_format_sectorcount, align 8
  %179 = load i64, i64* %2, align 8
  %180 = getelementptr inbounds i32, i32* %178, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = call i64 @SIO_FormatDisk(i64 %175, i32 %176, i32 %177, i32 %181)
  store i64 69, i64* %3, align 8
  br label %183

183:                                              ; preds = %174, %173
  br label %206

184:                                              ; preds = %45, %45
  store i32 128, i32* %6, align 4
  %185 = load i32, i32* %6, align 4
  %186 = load i32, i32* %5, align 4
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %188, label %200

188:                                              ; preds = %184
  %189 = load i64, i64* %2, align 8
  %190 = load i32, i32* @DataBuffer, align 4
  %191 = call i64 @SIO_FormatDisk(i64 %189, i32 %190, i32 128, i32 1040)
  store i64 %191, i64* %3, align 8
  %192 = load i64, i64* %3, align 8
  %193 = icmp eq i64 %192, 67
  br i1 %193, label %194, label %199

194:                                              ; preds = %188
  %195 = load i32, i32* @DataBuffer, align 4
  %196 = load i8*, i8** %4, align 8
  %197 = load i32, i32* %6, align 4
  %198 = call i32 @MEMORY_CopyToMem(i32 %195, i8* %196, i32 %197)
  br label %199

199:                                              ; preds = %194, %188
  br label %204

200:                                              ; preds = %184
  %201 = load i64, i64* %2, align 8
  %202 = load i32, i32* @DataBuffer, align 4
  %203 = call i64 @SIO_FormatDisk(i64 %201, i32 %202, i32 128, i32 1040)
  store i64 69, i64* %3, align 8
  br label %204

204:                                              ; preds = %200, %199
  br label %206

205:                                              ; preds = %45
  store i64 78, i64* %3, align 8
  br label %206

206:                                              ; preds = %205, %204, %183, %148, %132, %92, %74, %62
  br label %245

207:                                              ; preds = %42, %31, %28
  %208 = call i32 @MEMORY_dGetByte(i32 768)
  %209 = icmp eq i32 %208, 96
  br i1 %209, label %210, label %244

210:                                              ; preds = %207
  %211 = call i32 @MEMORY_dGetByte(i32 779)
  %212 = sext i32 %211 to i64
  store i64 %212, i64* %8, align 8
  %213 = load i32, i32* %7, align 4
  switch i32 %213, label %242 [
    i32 82, label %214
    i32 87, label %228
  ]

214:                                              ; preds = %210
  %215 = load i32, i32* @SIO_LAST_READ, align 4
  store i32 %215, i32* @SIO_last_op, align 4
  store i32 97, i32* @SIO_last_drive, align 4
  store i32 16, i32* @SIO_last_op_time, align 4
  %216 = load i64, i64* %8, align 8
  %217 = icmp eq i64 %216, 0
  %218 = zext i1 %217 to i64
  %219 = select i1 %217, i32 2000, i32 160
  %220 = call i32 @CASSETTE_AddGap(i32 %219)
  %221 = load i8*, i8** %4, align 8
  %222 = load i32, i32* %5, align 4
  %223 = call i32 @CASSETTE_ReadToMemory(i8* %221, i32 %222)
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %214
  store i64 67, i64* %3, align 8
  br label %227

226:                                              ; preds = %214
  store i64 69, i64* %3, align 8
  br label %227

227:                                              ; preds = %226, %225
  br label %243

228:                                              ; preds = %210
  %229 = load i32, i32* @SIO_LAST_WRITE, align 4
  store i32 %229, i32* @SIO_last_op, align 4
  store i32 97, i32* @SIO_last_drive, align 4
  store i32 16, i32* @SIO_last_op_time, align 4
  %230 = load i64, i64* %8, align 8
  %231 = icmp eq i64 %230, 0
  %232 = zext i1 %231 to i64
  %233 = select i1 %231, i32 3000, i32 260
  %234 = call i32 @CASSETTE_AddGap(i32 %233)
  %235 = load i8*, i8** %4, align 8
  %236 = load i32, i32* %5, align 4
  %237 = call i32 @CASSETTE_WriteFromMemory(i8* %235, i32 %236)
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %228
  store i64 67, i64* %3, align 8
  br label %241

240:                                              ; preds = %228
  store i64 69, i64* %3, align 8
  br label %241

241:                                              ; preds = %240, %239
  br label %243

242:                                              ; preds = %210
  store i64 78, i64* %3, align 8
  br label %243

243:                                              ; preds = %242, %241, %227
  br label %244

244:                                              ; preds = %243, %207
  br label %245

245:                                              ; preds = %244, %206
  %246 = load i64, i64* %3, align 8
  switch i64 %246, label %254 [
    i64 0, label %247
    i64 65, label %249
    i64 67, label %249
    i64 78, label %251
    i64 69, label %253
  ]

247:                                              ; preds = %245
  store i32 138, i32* @CPU_regY, align 4
  %248 = load i32, i32* @CPU_SetN, align 4
  br label %256

249:                                              ; preds = %245, %245
  store i32 1, i32* @CPU_regY, align 4
  %250 = load i32, i32* @CPU_ClrN, align 4
  br label %256

251:                                              ; preds = %245
  store i32 144, i32* @CPU_regY, align 4
  %252 = load i32, i32* @CPU_SetN, align 4
  br label %256

253:                                              ; preds = %245
  br label %254

254:                                              ; preds = %245, %253
  store i32 146, i32* @CPU_regY, align 4
  %255 = load i32, i32* @CPU_SetN, align 4
  br label %256

256:                                              ; preds = %254, %251, %249, %247
  store i64 0, i64* @CPU_regA, align 8
  %257 = load i32, i32* @CPU_regY, align 4
  %258 = call i32 @MEMORY_dPutByte(i32 771, i32 %257)
  %259 = call i32 @MEMORY_dPutByte(i32 66, i32 0)
  %260 = load i32, i32* @CPU_SetC, align 4
  %261 = load i32, i32* @POKEY_OFFSET_AUDC1, align 4
  %262 = call i32 @POKEY_PutByte(i32 %261, i32 0)
  %263 = load i32, i32* @POKEY_OFFSET_AUDC2, align 4
  %264 = call i32 @POKEY_PutByte(i32 %263, i32 0)
  %265 = load i32, i32* @POKEY_OFFSET_AUDC3, align 4
  %266 = call i32 @POKEY_PutByte(i32 %265, i32 0)
  %267 = load i32, i32* @POKEY_OFFSET_AUDC4, align 4
  %268 = call i32 @POKEY_PutByte(i32 %267, i32 0)
  br label %269

269:                                              ; preds = %256, %107
  ret void
}

declare dso_local i8* @MEMORY_dGetWordAligned(i32) #1

declare dso_local i32 @MEMORY_dGetByte(i32) #1

declare dso_local i64 @SIO_ReadStatusBlock(i64, i32) #1

declare dso_local i32 @MEMORY_CopyToMem(i32, i8*, i32) #1

declare dso_local i32 @MEMORY_CopyFromMem(i8*, i32, i32) #1

declare dso_local i64 @SIO_WriteStatusBlock(i64, i32) #1

declare dso_local i32 @SIO_SizeOfSector(i64, i32, i32*, i32*) #1

declare dso_local i64 @SIO_WriteSector(i64, i32, i32) #1

declare dso_local i64 @SIO_ReadSector(i64, i32, i32) #1

declare dso_local i64 @SIO_DriveStatus(i64, i32) #1

declare dso_local i64 @SIO_FormatDisk(i64, i32, i32, i32) #1

declare dso_local i32 @CASSETTE_AddGap(i32) #1

declare dso_local i32 @CASSETTE_ReadToMemory(i8*, i32) #1

declare dso_local i32 @CASSETTE_WriteFromMemory(i8*, i32) #1

declare dso_local i32 @MEMORY_dPutByte(i32, i32) #1

declare dso_local i32 @POKEY_PutByte(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
