; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_callbacks.c_set_destination_settings.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_callbacks.c_set_destination_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32*, i32* }
%struct.tm = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"set_destination_settings\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"dest_file\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"volume\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c".%s\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"dest_dir\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"destination_dir\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"auto_name\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"auto_name_template\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"{source-path}\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"{source_path}\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"scan_source\00", align 1
@G_FILE_TEST_IS_DIR = common dso_local global i32 0, align 4
@W_OK = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [9 x i8] c"{source}\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"{title}\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"{preset}\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"PresetName\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"{chapters}\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"PtoPType\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"start_point\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"end_point\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"%d-%d\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"{time}\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"%H:%M\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"{date}\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"%Y-%m-%d\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"{creation-date}\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"MetaReleaseDate\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"{creation-time}\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"{quality}\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"vquality_type_constant\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"VideoEncoder\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"VideoQualitySlider\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"%s%.3g\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"{bitrate}\00", align 1
@.str.37 = private unnamed_addr constant [22 x i8] c"vquality_type_bitrate\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"VideoAvgBitrate\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"%dkbps\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32*)* @set_destination_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_destination_settings(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*****, align 8
  %6 = alloca i32*****, align 8
  %7 = alloca i32*****, align 8
  %8 = alloca i32*****, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*****, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*****, align 8
  %13 = alloca i32*****, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*****, align 8
  %16 = alloca i32*****, align 8
  %17 = alloca i32*****, align 8
  %18 = alloca i32*****, align 8
  %19 = alloca i32*****, align 8
  %20 = alloca [6 x i8], align 1
  %21 = alloca %struct.tm*, align 8
  %22 = alloca i32, align 4
  %23 = alloca [11 x i8], align 1
  %24 = alloca %struct.tm*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32*****, align 8
  %27 = alloca i32*****, align 8
  %28 = alloca i32*****, align 8
  %29 = alloca i32*****, align 8
  %30 = alloca i32*****, align 8
  %31 = alloca i8*, align 8
  %32 = alloca double, align 8
  %33 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32* %1, i32** %4, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = call i32******* @get_extension(%struct.TYPE_4__* %34, i32* %35)
  %37 = bitcast i32******* %36 to i32*****
  store i32***** %37, i32****** %5, align 8
  %38 = call i32 @g_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = call i32******* @ghb_dict_get_string(i32* %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %43 = bitcast i32******* %42 to i32*****
  store i32***** %43, i32****** %6, align 8
  %44 = load i32*****, i32****** %6, align 8
  %45 = icmp eq i32***** %44, null
  br i1 %45, label %46, label %68

46:                                               ; preds = %2
  %47 = call i32* @g_string_new(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  store i32* %47, i32** %9, align 8
  %48 = load i32*, i32** %4, align 8
  %49 = call i32******* @ghb_dict_get_string(i32* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %50 = bitcast i32******* %49 to i32*****
  store i32***** %50, i32****** %10, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = load i32*****, i32****** %10, align 8
  %53 = call i32 (i32*, i8*, ...) @g_string_append_printf(i32* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32***** %52)
  %54 = load i32*, i32** %9, align 8
  %55 = load i32*****, i32****** %5, align 8
  %56 = call i32 (i32*, i8*, ...) @g_string_append_printf(i32* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32***** %55)
  %57 = load i32*, i32** %9, align 8
  %58 = load i32, i32* @FALSE, align 4
  %59 = call i32******* @g_string_free(i32* %57, i32 %58)
  %60 = bitcast i32******* %59 to i32*****
  store i32***** %60, i32****** %8, align 8
  %61 = load i32*, i32** %4, align 8
  %62 = load i32*****, i32****** %8, align 8
  %63 = bitcast i32***** %62 to i8*
  %64 = call i32 @ghb_dict_set_string(i32* %61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %63)
  %65 = load i32*****, i32****** %8, align 8
  %66 = bitcast i32***** %65 to i8*
  %67 = call i32 @g_free(i8* %66)
  br label %68

68:                                               ; preds = %46, %2
  %69 = load i32*, i32** %4, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @ghb_dict_get_value(i32* %72, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  %74 = call i32 @ghb_value_dup(i32 %73)
  %75 = call i32 @ghb_dict_set(i32* %69, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %74)
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = call i64 @ghb_dict_get_bool(i32* %78, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %402

81:                                               ; preds = %68
  %82 = call i32* @g_string_new(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  store i32* %82, i32** %11, align 8
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = call i32******* @ghb_dict_get_string(i32* %85, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  %87 = bitcast i32******* %86 to i32*****
  store i32***** %87, i32****** %12, align 8
  %88 = load i32*****, i32****** %12, align 8
  %89 = icmp ne i32***** %88, null
  br i1 %89, label %90, label %135

90:                                               ; preds = %81
  %91 = load i32*****, i32****** %12, align 8
  %92 = call i32 @strlen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  %93 = call i32 @strncasecmp(i32***** %91, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = load i32*****, i32****** %12, align 8
  %97 = call i32 @strlen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %98 = call i32 @strncasecmp(i32***** %96, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %135, label %100

100:                                              ; preds = %95, %90
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = call i32******* @ghb_dict_get_string(i32* %103, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %105 = bitcast i32******* %104 to i32*****
  store i32***** %105, i32****** %13, align 8
  %106 = load i32*****, i32****** %13, align 8
  %107 = icmp ne i32***** %106, null
  br i1 %107, label %108, label %130

108:                                              ; preds = %100
  %109 = load i32*****, i32****** %13, align 8
  %110 = call i8* @g_path_get_dirname(i32***** %109)
  store i8* %110, i8** %14, align 8
  %111 = load i8*, i8** %14, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %127

113:                                              ; preds = %108
  %114 = load i8*, i8** %14, align 8
  %115 = load i32, i32* @G_FILE_TEST_IS_DIR, align 4
  %116 = call i64 @g_file_test(i8* %114, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %113
  %119 = load i8*, i8** %14, align 8
  %120 = load i32, i32* @W_OK, align 4
  %121 = call i64 @access(i8* %119, i32 %120)
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  %124 = load i32*, i32** %4, align 8
  %125 = load i8*, i8** %14, align 8
  %126 = call i32 @ghb_dict_set_string(i32* %124, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* %125)
  br label %127

127:                                              ; preds = %123, %118, %113, %108
  %128 = load i8*, i8** %14, align 8
  %129 = call i32 @g_free(i8* %128)
  br label %130

130:                                              ; preds = %127, %100
  %131 = call i32 @strlen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  %132 = load i32*****, i32****** %12, align 8
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds i32****, i32***** %132, i64 %133
  store i32***** %134, i32****** %12, align 8
  br label %135

135:                                              ; preds = %130, %95, %81
  br label %136

136:                                              ; preds = %379, %135
  %137 = load i32*****, i32****** %12, align 8
  %138 = load i32****, i32***** %137, align 8
  %139 = icmp ne i32**** %138, null
  br i1 %139, label %140, label %380

140:                                              ; preds = %136
  %141 = load i32*****, i32****** %12, align 8
  %142 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  %143 = call i32 @strncasecmp(i32***** %141, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i32 %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %156, label %145

145:                                              ; preds = %140
  %146 = load i32*, i32** %4, align 8
  %147 = call i32******* @ghb_dict_get_string(i32* %146, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %148 = bitcast i32******* %147 to i32*****
  store i32***** %148, i32****** %15, align 8
  %149 = load i32*, i32** %11, align 8
  %150 = load i32*****, i32****** %15, align 8
  %151 = call i32 (i32*, i8*, ...) @g_string_append_printf(i32* %149, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32***** %150)
  %152 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  %153 = load i32*****, i32****** %12, align 8
  %154 = sext i32 %152 to i64
  %155 = getelementptr inbounds i32****, i32***** %153, i64 %154
  store i32***** %155, i32****** %12, align 8
  br label %379

156:                                              ; preds = %140
  %157 = load i32*****, i32****** %12, align 8
  %158 = call i32 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  %159 = call i32 @strncasecmp(i32***** %157, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %176, label %161

161:                                              ; preds = %156
  %162 = load i32*, i32** %4, align 8
  %163 = call i8* @ghb_dict_get_int(i32* %162, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  %164 = bitcast i8* %163 to i32*****
  store i32***** %164, i32****** %16, align 8
  %165 = load i32*****, i32****** %16, align 8
  %166 = icmp uge i32***** %165, null
  br i1 %166, label %167, label %171

167:                                              ; preds = %161
  %168 = load i32*, i32** %11, align 8
  %169 = load i32*****, i32****** %16, align 8
  %170 = call i32 (i32*, i8*, ...) @g_string_append_printf(i32* %168, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i32***** %169)
  br label %171

171:                                              ; preds = %167, %161
  %172 = call i32 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  %173 = load i32*****, i32****** %12, align 8
  %174 = sext i32 %172 to i64
  %175 = getelementptr inbounds i32****, i32***** %173, i64 %174
  store i32***** %175, i32****** %12, align 8
  br label %378

176:                                              ; preds = %156
  %177 = load i32*****, i32****** %12, align 8
  %178 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0))
  %179 = call i32 @strncasecmp(i32***** %177, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i32 %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %192, label %181

181:                                              ; preds = %176
  %182 = load i32*, i32** %4, align 8
  %183 = call i32******* @ghb_dict_get_string(i32* %182, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0))
  %184 = bitcast i32******* %183 to i32*****
  store i32***** %184, i32****** %17, align 8
  %185 = load i32*, i32** %11, align 8
  %186 = load i32*****, i32****** %17, align 8
  %187 = call i32 (i32*, i8*, ...) @g_string_append_printf(i32* %185, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32***** %186)
  %188 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0))
  %189 = load i32*****, i32****** %12, align 8
  %190 = sext i32 %188 to i64
  %191 = getelementptr inbounds i32****, i32***** %189, i64 %190
  store i32***** %191, i32****** %12, align 8
  br label %377

192:                                              ; preds = %176
  %193 = load i32*****, i32****** %12, align 8
  %194 = call i32 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0))
  %195 = call i32 @strncasecmp(i32***** %193, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i32 %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %226, label %197

197:                                              ; preds = %192
  %198 = load i32*, i32** %4, align 8
  %199 = call i64 @ghb_settings_combo_int(i32* %198, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0))
  %200 = icmp eq i64 %199, 0
  br i1 %200, label %201, label %221

201:                                              ; preds = %197
  %202 = load i32*, i32** %4, align 8
  %203 = call i8* @ghb_dict_get_int(i32* %202, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0))
  %204 = bitcast i8* %203 to i32*****
  store i32***** %204, i32****** %18, align 8
  %205 = load i32*, i32** %4, align 8
  %206 = call i8* @ghb_dict_get_int(i32* %205, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0))
  %207 = bitcast i8* %206 to i32*****
  store i32***** %207, i32****** %19, align 8
  %208 = load i32*****, i32****** %18, align 8
  %209 = load i32*****, i32****** %19, align 8
  %210 = icmp eq i32***** %208, %209
  br i1 %210, label %211, label %215

211:                                              ; preds = %201
  %212 = load i32*, i32** %11, align 8
  %213 = load i32*****, i32****** %18, align 8
  %214 = call i32 (i32*, i8*, ...) @g_string_append_printf(i32* %212, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i32***** %213)
  br label %220

215:                                              ; preds = %201
  %216 = load i32*, i32** %11, align 8
  %217 = load i32*****, i32****** %18, align 8
  %218 = load i32*****, i32****** %19, align 8
  %219 = call i32 (i32*, i8*, ...) @g_string_append_printf(i32* %216, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), i32***** %217, i32***** %218)
  br label %220

220:                                              ; preds = %215, %211
  br label %221

221:                                              ; preds = %220, %197
  %222 = call i32 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0))
  %223 = load i32*****, i32****** %12, align 8
  %224 = sext i32 %222 to i64
  %225 = getelementptr inbounds i32****, i32***** %223, i64 %224
  store i32***** %225, i32****** %12, align 8
  br label %376

226:                                              ; preds = %192
  %227 = load i32*****, i32****** %12, align 8
  %228 = call i32 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0))
  %229 = call i32 @strncasecmp(i32***** %227, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), i32 %228)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %245, label %231

231:                                              ; preds = %226
  %232 = call i32 @time(i32* null)
  store i32 %232, i32* %22, align 4
  %233 = call %struct.tm* @localtime(i32* %22)
  store %struct.tm* %233, %struct.tm** %21, align 8
  %234 = getelementptr inbounds [6 x i8], [6 x i8]* %20, i64 0, i64 0
  store i8 0, i8* %234, align 1
  %235 = getelementptr inbounds [6 x i8], [6 x i8]* %20, i64 0, i64 0
  %236 = load %struct.tm*, %struct.tm** %21, align 8
  %237 = call i32 @strftime(i8* %235, i32 6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), %struct.tm* %236)
  %238 = load i32*, i32** %11, align 8
  %239 = getelementptr inbounds [6 x i8], [6 x i8]* %20, i64 0, i64 0
  %240 = call i32 (i32*, i8*, ...) @g_string_append_printf(i32* %238, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %239)
  %241 = call i32 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0))
  %242 = load i32*****, i32****** %12, align 8
  %243 = sext i32 %241 to i64
  %244 = getelementptr inbounds i32****, i32***** %242, i64 %243
  store i32***** %244, i32****** %12, align 8
  br label %375

