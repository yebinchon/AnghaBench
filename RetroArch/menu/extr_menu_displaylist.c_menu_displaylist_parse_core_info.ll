; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_displaylist.c_menu_displaylist_parse_core_info.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_displaylist.c_menu_displaylist_parse_core_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32 }
%struct.TYPE_24__ = type { i8*, i8*, i8*, i8*, i32, %struct.TYPE_20__*, i64, %struct.TYPE_18__*, i32, i64, i64, i64, i64, i64, i64, i64, i32 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i8*, i64, i64 }
%struct.TYPE_22__ = type { %struct.TYPE_21__, %struct.TYPE_17__ }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_17__ = type { i32 }
%struct.menu_features_info = type { i8*, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.menu_features_info.0 = type opaque

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_NO_CORE_INFORMATION_AVAILABLE = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_NO_CORE_INFORMATION_AVAILABLE = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_CORE_DELETE = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_CORE_DELETE = common dso_local global i32 0, align 4
@MENU_SETTING_ACTION_CORE_DELETE = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_CORE_INFO_CORE_NAME = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_CORE_INFO_CORE_LABEL = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_CORE_INFO_SYSTEM_NAME = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_CORE_INFO_SYSTEM_MANUFACTURER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MENU_ENUM_LABEL_CORE_INFO_ENTRY = common dso_local global i32 0, align 4
@MENU_SETTINGS_CORE_INFO_NONE = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_CORE_INFO_CATEGORIES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c", \00", align 1
@MENU_ENUM_LABEL_VALUE_CORE_INFO_AUTHORS = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_CORE_INFO_PERMISSIONS = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_CORE_INFO_LICENSES = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_CORE_INFO_SUPPORTED_EXTENSIONS = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_CORE_INFO_REQUIRED_HW_API = common dso_local global i32 0, align 4
@RARCH_CTL_UNSET_MISSING_BIOS = common dso_local global i32 0, align 4
@RARCH_CTL_SET_MISSING_BIOS = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_CORE_INFO_FIRMWARE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"(!) %s, %s: %s\00", align 1
@MENU_ENUM_LABEL_VALUE_MISSING = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_PRESENT = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_OPTIONAL = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_REQUIRED = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_RDB_ENTRY_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*)* @menu_displaylist_parse_core_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @menu_displaylist_parse_core_info(%struct.TYPE_23__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [4 x %struct.menu_features_info], align 16
  %12 = alloca %struct.TYPE_15__, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  %15 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %5, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %6, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %7, align 8
  %19 = call %struct.TYPE_22__* (...) @config_get_ptr()
  store %struct.TYPE_22__* %19, %struct.TYPE_22__** %8, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 0
  store i8 0, i8* %20, align 16
  %21 = call i32 @core_info_get_current_core(%struct.TYPE_24__** %7)
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %23 = icmp ne %struct.TYPE_24__* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 16
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %49, label %29

29:                                               ; preds = %24, %1
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @MENU_ENUM_LABEL_VALUE_NO_CORE_INFORMATION_AVAILABLE, align 4
  %34 = call i8* @msg_hash_to_str(i32 %33)
  %35 = load i32, i32* @MENU_ENUM_LABEL_NO_CORE_INFORMATION_AVAILABLE, align 4
  %36 = call i8* @msg_hash_to_str(i32 %35)
  %37 = load i32, i32* @MENU_ENUM_LABEL_NO_CORE_INFORMATION_AVAILABLE, align 4
  %38 = call i32 @menu_entries_append_enum(i32 %32, i8* %34, i8* %36, i32 %37, i32 0, i32 0, i32 0)
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @MENU_ENUM_LABEL_VALUE_CORE_DELETE, align 4
  %43 = call i8* @msg_hash_to_str(i32 %42)
  %44 = load i32, i32* @MENU_ENUM_LABEL_CORE_DELETE, align 4
  %45 = call i8* @msg_hash_to_str(i32 %44)
  %46 = load i32, i32* @MENU_ENUM_LABEL_CORE_DELETE, align 4
  %47 = load i32, i32* @MENU_SETTING_ACTION_CORE_DELETE, align 4
  %48 = call i32 @menu_entries_append_enum(i32 %41, i8* %43, i8* %45, i32 %46, i32 %47, i32 0, i32 0)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %427

49:                                               ; preds = %24
  %50 = bitcast [4 x %struct.menu_features_info]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %50, i8 0, i64 64, i1 false)
  %51 = getelementptr inbounds [4 x %struct.menu_features_info], [4 x %struct.menu_features_info]* %11, i64 0, i64 0
  %52 = getelementptr inbounds %struct.menu_features_info, %struct.menu_features_info* %51, i32 0, i32 1
  %53 = load i32, i32* @MENU_ENUM_LABEL_VALUE_CORE_INFO_CORE_NAME, align 4
  store i32 %53, i32* %52, align 8
  %54 = getelementptr inbounds %struct.menu_features_info, %struct.menu_features_info* %51, i64 1
  %55 = getelementptr inbounds %struct.menu_features_info, %struct.menu_features_info* %54, i32 0, i32 1
  %56 = load i32, i32* @MENU_ENUM_LABEL_VALUE_CORE_INFO_CORE_LABEL, align 4
  store i32 %56, i32* %55, align 8
  %57 = getelementptr inbounds %struct.menu_features_info, %struct.menu_features_info* %54, i64 1
  %58 = getelementptr inbounds %struct.menu_features_info, %struct.menu_features_info* %57, i32 0, i32 1
  %59 = load i32, i32* @MENU_ENUM_LABEL_VALUE_CORE_INFO_SYSTEM_NAME, align 4
  store i32 %59, i32* %58, align 8
  %60 = getelementptr inbounds %struct.menu_features_info, %struct.menu_features_info* %57, i64 1
  %61 = getelementptr inbounds %struct.menu_features_info, %struct.menu_features_info* %60, i32 0, i32 1
  %62 = load i32, i32* @MENU_ENUM_LABEL_VALUE_CORE_INFO_SYSTEM_MANUFACTURER, align 4
  store i32 %62, i32* %61, align 8
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds [4 x %struct.menu_features_info], [4 x %struct.menu_features_info]* %11, i64 0, i64 0
  %67 = getelementptr inbounds %struct.menu_features_info, %struct.menu_features_info* %66, i32 0, i32 0
  store i8* %65, i8** %67, align 16
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds [4 x %struct.menu_features_info], [4 x %struct.menu_features_info]* %11, i64 0, i64 1
  %72 = getelementptr inbounds %struct.menu_features_info, %struct.menu_features_info* %71, i32 0, i32 0
  store i8* %70, i8** %72, align 16
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 2
  %75 = load i8*, i8** %74, align 8
  %76 = getelementptr inbounds [4 x %struct.menu_features_info], [4 x %struct.menu_features_info]* %11, i64 0, i64 2
  %77 = getelementptr inbounds %struct.menu_features_info, %struct.menu_features_info* %76, i32 0, i32 0
  store i8* %75, i8** %77, align 16
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %78, i32 0, i32 3
  %80 = load i8*, i8** %79, align 8
  %81 = getelementptr inbounds [4 x %struct.menu_features_info], [4 x %struct.menu_features_info]* %11, i64 0, i64 3
  %82 = getelementptr inbounds %struct.menu_features_info, %struct.menu_features_info* %81, i32 0, i32 0
  store i8* %80, i8** %82, align 16
  store i32 0, i32* %10, align 4
  br label %83

