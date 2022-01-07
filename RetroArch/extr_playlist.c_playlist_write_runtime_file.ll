; ModuleID = '/home/carl/AnghaBench/RetroArch/extr_playlist.c_playlist_write_runtime_file.c'
source_filename = "/home/carl/AnghaBench/RetroArch/extr_playlist.c_playlist_write_runtime_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32*, i32 }

@RETRO_VFS_FILE_ACCESS_WRITE = common dso_local global i32 0, align 4
@RETRO_VFS_FILE_ACCESS_HINT_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed to write to playlist file: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to create JSON writer\0A\00", align 1
@JSON_UTF8 = common dso_local global i32 0, align 4
@JSONOutputHandler = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"items\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"core_path\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"runtime_hours\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"runtime_minutes\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"runtime_seconds\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"last_played_year\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"last_played_month\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"last_played_day\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"last_played_hour\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"last_played_minute\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"last_played_second\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"Written to playlist file: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @playlist_write_runtime_file(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__, align 8
  %6 = alloca [32 x i8], align 16
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  store i32* null, i32** %4, align 8
  %7 = bitcast %struct.TYPE_8__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 24, i1 false)
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %9 = icmp ne %struct.TYPE_7__* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10, %1
  br label %609

16:                                               ; preds = %10
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @RETRO_VFS_FILE_ACCESS_WRITE, align 4
  %21 = load i32, i32* @RETRO_VFS_FILE_ACCESS_HINT_NONE, align 4
  %22 = call i32* @filestream_open(i32 %19, i32 %20, i32 %21)
  store i32* %22, i32** %4, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %16
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %609

30:                                               ; preds = %16
  %31 = call i32 @JSON_Writer_Create(i32* null)
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  store i32 %31, i32* %32, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  store i32* %33, i32** %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %30
  %39 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %606