245:                                              ; preds = %226
  %246 = load i32*****, i32****** %12, align 8
  %247 = call i32 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0))
  %248 = call i32 @strncasecmp(i32***** %246, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0), i32 %247)
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %264, label %250

250:                                              ; preds = %245
  %251 = call i32 @time(i32* null)
  store i32 %251, i32* %25, align 4
  %252 = call %struct.tm* @localtime(i32* %25)
  store %struct.tm* %252, %struct.tm** %24, align 8
  %253 = getelementptr inbounds [11 x i8], [11 x i8]* %23, i64 0, i64 0
  store i8 0, i8* %253, align 1
  %254 = getelementptr inbounds [11 x i8], [11 x i8]* %23, i64 0, i64 0
  %255 = load %struct.tm*, %struct.tm** %24, align 8
  %256 = call i32 @strftime(i8* %254, i32 11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0), %struct.tm* %255)
  %257 = load i32*, i32** %11, align 8
  %258 = getelementptr inbounds [11 x i8], [11 x i8]* %23, i64 0, i64 0
  %259 = call i32 (i32*, i8*, ...) @g_string_append_printf(i32* %257, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %258)
  %260 = call i32 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0))
  %261 = load i32*****, i32****** %12, align 8
  %262 = sext i32 %260 to i64
  %263 = getelementptr inbounds i32****, i32***** %261, i64 %262
  store i32***** %263, i32****** %12, align 8
  br label %374

