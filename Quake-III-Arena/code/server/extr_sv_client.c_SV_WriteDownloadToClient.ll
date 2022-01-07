; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_client.c_SV_WriteDownloadToClient.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_client.c_SV_WriteDownloadToClient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_9__ = type { i32, i64, i64, i64, i32, i32*, i32, i32, i32, i64*, i64, i32, i64* }

@.str = private unnamed_addr constant [36 x i8] c"clientDownload: %d : begining \22%s\22\0A\00", align 1
@svs = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"missionpack\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"baseq3\00", align 1
@sv_allowDownload = common dso_local global %struct.TYPE_13__* null, align 8
@.str.3 = private unnamed_addr constant [56 x i8] c"clientDownload: %d : \22%s\22 cannot download id pk3 files\0A\00", align 1
@.str.4 = private unnamed_addr constant [108 x i8] c"Cannot autodownload Team Arena file \22%s\22\0AThe Team Arena mission pack can be found in your local game store.\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Cannot autodownload id pk3 file \22%s\22\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"clientDownload: %d : \22%s\22 download disabled\00", align 1
@sv_pure = common dso_local global %struct.TYPE_11__* null, align 8
@.str.7 = private unnamed_addr constant [162 x i8] c"Could not download \22%s\22 because autodownloading is disabled on the server.\0A\0AYou will need to get this file elsewhere before you can connect to this pure server.\0A\00", align 1
@.str.8 = private unnamed_addr constant [219 x i8] c"Could not download \22%s\22 because autodownloading is disabled on the server.\0A\0AThe server you are connecting to is not a pure server, set autodownload to No in your settings and you might be able to join the game anyway.\0A\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"clientDownload: %d : \22%s\22 file not found on server\0A\00", align 1
@.str.10 = private unnamed_addr constant [52 x i8] c"File \22%s\22 not found on server for autodownloading.\0A\00", align 1
@svc_download = common dso_local global i32 0, align 4
@qfalse = common dso_local global i64 0, align 8
@MAX_DOWNLOAD_WINDOW = common dso_local global i64 0, align 8
@MAX_DOWNLOAD_BLKSIZE = common dso_local global i32 0, align 4
@qtrue = common dso_local global i64 0, align 8
@sv_maxRate = common dso_local global %struct.TYPE_12__* null, align 8
@.str.11 = private unnamed_addr constant [11 x i8] c"sv_MaxRate\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"1000\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"clientDownload: %d : writing block %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SV_WriteDownloadToClient(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [1024 x i8], align 16
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 12
  %13 = load i64*, i64** %12, align 8
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %461

17:                                               ; preds = %2
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 11
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %166, label %22

22:                                               ; preds = %17
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @svs, i32 0, i32 0), align 4
  %25 = sext i32 %24 to i64
  %26 = sub i64 0, %25
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i64 %26
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 12
  %30 = load i64*, i64** %29, align 8
  %31 = call i32 @Com_Printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.TYPE_9__* %27, i64* %30)
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 12
  %34 = load i64*, i64** %33, align 8
  %35 = call i32 @FS_idPak(i64* %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %22
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 12
  %41 = load i64*, i64** %40, align 8
  %42 = call i32 @FS_idPak(i64* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br label %44

44:                                               ; preds = %38, %22
  %45 = phi i1 [ true, %22 ], [ %43, %38 ]
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %8, align 4
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** @sv_allowDownload, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %44
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %64, label %54

54:                                               ; preds = %51
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 12
  %57 = load i64*, i64** %56, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 11
  %60 = call i32 @FS_SV_FOpenFileRead(i64* %57, i32* %59)
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = icmp sle i32 %60, 0
  br i1 %63, label %64, label %154

64:                                               ; preds = %54, %51, %44
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %92

67:                                               ; preds = %64
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @svs, i32 0, i32 0), align 4
  %70 = sext i32 %69 to i64
  %71 = sub i64 0, %70
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i64 %71
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 12
  %75 = load i64*, i64** %74, align 8
  %76 = call i32 @Com_Printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_9__* %72, i64* %75)
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %67
  %80 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 12
  %83 = load i64*, i64** %82, align 8
  %84 = call i32 @Com_sprintf(i8* %80, i32 1024, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.4, i64 0, i64 0), i64* %83)
  br label %91

