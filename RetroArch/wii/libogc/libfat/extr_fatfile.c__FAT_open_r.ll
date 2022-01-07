; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libfat/extr_fatfile.c__FAT_open_r.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libfat/extr_fatfile.c__FAT_open_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._reent = type { i8* }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, %struct.TYPE_17__*, i8*, i64 }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i64, i32, %struct.TYPE_17__*, %struct.TYPE_17__*, %struct.TYPE_15__, %struct.TYPE_15__, i64, i32, i32, %struct.TYPE_16__* }
%struct.TYPE_15__ = type { i64, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i64*, i32 }

@ENODEV = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i8* null, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@EACCES = common dso_local global i8* null, align 8
@EROFS = common dso_local global i8* null, align 8
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i8* null, align 8
@EISDIR = common dso_local global i8* null, align 8
@DIR_SEPARATOR = common dso_local global i32 0, align 4
@ENOTDIR = common dso_local global i8* null, align 8
@NAME_MAX = common dso_local global i64 0, align 8
@DIR_ENTRY_DATA_SIZE = common dso_local global i32 0, align 4
@DIR_ENTRY_cTime_ms = common dso_local global i64 0, align 8
@DIR_ENTRY_cTime = common dso_local global i32 0, align 4
@DIR_ENTRY_cDate = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i8* null, align 8
@ENOENT = common dso_local global i8* null, align 8
@DIR_ENTRY_fileSize = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@CLUSTER_FREE = common dso_local global i64 0, align 8
@O_APPEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_FAT_open_r(%struct._reent* %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct._reent*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_18__, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_17__*, align 8
  store %struct._reent* %0, %struct._reent** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %12, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %19, %struct.TYPE_17__** %17, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = call %struct.TYPE_16__* @_FAT_partition_getPartitionFromPath(i8* %20)
  store %struct.TYPE_16__* %21, %struct.TYPE_16__** %12, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %23 = icmp eq %struct.TYPE_16__* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %5
  %25 = load i8*, i8** @ENODEV, align 8
  %26 = load %struct._reent*, %struct._reent** %7, align 8
  %27 = getelementptr inbounds %struct._reent, %struct._reent* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  store i32 -1, i32* %6, align 4
  br label %432

28:                                               ; preds = %5
  %29 = load i8*, i8** %9, align 8
  %30 = call i8* @strchr(i8* %29, i8 signext 58)
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8
  %34 = call i8* @strchr(i8* %33, i8 signext 58)
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  store i8* %35, i8** %9, align 8
  br label %36

36:                                               ; preds = %32, %28
  %37 = load i8*, i8** %9, align 8
  %38 = call i8* @strchr(i8* %37, i8 signext 58)
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i8*, i8** @EINVAL, align 8
  %42 = load %struct._reent*, %struct._reent** %7, align 8
  %43 = getelementptr inbounds %struct._reent, %struct._reent* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  store i32 -1, i32* %6, align 4
  br label %432

44:                                               ; preds = %36
  %45 = load i32, i32* %10, align 4
  %46 = and i32 %45, 3
  %47 = load i32, i32* @O_RDONLY, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 1
  store i32 0, i32* %53, align 4
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 2
  store i32 0, i32* %55, align 8
  br label %86

56:                                               ; preds = %44
  %57 = load i32, i32* %10, align 4
  %58 = and i32 %57, 3
  %59 = load i32, i32* @O_WRONLY, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  store i32 0, i32* %63, align 8
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 1
  store i32 1, i32* %65, align 4
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 2
  store i32 0, i32* %67, align 8
  br label %85

68:                                               ; preds = %56
  %69 = load i32, i32* %10, align 4
  %70 = and i32 %69, 3
  %71 = load i32, i32* @O_RDWR, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %68
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 1
  store i32 1, i32* %77, align 4
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 2
  store i32 0, i32* %79, align 8
  br label %84

80:                                               ; preds = %68
  %81 = load i8*, i8** @EACCES, align 8
  %82 = load %struct._reent*, %struct._reent** %7, align 8
  %83 = getelementptr inbounds %struct._reent, %struct._reent* %82, i32 0, i32 0
  store i8* %81, i8** %83, align 8
  store i32 -1, i32* %6, align 4
  br label %432

84:                                               ; preds = %73
  br label %85

85:                                               ; preds = %84, %61
  br label %86

86:                                               ; preds = %85, %49
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %86
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 7
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  %97 = load i8*, i8** @EROFS, align 8
  %98 = load %struct._reent*, %struct._reent** %7, align 8
  %99 = getelementptr inbounds %struct._reent, %struct._reent* %98, i32 0, i32 0
  store i8* %97, i8** %99, align 8
  store i32 -1, i32* %6, align 4
  br label %432

100:                                              ; preds = %91, %86
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 4
  %103 = call i32 @_FAT_lock(i32* %102)
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %105 = load i8*, i8** %9, align 8
  %106 = call i32 @_FAT_directory_entryFromPath(%struct.TYPE_16__* %104, %struct.TYPE_18__* %14, i8* %105, i8* null)
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @O_CREAT, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %126

111:                                              ; preds = %100
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* @O_EXCL, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %126

116:                                              ; preds = %111
  %117 = load i32, i32* %13, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %116
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 4
  %122 = call i32 @_FAT_unlock(i32* %121)
  %123 = load i8*, i8** @EEXIST, align 8
  %124 = load %struct._reent*, %struct._reent** %7, align 8
  %125 = getelementptr inbounds %struct._reent, %struct._reent* %124, i32 0, i32 0
  store i8* %123, i8** %125, align 8
  store i32 -1, i32* %6, align 4
  br label %432

126:                                              ; preds = %116, %111, %100
  %127 = load i32, i32* %13, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %139

129:                                              ; preds = %126
  %130 = call i64 @_FAT_directory_isDirectory(%struct.TYPE_18__* %14)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %129
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 4
  %135 = call i32 @_FAT_unlock(i32* %134)
  %136 = load i8*, i8** @EISDIR, align 8
  %137 = load %struct._reent*, %struct._reent** %7, align 8
  %138 = getelementptr inbounds %struct._reent, %struct._reent* %137, i32 0, i32 0
  store i8* %136, i8** %138, align 8
  store i32 -1, i32* %6, align 4
  br label %432

139:                                              ; preds = %129, %126
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 3
  store i32 0, i32* %141, align 4
  %142 = load i32, i32* %13, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %242, label %144

144:                                              ; preds = %139
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* @O_CREAT, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %234

149:                                              ; preds = %144
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 7
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %149
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 4
  %157 = call i32 @_FAT_unlock(i32* %156)
  %158 = load i8*, i8** @EROFS, align 8
  %159 = load %struct._reent*, %struct._reent** %7, align 8
  %160 = getelementptr inbounds %struct._reent, %struct._reent* %159, i32 0, i32 0
  store i8* %158, i8** %160, align 8
  store i32 -1, i32* %6, align 4
  br label %432

161:                                              ; preds = %149
  %162 = load i8*, i8** %9, align 8
  %163 = load i32, i32* @DIR_SEPARATOR, align 4
  %164 = call i8* @strrchr(i8* %162, i32 %163)
  store i8* %164, i8** %15, align 8
  %165 = load i8*, i8** %15, align 8
  %166 = icmp eq i8* %165, null
  br i1 %166, label %167, label %172

167:                                              ; preds = %161
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 6
  %170 = load i8*, i8** %169, align 8
  store i8* %170, i8** %16, align 8
  %171 = load i8*, i8** %9, align 8
  store i8* %171, i8** %15, align 8
  br label %195

172:                                              ; preds = %161
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %174 = load i8*, i8** %9, align 8
  %175 = load i8*, i8** %15, align 8
  %176 = call i32 @_FAT_directory_entryFromPath(%struct.TYPE_16__* %173, %struct.TYPE_18__* %14, i8* %174, i8* %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %172
  %179 = call i64 @_FAT_directory_isDirectory(%struct.TYPE_18__* %14)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %188, label %181

181:                                              ; preds = %178, %172
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 4
  %184 = call i32 @_FAT_unlock(i32* %183)
  %185 = load i8*, i8** @ENOTDIR, align 8
  %186 = load %struct._reent*, %struct._reent** %7, align 8
  %187 = getelementptr inbounds %struct._reent, %struct._reent* %186, i32 0, i32 0
  store i8* %185, i8** %187, align 8
  store i32 -1, i32* %6, align 4
  br label %432

188:                                              ; preds = %178
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 2
  %191 = load i64*, i64** %190, align 8
  %192 = call i8* @_FAT_directory_entryGetCluster(%struct.TYPE_16__* %189, i64* %191)
  store i8* %192, i8** %16, align 8
  %193 = load i8*, i8** %15, align 8
  %194 = getelementptr inbounds i8, i8* %193, i64 1
  store i8* %194, i8** %15, align 8
  br label %195

195:                                              ; preds = %188, %167
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 3
  %197 = load i32, i32* %196, align 8
  %198 = load i8*, i8** %15, align 8
  %199 = load i64, i64* @NAME_MAX, align 8
  %200 = sub nsw i64 %199, 1
  %201 = call i32 @strncpy(i32 %197, i8* %198, i64 %200)
  %202 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 2
  %203 = load i64*, i64** %202, align 8
  %204 = load i32, i32* @DIR_ENTRY_DATA_SIZE, align 4
  %205 = call i32 @memset(i64* %203, i32 0, i32 %204)
  %206 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 2
  %207 = load i64*, i64** %206, align 8
  %208 = load i64, i64* @DIR_ENTRY_cTime_ms, align 8
  %209 = getelementptr inbounds i64, i64* %207, i64 %208
  store i64 0, i64* %209, align 8
  %210 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 2
  %211 = load i64*, i64** %210, align 8
  %212 = load i32, i32* @DIR_ENTRY_cTime, align 4
  %213 = call i32 (...) @_FAT_filetime_getTimeFromRTC()
  %214 = call i32 @u16_to_u8array(i64* %211, i32 %212, i32 %213)
  %215 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 2
  %216 = load i64*, i64** %215, align 8
  %217 = load i32, i32* @DIR_ENTRY_cDate, align 4
  %218 = call i32 (...) @_FAT_filetime_getDateFromRTC()
  %219 = call i32 @u16_to_u8array(i64* %216, i32 %217, i32 %218)
  %220 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %221 = load i8*, i8** %16, align 8
  %222 = call i32 @_FAT_directory_addEntry(%struct.TYPE_16__* %220, %struct.TYPE_18__* %14, i8* %221)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %231, label %224

224:                                              ; preds = %195
  %225 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %226 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %225, i32 0, i32 4
  %227 = call i32 @_FAT_unlock(i32* %226)
  %228 = load i8*, i8** @ENOSPC, align 8
  %229 = load %struct._reent*, %struct._reent** %7, align 8
  %230 = getelementptr inbounds %struct._reent, %struct._reent* %229, i32 0, i32 0
  store i8* %228, i8** %230, align 8
  store i32 -1, i32* %6, align 4
  br label %432

231:                                              ; preds = %195
  %232 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %233 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %232, i32 0, i32 3
  store i32 1, i32* %233, align 4
  br label %241

234:                                              ; preds = %144
  %235 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %236 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %235, i32 0, i32 4
  %237 = call i32 @_FAT_unlock(i32* %236)
  %238 = load i8*, i8** @ENOENT, align 8
  %239 = load %struct._reent*, %struct._reent** %7, align 8
  %240 = getelementptr inbounds %struct._reent, %struct._reent* %239, i32 0, i32 0
  store i8* %238, i8** %240, align 8
  store i32 -1, i32* %6, align 4
  br label %432

241:                                              ; preds = %231
  br label %242

242:                                              ; preds = %241, %139
  %243 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 2
  %244 = load i64*, i64** %243, align 8
  %245 = load i32, i32* @DIR_ENTRY_fileSize, align 4
  %246 = call i32 @u8array_to_u32(i64* %244, i32 %245)
  %247 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %248 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %247, i32 0, i32 4
  store i32 %246, i32* %248, align 8
  %249 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %250 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %263

253:                                              ; preds = %242
  %254 = call i32 @_FAT_directory_isWritable(%struct.TYPE_18__* %14)
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %263, label %256

256:                                              ; preds = %253
  %257 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %258 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %257, i32 0, i32 4
  %259 = call i32 @_FAT_unlock(i32* %258)
  %260 = load i8*, i8** @EROFS, align 8
  %261 = load %struct._reent*, %struct._reent** %7, align 8
  %262 = getelementptr inbounds %struct._reent, %struct._reent* %261, i32 0, i32 0
  store i8* %260, i8** %262, align 8
  store i32 -1, i32* %6, align 4
  br label %432

263:                                              ; preds = %253, %242
  %264 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %265 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %266 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %265, i32 0, i32 14
  store %struct.TYPE_16__* %264, %struct.TYPE_16__** %266, align 8
  %267 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %268 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 2
  %269 = load i64*, i64** %268, align 8
  %270 = call i8* @_FAT_directory_entryGetCluster(%struct.TYPE_16__* %267, i64* %269)
  %271 = ptrtoint i8* %270 to i64
  %272 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %273 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %272, i32 0, i32 5
  store i64 %271, i64* %273, align 8
  %274 = load i32, i32* %10, align 4
  %275 = load i32, i32* @O_TRUNC, align 4
  %276 = and i32 %274, %275
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %301

278:                                              ; preds = %263
  %279 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %280 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %301

283:                                              ; preds = %278
  %284 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %285 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %284, i32 0, i32 5
  %286 = load i64, i64* %285, align 8
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %301

288:                                              ; preds = %283
  %289 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %290 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %291 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %290, i32 0, i32 5
  %292 = load i64, i64* %291, align 8
  %293 = call i32 @_FAT_fat_clearLinks(%struct.TYPE_16__* %289, i64 %292)
  %294 = load i64, i64* @CLUSTER_FREE, align 8
  %295 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %296 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %295, i32 0, i32 5
  store i64 %294, i64* %296, align 8
  %297 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %298 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %297, i32 0, i32 4
  store i32 0, i32* %298, align 8
  %299 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %300 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %299, i32 0, i32 3
  store i32 1, i32* %300, align 4
  br label %301

301:                                              ; preds = %288, %283, %278, %263
  %302 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %305 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %304, i32 0, i32 13
  store i32 %303, i32* %305, align 4
  %306 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %309 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %308, i32 0, i32 12
  store i32 %307, i32* %309, align 8
  %310 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %311 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %310, i32 0, i32 11
  store i64 0, i64* %311, align 8
  %312 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %313 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %312, i32 0, i32 5
  %314 = load i64, i64* %313, align 8
  %315 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %316 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %315, i32 0, i32 9
  %317 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %316, i32 0, i32 0
  store i64 %314, i64* %317, align 8
  %318 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %319 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %318, i32 0, i32 9
  %320 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %319, i32 0, i32 1
  store i32 0, i32* %320, align 8
  %321 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %322 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %321, i32 0, i32 9
  %323 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %322, i32 0, i32 2
  store i32 0, i32* %323, align 4
  %324 = load i32, i32* %10, align 4
  %325 = load i32, i32* @O_APPEND, align 4
  %326 = and i32 %324, %325
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %387

328:                                              ; preds = %301
  %329 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %330 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %329, i32 0, i32 2
  store i32 1, i32* %330, align 8
  %331 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %332 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %333 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %332, i32 0, i32 5
  %334 = load i64, i64* %333, align 8
  %335 = call i64 @_FAT_fat_lastCluster(%struct.TYPE_16__* %331, i64 %334)
  %336 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %337 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %336, i32 0, i32 10
  %338 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %337, i32 0, i32 0
  store i64 %335, i64* %338, align 8
  %339 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %340 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %339, i32 0, i32 4
  %341 = load i32, i32* %340, align 8
  %342 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %343 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  %345 = srem i32 %341, %344
  %346 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %347 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = sdiv i32 %345, %348
  %350 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %351 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %350, i32 0, i32 10
  %352 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %351, i32 0, i32 1
  store i32 %349, i32* %352, align 8
  %353 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %354 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %353, i32 0, i32 4
  %355 = load i32, i32* %354, align 8
  %356 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %357 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 4
  %359 = srem i32 %355, %358
  %360 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %361 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %360, i32 0, i32 10
  %362 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %361, i32 0, i32 2
  store i32 %359, i32* %362, align 4
  %363 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %364 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %363, i32 0, i32 4
  %365 = load i32, i32* %364, align 8
  %366 = icmp sgt i32 %365, 0
  br i1 %366, label %367, label %386

367:                                              ; preds = %328
  %368 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %369 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %368, i32 0, i32 4
  %370 = load i32, i32* %369, align 8
  %371 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %372 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 8
  %374 = srem i32 %370, %373
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %376, label %386

376:                                              ; preds = %367
  %377 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %378 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %377, i32 0, i32 2
  %379 = load i32, i32* %378, align 8
  %380 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %381 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %380, i32 0, i32 10
  %382 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %381, i32 0, i32 1
  store i32 %379, i32* %382, align 8
  %383 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %384 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %383, i32 0, i32 10
  %385 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %384, i32 0, i32 2
  store i32 0, i32* %385, align 4
  br label %386

386:                                              ; preds = %376, %367, %328
  br label %396

387:                                              ; preds = %301
  %388 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %389 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %388, i32 0, i32 2
  store i32 0, i32* %389, align 8
  %390 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %391 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %390, i32 0, i32 10
  %392 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %393 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %392, i32 0, i32 9
  %394 = bitcast %struct.TYPE_15__* %391 to i8*
  %395 = bitcast %struct.TYPE_15__* %393 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %394, i8* align 8 %395, i64 16, i1 false)
  br label %396

396:                                              ; preds = %387, %386
  %397 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %398 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %397, i32 0, i32 6
  store i32 1, i32* %398, align 8
  %399 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %400 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %399, i32 0, i32 3
  %401 = load i32, i32* %400, align 4
  %402 = add nsw i32 %401, 1
  store i32 %402, i32* %400, align 4
  %403 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %404 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %403, i32 0, i32 5
  %405 = load %struct.TYPE_17__*, %struct.TYPE_17__** %404, align 8
  %406 = icmp ne %struct.TYPE_17__* %405, null
  br i1 %406, label %407, label %418

407:                                              ; preds = %396
  %408 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %409 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %408, i32 0, i32 5
  %410 = load %struct.TYPE_17__*, %struct.TYPE_17__** %409, align 8
  %411 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %412 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %411, i32 0, i32 8
  store %struct.TYPE_17__* %410, %struct.TYPE_17__** %412, align 8
  %413 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %414 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %415 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %414, i32 0, i32 5
  %416 = load %struct.TYPE_17__*, %struct.TYPE_17__** %415, align 8
  %417 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %416, i32 0, i32 7
  store %struct.TYPE_17__* %413, %struct.TYPE_17__** %417, align 8
  br label %421

418:                                              ; preds = %396
  %419 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %420 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %419, i32 0, i32 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %420, align 8
  br label %421

421:                                              ; preds = %418, %407
  %422 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %423 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %422, i32 0, i32 7
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %423, align 8
  %424 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %425 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %426 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %425, i32 0, i32 5
  store %struct.TYPE_17__* %424, %struct.TYPE_17__** %426, align 8
  %427 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %428 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %427, i32 0, i32 4
  %429 = call i32 @_FAT_unlock(i32* %428)
  %430 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %431 = ptrtoint %struct.TYPE_17__* %430 to i32
  store i32 %431, i32* %6, align 4
  br label %432

432:                                              ; preds = %421, %256, %234, %224, %181, %154, %132, %119, %96, %80, %40, %24
  %433 = load i32, i32* %6, align 4
  ret i32 %433
}