264:                                              ; preds = %245
  %265 = load i32*****, i32****** %12, align 8
  %266 = call i32 @strlen(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i64 0, i64 0))
  %267 = call i32 @strncasecmp(i32***** %265, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i64 0, i64 0), i32 %266)
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %290, label %269

269:                                              ; preds = %264
  %270 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %270, i32 0, i32 0
  %272 = load i32*, i32** %271, align 8
  %273 = call i32******* @ghb_dict_get_string(i32* %272, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %274 = bitcast i32******* %273 to i32*****
  store i32***** %274, i32****** %27, align 8
  %275 = load i32*, i32** %4, align 8
  %276 = call i32******* @ghb_dict_get_string(i32* %275, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i64 0, i64 0))
  %277 = load i32*****, i32****** %27, align 8
  %278 = call i32******* @get_creation_date(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0), i32******* %276, i32***** %277)
  %279 = bitcast i32******* %278 to i32*****
  store i32***** %279, i32****** %26, align 8
  %280 = load i32*, i32** %11, align 8
  %281 = load i32*****, i32****** %26, align 8
  %282 = call i32 (i32*, i8*, ...) @g_string_append_printf(i32* %280, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32***** %281)
  %283 = call i32 @strlen(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i64 0, i64 0))
  %284 = load i32*****, i32****** %12, align 8
  %285 = sext i32 %283 to i64
  %286 = getelementptr inbounds i32****, i32***** %284, i64 %285
  store i32***** %286, i32****** %12, align 8
  %287 = load i32*****, i32****** %26, align 8
  %288 = bitcast i32***** %287 to i8*
  %289 = call i32 @g_free(i8* %288)
  br label %373

