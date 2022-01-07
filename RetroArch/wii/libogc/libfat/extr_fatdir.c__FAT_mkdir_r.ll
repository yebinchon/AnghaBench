; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libfat/extr_fatdir.c__FAT_mkdir_r.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libfat/extr_fatdir.c__FAT_mkdir_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._reent = type { i8* }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i64 }
%struct.TYPE_14__ = type { i8*, i32 }

@DIR_ENTRY_DATA_SIZE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i8* null, align 8
@EEXIST = common dso_local global i8* null, align 8
@EROFS = common dso_local global i8* null, align 8
@DIR_SEPARATOR = common dso_local global i32 0, align 4
@ENOTDIR = common dso_local global i8* null, align 8
@NAME_MAX = common dso_local global i64 0, align 8
@DIR_ENTRY_cTime_ms = common dso_local global i64 0, align 8
@DIR_ENTRY_cTime = common dso_local global i32 0, align 4
@DIR_ENTRY_cDate = common dso_local global i32 0, align 4
@DIR_ENTRY_mTime = common dso_local global i32 0, align 4
@DIR_ENTRY_mDate = common dso_local global i32 0, align 4
@DIR_ENTRY_aDate = common dso_local global i32 0, align 4
@ATTRIB_DIR = common dso_local global i8* null, align 8
@DIR_ENTRY_attributes = common dso_local global i64 0, align 8
@CLUSTER_FREE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i8* null, align 8
@DIR_ENTRY_cluster = common dso_local global i32 0, align 4
@DIR_ENTRY_clusterHigh = common dso_local global i32 0, align 4
@DIR_ENTRY_name = common dso_local global i64 0, align 8
@FAT16_ROOT_DIR_CLUSTER = common dso_local global i32 0, align 4
@EIO = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_FAT_mkdir_r(%struct._reent* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._reent*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_14__, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct._reent* %0, %struct._reent** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %8, align 8
  %17 = load i32, i32* @DIR_ENTRY_DATA_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %14, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %15, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call %struct.TYPE_13__* @_FAT_partition_getPartitionFromPath(i8* %21)
  store %struct.TYPE_13__* %22, %struct.TYPE_13__** %8, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %24 = icmp eq %struct.TYPE_13__* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load i8*, i8** @ENODEV, align 8
  %27 = load %struct._reent*, %struct._reent** %5, align 8
  %28 = getelementptr inbounds %struct._reent, %struct._reent* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %258

29:                                               ; preds = %3
  %30 = load i8*, i8** %6, align 8
  %31 = call i8* @strchr(i8* %30, i8 signext 58)
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i8*, i8** %6, align 8
  %35 = call i8* @strchr(i8* %34, i8 signext 58)
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  store i8* %36, i8** %6, align 8
  br label %37

37:                                               ; preds = %33, %29
  %38 = load i8*, i8** %6, align 8
  %39 = call i8* @strchr(i8* %38, i8 signext 58)
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i8*, i8** @EINVAL, align 8
  %43 = load %struct._reent*, %struct._reent** %5, align 8
  %44 = getelementptr inbounds %struct._reent, %struct._reent* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %258

45:                                               ; preds = %37
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 2
  %48 = call i32 @_FAT_lock(i32* %47)
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @_FAT_directory_entryFromPath(%struct.TYPE_13__* %49, %struct.TYPE_14__* %10, i8* %50, i8* null)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %45
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 2
  %57 = call i32 @_FAT_unlock(i32* %56)
  %58 = load i8*, i8** @EEXIST, align 8
  %59 = load %struct._reent*, %struct._reent** %5, align 8
  %60 = getelementptr inbounds %struct._reent, %struct._reent* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %258

61:                                               ; preds = %45
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 2
  %69 = call i32 @_FAT_unlock(i32* %68)
  %70 = load i8*, i8** @EROFS, align 8
  %71 = load %struct._reent*, %struct._reent** %5, align 8
  %72 = getelementptr inbounds %struct._reent, %struct._reent* %71, i32 0, i32 0
  store i8* %70, i8** %72, align 8
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %258

73:                                               ; preds = %61
  %74 = load i8*, i8** %6, align 8
  %75 = load i32, i32* @DIR_SEPARATOR, align 4
  %76 = call i8* @strrchr(i8* %74, i32 %75)
  store i8* %76, i8** %11, align 8
  %77 = load i8*, i8** %11, align 8
  %78 = icmp eq i8* %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %73
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %12, align 4
  %83 = load i8*, i8** %6, align 8
  store i8* %83, i8** %11, align 8
  br label %107

84:                                               ; preds = %73
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = load i8*, i8** %11, align 8
  %88 = call i32 @_FAT_directory_entryFromPath(%struct.TYPE_13__* %85, %struct.TYPE_14__* %10, i8* %86, i8* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = call i32 @_FAT_directory_isDirectory(%struct.TYPE_14__* %10)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %100, label %93

93:                                               ; preds = %90, %84
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 2
  %96 = call i32 @_FAT_unlock(i32* %95)
  %97 = load i8*, i8** @ENOTDIR, align 8
  %98 = load %struct._reent*, %struct._reent** %5, align 8
  %99 = getelementptr inbounds %struct._reent, %struct._reent* %98, i32 0, i32 0
  store i8* %97, i8** %99, align 8
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %258

100:                                              ; preds = %90
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @_FAT_directory_entryGetCluster(%struct.TYPE_13__* %101, i8* %103)
  store i32 %104, i32* %12, align 4
  %105 = load i8*, i8** %11, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 1
  store i8* %106, i8** %11, align 8
  br label %107

107:                                              ; preds = %100, %79
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load i8*, i8** %11, align 8
  %111 = load i64, i64* @NAME_MAX, align 8
  %112 = sub nsw i64 %111, 1
  %113 = call i32 @strncpy(i32 %109, i8* %110, i64 %112)
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = load i32, i32* @DIR_ENTRY_DATA_SIZE, align 4
  %117 = call i32 @memset(i8* %115, i8 signext 0, i32 %116)
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = load i64, i64* @DIR_ENTRY_cTime_ms, align 8
  %121 = getelementptr inbounds i8, i8* %119, i64 %120
  store i8 0, i8* %121, align 1
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = load i32, i32* @DIR_ENTRY_cTime, align 4
  %125 = call i32 (...) @_FAT_filetime_getTimeFromRTC()
  %126 = call i32 @u16_to_u8array(i8* %123, i32 %124, i32 %125)
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = load i32, i32* @DIR_ENTRY_cDate, align 4
  %130 = call i32 (...) @_FAT_filetime_getDateFromRTC()
  %131 = call i32 @u16_to_u8array(i8* %128, i32 %129, i32 %130)
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = load i32, i32* @DIR_ENTRY_mTime, align 4
  %135 = call i32 (...) @_FAT_filetime_getTimeFromRTC()
  %136 = call i32 @u16_to_u8array(i8* %133, i32 %134, i32 %135)
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = load i32, i32* @DIR_ENTRY_mDate, align 4
  %140 = call i32 (...) @_FAT_filetime_getDateFromRTC()
  %141 = call i32 @u16_to_u8array(i8* %138, i32 %139, i32 %140)
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  %144 = load i32, i32* @DIR_ENTRY_aDate, align 4
  %145 = call i32 (...) @_FAT_filetime_getDateFromRTC()
  %146 = call i32 @u16_to_u8array(i8* %143, i32 %144, i32 %145)
  %147 = load i8*, i8** @ATTRIB_DIR, align 8
  %148 = ptrtoint i8* %147 to i8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8
  %151 = load i64, i64* @DIR_ENTRY_attributes, align 8
  %152 = getelementptr inbounds i8, i8* %150, i64 %151
  store i8 %148, i8* %152, align 1
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %154 = load i32, i32* @CLUSTER_FREE, align 4
  %155 = call i32 @_FAT_fat_linkFreeClusterCleared(%struct.TYPE_13__* %153, i32 %154)
  store i32 %155, i32* %13, align 4
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %157 = load i32, i32* %13, align 4
  %158 = call i32 @_FAT_fat_isValidCluster(%struct.TYPE_13__* %156, i32 %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %167, label %160

160:                                              ; preds = %107
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 2
  %163 = call i32 @_FAT_unlock(i32* %162)
  %164 = load i8*, i8** @ENOSPC, align 8
  %165 = load %struct._reent*, %struct._reent** %5, align 8
  %166 = getelementptr inbounds %struct._reent, %struct._reent* %165, i32 0, i32 0
  store i8* %164, i8** %166, align 8
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %258

167:                                              ; preds = %107
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %169 = load i8*, i8** %168, align 8
  %170 = load i32, i32* @DIR_ENTRY_cluster, align 4
  %171 = load i32, i32* %13, align 4
  %172 = call i32 @u16_to_u8array(i8* %169, i32 %170, i32 %171)
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %174 = load i8*, i8** %173, align 8
  %175 = load i32, i32* @DIR_ENTRY_clusterHigh, align 4
  %176 = load i32, i32* %13, align 4
  %177 = ashr i32 %176, 16
  %178 = call i32 @u16_to_u8array(i8* %174, i32 %175, i32 %177)
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %180 = load i32, i32* %12, align 4
  %181 = call i32 @_FAT_directory_addEntry(%struct.TYPE_13__* %179, %struct.TYPE_14__* %10, i32 %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %190, label %183

183:                                              ; preds = %167
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 2
  %186 = call i32 @_FAT_unlock(i32* %185)
  %187 = load i8*, i8** @ENOSPC, align 8
  %188 = load %struct._reent*, %struct._reent** %5, align 8
  %189 = getelementptr inbounds %struct._reent, %struct._reent* %188, i32 0, i32 0
  store i8* %187, i8** %189, align 8
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %258

190:                                              ; preds = %167
  %191 = load i32, i32* @DIR_ENTRY_DATA_SIZE, align 4
  %192 = call i32 @memset(i8* %20, i8 signext 0, i32 %191)
  %193 = call i32 @memset(i8* %20, i8 signext 32, i32 11)
  %194 = load i64, i64* @DIR_ENTRY_name, align 8
  %195 = getelementptr inbounds i8, i8* %20, i64 %194
  store i8 46, i8* %195, align 1
  %196 = load i8*, i8** @ATTRIB_DIR, align 8
  %197 = ptrtoint i8* %196 to i8
  %198 = load i64, i64* @DIR_ENTRY_attributes, align 8
  %199 = getelementptr inbounds i8, i8* %20, i64 %198
  store i8 %197, i8* %199, align 1
  %200 = load i32, i32* @DIR_ENTRY_cluster, align 4
  %201 = load i32, i32* %13, align 4
  %202 = call i32 @u16_to_u8array(i8* %20, i32 %200, i32 %201)
  %203 = load i32, i32* @DIR_ENTRY_clusterHigh, align 4
  %204 = load i32, i32* %13, align 4
  %205 = ashr i32 %204, 16
  %206 = call i32 @u16_to_u8array(i8* %20, i32 %203, i32 %205)
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %211 = load i32, i32* %13, align 4
  %212 = call i32 @_FAT_fat_clusterToSector(%struct.TYPE_13__* %210, i32 %211)
  %213 = load i32, i32* @DIR_ENTRY_DATA_SIZE, align 4
  %214 = call i32 @_FAT_cache_eraseWritePartialSector(i32 %209, i8* %20, i32 %212, i32 0, i32 %213)
  %215 = load i32, i32* %12, align 4
  %216 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = icmp eq i32 %215, %218
  br i1 %219, label %220, label %222

220:                                              ; preds = %190
  %221 = load i32, i32* @FAT16_ROOT_DIR_CLUSTER, align 4
  store i32 %221, i32* %12, align 4
  br label %222

222:                                              ; preds = %220, %190
  %223 = load i64, i64* @DIR_ENTRY_name, align 8
  %224 = add i64 %223, 1
  %225 = getelementptr inbounds i8, i8* %20, i64 %224
  store i8 46, i8* %225, align 1
  %226 = load i32, i32* @DIR_ENTRY_cluster, align 4
  %227 = load i32, i32* %12, align 4
  %228 = call i32 @u16_to_u8array(i8* %20, i32 %226, i32 %227)
  %229 = load i32, i32* @DIR_ENTRY_clusterHigh, align 4
  %230 = load i32, i32* %12, align 4
  %231 = ashr i32 %230, 16
  %232 = call i32 @u16_to_u8array(i8* %20, i32 %229, i32 %231)
  %233 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %234 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %237 = load i32, i32* %13, align 4
  %238 = call i32 @_FAT_fat_clusterToSector(%struct.TYPE_13__* %236, i32 %237)
  %239 = load i32, i32* @DIR_ENTRY_DATA_SIZE, align 4
  %240 = load i32, i32* @DIR_ENTRY_DATA_SIZE, align 4
  %241 = call i32 @_FAT_cache_writePartialSector(i32 %235, i8* %20, i32 %238, i32 %239, i32 %240)
  %242 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @_FAT_cache_flush(i32 %244)
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %254, label %247

247:                                              ; preds = %222
  %248 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %249 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %248, i32 0, i32 2
  %250 = call i32 @_FAT_unlock(i32* %249)
  %251 = load i8*, i8** @EIO, align 8
  %252 = load %struct._reent*, %struct._reent** %5, align 8
  %253 = getelementptr inbounds %struct._reent, %struct._reent* %252, i32 0, i32 0
  store i8* %251, i8** %253, align 8
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %258

254:                                              ; preds = %222
  %255 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %256 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %255, i32 0, i32 2
  %257 = call i32 @_FAT_unlock(i32* %256)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %258

258:                                              ; preds = %254, %247, %183, %160, %93, %66, %54, %41, %25
  %259 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %259)
  %260 = load i32, i32* %4, align 4
  ret i32 %260
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_13__* @_FAT_partition_getPartitionFromPath(i8*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @_FAT_lock(i32*) #2

declare dso_local i32 @_FAT_directory_entryFromPath(%struct.TYPE_13__*, %struct.TYPE_14__*, i8*, i8*) #2

declare dso_local i32 @_FAT_unlock(i32*) #2

declare dso_local i8* @strrchr(i8*, i32) #2

declare dso_local i32 @_FAT_directory_isDirectory(%struct.TYPE_14__*) #2

declare dso_local i32 @_FAT_directory_entryGetCluster(%struct.TYPE_13__*, i8*) #2

declare dso_local i32 @strncpy(i32, i8*, i64) #2

declare dso_local i32 @memset(i8*, i8 signext, i32) #2

declare dso_local i32 @u16_to_u8array(i8*, i32, i32) #2

declare dso_local i32 @_FAT_filetime_getTimeFromRTC(...) #2

declare dso_local i32 @_FAT_filetime_getDateFromRTC(...) #2

declare dso_local i32 @_FAT_fat_linkFreeClusterCleared(%struct.TYPE_13__*, i32) #2

declare dso_local i32 @_FAT_fat_isValidCluster(%struct.TYPE_13__*, i32) #2

declare dso_local i32 @_FAT_directory_addEntry(%struct.TYPE_13__*, %struct.TYPE_14__*, i32) #2

declare dso_local i32 @_FAT_cache_eraseWritePartialSector(i32, i8*, i32, i32, i32) #2

declare dso_local i32 @_FAT_fat_clusterToSector(%struct.TYPE_13__*, i32) #2

declare dso_local i32 @_FAT_cache_writePartialSector(i32, i8*, i32, i32, i32) #2

declare dso_local i32 @_FAT_cache_flush(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
