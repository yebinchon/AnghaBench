; ModuleID = '/home/carl/AnghaBench/esp-idf/components/fatfs/src/extr_ff.c_find_volume.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/fatfs/src/extr_ff.c_find_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i64, i32 }

@FR_INVALID_DRIVE = common dso_local global i64 0, align 8
@FatFs = common dso_local global %struct.TYPE_10__** null, align 8
@FR_NOT_ENABLED = common dso_local global i64 0, align 8
@FA_READ = common dso_local global i64 0, align 8
@STA_NOINIT = common dso_local global i32 0, align 4
@FF_FS_READONLY = common dso_local global i32 0, align 4
@STA_PROTECT = common dso_local global i32 0, align 4
@FR_WRITE_PROTECTED = common dso_local global i64 0, align 8
@FR_OK = common dso_local global i64 0, align 8
@FR_NOT_READY = common dso_local global i64 0, align 8
@MBR_Table = common dso_local global i32 0, align 4
@SZ_PTE = common dso_local global i32 0, align 4
@PTE_System = common dso_local global i64 0, align 8
@PTE_StLba = common dso_local global i32 0, align 4
@FR_DISK_ERR = common dso_local global i64 0, align 8
@FR_NO_FILESYSTEM = common dso_local global i64 0, align 8
@BPB_BytsPerSec = common dso_local global i32 0, align 4
@BPB_FATSz16 = common dso_local global i32 0, align 4
@BPB_FATSz32 = common dso_local global i32 0, align 4
@BPB_NumFATs = common dso_local global i64 0, align 8
@BPB_SecPerClus = common dso_local global i64 0, align 8
@BPB_RootEntCnt = common dso_local global i32 0, align 4
@SZDIRE = common dso_local global i32 0, align 4
@BPB_TotSec16 = common dso_local global i32 0, align 4
@BPB_TotSec32 = common dso_local global i32 0, align 4
@BPB_RsvdSecCnt = common dso_local global i32 0, align 4
@MAX_FAT32 = common dso_local global i32 0, align 4
@FS_FAT32 = common dso_local global i32 0, align 4
@MAX_FAT16 = common dso_local global i32 0, align 4
@FS_FAT16 = common dso_local global i32 0, align 4
@MAX_FAT12 = common dso_local global i32 0, align 4
@FS_FAT12 = common dso_local global i32 0, align 4
@BPB_FSVer32 = common dso_local global i32 0, align 4
@BPB_RootClus32 = common dso_local global i32 0, align 4
@BPB_FSInfo32 = common dso_local global i32 0, align 4
@BS_55AA = common dso_local global i32 0, align 4
@FSI_LeadSig = common dso_local global i32 0, align 4
@FSI_StrucSig = common dso_local global i32 0, align 4
@FSI_Free_Count = common dso_local global i32 0, align 4
@FSI_Nxt_Free = common dso_local global i32 0, align 4
@Fsid = common dso_local global i64 0, align 8
@BPB_BytsPerSecEx = common dso_local global i64 0, align 8
@BPB_DataOfsEx = common dso_local global i32 0, align 4
@BPB_FSVerEx = common dso_local global i32 0, align 4
@BPB_FatOfsEx = common dso_local global i32 0, align 4
@BPB_FatSzEx = common dso_local global i32 0, align 4
@BPB_NumClusEx = common dso_local global i32 0, align 4
@BPB_NumFATsEx = common dso_local global i64 0, align 8
@BPB_RootClusEx = common dso_local global i32 0, align 4
@BPB_SecPerClusEx = common dso_local global i64 0, align 8
@BPB_TotSecEx = common dso_local global i32 0, align 4
@BPB_ZeroedEx = common dso_local global i32 0, align 4
@DirBuf = common dso_local global i32 0, align 4
@ET_BITMAP = common dso_local global i64 0, align 8
@FF_MAX_SS = common dso_local global i32 0, align 4
@FF_MIN_SS = common dso_local global i32 0, align 4
@FR_TIMEOUT = common dso_local global i64 0, align 8
@FS_EXFAT = common dso_local global i32 0, align 4
@GET_SECTOR_SIZE = common dso_local global i32 0, align 4
@LfnBuf = common dso_local global i32 0, align 4
@MAX_EXFAT = common dso_local global i32 0, align 4
@RES_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32**, %struct.TYPE_10__**, i32)* @find_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_volume(i32** %0, %struct.TYPE_10__** %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32**, align 8
  %6 = alloca %struct.TYPE_10__**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [4 x i32], align 16
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_10__*, align 8
  %21 = alloca i32, align 4
  store i32** %0, i32*** %5, align 8
  store %struct.TYPE_10__** %1, %struct.TYPE_10__*** %6, align 8
  store i32 %2, i32* %7, align 4
  %22 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %22, align 8
  %23 = load i32**, i32*** %5, align 8
  %24 = call i32 @get_ldnumber(i32** %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i64, i64* @FR_INVALID_DRIVE, align 8
  store i64 %28, i64* %4, align 8
  br label %585

29:                                               ; preds = %3
  %30 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @FatFs, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %30, i64 %32
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  store %struct.TYPE_10__* %34, %struct.TYPE_10__** %20, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %36 = icmp ne %struct.TYPE_10__* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %29
  %38 = load i64, i64* @FR_NOT_ENABLED, align 8
  store i64 %38, i64* %4, align 8
  br label %585

39:                                               ; preds = %29
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %41 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  store %struct.TYPE_10__* %40, %struct.TYPE_10__** %41, align 8
  %42 = load i64, i64* @FA_READ, align 8
  %43 = xor i64 %42, -1
  %44 = trunc i64 %43 to i32
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %7, align 4
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %76

51:                                               ; preds = %39
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 19
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @disk_status(i32 %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @STA_NOINIT, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %75, label %60

60:                                               ; preds = %51
  %61 = load i32, i32* @FF_FS_READONLY, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %73, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @STA_PROTECT, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i64, i64* @FR_WRITE_PROTECTED, align 8
  store i64 %72, i64* %4, align 8
  br label %585

73:                                               ; preds = %66, %63, %60
  %74 = load i64, i64* @FR_OK, align 8
  store i64 %74, i64* %4, align 8
  br label %585

75:                                               ; preds = %51
  br label %76

76:                                               ; preds = %75, %39
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  store i32 0, i32* %78, align 8
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @LD2PD(i32 %79)
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 19
  store i32 %80, i32* %82, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 19
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @disk_initialize(i32 %85)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* @STA_NOINIT, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %76
  %92 = load i64, i64* @FR_NOT_READY, align 8
  store i64 %92, i64* %4, align 8
  br label %585

93:                                               ; preds = %76
  %94 = load i32, i32* @FF_FS_READONLY, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %106, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %96
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* @STA_PROTECT, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = load i64, i64* @FR_WRITE_PROTECTED, align 8
  store i64 %105, i64* %4, align 8
  br label %585

106:                                              ; preds = %99, %96, %93
  store i32 0, i32* %12, align 4
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %108 = load i32, i32* %12, align 4
  %109 = call i32 @check_fs(%struct.TYPE_10__* %107, i32 %108)
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %8, align 4
  %111 = icmp eq i32 %110, 2
  br i1 %111, label %119, label %112

112:                                              ; preds = %106
  %113 = load i32, i32* %8, align 4
  %114 = icmp slt i32 %113, 2
  br i1 %114, label %115, label %191

115:                                              ; preds = %112
  %116 = load i32, i32* %10, align 4
  %117 = call i32 @LD2PT(i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %191

119:                                              ; preds = %115, %106
  store i32 0, i32* %21, align 4
  br label %120

120:                                              ; preds = %151, %119
  %121 = load i32, i32* %21, align 4
  %122 = icmp slt i32 %121, 4
  br i1 %122, label %123, label %154

123:                                              ; preds = %120
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* @MBR_Table, align 4
  %128 = load i32, i32* %21, align 4
  %129 = load i32, i32* @SZ_PTE, align 4
  %130 = mul nsw i32 %128, %129
  %131 = add nsw i32 %127, %130
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %126, i64 %132
  store i32* %133, i32** %9, align 8
  %134 = load i32*, i32** %9, align 8
  %135 = load i64, i64* @PTE_System, align 8
  %136 = getelementptr inbounds i32, i32* %134, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %123
  %140 = load i32*, i32** %9, align 8
  %141 = load i32, i32* @PTE_StLba, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = call i32 @ld_dword(i32* %143)
  br label %146

145:                                              ; preds = %123
  br label %146

146:                                              ; preds = %145, %139
  %147 = phi i32 [ %144, %139 ], [ 0, %145 ]
  %148 = load i32, i32* %21, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 %149
  store i32 %147, i32* %150, align 4
  br label %151

151:                                              ; preds = %146
  %152 = load i32, i32* %21, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %21, align 4
  br label %120

154:                                              ; preds = %120
  %155 = load i32, i32* %10, align 4
  %156 = call i32 @LD2PT(i32 %155)
  store i32 %156, i32* %21, align 4
  %157 = load i32, i32* %21, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %154
  %160 = load i32, i32* %21, align 4
  %161 = add nsw i32 %160, -1
  store i32 %161, i32* %21, align 4
  br label %162

162:                                              ; preds = %159, %154
  br label %163

163:                                              ; preds = %188, %162
  %164 = load i32, i32* %21, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 %165
  %167 = load i32, i32* %166, align 4
  store i32 %167, i32* %12, align 4
  %168 = load i32, i32* %12, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %163
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %172 = load i32, i32* %12, align 4
  %173 = call i32 @check_fs(%struct.TYPE_10__* %171, i32 %172)
  br label %175

174:                                              ; preds = %163
  br label %175

175:                                              ; preds = %174, %170
  %176 = phi i32 [ %173, %170 ], [ 3, %174 ]
  store i32 %176, i32* %8, align 4
  br label %177

177:                                              ; preds = %175
  %178 = load i32, i32* %10, align 4
  %179 = call i32 @LD2PT(i32 %178)
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %188

181:                                              ; preds = %177
  %182 = load i32, i32* %8, align 4
  %183 = icmp sge i32 %182, 2
  br i1 %183, label %184, label %188

184:                                              ; preds = %181
  %185 = load i32, i32* %21, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %21, align 4
  %187 = icmp slt i32 %186, 4
  br label %188

188:                                              ; preds = %184, %181, %177
  %189 = phi i1 [ false, %181 ], [ false, %177 ], [ %187, %184 ]
  br i1 %189, label %163, label %190

190:                                              ; preds = %188
  br label %191

191:                                              ; preds = %190, %115, %112
  %192 = load i32, i32* %8, align 4
  %193 = icmp eq i32 %192, 4
  br i1 %193, label %194, label %196

194:                                              ; preds = %191
  %195 = load i64, i64* @FR_DISK_ERR, align 8
  store i64 %195, i64* %4, align 8
  br label %585

196:                                              ; preds = %191
  %197 = load i32, i32* %8, align 4
  %198 = icmp sge i32 %197, 2
  br i1 %198, label %199, label %201

199:                                              ; preds = %196
  %200 = load i64, i64* @FR_NO_FILESYSTEM, align 8
  store i64 %200, i64* %4, align 8
  br label %585

201:                                              ; preds = %196
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 1
  %204 = load i32*, i32** %203, align 8
  %205 = load i32, i32* @BPB_BytsPerSec, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = bitcast i32* %207 to i64*
  %209 = call i32 @ld_word(i64* %208)
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %211 = call i32 @SS(%struct.TYPE_10__* %210)
  %212 = icmp ne i32 %209, %211
  br i1 %212, label %213, label %215

213:                                              ; preds = %201
  %214 = load i64, i64* @FR_NO_FILESYSTEM, align 8
  store i64 %214, i64* %4, align 8
  br label %585

215:                                              ; preds = %201
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 1
  %218 = load i32*, i32** %217, align 8
  %219 = load i32, i32* @BPB_FATSz16, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %218, i64 %220
  %222 = bitcast i32* %221 to i64*
  %223 = call i32 @ld_word(i64* %222)
  store i32 %223, i32* %13, align 4
  %224 = load i32, i32* %13, align 4
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %234

226:                                              ; preds = %215
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 1
  %229 = load i32*, i32** %228, align 8
  %230 = load i32, i32* @BPB_FATSz32, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %229, i64 %231
  %233 = call i32 @ld_dword(i32* %232)
  store i32 %233, i32* %13, align 4
  br label %234

234:                                              ; preds = %226, %215
  %235 = load i32, i32* %13, align 4
  %236 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 2
  store i32 %235, i32* %237, align 8
  %238 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %238, i32 0, i32 1
  %240 = load i32*, i32** %239, align 8
  %241 = load i64, i64* @BPB_NumFATs, align 8
  %242 = getelementptr inbounds i32, i32* %240, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i32 0, i32 3
  store i32 %243, i32* %245, align 4
  %246 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 4
  %249 = icmp ne i32 %248, 1
  br i1 %249, label %250, label %257

250:                                              ; preds = %234
  %251 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %252 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 4
  %254 = icmp ne i32 %253, 2
  br i1 %254, label %255, label %257

255:                                              ; preds = %250
  %256 = load i64, i64* @FR_NO_FILESYSTEM, align 8
  store i64 %256, i64* %4, align 8
  br label %585

257:                                              ; preds = %250, %234
  %258 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %259 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %258, i32 0, i32 3
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* %13, align 4
  %262 = mul nsw i32 %261, %260
  store i32 %262, i32* %13, align 4
  %263 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %264 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %263, i32 0, i32 1
  %265 = load i32*, i32** %264, align 8
  %266 = load i64, i64* @BPB_SecPerClus, align 8
  %267 = getelementptr inbounds i32, i32* %265, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %270 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %269, i32 0, i32 4
  store i32 %268, i32* %270, align 8
  %271 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %272 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %271, i32 0, i32 4
  %273 = load i32, i32* %272, align 8
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %285, label %275

275:                                              ; preds = %257
  %276 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %277 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %276, i32 0, i32 4
  %278 = load i32, i32* %277, align 8
  %279 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %280 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %279, i32 0, i32 4
  %281 = load i32, i32* %280, align 8
  %282 = sub nsw i32 %281, 1
  %283 = and i32 %278, %282
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %287

285:                                              ; preds = %275, %257
  %286 = load i64, i64* @FR_NO_FILESYSTEM, align 8
  store i64 %286, i64* %4, align 8
  br label %585

287:                                              ; preds = %275
  %288 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %289 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %288, i32 0, i32 1
  %290 = load i32*, i32** %289, align 8
  %291 = load i32, i32* @BPB_RootEntCnt, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32, i32* %290, i64 %292
  %294 = bitcast i32* %293 to i64*
  %295 = call i32 @ld_word(i64* %294)
  %296 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %297 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %296, i32 0, i32 13
  store i32 %295, i32* %297, align 4
  %298 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %299 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %298, i32 0, i32 13
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %302 = call i32 @SS(%struct.TYPE_10__* %301)
  %303 = load i32, i32* @SZDIRE, align 4
  %304 = sdiv i32 %302, %303
  %305 = srem i32 %300, %304
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %309

307:                                              ; preds = %287
  %308 = load i64, i64* @FR_NO_FILESYSTEM, align 8
  store i64 %308, i64* %4, align 8
  br label %585

309:                                              ; preds = %287
  %310 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %311 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %310, i32 0, i32 1
  %312 = load i32*, i32** %311, align 8
  %313 = load i32, i32* @BPB_TotSec16, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i32, i32* %312, i64 %314
  %316 = bitcast i32* %315 to i64*
  %317 = call i32 @ld_word(i64* %316)
  store i32 %317, i32* %14, align 4
  %318 = load i32, i32* %14, align 4
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %320, label %328

320:                                              ; preds = %309
  %321 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %322 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %321, i32 0, i32 1
  %323 = load i32*, i32** %322, align 8
  %324 = load i32, i32* @BPB_TotSec32, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32, i32* %323, i64 %325
  %327 = call i32 @ld_dword(i32* %326)
  store i32 %327, i32* %14, align 4
  br label %328

328:                                              ; preds = %320, %309
  %329 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %330 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %329, i32 0, i32 1
  %331 = load i32*, i32** %330, align 8
  %332 = load i32, i32* @BPB_RsvdSecCnt, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32, i32* %331, i64 %333
  %335 = bitcast i32* %334 to i64*
  %336 = call i32 @ld_word(i64* %335)
  store i32 %336, i32* %19, align 4
  %337 = load i32, i32* %19, align 4
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %339, label %341

339:                                              ; preds = %328
  %340 = load i64, i64* @FR_NO_FILESYSTEM, align 8
  store i64 %340, i64* %4, align 8
  br label %585

341:                                              ; preds = %328
  %342 = load i32, i32* %19, align 4
  %343 = load i32, i32* %13, align 4
  %344 = add nsw i32 %342, %343
  %345 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %346 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %345, i32 0, i32 13
  %347 = load i32, i32* %346, align 4
  %348 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %349 = call i32 @SS(%struct.TYPE_10__* %348)
  %350 = load i32, i32* @SZDIRE, align 4
  %351 = sdiv i32 %349, %350
  %352 = sdiv i32 %347, %351
  %353 = add nsw i32 %344, %352
  store i32 %353, i32* %15, align 4
  %354 = load i32, i32* %14, align 4
  %355 = load i32, i32* %15, align 4
  %356 = icmp slt i32 %354, %355
  br i1 %356, label %357, label %359

357:                                              ; preds = %341
  %358 = load i64, i64* @FR_NO_FILESYSTEM, align 8
  store i64 %358, i64* %4, align 8
  br label %585

359:                                              ; preds = %341
  %360 = load i32, i32* %14, align 4
  %361 = load i32, i32* %15, align 4
  %362 = sub nsw i32 %360, %361
  %363 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %364 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %363, i32 0, i32 4
  %365 = load i32, i32* %364, align 8
  %366 = sdiv i32 %362, %365
  store i32 %366, i32* %16, align 4
  %367 = load i32, i32* %16, align 4
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %369, label %371

369:                                              ; preds = %359
  %370 = load i64, i64* @FR_NO_FILESYSTEM, align 8
  store i64 %370, i64* %4, align 8
  br label %585

371:                                              ; preds = %359
  store i32 0, i32* %8, align 4
  %372 = load i32, i32* %16, align 4
  %373 = load i32, i32* @MAX_FAT32, align 4
  %374 = icmp sle i32 %372, %373
  br i1 %374, label %375, label %377

375:                                              ; preds = %371
  %376 = load i32, i32* @FS_FAT32, align 4
  store i32 %376, i32* %8, align 4
  br label %377

377:                                              ; preds = %375, %371
  %378 = load i32, i32* %16, align 4
  %379 = load i32, i32* @MAX_FAT16, align 4
  %380 = icmp sle i32 %378, %379
  br i1 %380, label %381, label %383

381:                                              ; preds = %377
  %382 = load i32, i32* @FS_FAT16, align 4
  store i32 %382, i32* %8, align 4
  br label %383

383:                                              ; preds = %381, %377
  %384 = load i32, i32* %16, align 4
  %385 = load i32, i32* @MAX_FAT12, align 4
  %386 = icmp sle i32 %384, %385
  br i1 %386, label %387, label %389

387:                                              ; preds = %383
  %388 = load i32, i32* @FS_FAT12, align 4
  store i32 %388, i32* %8, align 4
  br label %389

389:                                              ; preds = %387, %383
  %390 = load i32, i32* %8, align 4
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %392, label %394

392:                                              ; preds = %389
  %393 = load i64, i64* @FR_NO_FILESYSTEM, align 8
  store i64 %393, i64* %4, align 8
  br label %585

394:                                              ; preds = %389
  %395 = load i32, i32* %16, align 4
  %396 = add nsw i32 %395, 2
  %397 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %398 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %397, i32 0, i32 5
  store i32 %396, i32* %398, align 4
  %399 = load i32, i32* %12, align 4
  %400 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %401 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %400, i32 0, i32 6
  store i32 %399, i32* %401, align 8
  %402 = load i32, i32* %12, align 4
  %403 = load i32, i32* %19, align 4
  %404 = add nsw i32 %402, %403
  %405 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %406 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %405, i32 0, i32 8
  store i32 %404, i32* %406, align 8
  %407 = load i32, i32* %12, align 4
  %408 = load i32, i32* %15, align 4
  %409 = add nsw i32 %407, %408
  %410 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %411 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %410, i32 0, i32 7
  store i32 %409, i32* %411, align 4
  %412 = load i32, i32* %8, align 4
  %413 = load i32, i32* @FS_FAT32, align 4
  %414 = icmp eq i32 %412, %413
  br i1 %414, label %415, label %448

415:                                              ; preds = %394
  %416 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %417 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %416, i32 0, i32 1
  %418 = load i32*, i32** %417, align 8
  %419 = load i32, i32* @BPB_FSVer32, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds i32, i32* %418, i64 %420
  %422 = bitcast i32* %421 to i64*
  %423 = call i32 @ld_word(i64* %422)
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %425, label %427

425:                                              ; preds = %415
  %426 = load i64, i64* @FR_NO_FILESYSTEM, align 8
  store i64 %426, i64* %4, align 8
  br label %585

427:                                              ; preds = %415
  %428 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %429 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %428, i32 0, i32 13
  %430 = load i32, i32* %429, align 4
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %432, label %434

432:                                              ; preds = %427
  %433 = load i64, i64* @FR_NO_FILESYSTEM, align 8
  store i64 %433, i64* %4, align 8
  br label %585

434:                                              ; preds = %427
  %435 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %436 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %435, i32 0, i32 1
  %437 = load i32*, i32** %436, align 8
  %438 = load i32, i32* @BPB_RootClus32, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds i32, i32* %437, i64 %439
  %441 = call i32 @ld_dword(i32* %440)
  %442 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %443 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %442, i32 0, i32 9
  store i32 %441, i32* %443, align 4
  %444 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %445 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %444, i32 0, i32 5
  %446 = load i32, i32* %445, align 4
  %447 = mul nsw i32 %446, 4
  store i32 %447, i32* %17, align 4
  br label %484

448:                                              ; preds = %394
  %449 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %450 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %449, i32 0, i32 13
  %451 = load i32, i32* %450, align 4
  %452 = icmp eq i32 %451, 0
  br i1 %452, label %453, label %455

453:                                              ; preds = %448
  %454 = load i64, i64* @FR_NO_FILESYSTEM, align 8
  store i64 %454, i64* %4, align 8
  br label %585

455:                                              ; preds = %448
  %456 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %457 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %456, i32 0, i32 8
  %458 = load i32, i32* %457, align 8
  %459 = load i32, i32* %13, align 4
  %460 = add nsw i32 %458, %459
  %461 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %462 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %461, i32 0, i32 9
  store i32 %460, i32* %462, align 4
  %463 = load i32, i32* %8, align 4
  %464 = load i32, i32* @FS_FAT16, align 4
  %465 = icmp eq i32 %463, %464
  br i1 %465, label %466, label %471

466:                                              ; preds = %455
  %467 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %468 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %467, i32 0, i32 5
  %469 = load i32, i32* %468, align 4
  %470 = mul nsw i32 %469, 2
  br label %482

471:                                              ; preds = %455
  %472 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %473 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %472, i32 0, i32 5
  %474 = load i32, i32* %473, align 4
  %475 = mul nsw i32 %474, 3
  %476 = sdiv i32 %475, 2
  %477 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %478 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %477, i32 0, i32 5
  %479 = load i32, i32* %478, align 4
  %480 = and i32 %479, 1
  %481 = add nsw i32 %476, %480
  br label %482

482:                                              ; preds = %471, %466
  %483 = phi i32 [ %470, %466 ], [ %481, %471 ]
  store i32 %483, i32* %17, align 4
  br label %484

484:                                              ; preds = %482, %434
  %485 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %486 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %485, i32 0, i32 2
  %487 = load i32, i32* %486, align 8
  %488 = load i32, i32* %17, align 4
  %489 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %490 = call i32 @SS(%struct.TYPE_10__* %489)
  %491 = sub nsw i32 %490, 1
  %492 = add nsw i32 %488, %491
  %493 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %494 = call i32 @SS(%struct.TYPE_10__* %493)
  %495 = sdiv i32 %492, %494
  %496 = icmp slt i32 %487, %495
  br i1 %496, label %497, label %499

497:                                              ; preds = %484
  %498 = load i64, i64* @FR_NO_FILESYSTEM, align 8
  store i64 %498, i64* %4, align 8
  br label %585

499:                                              ; preds = %484
  %500 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %501 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %500, i32 0, i32 12
  store i32 -1, i32* %501, align 8
  %502 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %503 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %502, i32 0, i32 11
  store i32 -1, i32* %503, align 4
  %504 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %505 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %504, i32 0, i32 14
  store i32 128, i32* %505, align 8
  %506 = load i32, i32* %8, align 4
  %507 = load i32, i32* @FS_FAT32, align 4
  %508 = icmp eq i32 %506, %507
  br i1 %508, label %509, label %576

509:                                              ; preds = %499
  %510 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %511 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %510, i32 0, i32 1
  %512 = load i32*, i32** %511, align 8
  %513 = load i32, i32* @BPB_FSInfo32, align 4
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds i32, i32* %512, i64 %514
  %516 = bitcast i32* %515 to i64*
  %517 = call i32 @ld_word(i64* %516)
  %518 = icmp eq i32 %517, 1
  br i1 %518, label %519, label %576

519:                                              ; preds = %509
  %520 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %521 = load i32, i32* %12, align 4
  %522 = add nsw i32 %521, 1
  %523 = call i64 @move_window(%struct.TYPE_10__* %520, i32 %522)
  %524 = load i64, i64* @FR_OK, align 8
  %525 = icmp eq i64 %523, %524
  br i1 %525, label %526, label %576

526:                                              ; preds = %519
  %527 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %528 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %527, i32 0, i32 14
  store i32 0, i32* %528, align 8
  %529 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %530 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %529, i32 0, i32 1
  %531 = load i32*, i32** %530, align 8
  %532 = load i32, i32* @BS_55AA, align 4
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds i32, i32* %531, i64 %533
  %535 = bitcast i32* %534 to i64*
  %536 = call i32 @ld_word(i64* %535)
  %537 = icmp eq i32 %536, 43605
  br i1 %537, label %538, label %575

538:                                              ; preds = %526
  %539 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %540 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %539, i32 0, i32 1
  %541 = load i32*, i32** %540, align 8
  %542 = load i32, i32* @FSI_LeadSig, align 4
  %543 = sext i32 %542 to i64
  %544 = getelementptr inbounds i32, i32* %541, i64 %543
  %545 = call i32 @ld_dword(i32* %544)
  %546 = icmp eq i32 %545, 1096897106
  br i1 %546, label %547, label %575

547:                                              ; preds = %538
  %548 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %549 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %548, i32 0, i32 1
  %550 = load i32*, i32** %549, align 8
  %551 = load i32, i32* @FSI_StrucSig, align 4
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds i32, i32* %550, i64 %552
  %554 = call i32 @ld_dword(i32* %553)
  %555 = icmp eq i32 %554, 1631679090
  br i1 %555, label %556, label %575

556:                                              ; preds = %547
  %557 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %558 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %557, i32 0, i32 1
  %559 = load i32*, i32** %558, align 8
  %560 = load i32, i32* @FSI_Free_Count, align 4
  %561 = sext i32 %560 to i64
  %562 = getelementptr inbounds i32, i32* %559, i64 %561
  %563 = call i32 @ld_dword(i32* %562)
  %564 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %565 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %564, i32 0, i32 12
  store i32 %563, i32* %565, align 8
  %566 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %567 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %566, i32 0, i32 1
  %568 = load i32*, i32** %567, align 8
  %569 = load i32, i32* @FSI_Nxt_Free, align 4
  %570 = sext i32 %569 to i64
  %571 = getelementptr inbounds i32, i32* %568, i64 %570
  %572 = call i32 @ld_dword(i32* %571)
  %573 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %574 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %573, i32 0, i32 11
  store i32 %572, i32* %574, align 4
  br label %575

575:                                              ; preds = %556, %547, %538, %526
  br label %576

576:                                              ; preds = %575, %519, %509, %499
  %577 = load i32, i32* %8, align 4
  %578 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %579 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %578, i32 0, i32 0
  store i32 %577, i32* %579, align 8
  %580 = load i64, i64* @Fsid, align 8
  %581 = add nsw i64 %580, 1
  store i64 %581, i64* @Fsid, align 8
  %582 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %583 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %582, i32 0, i32 18
  store i64 %581, i64* %583, align 8
  %584 = load i64, i64* @FR_OK, align 8
  store i64 %584, i64* %4, align 8
  br label %585

585:                                              ; preds = %576, %497, %453, %432, %425, %392, %369, %357, %339, %307, %285, %255, %213, %199, %194, %104, %91, %73, %71, %37, %27
  %586 = load i64, i64* %4, align 8
  ret i64 %586
}

declare dso_local i32 @get_ldnumber(i32**) #1

declare dso_local i32 @disk_status(i32) #1

declare dso_local i32 @LD2PD(i32) #1

declare dso_local i32 @disk_initialize(i32) #1

declare dso_local i32 @check_fs(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @LD2PT(i32) #1

declare dso_local i32 @ld_dword(i32*) #1

declare dso_local i32 @ld_word(i64*) #1

declare dso_local i32 @SS(%struct.TYPE_10__*) #1

declare dso_local i64 @move_window(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