290:                                              ; preds = %264
  %291 = load i32*****, i32****** %12, align 8
  %292 = call i32 @strlen(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i64 0, i64 0))
  %293 = call i32 @strncasecmp(i32***** %291, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i64 0, i64 0), i32 %292)
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %316, label %295

295:                                              ; preds = %290
  %296 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %297 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %296, i32 0, i32 0
  %298 = load i32*, i32** %297, align 8
  %299 = call i32******* @ghb_dict_get_string(i32* %298, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %300 = bitcast i32******* %299 to i32*****
  store i32***** %300, i32****** %29, align 8
  %301 = load i32*, i32** %4, align 8
  %302 = call i32******* @ghb_dict_get_string(i32* %301, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i64 0, i64 0))
  %303 = load i32*****, i32****** %29, align 8
  %304 = call i32******* @get_creation_date(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), i32******* %302, i32***** %303)
  %305 = bitcast i32******* %304 to i32*****
  store i32***** %305, i32****** %28, align 8
  %306 = load i32*, i32** %11, align 8
  %307 = load i32*****, i32****** %28, align 8
  %308 = call i32 (i32*, i8*, ...) @g_string_append_printf(i32* %306, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32***** %307)
  %309 = call i32 @strlen(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i64 0, i64 0))
  %310 = load i32*****, i32****** %12, align 8
  %311 = sext i32 %309 to i64
  %312 = getelementptr inbounds i32****, i32***** %310, i64 %311
  store i32***** %312, i32****** %12, align 8
  %313 = load i32*****, i32****** %28, align 8
  %314 = bitcast i32***** %313 to i8*
  %315 = call i32 @g_free(i8* %314)
  br label %372