85:                                               ; preds = %67
  %86 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 12
  %89 = load i64*, i64** %88, align 8
  %90 = call i32 @Com_sprintf(i8* %86, i32 1024, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i64* %89)
  br label %91

91:                                               ; preds = %85, %79
  br label %140

92:                                               ; preds = %64
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** @sv_allowDownload, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %124, label %97

97:                                               ; preds = %92
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @svs, i32 0, i32 0), align 4
  %100 = sext i32 %99 to i64
  %101 = sub i64 0, %100
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i64 %101
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 12
  %105 = load i64*, i64** %104, align 8
  %106 = call i32 @Com_Printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_9__* %102, i64* %105)
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sv_pure, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %97
  %112 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 12
  %115 = load i64*, i64** %114, align 8
  %116 = call i32 @Com_sprintf(i8* %112, i32 1024, i8* getelementptr inbounds ([162 x i8], [162 x i8]* @.str.7, i64 0, i64 0), i64* %115)
  br label %123

117:                                              ; preds = %97
  %118 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 12
  %121 = load i64*, i64** %120, align 8
  %122 = call i32 @Com_sprintf(i8* %118, i32 1024, i8* getelementptr inbounds ([219 x i8], [219 x i8]* @.str.8, i64 0, i64 0), i64* %121)
  br label %123

123:                                              ; preds = %117, %111
  br label %139

124:                                              ; preds = %92
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %126 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @svs, i32 0, i32 0), align 4
  %127 = sext i32 %126 to i64
  %128 = sub i64 0, %127
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i64 %128
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 12
  %132 = load i64*, i64** %131, align 8
  %133 = call i32 @Com_Printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i64 0, i64 0), %struct.TYPE_9__* %129, i64* %132)
  %134 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 12
  %137 = load i64*, i64** %136, align 8
  %138 = call i32 @Com_sprintf(i8* %134, i32 1024, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i64 0, i64 0), i64* %137)
  br label %139

139:                                              ; preds = %124, %123
  br label %140

140:                                              ; preds = %139, %91
  %141 = load i32*, i32** %4, align 8
  %142 = load i32, i32* @svc_download, align 4
  %143 = call i32 @MSG_WriteByte(i32* %141, i32 %142)
  %144 = load i32*, i32** %4, align 8
  %145 = call i32 @MSG_WriteShort(i32* %144, i32 0)
  %146 = load i32*, i32** %4, align 8
  %147 = call i32 @MSG_WriteLong(i32* %146, i32 -1)
  %148 = load i32*, i32** %4, align 8
  %149 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %150 = call i32 @MSG_WriteString(i32* %148, i8* %149)
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 12
  %153 = load i64*, i64** %152, align 8
  store i64 0, i64* %153, align 8
  br label %461

154:                                              ; preds = %54
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 3
  store i64 0, i64* %156, align 8
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 2
  store i64 0, i64* %158, align 8
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 1
  store i64 0, i64* %160, align 8
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 4
  store i32 0, i32* %162, align 8
  %163 = load i64, i64* @qfalse, align 8
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 10
  store i64 %163, i64* %165, align 8
  br label %166

166:                                              ; preds = %154, %17
  br label %167

167:                                              ; preds = %244, %166
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = sub i64 %170, %173
  %175 = load i64, i64* @MAX_DOWNLOAD_WINDOW, align 8
  %176 = icmp ult i64 %174, %175
  br i1 %176, label %177, label %185

177:                                              ; preds = %167
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 8
  %184 = icmp ne i32 %180, %183
  br label %185

185:                                              ; preds = %177, %167
  %186 = phi i1 [ false, %167 ], [ %184, %177 ]
  br i1 %186, label %187, label %260