83:                                               ; preds = %117, %49
  %84 = load i32, i32* %10, align 4
  %85 = getelementptr inbounds [4 x %struct.menu_features_info], [4 x %struct.menu_features_info]* %11, i64 0, i64 0
  %86 = bitcast %struct.menu_features_info* %85 to %struct.menu_features_info.0*
  %87 = call i32 @ARRAY_SIZE(%struct.menu_features_info.0* %86)
  %88 = icmp ult i32 %84, %87
  br i1 %88, label %89, label %120

89:                                               ; preds = %83
  %90 = load i32, i32* %10, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds [4 x %struct.menu_features_info], [4 x %struct.menu_features_info]* %11, i64 0, i64 %91
  %93 = getelementptr inbounds %struct.menu_features_info, %struct.menu_features_info* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 16
  %95 = icmp ne i8* %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %89
  br label %117

97:                                               ; preds = %89
  %98 = load i32, i32* %10, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds [4 x %struct.menu_features_info], [4 x %struct.menu_features_info]* %11, i64 0, i64 %99
  %101 = getelementptr inbounds %struct.menu_features_info, %struct.menu_features_info* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i8* @msg_hash_to_str(i32 %102)
  %104 = load i32, i32* %10, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds [4 x %struct.menu_features_info], [4 x %struct.menu_features_info]* %11, i64 0, i64 %105
  %107 = getelementptr inbounds %struct.menu_features_info, %struct.menu_features_info* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 16
  %109 = trunc i64 %16 to i32
  %110 = call i32 @fill_pathname_join_concat_noext(i8* %18, i8* %103, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %108, i32 %109)
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @MENU_ENUM_LABEL_CORE_INFO_ENTRY, align 4
  %115 = load i32, i32* @MENU_SETTINGS_CORE_INFO_NONE, align 4
  %116 = call i32 @menu_entries_append_enum(i32 %113, i8* %18, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %114, i32 %115, i32 0, i32 0)
  br label %117