316:                                              ; preds = %290
  %317 = load i32*****, i32****** %12, align 8
  %318 = call i32 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0))
  %319 = call i32 @strncasecmp(i32***** %317, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0), i32 %318)
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %342, label %321

321:                                              ; preds = %316
  %322 = load i32*, i32** %4, align 8
  %323 = call i64 @ghb_dict_get_bool(i32* %322, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.32, i64 0, i64 0))
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %337

325:                                              ; preds = %321
  %326 = load i32*, i32** %4, align 8
  %327 = call i32******* @ghb_settings_video_encoder_codec(i32* %326, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0))
  %328 = bitcast i32******* %327 to i32*****
  store i32***** %328, i32****** %30, align 8
  %329 = load i32*****, i32****** %30, align 8
  %330 = call i8* @hb_video_quality_get_name(i32***** %329)
  store i8* %330, i8** %31, align 8
  %331 = load i32*, i32** %4, align 8
  %332 = call double @ghb_dict_get_double(i32* %331, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.34, i64 0, i64 0))
  store double %332, double* %32, align 8
  %333 = load i32*, i32** %11, align 8
  %334 = load i8*, i8** %31, align 8
  %335 = load double, double* %32, align 8
  %336 = call i32 (i32*, i8*, ...) @g_string_append_printf(i32* %333, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i64 0, i64 0), i8* %334, double %335)
  br label %337

337:                                              ; preds = %325, %321
  %338 = call i32 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0))
  %339 = load i32*****, i32****** %12, align 8
  %340 = sext i32 %338 to i64
  %341 = getelementptr inbounds i32****, i32***** %339, i64 %340
  store i32***** %341, i32****** %12, align 8
  br label %371

342:                                              ; preds = %316
  %343 = load i32*****, i32****** %12, align 8
  %344 = call i32 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i64 0, i64 0))
  %345 = call i32 @strncasecmp(i32***** %343, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i64 0, i64 0), i32 %344)
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %363, label %347

347:                                              ; preds = %342
  %348 = load i32*, i32** %4, align 8
  %349 = call i64 @ghb_dict_get_bool(i32* %348, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.37, i64 0, i64 0))
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %358

351:                                              ; preds = %347
  %352 = load i32*, i32** %4, align 8
  %353 = call i8* @ghb_dict_get_int(i32* %352, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.38, i64 0, i64 0))
  %354 = ptrtoint i8* %353 to i32
  store i32 %354, i32* %33, align 4
  %355 = load i32*, i32** %11, align 8
  %356 = load i32, i32* %33, align 4
  %357 = call i32 (i32*, i8*, ...) @g_string_append_printf(i32* %355, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i64 0, i64 0), i32 %356)
  br label %358

358:                                              ; preds = %351, %347
  %359 = call i32 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i64 0, i64 0))
  %360 = load i32*****, i32****** %12, align 8
  %361 = sext i32 %359 to i64
  %362 = getelementptr inbounds i32****, i32***** %360, i64 %361
  store i32***** %362, i32****** %12, align 8
  br label %370