40:                                               ; preds = %30
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @JSON_UTF8, align 4
  %44 = call i32 @JSON_Writer_SetOutputEncoding(i32 %42, i32 %43)
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @JSON_Writer_SetOutputHandler(i32 %46, i32* @JSONOutputHandler)
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @JSON_Writer_SetUserData(i32 %49, %struct.TYPE_8__* %5)
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @JSON_Writer_WriteStartObject(i32 %52)
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @JSON_Writer_WriteNewLine(i32 %55)
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @JSON_Writer_WriteSpace(i32 %58, i32 2)
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @STRLEN_CONST(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i32, i32* @JSON_UTF8, align 4
  %64 = call i32 @JSON_Writer_WriteString(i32 %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %62, i32 %63)
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @JSON_Writer_WriteColon(i32 %66)
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @JSON_Writer_WriteSpace(i32 %69, i32 1)
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @STRLEN_CONST(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %74 = load i32, i32* @JSON_UTF8, align 4
  %75 = call i32 @JSON_Writer_WriteString(i32 %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %73, i32 %74)
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @JSON_Writer_WriteComma(i32 %77)
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @JSON_Writer_WriteNewLine(i32 %80)
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @JSON_Writer_WriteSpace(i32 %83, i32 2)
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @STRLEN_CONST(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %88 = load i32, i32* @JSON_UTF8, align 4
  %89 = call i32 @JSON_Writer_WriteString(i32 %86, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %87, i32 %88)
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @JSON_Writer_WriteColon(i32 %91)
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @JSON_Writer_WriteSpace(i32 %94, i32 1)
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @JSON_Writer_WriteStartArray(i32 %97)
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @JSON_Writer_WriteNewLine(i32 %100)
  store i64 0, i64* %3, align 8
  br label %102

102:                                              ; preds = %578, %40
  %103 = load i64, i64* %3, align 8
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp ult i64 %103, %106
  br i1 %107, label %108, label %581

108:                                              ; preds = %102
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @JSON_Writer_WriteSpace(i32 %110, i32 4)
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @JSON_Writer_WriteStartObject(i32 %113)
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @JSON_Writer_WriteNewLine(i32 %116)
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @JSON_Writer_WriteSpace(i32 %119, i32 6)
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @STRLEN_CONST(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %124 = load i32, i32* @JSON_UTF8, align 4
  %125 = call i32 @JSON_Writer_WriteString(i32 %122, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %123, i32 %124)
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @JSON_Writer_WriteColon(i32 %127)
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @JSON_Writer_WriteSpace(i32 %130, i32 1)
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 3
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %135, align 8
  %137 = load i64, i64* %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %150

142:                                              ; preds = %108
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 3
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %144, align 8
  %146 = load i64, i64* %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  br label %151

150:                                              ; preds = %108
  br label %151

151:                                              ; preds = %150, %142
  %152 = phi i8* [ %149, %142 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %150 ]
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 3
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %154, align 8
  %156 = load i64, i64* %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = load i8*, i8** %158, align 8
  %160 = icmp ne i8* %159, null
  br i1 %160, label %161, label %170

161:                                              ; preds = %151
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 3
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %163, align 8
  %165 = load i64, i64* %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  %168 = load i8*, i8** %167, align 8
  %169 = call i32 @strlen(i8* %168)
  br label %171

170:                                              ; preds = %151
  br label %171

171:                                              ; preds = %170, %161
  %172 = phi i32 [ %169, %161 ], [ 0, %170 ]
  %173 = load i32, i32* @JSON_UTF8, align 4
  %174 = call i32 @JSON_Writer_WriteString(i32 %133, i8* %152, i32 %172, i32 %173)
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @JSON_Writer_WriteComma(i32 %176)
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @JSON_Writer_WriteNewLine(i32 %179)
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @JSON_Writer_WriteSpace(i32 %182, i32 6)
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @STRLEN_CONST(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %187 = load i32, i32* @JSON_UTF8, align 4
  %188 = call i32 @JSON_Writer_WriteString(i32 %185, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %186, i32 %187)
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @JSON_Writer_WriteColon(i32 %190)
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @JSON_Writer_WriteSpace(i32 %193, i32 1)
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 3
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %198, align 8
  %200 = load i64, i64* %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 1
  %203 = load i8*, i8** %202, align 8
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 3
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %205, align 8
  %207 = load i64, i64* %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 1
  %210 = load i8*, i8** %209, align 8
  %211 = call i32 @strlen(i8* %210)
  %212 = load i32, i32* @JSON_UTF8, align 4
  %213 = call i32 @JSON_Writer_WriteString(i32 %196, i8* %203, i32 %211, i32 %212)
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @JSON_Writer_WriteComma(i32 %215)
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = call i32 @JSON_Writer_WriteNewLine(i32 %218)
  %220 = bitcast [32 x i8]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %220, i8 0, i64 32, i1 false)
  %221 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %222 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 3
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %223, align 8
  %225 = load i64, i64* %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = call i32 @snprintf(i8* %221, i32 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 %228)
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = call i32 @JSON_Writer_WriteSpace(i32 %231, i32 6)
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = call i32 @STRLEN_CONST(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  %236 = load i32, i32* @JSON_UTF8, align 4
  %237 = call i32 @JSON_Writer_WriteString(i32 %234, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %235, i32 %236)
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = call i32 @JSON_Writer_WriteColon(i32 %239)
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @JSON_Writer_WriteSpace(i32 %242, i32 1)
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %247 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %248 = call i32 @strlen(i8* %247)
  %249 = load i32, i32* @JSON_UTF8, align 4
  %250 = call i32 @JSON_Writer_WriteNumber(i32 %245, i8* %246, i32 %248, i32 %249)
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = call i32 @JSON_Writer_WriteComma(i32 %252)
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = call i32 @JSON_Writer_WriteNewLine(i32 %255)
  %257 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %258 = call i32 @memset(i8* %257, i32 0, i32 32)
  %259 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %260 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i32 0, i32 3
  %262 = load %struct.TYPE_6__*, %struct.TYPE_6__** %261, align 8
  %263 = load i64, i64* %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %262, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i32 0, i32 3
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @snprintf(i8* %259, i32 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 %266)
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = call i32 @JSON_Writer_WriteSpace(i32 %269, i32 6)
  %271 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = call i32 @STRLEN_CONST(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  %274 = load i32, i32* @JSON_UTF8, align 4
  %275 = call i32 @JSON_Writer_WriteString(i32 %272, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i32 %273, i32 %274)
  %276 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = call i32 @JSON_Writer_WriteColon(i32 %277)
  %279 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = call i32 @JSON_Writer_WriteSpace(i32 %280, i32 1)
  %282 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %285 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %286 = call i32 @strlen(i8* %285)
  %287 = load i32, i32* @JSON_UTF8, align 4
  %288 = call i32 @JSON_Writer_WriteNumber(i32 %283, i8* %284, i32 %286, i32 %287)
  %289 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = call i32 @JSON_Writer_WriteComma(i32 %290)
  %292 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = call i32 @JSON_Writer_WriteNewLine(i32 %293)
  %295 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %296 = call i32 @memset(i8* %295, i32 0, i32 32)
  %297 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %298 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %299 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %298, i32 0, i32 3
  %300 = load %struct.TYPE_6__*, %struct.TYPE_6__** %299, align 8
  %301 = load i64, i64* %3, align 8
  %302 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %300, i64 %301
  %303 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %302, i32 0, i32 4
  %304 = load i32, i32* %303, align 8
  %305 = call i32 @snprintf(i8* %297, i32 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 %304)
  %306 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = call i32 @JSON_Writer_WriteSpace(i32 %307, i32 6)
  %309 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = call i32 @STRLEN_CONST(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  %312 = load i32, i32* @JSON_UTF8, align 4
  %313 = call i32 @JSON_Writer_WriteString(i32 %310, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 %311, i32 %312)
  %314 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = call i32 @JSON_Writer_WriteColon(i32 %315)
  %317 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = call i32 @JSON_Writer_WriteSpace(i32 %318, i32 1)
  %320 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %323 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %324 = call i32 @strlen(i8* %323)
  %325 = load i32, i32* @JSON_UTF8, align 4
  %326 = call i32 @JSON_Writer_WriteNumber(i32 %321, i8* %322, i32 %324, i32 %325)
  %327 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  %329 = call i32 @JSON_Writer_WriteComma(i32 %328)
  %330 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = call i32 @JSON_Writer_WriteNewLine(i32 %331)
  %333 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %334 = call i32 @memset(i8* %333, i32 0, i32 32)
  %335 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %336 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %337 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %336, i32 0, i32 3
  %338 = load %struct.TYPE_6__*, %struct.TYPE_6__** %337, align 8
  %339 = load i64, i64* %3, align 8
  %340 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %338, i64 %339
  %341 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %340, i32 0, i32 5
  %342 = load i32, i32* %341, align 4
  %343 = call i32 @snprintf(i8* %335, i32 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 %342)
  %344 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = call i32 @JSON_Writer_WriteSpace(i32 %345, i32 6)
  %347 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = call i32 @STRLEN_CONST(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0))
  %350 = load i32, i32* @JSON_UTF8, align 4
  %351 = call i32 @JSON_Writer_WriteString(i32 %348, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i32 %349, i32 %350)
  %352 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %353 = load i32, i32* %352, align 8
  %354 = call i32 @JSON_Writer_WriteColon(i32 %353)
  %355 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %356 = load i32, i32* %355, align 8
  %357 = call i32 @JSON_Writer_WriteSpace(i32 %356, i32 1)
  %358 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %359 = load i32, i32* %358, align 8
  %360 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %361 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %362 = call i32 @strlen(i8* %361)
  %363 = load i32, i32* @JSON_UTF8, align 4
  %364 = call i32 @JSON_Writer_WriteNumber(i32 %359, i8* %360, i32 %362, i32 %363)
  %365 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %366 = load i32, i32* %365, align 8
  %367 = call i32 @JSON_Writer_WriteComma(i32 %366)
  %368 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %369 = load i32, i32* %368, align 8
  %370 = call i32 @JSON_Writer_WriteNewLine(i32 %369)
  %371 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %372 = call i32 @memset(i8* %371, i32 0, i32 32)
  %373 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %374 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %375 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %374, i32 0, i32 3
  %376 = load %struct.TYPE_6__*, %struct.TYPE_6__** %375, align 8
  %377 = load i64, i64* %3, align 8
  %378 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %376, i64 %377
  %379 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %378, i32 0, i32 6
  %380 = load i32, i32* %379, align 8
  %381 = call i32 @snprintf(i8* %373, i32 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 %380)
  %382 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %383 = load i32, i32* %382, align 8
  %384 = call i32 @JSON_Writer_WriteSpace(i32 %383, i32 6)
  %385 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %386 = load i32, i32* %385, align 8
  %387 = call i32 @STRLEN_CONST(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0))
  %388 = load i32, i32* @JSON_UTF8, align 4
  %389 = call i32 @JSON_Writer_WriteString(i32 %386, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i32 %387, i32 %388)
  %390 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %391 = load i32, i32* %390, align 8
  %392 = call i32 @JSON_Writer_WriteColon(i32 %391)
  %393 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %394 = load i32, i32* %393, align 8
  %395 = call i32 @JSON_Writer_WriteSpace(i32 %394, i32 1)
  %396 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %397 = load i32, i32* %396, align 8
  %398 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %399 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %400 = call i32 @strlen(i8* %399)
  %401 = load i32, i32* @JSON_UTF8, align 4
  %402 = call i32 @JSON_Writer_WriteNumber(i32 %397, i8* %398, i32 %400, i32 %401)
  %403 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %404 = load i32, i32* %403, align 8
  %405 = call i32 @JSON_Writer_WriteComma(i32 %404)
  %406 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %407 = load i32, i32* %406, align 8
  %408 = call i32 @JSON_Writer_WriteNewLine(i32 %407)
  %409 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %410 = call i32 @memset(i8* %409, i32 0, i32 32)
  %411 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %412 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %413 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %412, i32 0, i32 3
  %414 = load %struct.TYPE_6__*, %struct.TYPE_6__** %413, align 8
  %415 = load i64, i64* %3, align 8
  %416 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %414, i64 %415
  %417 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %416, i32 0, i32 7
  %418 = load i32, i32* %417, align 4
  %419 = call i32 @snprintf(i8* %411, i32 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 %418)
  %420 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %421 = load i32, i32* %420, align 8
  %422 = call i32 @JSON_Writer_WriteSpace(i32 %421, i32 6)
  %423 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %424 = load i32, i32* %423, align 8
  %425 = call i32 @STRLEN_CONST(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0))
  %426 = load i32, i32* @JSON_UTF8, align 4
  %427 = call i32 @JSON_Writer_WriteString(i32 %424, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 %425, i32 %426)
  %428 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %429 = load i32, i32* %428, align 8
  %430 = call i32 @JSON_Writer_WriteColon(i32 %429)
  %431 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %432 = load i32, i32* %431, align 8
  %433 = call i32 @JSON_Writer_WriteSpace(i32 %432, i32 1)
  %434 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %435 = load i32, i32* %434, align 8
  %436 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %437 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %438 = call i32 @strlen(i8* %437)
  %439 = load i32, i32* @JSON_UTF8, align 4
  %440 = call i32 @JSON_Writer_WriteNumber(i32 %435, i8* %436, i32 %438, i32 %439)
  %441 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %442 = load i32, i32* %441, align 8
  %443 = call i32 @JSON_Writer_WriteComma(i32 %442)
  %444 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %445 = load i32, i32* %444, align 8
  %446 = call i32 @JSON_Writer_WriteNewLine(i32 %445)
  %447 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %448 = call i32 @memset(i8* %447, i32 0, i32 32)
  %449 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %450 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %451 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %450, i32 0, i32 3
  %452 = load %struct.TYPE_6__*, %struct.TYPE_6__** %451, align 8
  %453 = load i64, i64* %3, align 8
  %454 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %452, i64 %453
  %455 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %454, i32 0, i32 8
  %456 = load i32, i32* %455, align 8
  %457 = call i32 @snprintf(i8* %449, i32 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 %456)
  %458 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %459 = load i32, i32* %458, align 8
  %460 = call i32 @JSON_Writer_WriteSpace(i32 %459, i32 6)
  %461 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %462 = load i32, i32* %461, align 8
  %463 = call i32 @STRLEN_CONST(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0))
  %464 = load i32, i32* @JSON_UTF8, align 4
  %465 = call i32 @JSON_Writer_WriteString(i32 %462, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i32 %463, i32 %464)
  %466 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %467 = load i32, i32* %466, align 8
  %468 = call i32 @JSON_Writer_WriteColon(i32 %467)
  %469 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %470 = load i32, i32* %469, align 8
  %471 = call i32 @JSON_Writer_WriteSpace(i32 %470, i32 1)
  %472 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %473 = load i32, i32* %472, align 8
  %474 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %475 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %476 = call i32 @strlen(i8* %475)
  %477 = load i32, i32* @JSON_UTF8, align 4
  %478 = call i32 @JSON_Writer_WriteNumber(i32 %473, i8* %474, i32 %476, i32 %477)
  %479 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %480 = load i32, i32* %479, align 8
  %481 = call i32 @JSON_Writer_WriteComma(i32 %480)
  %482 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %483 = load i32, i32* %482, align 8
  %484 = call i32 @JSON_Writer_WriteNewLine(i32 %483)
  %485 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %486 = call i32 @memset(i8* %485, i32 0, i32 32)
  %487 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %488 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %489 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %488, i32 0, i32 3
  %490 = load %struct.TYPE_6__*, %struct.TYPE_6__** %489, align 8
  %491 = load i64, i64* %3, align 8
  %492 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %490, i64 %491
  %493 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %492, i32 0, i32 9
  %494 = load i32, i32* %493, align 4
  %495 = call i32 @snprintf(i8* %487, i32 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 %494)
  %496 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %497 = load i32, i32* %496, align 8
  %498 = call i32 @JSON_Writer_WriteSpace(i32 %497, i32 6)
  %499 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %500 = load i32, i32* %499, align 8
  %501 = call i32 @STRLEN_CONST(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0))
  %502 = load i32, i32* @JSON_UTF8, align 4
  %503 = call i32 @JSON_Writer_WriteString(i32 %500, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0), i32 %501, i32 %502)
  %504 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %505 = load i32, i32* %504, align 8
  %506 = call i32 @JSON_Writer_WriteColon(i32 %505)
  %507 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %508 = load i32, i32* %507, align 8
  %509 = call i32 @JSON_Writer_WriteSpace(i32 %508, i32 1)
  %510 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %511 = load i32, i32* %510, align 8
  %512 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %513 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %514 = call i32 @strlen(i8* %513)
  %515 = load i32, i32* @JSON_UTF8, align 4
  %516 = call i32 @JSON_Writer_WriteNumber(i32 %511, i8* %512, i32 %514, i32 %515)
  %517 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %518 = load i32, i32* %517, align 8
  %519 = call i32 @JSON_Writer_WriteComma(i32 %518)
  %520 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %521 = load i32, i32* %520, align 8
  %522 = call i32 @JSON_Writer_WriteNewLine(i32 %521)
  %523 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %524 = call i32 @memset(i8* %523, i32 0, i32 32)
  %525 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %526 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %527 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %526, i32 0, i32 3
  %528 = load %struct.TYPE_6__*, %struct.TYPE_6__** %527, align 8
  %529 = load i64, i64* %3, align 8
  %530 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %528, i64 %529
  %531 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %530, i32 0, i32 10
  %532 = load i32, i32* %531, align 8
  %533 = call i32 @snprintf(i8* %525, i32 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 %532)
  %534 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %535 = load i32, i32* %534, align 8
  %536 = call i32 @JSON_Writer_WriteSpace(i32 %535, i32 6)
  %537 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %538 = load i32, i32* %537, align 8
  %539 = call i32 @STRLEN_CONST(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0))
  %540 = load i32, i32* @JSON_UTF8, align 4
  %541 = call i32 @JSON_Writer_WriteString(i32 %538, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0), i32 %539, i32 %540)
  %542 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %543 = load i32, i32* %542, align 8
  %544 = call i32 @JSON_Writer_WriteColon(i32 %543)
  %545 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %546 = load i32, i32* %545, align 8
  %547 = call i32 @JSON_Writer_WriteSpace(i32 %546, i32 1)
  %548 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %549 = load i32, i32* %548, align 8
  %550 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %551 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %552 = call i32 @strlen(i8* %551)
  %553 = load i32, i32* @JSON_UTF8, align 4
  %554 = call i32 @JSON_Writer_WriteNumber(i32 %549, i8* %550, i32 %552, i32 %553)
  %555 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %556 = load i32, i32* %555, align 8
  %557 = call i32 @JSON_Writer_WriteNewLine(i32 %556)
  %558 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %559 = load i32, i32* %558, align 8
  %560 = call i32 @JSON_Writer_WriteSpace(i32 %559, i32 4)
  %561 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %562 = load i32, i32* %561, align 8
  %563 = call i32 @JSON_Writer_WriteEndObject(i32 %562)
  %564 = load i64, i64* %3, align 8
  %565 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %566 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %565, i32 0, i32 1
  %567 = load i64, i64* %566, align 8
  %568 = sub i64 %567, 1
  %569 = icmp ult i64 %564, %568
  br i1 %569, label %570, label %574