187:                                              ; preds = %185
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @MAX_DOWNLOAD_WINDOW, align 8
  %192 = urem i64 %190, %191
  %193 = trunc i64 %192 to i32
  store i32 %193, i32* %5, align 4
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 9
  %196 = load i64*, i64** %195, align 8
  %197 = load i32, i32* %5, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i64, i64* %196, i64 %198
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %211, label %202

202:                                              ; preds = %187
  %203 = load i32, i32* @MAX_DOWNLOAD_BLKSIZE, align 4
  %204 = call i64 @Z_Malloc(i32 %203)
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 9
  %207 = load i64*, i64** %206, align 8
  %208 = load i32, i32* %5, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i64, i64* %207, i64 %209
  store i64 %204, i64* %210, align 8
  br label %211

211:                                              ; preds = %202, %187
  %212 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 9
  %214 = load i64*, i64** %213, align 8
  %215 = load i32, i32* %5, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i64, i64* %214, i64 %216
  %218 = load i64, i64* %217, align 8
  %219 = load i32, i32* @MAX_DOWNLOAD_BLKSIZE, align 4
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 11
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @FS_Read(i64 %218, i32 %219, i32 %222)
  %224 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 5
  %226 = load i32*, i32** %225, align 8
  %227 = load i32, i32* %5, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  store i32 %223, i32* %229, align 4
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 5
  %232 = load i32*, i32** %231, align 8
  %233 = load i32, i32* %5, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = icmp slt i32 %236, 0
  br i1 %237, label %238, label %244

238:                                              ; preds = %211
  %239 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 4
  store i32 %241, i32* %243, align 8
  br label %260

244:                                              ; preds = %211
  %245 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %245, i32 0, i32 5
  %247 = load i32*, i32** %246, align 8
  %248 = load i32, i32* %5, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %247, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %253 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %252, i32 0, i32 4
  %254 = load i32, i32* %253, align 8
  %255 = add nsw i32 %254, %251
  store i32 %255, i32* %253, align 8
  %256 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %257 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %256, i32 0, i32 1
  %258 = load i64, i64* %257, align 8
  %259 = add i64 %258, 1
  store i64 %259, i64* %257, align 8
  br label %167

260:                                              ; preds = %238, %185
  %261 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %261, i32 0, i32 4
  %263 = load i32, i32* %262, align 8
  %264 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %265 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = icmp eq i32 %263, %266
  br i1 %267, label %268, label %300

268:                                              ; preds = %260
  %269 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %270 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %269, i32 0, i32 10
  %271 = load i64, i64* %270, align 8
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %300, label %273

273:                                              ; preds = %268
  %274 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %275 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %274, i32 0, i32 1
  %276 = load i64, i64* %275, align 8
  %277 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %278 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %277, i32 0, i32 2
  %279 = load i64, i64* %278, align 8
  %280 = sub i64 %276, %279
  %281 = load i64, i64* @MAX_DOWNLOAD_WINDOW, align 8
  %282 = icmp ult i64 %280, %281
  br i1 %282, label %283, label %300

283:                                              ; preds = %273
  %284 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %285 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %284, i32 0, i32 5
  %286 = load i32*, i32** %285, align 8
  %287 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %288 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %287, i32 0, i32 1
  %289 = load i64, i64* %288, align 8
  %290 = load i64, i64* @MAX_DOWNLOAD_WINDOW, align 8
  %291 = urem i64 %289, %290
  %292 = getelementptr inbounds i32, i32* %286, i64 %291
  store i32 0, i32* %292, align 4
  %293 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %294 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %293, i32 0, i32 1
  %295 = load i64, i64* %294, align 8
  %296 = add i64 %295, 1
  store i64 %296, i64* %294, align 8
  %297 = load i64, i64* @qtrue, align 8
  %298 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %299 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %298, i32 0, i32 10
  store i64 %297, i64* %299, align 8
  br label %300

300:                                              ; preds = %283, %273, %268, %260
  %301 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %302 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %301, i32 0, i32 6
  %303 = load i32, i32* %302, align 8
  store i32 %303, i32* %6, align 4
  %304 = load %struct.TYPE_12__*, %struct.TYPE_12__** @sv_maxRate, align 8
  %305 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %326