363:                                              ; preds = %342
  %364 = load i32*, i32** %11, align 8
  %365 = load i32*****, i32****** %12, align 8
  %366 = load i32****, i32***** %365, align 8
  %367 = call i32 (i32*, i8*, ...) @g_string_append_printf(i32* %364, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0), i32**** %366)
  %368 = load i32*****, i32****** %12, align 8
  %369 = getelementptr inbounds i32****, i32***** %368, i32 1
  store i32***** %369, i32****** %12, align 8
  br label %370

370:                                              ; preds = %363, %358
  br label %371

371:                                              ; preds = %370, %337
  br label %372

372:                                              ; preds = %371, %295
  br label %373

373:                                              ; preds = %372, %269
  br label %374

374:                                              ; preds = %373, %250
  br label %375

375:                                              ; preds = %374, %231
  br label %376

376:                                              ; preds = %375, %221
  br label %377

377:                                              ; preds = %376, %181
  br label %378

378:                                              ; preds = %377, %171
  br label %379

379:                                              ; preds = %378, %145
  br label %136

380:                                              ; preds = %136
  %381 = load i32*, i32** %4, align 8
  %382 = call i32******* @ghb_dict_get_string(i32* %381, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %383 = bitcast i32******* %382 to i32*****
  store i32***** %383, i32****** %7, align 8
  %384 = load i32*****, i32****** %7, align 8
  %385 = load i32*, i32** %11, align 8
  %386 = load i32*****, i32****** %5, align 8
  %387 = call i32 @make_unique_dest(i32***** %384, i32* %385, i32***** %386)
  %388 = load i32*, i32** %11, align 8
  %389 = load i32*****, i32****** %5, align 8
  %390 = call i32 (i32*, i8*, ...) @g_string_append_printf(i32* %388, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32***** %389)
  %391 = load i32*, i32** %11, align 8
  %392 = load i32, i32* @FALSE, align 4
  %393 = call i32******* @g_string_free(i32* %391, i32 %392)
  %394 = bitcast i32******* %393 to i32*****
  store i32***** %394, i32****** %8, align 8
  %395 = load i32*, i32** %4, align 8
  %396 = load i32*****, i32****** %8, align 8
  %397 = bitcast i32***** %396 to i8*
  %398 = call i32 @ghb_dict_set_string(i32* %395, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %397)
  %399 = load i32*****, i32****** %8, align 8
  %400 = bitcast i32***** %399 to i8*
  %401 = call i32 @g_free(i8* %400)
  br label %402

402:                                              ; preds = %380, %68
  ret void
}

declare dso_local i32******* @get_extension(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @g_debug(i8*) #1

declare dso_local i32******* @ghb_dict_get_string(i32*, i8*) #1

declare dso_local i32* @g_string_new(i8*) #1

declare dso_local i32 @g_string_append_printf(i32*, i8*, ...) #1

declare dso_local i32******* @g_string_free(i32*, i32) #1

declare dso_local i32 @ghb_dict_set_string(i32*, i8*, i8*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @ghb_dict_set(i32*, i8*, i32) #1

declare dso_local i32 @ghb_value_dup(i32) #1

declare dso_local i32 @ghb_dict_get_value(i32*, i8*) #1

declare dso_local i64 @ghb_dict_get_bool(i32*, i8*) #1

declare dso_local i32 @strncasecmp(i32*****, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @g_path_get_dirname(i32*****) #1

declare dso_local i64 @g_file_test(i8*, i32) #1

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i8* @ghb_dict_get_int(i32*, i8*) #1

declare dso_local i64 @ghb_settings_combo_int(i32*, i8*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local %struct.tm* @localtime(i32*) #1

declare dso_local i32 @strftime(i8*, i32, i8*, %struct.tm*) #1

declare dso_local i32******* @get_creation_date(i8*, i32*******, i32*****) #1

declare dso_local i32******* @ghb_settings_video_encoder_codec(i32*, i8*) #1

declare dso_local i8* @hb_video_quality_get_name(i32*****) #1

declare dso_local double @ghb_dict_get_double(i32*, i8*) #1

declare dso_local i32 @make_unique_dest(i32*****, i32*, i32*****) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
