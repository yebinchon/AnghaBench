; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..runtime_file.c_runtime_log_get_last_played_str.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..runtime_file.c_runtime_log_get_last_played_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c" %Y/%m/%d - %I:%M:%S %p\00", align 1
@MENU_ENUM_LABEL_VALUE_PLAYLIST_SUBLABEL_LAST_PLAYED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c" %Y/%m/%d - %I:%M %p\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c" %m/%d/%Y - %I:%M %p\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c" %d/%m - %I:%M %p\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c" %m/%d - %I:%M %p\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"%s %04u/%02u/%02u - %02u:%02u\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"%s %02u/%02u/%04u - %02u:%02u\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"%s %02u/%02u - %02u:%02u\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"%s %04u/%02u/%02u - %02u:%02u:%02u\00", align 1
@MENU_ENUM_LABEL_VALUE_PLAYLIST_INLINE_CORE_DISPLAY_NEVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @runtime_log_get_last_played_str(%struct.TYPE_6__* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [64 x i8], align 16
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = call i32* (...) @config_get_ptr()
  store i32* %12, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  store i8 0, i8* %13, align 16
  %14 = load i32*, i32** %9, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  br label %244

17:                                               ; preds = %4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = icmp ne %struct.TYPE_6__* %18, null
  br i1 %19, label %20, label %217

20:                                               ; preds = %17
  %21 = load i32, i32* %8, align 4
  switch i32 %21, label %87 [
    i32 129, label %22
    i32 128, label %35
    i32 134, label %48
    i32 136, label %61
    i32 132, label %74
  ]

22:                                               ; preds = %20
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %25 = call i32 @last_played_strftime(%struct.TYPE_6__* %23, i8* %24, i32 64, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* @MENU_ENUM_LABEL_VALUE_PLAYLIST_SUBLABEL_LAST_PLAYED, align 4
  %28 = call i8* @msg_hash_to_str(i32 %27)
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @strlcpy(i8* %26, i8* %28, i64 %29)
  %31 = load i8*, i8** %6, align 8
  %32 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @strlcat(i8* %31, i8* %32, i64 %33)
  br label %244

35:                                               ; preds = %20
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %37 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %38 = call i32 @last_played_strftime(%struct.TYPE_6__* %36, i8* %37, i32 64, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* @MENU_ENUM_LABEL_VALUE_PLAYLIST_SUBLABEL_LAST_PLAYED, align 4
  %41 = call i8* @msg_hash_to_str(i32 %40)
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @strlcpy(i8* %39, i8* %41, i64 %42)
  %44 = load i8*, i8** %6, align 8
  %45 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @strlcat(i8* %44, i8* %45, i64 %46)
  br label %244

48:                                               ; preds = %20
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %50 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %51 = call i32 @last_played_strftime(%struct.TYPE_6__* %49, i8* %50, i32 64, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i8*, i8** %6, align 8
  %53 = load i32, i32* @MENU_ENUM_LABEL_VALUE_PLAYLIST_SUBLABEL_LAST_PLAYED, align 4
  %54 = call i8* @msg_hash_to_str(i32 %53)
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @strlcpy(i8* %52, i8* %54, i64 %55)
  %57 = load i8*, i8** %6, align 8
  %58 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %59 = load i64, i64* %7, align 8
  %60 = call i32 @strlcat(i8* %57, i8* %58, i64 %59)
  br label %244

61:                                               ; preds = %20
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %63 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %64 = call i32 @last_played_strftime(%struct.TYPE_6__* %62, i8* %63, i32 64, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %65 = load i8*, i8** %6, align 8
  %66 = load i32, i32* @MENU_ENUM_LABEL_VALUE_PLAYLIST_SUBLABEL_LAST_PLAYED, align 4
  %67 = call i8* @msg_hash_to_str(i32 %66)
  %68 = load i64, i64* %7, align 8
  %69 = call i32 @strlcpy(i8* %65, i8* %67, i64 %68)
  %70 = load i8*, i8** %6, align 8
  %71 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %72 = load i64, i64* %7, align 8
  %73 = call i32 @strlcat(i8* %70, i8* %71, i64 %72)
  br label %244

74:                                               ; preds = %20
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %76 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %77 = call i32 @last_played_strftime(%struct.TYPE_6__* %75, i8* %76, i32 64, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %78 = load i8*, i8** %6, align 8
  %79 = load i32, i32* @MENU_ENUM_LABEL_VALUE_PLAYLIST_SUBLABEL_LAST_PLAYED, align 4
  %80 = call i8* @msg_hash_to_str(i32 %79)
  %81 = load i64, i64* %7, align 8
  %82 = call i32 @strlcpy(i8* %78, i8* %80, i64 %81)
  %83 = load i8*, i8** %6, align 8
  %84 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %85 = load i64, i64* %7, align 8
  %86 = call i32 @strlcat(i8* %83, i8* %84, i64 %85)
  br label %244

87:                                               ; preds = %20
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %8, align 4
  switch i32 %89, label %187 [
    i32 131, label %90
    i32 135, label %116
    i32 137, label %142
    i32 133, label %164
    i32 130, label %186
  ]

90:                                               ; preds = %88
  %91 = load i8*, i8** %6, align 8
  %92 = load i64, i64* %7, align 8
  %93 = load i32, i32* @MENU_ENUM_LABEL_VALUE_PLAYLIST_SUBLABEL_LAST_PLAYED, align 4
  %94 = call i8* @msg_hash_to_str(i32 %93)
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = call i32 (i8*, i64, i8*, i8*, i32, i32, i32, i32, ...) @snprintf(i8* %91, i64 %92, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* %94, i32 %98, i32 %102, i32 %106, i32 %110, i32 %114)
  store i32 %115, i32* %10, align 4
  br label %244

116:                                              ; preds = %88
  %117 = load i8*, i8** %6, align 8
  %118 = load i64, i64* %7, align 8
  %119 = load i32, i32* @MENU_ENUM_LABEL_VALUE_PLAYLIST_SUBLABEL_LAST_PLAYED, align 4
  %120 = call i8* @msg_hash_to_str(i32 %119)
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 4
  %141 = call i32 (i8*, i64, i8*, i8*, i32, i32, i32, i32, ...) @snprintf(i8* %117, i64 %118, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i8* %120, i32 %124, i32 %128, i32 %132, i32 %136, i32 %140)
  store i32 %141, i32* %10, align 4
  br label %244

142:                                              ; preds = %88
  %143 = load i8*, i8** %6, align 8
  %144 = load i64, i64* %7, align 8
  %145 = load i32, i32* @MENU_ENUM_LABEL_VALUE_PLAYLIST_SUBLABEL_LAST_PLAYED, align 4
  %146 = call i8* @msg_hash_to_str(i32 %145)
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 4
  %163 = call i32 (i8*, i64, i8*, i8*, i32, i32, i32, i32, ...) @snprintf(i8* %143, i64 %144, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8* %146, i32 %150, i32 %154, i32 %158, i32 %162)
  store i32 %163, i32* %10, align 4
  br label %244

164:                                              ; preds = %88
  %165 = load i8*, i8** %6, align 8
  %166 = load i64, i64* %7, align 8
  %167 = load i32, i32* @MENU_ENUM_LABEL_VALUE_PLAYLIST_SUBLABEL_LAST_PLAYED, align 4
  %168 = call i8* @msg_hash_to_str(i32 %167)
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 4
  %185 = call i32 (i8*, i64, i8*, i8*, i32, i32, i32, i32, ...) @snprintf(i8* %165, i64 %166, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8* %168, i32 %172, i32 %176, i32 %180, i32 %184)
  store i32 %185, i32* %10, align 4
  br label %244

186:                                              ; preds = %88
  br label %187

187:                                              ; preds = %88, %186
  %188 = load i8*, i8** %6, align 8
  %189 = load i64, i64* %7, align 8
  %190 = load i32, i32* @MENU_ENUM_LABEL_VALUE_PLAYLIST_SUBLABEL_LAST_PLAYED, align 4
  %191 = call i8* @msg_hash_to_str(i32 %190)
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 4
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 5
  %215 = load i32, i32* %214, align 4
  %216 = call i32 (i8*, i64, i8*, i8*, i32, i32, i32, i32, ...) @snprintf(i8* %188, i64 %189, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i8* %191, i32 %195, i32 %199, i32 %203, i32 %207, i32 %211, i32 %215)
  store i32 %216, i32* %10, align 4
  br label %244

217:                                              ; preds = %17
  %218 = load i8*, i8** %6, align 8
  %219 = load i32, i32* @MENU_ENUM_LABEL_VALUE_PLAYLIST_SUBLABEL_LAST_PLAYED, align 4
  %220 = call i8* @msg_hash_to_str(i32 %219)
  %221 = load i64, i64* %7, align 8
  %222 = call i32 @strlcpy(i8* %218, i8* %220, i64 %221)
  store i32 %222, i32* %10, align 4
  %223 = load i8*, i8** %6, align 8
  %224 = load i32, i32* %10, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i8, i8* %223, i64 %225
  store i8 32, i8* %226, align 1
  %227 = load i8*, i8** %6, align 8
  %228 = load i32, i32* %10, align 4
  %229 = add nsw i32 %228, 1
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i8, i8* %227, i64 %230
  store i8 0, i8* %231, align 1
  %232 = load i8*, i8** %6, align 8
  %233 = load i32, i32* @MENU_ENUM_LABEL_VALUE_PLAYLIST_INLINE_CORE_DISPLAY_NEVER, align 4
  %234 = call i8* @msg_hash_to_str(i32 %233)
  %235 = load i64, i64* %7, align 8
  %236 = call i32 @strlcat(i8* %232, i8* %234, i64 %235)
  store i32 %236, i32* %10, align 4
  br label %237

237:                                              ; preds = %217
  %238 = load i32, i32* %10, align 4
  %239 = icmp slt i32 %238, 0
  br i1 %239, label %243, label %240

240:                                              ; preds = %237
  %241 = load i32, i32* %10, align 4
  %242 = icmp sge i32 %241, 64
  br i1 %242, label %243, label %244

243:                                              ; preds = %240, %237
  store i32 0, i32* %10, align 4
  br label %244

244:                                              ; preds = %16, %22, %35, %48, %61, %74, %90, %116, %142, %164, %187, %243, %240
  ret void
}

declare dso_local i32* @config_get_ptr(...) #1

declare dso_local i32 @last_played_strftime(%struct.TYPE_6__*, i8*, i32, i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

declare dso_local i8* @msg_hash_to_str(i32) #1

declare dso_local i32 @strlcat(i8*, i8*, i64) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i32, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