308:                                              ; preds = %300
  %309 = load %struct.TYPE_12__*, %struct.TYPE_12__** @sv_maxRate, align 8
  %310 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 4
  %312 = icmp slt i32 %311, 1000
  br i1 %312, label %313, label %315

313:                                              ; preds = %308
  %314 = call i32 @Cvar_Set(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  br label %315

315:                                              ; preds = %313, %308
  %316 = load %struct.TYPE_12__*, %struct.TYPE_12__** @sv_maxRate, align 8
  %317 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 4
  %319 = load i32, i32* %6, align 4
  %320 = icmp slt i32 %318, %319
  br i1 %320, label %321, label %325

321:                                              ; preds = %315
  %322 = load %struct.TYPE_12__*, %struct.TYPE_12__** @sv_maxRate, align 8
  %323 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 4
  store i32 %324, i32* %6, align 4
  br label %325

325:                                              ; preds = %321, %315
  br label %326

326:                                              ; preds = %325, %300
  %327 = load i32, i32* %6, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %330, label %329

329:                                              ; preds = %326
  store i32 1, i32* %7, align 4
  br label %341

330:                                              ; preds = %326
  %331 = load i32, i32* %6, align 4
  %332 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %333 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %332, i32 0, i32 7
  %334 = load i32, i32* %333, align 4
  %335 = mul nsw i32 %331, %334
  %336 = sdiv i32 %335, 1000
  %337 = load i32, i32* @MAX_DOWNLOAD_BLKSIZE, align 4
  %338 = add nsw i32 %336, %337
  %339 = load i32, i32* @MAX_DOWNLOAD_BLKSIZE, align 4
  %340 = sdiv i32 %338, %339
  store i32 %340, i32* %7, align 4
  br label %341

341:                                              ; preds = %330, %329
  %342 = load i32, i32* %7, align 4
  %343 = icmp slt i32 %342, 0
  br i1 %343, label %344, label %345

344:                                              ; preds = %341
  store i32 1, i32* %7, align 4
  br label %345

345:                                              ; preds = %344, %341
  br label %346

346:                                              ; preds = %443, %345
  %347 = load i32, i32* %7, align 4
  %348 = add nsw i32 %347, -1
  store i32 %348, i32* %7, align 4
  %349 = icmp ne i32 %347, 0
  br i1 %349, label %350, label %461

350:                                              ; preds = %346
  %351 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %352 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %351, i32 0, i32 2
  %353 = load i64, i64* %352, align 8
  %354 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %355 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %354, i32 0, i32 1
  %356 = load i64, i64* %355, align 8
  %357 = icmp eq i64 %353, %356
  br i1 %357, label %358, label %359

358:                                              ; preds = %350
  br label %461

359:                                              ; preds = %350
  %360 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %361 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %360, i32 0, i32 3
  %362 = load i64, i64* %361, align 8
  %363 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %364 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %363, i32 0, i32 1
  %365 = load i64, i64* %364, align 8
  %366 = icmp eq i64 %362, %365
  br i1 %366, label %367, label %382

367:                                              ; preds = %359
  %368 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @svs, i32 0, i32 1), align 4
  %369 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %370 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %369, i32 0, i32 8
  %371 = load i32, i32* %370, align 8
  %372 = sub nsw i32 %368, %371
  %373 = icmp sgt i32 %372, 1000
  br i1 %373, label %374, label %380

374:                                              ; preds = %367
  %375 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %376 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %375, i32 0, i32 2
  %377 = load i64, i64* %376, align 8
  %378 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %379 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %378, i32 0, i32 3
  store i64 %377, i64* %379, align 8
  br label %381

380:                                              ; preds = %367
  br label %461

381:                                              ; preds = %374
  br label %382