declare dso_local %struct.TYPE_16__* @_FAT_partition_getPartitionFromPath(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @_FAT_lock(i32*) #1

declare dso_local i32 @_FAT_directory_entryFromPath(%struct.TYPE_16__*, %struct.TYPE_18__*, i8*, i8*) #1

declare dso_local i32 @_FAT_unlock(i32*) #1

declare dso_local i64 @_FAT_directory_isDirectory(%struct.TYPE_18__*) #1

declare dso_local i8* @strrchr(i8*, i32) #1

declare dso_local i8* @_FAT_directory_entryGetCluster(%struct.TYPE_16__*, i64*) #1

declare dso_local i32 @strncpy(i32, i8*, i64) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @u16_to_u8array(i64*, i32, i32) #1

declare dso_local i32 @_FAT_filetime_getTimeFromRTC(...) #1

declare dso_local i32 @_FAT_filetime_getDateFromRTC(...) #1

declare dso_local i32 @_FAT_directory_addEntry(%struct.TYPE_16__*, %struct.TYPE_18__*, i8*) #1

declare dso_local i32 @u8array_to_u32(i64*, i32) #1

declare dso_local i32 @_FAT_directory_isWritable(%struct.TYPE_18__*) #1

declare dso_local i32 @_FAT_fat_clearLinks(%struct.TYPE_16__*, i64) #1

declare dso_local i64 @_FAT_fat_lastCluster(%struct.TYPE_16__*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