117:                                              ; preds = %97, %96
  %118 = load i32, i32* %10, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %10, align 4
  br label %83

120:                                              ; preds = %83
  %121 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %121, i32 0, i32 15
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %141

125:                                              ; preds = %120
  %126 = load i32, i32* @MENU_ENUM_LABEL_VALUE_CORE_INFO_CATEGORIES, align 4
  %127 = call i8* @msg_hash_to_str(i32 %126)
  %128 = trunc i64 %16 to i32
  %129 = call i32 @fill_pathname_noext(i8* %18, i8* %127, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %128)
  %130 = trunc i64 %16 to i32
  %131 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %131, i32 0, i32 15
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @string_list_join_concat(i8* %18, i32 %130, i64 %133, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %135 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @MENU_ENUM_LABEL_CORE_INFO_ENTRY, align 4
  %139 = load i32, i32* @MENU_SETTINGS_CORE_INFO_NONE, align 4
  %140 = call i32 @menu_entries_append_enum(i32 %137, i8* %18, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %138, i32 %139, i32 0, i32 0)
  br label %141

141:                                              ; preds = %125, %120
  %142 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %142, i32 0, i32 14
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %162

146:                                              ; preds = %141
  %147 = load i32, i32* @MENU_ENUM_LABEL_VALUE_CORE_INFO_AUTHORS, align 4
  %148 = call i8* @msg_hash_to_str(i32 %147)
  %149 = trunc i64 %16 to i32
  %150 = call i32 @fill_pathname_noext(i8* %18, i8* %148, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %149)
  %151 = trunc i64 %16 to i32
  %152 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %152, i32 0, i32 14
  %154 = load i64, i64* %153, align 8
  %155 = call i32 @string_list_join_concat(i8* %18, i32 %151, i64 %154, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %156 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @MENU_ENUM_LABEL_CORE_INFO_ENTRY, align 4
  %160 = load i32, i32* @MENU_SETTINGS_CORE_INFO_NONE, align 4
  %161 = call i32 @menu_entries_append_enum(i32 %158, i8* %18, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %159, i32 %160, i32 0, i32 0)
  br label %162

162:                                              ; preds = %146, %141
  %163 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %163, i32 0, i32 13
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %183

167:                                              ; preds = %162
  %168 = load i32, i32* @MENU_ENUM_LABEL_VALUE_CORE_INFO_PERMISSIONS, align 4
  %169 = call i8* @msg_hash_to_str(i32 %168)
  %170 = trunc i64 %16 to i32
  %171 = call i32 @fill_pathname_noext(i8* %18, i8* %169, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %170)
  %172 = trunc i64 %16 to i32
  %173 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %173, i32 0, i32 13
  %175 = load i64, i64* %174, align 8
  %176 = call i32 @string_list_join_concat(i8* %18, i32 %172, i64 %175, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %177 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @MENU_ENUM_LABEL_CORE_INFO_ENTRY, align 4
  %181 = load i32, i32* @MENU_SETTINGS_CORE_INFO_NONE, align 4
  %182 = call i32 @menu_entries_append_enum(i32 %179, i8* %18, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %180, i32 %181, i32 0, i32 0)
  br label %183

183:                                              ; preds = %167, %162
  %184 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %184, i32 0, i32 12
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %204

188:                                              ; preds = %183
  %189 = load i32, i32* @MENU_ENUM_LABEL_VALUE_CORE_INFO_LICENSES, align 4
  %190 = call i8* @msg_hash_to_str(i32 %189)
  %191 = trunc i64 %16 to i32
  %192 = call i32 @fill_pathname_noext(i8* %18, i8* %190, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %191)
  %193 = trunc i64 %16 to i32
  %194 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %194, i32 0, i32 12
  %196 = load i64, i64* %195, align 8
  %197 = call i32 @string_list_join_concat(i8* %18, i32 %193, i64 %196, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %198 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @MENU_ENUM_LABEL_CORE_INFO_ENTRY, align 4
  %202 = load i32, i32* @MENU_SETTINGS_CORE_INFO_NONE, align 4
  %203 = call i32 @menu_entries_append_enum(i32 %200, i8* %18, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %201, i32 %202, i32 0, i32 0)
  br label %204

204:                                              ; preds = %188, %183
  %205 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %205, i32 0, i32 11
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %225

209:                                              ; preds = %204
  %210 = load i32, i32* @MENU_ENUM_LABEL_VALUE_CORE_INFO_SUPPORTED_EXTENSIONS, align 4
  %211 = call i8* @msg_hash_to_str(i32 %210)
  %212 = trunc i64 %16 to i32
  %213 = call i32 @fill_pathname_noext(i8* %18, i8* %211, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %212)
  %214 = trunc i64 %16 to i32
  %215 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %216 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %215, i32 0, i32 11
  %217 = load i64, i64* %216, align 8
  %218 = call i32 @string_list_join_concat(i8* %18, i32 %214, i64 %217, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %219 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* @MENU_ENUM_LABEL_CORE_INFO_ENTRY, align 4
  %223 = load i32, i32* @MENU_SETTINGS_CORE_INFO_NONE, align 4
  %224 = call i32 @menu_entries_append_enum(i32 %221, i8* %18, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %222, i32 %223, i32 0, i32 0)
  br label %225

225:                                              ; preds = %209, %204
  %226 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %227 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %226, i32 0, i32 10
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %246

230:                                              ; preds = %225
  %231 = load i32, i32* @MENU_ENUM_LABEL_VALUE_CORE_INFO_REQUIRED_HW_API, align 4
  %232 = call i8* @msg_hash_to_str(i32 %231)
  %233 = trunc i64 %16 to i32
  %234 = call i32 @fill_pathname_noext(i8* %18, i8* %232, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %233)
  %235 = trunc i64 %16 to i32
  %236 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %237 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %236, i32 0, i32 9
  %238 = load i64, i64* %237, align 8
  %239 = call i32 @string_list_join_concat(i8* %18, i32 %235, i64 %238, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %240 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %241 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @MENU_ENUM_LABEL_CORE_INFO_ENTRY, align 4
  %244 = load i32, i32* @MENU_SETTINGS_CORE_INFO_NONE, align 4
  %245 = call i32 @menu_entries_append_enum(i32 %242, i8* %18, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %243, i32 %244, i32 0, i32 0)
  br label %246

246:                                              ; preds = %230, %225
  %247 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %248 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %247, i32 0, i32 4
  %249 = load i32, i32* %248, align 8
  %250 = icmp ugt i32 %249, 0
  br i1 %250, label %251, label %372

251:                                              ; preds = %246
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %252 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %253 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %252, i32 0, i32 8
  %254 = load i32, i32* %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 1
  store i32 %254, i32* %255, align 4
  %256 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %257 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %260, i32 0, i32 0
  store i32 %259, i32* %261, align 4
  %262 = load i32, i32* @RARCH_CTL_UNSET_MISSING_BIOS, align 4
  %263 = call i32 @rarch_ctl(i32 %262, i32* null)
  %264 = call i32 @core_info_list_update_missing_firmware(%struct.TYPE_15__* %12, i32* %14)
  store i32 %264, i32* %13, align 4
  %265 = load i32, i32* %14, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %270

267:                                              ; preds = %251
  %268 = load i32, i32* @RARCH_CTL_SET_MISSING_BIOS, align 4
  %269 = call i32 @rarch_ctl(i32 %268, i32* null)
  br label %270

270:                                              ; preds = %267, %251
  %271 = load i32, i32* %13, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %371

273:                                              ; preds = %270
  %274 = load i32, i32* @MENU_ENUM_LABEL_VALUE_CORE_INFO_FIRMWARE, align 4
  %275 = call i8* @msg_hash_to_str(i32 %274)
  %276 = trunc i64 %16 to i32
  %277 = call i32 @fill_pathname_noext(i8* %18, i8* %275, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %276)
  %278 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %279 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = load i32, i32* @MENU_ENUM_LABEL_CORE_INFO_ENTRY, align 4
  %282 = load i32, i32* @MENU_SETTINGS_CORE_INFO_NONE, align 4
  %283 = call i32 @menu_entries_append_enum(i32 %280, i8* %18, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %281, i32 %282, i32 0, i32 0)
  store i32 0, i32* %4, align 4
  br label %284

284:                                              ; preds = %367, %273
  %285 = load i32, i32* %4, align 4
  %286 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %287 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %286, i32 0, i32 4
  %288 = load i32, i32* %287, align 8
  %289 = icmp ult i32 %285, %288
  br i1 %289, label %290, label %370

290:                                              ; preds = %284
  %291 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %292 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %291, i32 0, i32 7
  %293 = load %struct.TYPE_18__*, %struct.TYPE_18__** %292, align 8
  %294 = load i32, i32* %4, align 4
  %295 = zext i32 %294 to i64
  %296 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %293, i64 %295
  %297 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %296, i32 0, i32 0
  %298 = load i8*, i8** %297, align 8
  %299 = icmp ne i8* %298, null
  br i1 %299, label %301, label %300

300:                                              ; preds = %290
  br label %367

301:                                              ; preds = %290
  %302 = trunc i64 %16 to i32
  %303 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %304 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %303, i32 0, i32 7
  %305 = load %struct.TYPE_18__*, %struct.TYPE_18__** %304, align 8
  %306 = load i32, i32* %4, align 4
  %307 = zext i32 %306 to i64
  %308 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %305, i64 %307
  %309 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %308, i32 0, i32 2
  %310 = load i64, i64* %309, align 8
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %315

312:                                              ; preds = %301
  %313 = load i32, i32* @MENU_ENUM_LABEL_VALUE_MISSING, align 4
  %314 = call i8* @msg_hash_to_str(i32 %313)
  br label %318

315:                                              ; preds = %301
  %316 = load i32, i32* @MENU_ENUM_LABEL_VALUE_PRESENT, align 4
  %317 = call i8* @msg_hash_to_str(i32 %316)
  br label %318

318:                                              ; preds = %315, %312
  %319 = phi i8* [ %314, %312 ], [ %317, %315 ]
  %320 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %321 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %320, i32 0, i32 7
  %322 = load %struct.TYPE_18__*, %struct.TYPE_18__** %321, align 8
  %323 = load i32, i32* %4, align 4
  %324 = zext i32 %323 to i64
  %325 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %322, i64 %324
  %326 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %325, i32 0, i32 1
  %327 = load i64, i64* %326, align 8
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %332

329:                                              ; preds = %318
  %330 = load i32, i32* @MENU_ENUM_LABEL_VALUE_OPTIONAL, align 4
  %331 = call i8* @msg_hash_to_str(i32 %330)
  br label %335

332:                                              ; preds = %318
  %333 = load i32, i32* @MENU_ENUM_LABEL_VALUE_REQUIRED, align 4
  %334 = call i8* @msg_hash_to_str(i32 %333)
  br label %335

335:                                              ; preds = %332, %329
  %336 = phi i8* [ %331, %329 ], [ %334, %332 ]
  %337 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %338 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %337, i32 0, i32 7
  %339 = load %struct.TYPE_18__*, %struct.TYPE_18__** %338, align 8
  %340 = load i32, i32* %4, align 4
  %341 = zext i32 %340 to i64
  %342 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %339, i64 %341
  %343 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %342, i32 0, i32 0
  %344 = load i8*, i8** %343, align 8
  %345 = icmp ne i8* %344, null
  br i1 %345, label %346, label %355

346:                                              ; preds = %335
  %347 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %348 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %347, i32 0, i32 7
  %349 = load %struct.TYPE_18__*, %struct.TYPE_18__** %348, align 8
  %350 = load i32, i32* %4, align 4
  %351 = zext i32 %350 to i64
  %352 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %349, i64 %351
  %353 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %352, i32 0, i32 0
  %354 = load i8*, i8** %353, align 8
  br label %358

355:                                              ; preds = %335
  %356 = load i32, i32* @MENU_ENUM_LABEL_VALUE_RDB_ENTRY_NAME, align 4
  %357 = call i8* @msg_hash_to_str(i32 %356)
  br label %358

358:                                              ; preds = %355, %346
  %359 = phi i8* [ %354, %346 ], [ %357, %355 ]
  %360 = call i32 @snprintf(i8* %18, i32 %302, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %319, i8* %336, i8* %359)
  %361 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %362 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 4
  %364 = load i32, i32* @MENU_ENUM_LABEL_CORE_INFO_ENTRY, align 4
  %365 = load i32, i32* @MENU_SETTINGS_CORE_INFO_NONE, align 4
  %366 = call i32 @menu_entries_append_enum(i32 %363, i8* %18, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %364, i32 %365, i32 0, i32 0)
  br label %367

367:                                              ; preds = %358, %300
  %368 = load i32, i32* %4, align 4
  %369 = add i32 %368, 1
  store i32 %369, i32* %4, align 4
  br label %284

370:                                              ; preds = %284
  br label %371

371:                                              ; preds = %370, %270
  br label %372

372:                                              ; preds = %371, %246
  %373 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %374 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %373, i32 0, i32 6
  %375 = load i64, i64* %374, align 8
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %377, label %409

377:                                              ; preds = %372
  store i32 0, i32* %4, align 4
  br label %378

378:                                              ; preds = %405, %377
  %379 = load i32, i32* %4, align 4
  %380 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %381 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %380, i32 0, i32 5
  %382 = load %struct.TYPE_20__*, %struct.TYPE_20__** %381, align 8
  %383 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 8
  %385 = icmp ult i32 %379, %384
  br i1 %385, label %386, label %408

386:                                              ; preds = %378
  %387 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %388 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %387, i32 0, i32 5
  %389 = load %struct.TYPE_20__*, %struct.TYPE_20__** %388, align 8
  %390 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %389, i32 0, i32 1
  %391 = load %struct.TYPE_19__*, %struct.TYPE_19__** %390, align 8
  %392 = load i32, i32* %4, align 4
  %393 = zext i32 %392 to i64
  %394 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %391, i64 %393
  %395 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 4
  %397 = trunc i64 %16 to i32
  %398 = call i32 @strlcpy(i8* %18, i32 %396, i32 %397)
  %399 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %400 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %399, i32 0, i32 0
  %401 = load i32, i32* %400, align 4
  %402 = load i32, i32* @MENU_ENUM_LABEL_CORE_INFO_ENTRY, align 4
  %403 = load i32, i32* @MENU_SETTINGS_CORE_INFO_NONE, align 4
  %404 = call i32 @menu_entries_append_enum(i32 %401, i8* %18, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %402, i32 %403, i32 0, i32 0)
  br label %405

405:                                              ; preds = %386
  %406 = load i32, i32* %4, align 4
  %407 = add i32 %406, 1
  store i32 %407, i32* %4, align 4
  br label %378

408:                                              ; preds = %378
  br label %409

409:                                              ; preds = %408, %372
  %410 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %411 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %410, i32 0, i32 0
  %412 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %411, i32 0, i32 0
  %413 = load i64, i64* %412, align 8
  %414 = icmp ne i64 %413, 0
  br i1 %414, label %415, label %426

415:                                              ; preds = %409
  %416 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %417 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %416, i32 0, i32 0
  %418 = load i32, i32* %417, align 4
  %419 = load i32, i32* @MENU_ENUM_LABEL_VALUE_CORE_DELETE, align 4
  %420 = call i8* @msg_hash_to_str(i32 %419)
  %421 = load i32, i32* @MENU_ENUM_LABEL_CORE_DELETE, align 4
  %422 = call i8* @msg_hash_to_str(i32 %421)
  %423 = load i32, i32* @MENU_ENUM_LABEL_CORE_DELETE, align 4
  %424 = load i32, i32* @MENU_SETTING_ACTION_CORE_DELETE, align 4
  %425 = call i32 @menu_entries_append_enum(i32 %418, i8* %420, i8* %422, i32 %423, i32 %424, i32 0, i32 0)
  br label %426

426:                                              ; preds = %415, %409
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %427

427:                                              ; preds = %426, %29
  %428 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %428)
  %429 = load i32, i32* %2, align 4
  ret i32 %429
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_22__* @config_get_ptr(...) #2

declare dso_local i32 @core_info_get_current_core(%struct.TYPE_24__**) #2

declare dso_local i32 @menu_entries_append_enum(i32, i8*, i8*, i32, i32, i32, i32) #2

declare dso_local i8* @msg_hash_to_str(i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i32 @ARRAY_SIZE(%struct.menu_features_info.0*) #2

declare dso_local i32 @fill_pathname_join_concat_noext(i8*, i8*, i8*, i8*, i32) #2

declare dso_local i32 @fill_pathname_noext(i8*, i8*, i8*, i32) #2

declare dso_local i32 @string_list_join_concat(i8*, i32, i64, i8*) #2

declare dso_local i32 @rarch_ctl(i32, i32*) #2

declare dso_local i32 @core_info_list_update_missing_firmware(%struct.TYPE_15__*, i32*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i8*) #2

declare dso_local i32 @strlcpy(i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