382:                                              ; preds = %381, %359
  %383 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %384 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %383, i32 0, i32 3
  %385 = load i64, i64* %384, align 8
  %386 = load i64, i64* @MAX_DOWNLOAD_WINDOW, align 8
  %387 = urem i64 %385, %386
  %388 = trunc i64 %387 to i32
  store i32 %388, i32* %5, align 4
  %389 = load i32*, i32** %4, align 8
  %390 = load i32, i32* @svc_download, align 4
  %391 = call i32 @MSG_WriteByte(i32* %389, i32 %390)
  %392 = load i32*, i32** %4, align 8
  %393 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %394 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %393, i32 0, i32 3
  %395 = load i64, i64* %394, align 8
  %396 = trunc i64 %395 to i32
  %397 = call i32 @MSG_WriteShort(i32* %392, i32 %396)
  %398 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %399 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %398, i32 0, i32 3
  %400 = load i64, i64* %399, align 8
  %401 = icmp eq i64 %400, 0
  br i1 %401, label %402, label %408

402:                                              ; preds = %382
  %403 = load i32*, i32** %4, align 8
  %404 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %405 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 8
  %407 = call i32 @MSG_WriteLong(i32* %403, i32 %406)
  br label %408

408:                                              ; preds = %402, %382
  %409 = load i32*, i32** %4, align 8
  %410 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %411 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %410, i32 0, i32 5
  %412 = load i32*, i32** %411, align 8
  %413 = load i32, i32* %5, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds i32, i32* %412, i64 %414
  %416 = load i32, i32* %415, align 4
  %417 = call i32 @MSG_WriteShort(i32* %409, i32 %416)
  %418 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %419 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %418, i32 0, i32 5
  %420 = load i32*, i32** %419, align 8
  %421 = load i32, i32* %5, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds i32, i32* %420, i64 %422
  %424 = load i32, i32* %423, align 4
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %426, label %443

426:                                              ; preds = %408
  %427 = load i32*, i32** %4, align 8
  %428 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %429 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %428, i32 0, i32 9
  %430 = load i64*, i64** %429, align 8
  %431 = load i32, i32* %5, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds i64, i64* %430, i64 %432
  %434 = load i64, i64* %433, align 8
  %435 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %436 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %435, i32 0, i32 5
  %437 = load i32*, i32** %436, align 8
  %438 = load i32, i32* %5, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds i32, i32* %437, i64 %439
  %441 = load i32, i32* %440, align 4
  %442 = call i32 @MSG_WriteData(i32* %427, i64 %434, i32 %441)
  br label %443

443:                                              ; preds = %426, %408
  %444 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %445 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @svs, i32 0, i32 0), align 4
  %446 = sext i32 %445 to i64
  %447 = sub i64 0, %446
  %448 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %444, i64 %447
  %449 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %450 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %449, i32 0, i32 3
  %451 = load i64, i64* %450, align 8
  %452 = trunc i64 %451 to i32
  %453 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i64 0, i64 0), %struct.TYPE_9__* %448, i32 %452)
  %454 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %455 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %454, i32 0, i32 3
  %456 = load i64, i64* %455, align 8
  %457 = add i64 %456, 1
  store i64 %457, i64* %455, align 8
  %458 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @svs, i32 0, i32 1), align 4
  %459 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %460 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %459, i32 0, i32 8
  store i32 %458, i32* %460, align 8
  br label %346

461:                                              ; preds = %16, %140, %358, %380, %346
  ret void
}

declare dso_local i32 @Com_Printf(i8*, %struct.TYPE_9__*, i64*) #1

declare dso_local i32 @FS_idPak(i64*, i8*) #1

declare dso_local i32 @FS_SV_FOpenFileRead(i64*, i32*) #1

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i64*) #1

declare dso_local i32 @MSG_WriteByte(i32*, i32) #1

declare dso_local i32 @MSG_WriteShort(i32*, i32) #1

declare dso_local i32 @MSG_WriteLong(i32*, i32) #1

declare dso_local i32 @MSG_WriteString(i32*, i8*) #1

declare dso_local i64 @Z_Malloc(i32) #1

declare dso_local i32 @FS_Read(i64, i32, i32) #1

declare dso_local i32 @Cvar_Set(i8*, i8*) #1

declare dso_local i32 @MSG_WriteData(i32*, i64, i32) #1

declare dso_local i32 @Com_DPrintf(i8*, %struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