570:                                              ; preds = %171
  %571 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %572 = load i32, i32* %571, align 8
  %573 = call i32 @JSON_Writer_WriteComma(i32 %572)
  br label %574

574:                                              ; preds = %570, %171
  %575 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %576 = load i32, i32* %575, align 8
  %577 = call i32 @JSON_Writer_WriteNewLine(i32 %576)
  br label %578

578:                                              ; preds = %574
  %579 = load i64, i64* %3, align 8
  %580 = add i64 %579, 1
  store i64 %580, i64* %3, align 8
  br label %102

581:                                              ; preds = %102
  %582 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %583 = load i32, i32* %582, align 8
  %584 = call i32 @JSON_Writer_WriteSpace(i32 %583, i32 2)
  %585 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %586 = load i32, i32* %585, align 8
  %587 = call i32 @JSON_Writer_WriteEndArray(i32 %586)
  %588 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %589 = load i32, i32* %588, align 8
  %590 = call i32 @JSON_Writer_WriteNewLine(i32 %589)
  %591 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %592 = load i32, i32* %591, align 8
  %593 = call i32 @JSON_Writer_WriteEndObject(i32 %592)
  %594 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %595 = load i32, i32* %594, align 8
  %596 = call i32 @JSON_Writer_WriteNewLine(i32 %595)
  %597 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %598 = load i32, i32* %597, align 8
  %599 = call i32 @JSON_Writer_Free(i32 %598)
  %600 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %601 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %600, i32 0, i32 0
  store i32 0, i32* %601, align 8
  %602 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %603 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %602, i32 0, i32 2
  %604 = load i32, i32* %603, align 8
  %605 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i64 0, i64 0), i32 %604)
  br label %606

606:                                              ; preds = %581, %38
  %607 = load i32*, i32** %4, align 8
  %608 = call i32 @filestream_close(i32* %607)
  br label %609

609:                                              ; preds = %606, %25, %15
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @filestream_open(i32, i32, i32) #2

declare dso_local i32 @RARCH_ERR(i8*, ...) #2

declare dso_local i32 @JSON_Writer_Create(i32*) #2

declare dso_local i32 @JSON_Writer_SetOutputEncoding(i32, i32) #2

declare dso_local i32 @JSON_Writer_SetOutputHandler(i32, i32*) #2

declare dso_local i32 @JSON_Writer_SetUserData(i32, %struct.TYPE_8__*) #2

declare dso_local i32 @JSON_Writer_WriteStartObject(i32) #2

declare dso_local i32 @JSON_Writer_WriteNewLine(i32) #2

declare dso_local i32 @JSON_Writer_WriteSpace(i32, i32) #2

declare dso_local i32 @JSON_Writer_WriteString(i32, i8*, i32, i32) #2

declare dso_local i32 @STRLEN_CONST(i8*) #2

declare dso_local i32 @JSON_Writer_WriteColon(i32) #2

declare dso_local i32 @JSON_Writer_WriteComma(i32) #2

declare dso_local i32 @JSON_Writer_WriteStartArray(i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @JSON_Writer_WriteNumber(i32, i8*, i32, i32) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @JSON_Writer_WriteEndObject(i32) #2

declare dso_local i32 @JSON_Writer_WriteEndArray(i32) #2

declare dso_local i32 @JSON_Writer_Free(i32) #2

declare dso_local i32 @RARCH_LOG(i8*, i32) #2

declare dso_local i32 @filestream_close(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
