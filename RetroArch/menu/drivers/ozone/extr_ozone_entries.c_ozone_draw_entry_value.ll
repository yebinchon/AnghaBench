; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/ozone/extr_ozone_entries.c_ozone_draw_entry_value.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/ozone/extr_ozone_entries.c_ozone_draw_entry_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_17__*, %struct.TYPE_16__, %struct.TYPE_15__ }
%struct.TYPE_17__ = type { i32, i32, i32* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_20__ = type { i8*, i64 }

@OZONE_THEME_TEXTURE_CHECK = common dso_local global i64 0, align 8
@MENU_ENUM_LABEL_DISABLED = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_OFF = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_ENABLED = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_ON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"(PRESET)\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"(SHADER)\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"(COMP)\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"(CORE)\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"(MOVIE)\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"(MUSIC)\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"(DIR)\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"(RDB)\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"(CURSOR)\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"(CFILE)\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"(FILE)\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"(IMAGE)\00", align 1
@TEXT_ALIGN_RIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*, %struct.TYPE_18__*, i8*, i32, i32, i32, %struct.TYPE_20__*)* @ozone_draw_entry_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ozone_draw_entry_value(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1, i8* %2, i32 %3, i32 %4, i32 %5, %struct.TYPE_20__* %6) #0 {
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_20__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %8, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.TYPE_20__* %6, %struct.TYPE_20__** %14, align 8
  store i32 1, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %7
  %22 = load i8*, i8** %10, align 8
  %23 = call i64 @string_is_empty(i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %249

26:                                               ; preds = %21, %7
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %60

31:                                               ; preds = %26
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %33 = call i32 @menu_display_blend_begin(%struct.TYPE_18__* %32)
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* @OZONE_THEME_TEXTURE_CHECK, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %11, align 4
  %44 = sub i32 %43, 20
  %45 = load i32, i32* %12, align 4
  %46 = sub i32 %45, 22
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ozone_draw_icon(%struct.TYPE_18__* %34, i32 30, i32 30, i32 %42, i32 %44, i32 %46, i32 %49, i32 %52, i32 0, i32 1, i32 %56)
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %59 = call i32 @menu_display_blend_end(%struct.TYPE_18__* %58)
  br label %249

60:                                               ; preds = %26
  %61 = load i8*, i8** %10, align 8
  %62 = load i32, i32* @MENU_ENUM_LABEL_DISABLED, align 4
  %63 = call i8* @msg_hash_to_str(i32 %62)
  %64 = call i64 @string_is_equal(i8* %61, i8* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %60
  %67 = load i8*, i8** %10, align 8
  %68 = load i32, i32* @MENU_ENUM_LABEL_VALUE_OFF, align 4
  %69 = call i8* @msg_hash_to_str(i32 %68)
  %70 = call i64 @string_is_equal(i8* %67, i8* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66, %60
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %176

73:                                               ; preds = %66
  %74 = load i8*, i8** %10, align 8
  %75 = load i32, i32* @MENU_ENUM_LABEL_ENABLED, align 4
  %76 = call i8* @msg_hash_to_str(i32 %75)
  %77 = call i64 @string_is_equal(i8* %74, i8* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %73
  %80 = load i8*, i8** %10, align 8
  %81 = load i32, i32* @MENU_ENUM_LABEL_VALUE_ON, align 4
  %82 = call i8* @msg_hash_to_str(i32 %81)
  %83 = call i64 @string_is_equal(i8* %80, i8* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %79, %73
  store i32 1, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %175

86:                                               ; preds = %79
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = call i64 @string_is_empty(i8* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %173, label %92

92:                                               ; preds = %86
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = call i64 @string_is_equal(i8* %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %170, label %98

98:                                               ; preds = %92
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = call i64 @string_is_equal(i8* %101, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %170, label %104

104:                                              ; preds = %98
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = call i64 @string_is_equal(i8* %107, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %170, label %110

110:                                              ; preds = %104
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = call i64 @string_is_equal(i8* %113, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %170, label %116

116:                                              ; preds = %110
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = call i64 @string_is_equal(i8* %119, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %170, label %122

122:                                              ; preds = %116
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = call i64 @string_is_equal(i8* %125, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %170, label %128

128:                                              ; preds = %122
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = call i64 @string_is_equal(i8* %131, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %170, label %134

134:                                              ; preds = %128
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = call i64 @string_is_equal(i8* %137, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %170, label %140

140:                                              ; preds = %134
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  %144 = call i64 @string_is_equal(i8* %143, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %170, label %146

146:                                              ; preds = %140
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = call i64 @string_is_equal(i8* %149, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %170, label %152

152:                                              ; preds = %146
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 0
  %155 = load i8*, i8** %154, align 8
  %156 = call i64 @string_is_equal(i8* %155, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %170, label %158

158:                                              ; preds = %152
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  %162 = call i64 @string_is_equal(i8* %161, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %170, label %164

164:                                              ; preds = %158
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %166 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %165, i32 0, i32 0
  %167 = load i8*, i8** %166, align 8
  %168 = call i64 @string_is_equal(i8* %167, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %164, %158, %152, %146, %140, %134, %128, %122, %116, %110, %104, %98, %92
  br label %249

171:                                              ; preds = %164
  store i32 1, i32* %16, align 4
  br label %172

172:                                              ; preds = %171
  br label %174

173:                                              ; preds = %86
  store i32 1, i32* %16, align 4
  br label %174

174:                                              ; preds = %173, %172
  br label %175

175:                                              ; preds = %174, %85
  br label %176

176:                                              ; preds = %175, %72
  %177 = load i32, i32* %16, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %204

179:                                              ; preds = %176
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %181 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %182 = load i8*, i8** %10, align 8
  %183 = load i32, i32* %11, align 4
  %184 = load i32, i32* %12, align 4
  %185 = load i32, i32* @TEXT_ALIGN_RIGHT, align 4
  %186 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %187 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %197 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* %13, align 4
  %202 = call i32 @COLOR_TEXT_ALPHA(i32 %200, i32 %201)
  %203 = call i32 @ozone_draw_text(%struct.TYPE_18__* %180, %struct.TYPE_19__* %181, i8* %182, i32 %183, i32 %184, i32 %185, i32 %188, i32 %191, i32 %195, i32 %202, i32 0)
  br label %249

204:                                              ; preds = %176
  %205 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %206 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %207 = load i32, i32* %15, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %204
  %210 = load i32, i32* @MENU_ENUM_LABEL_VALUE_ON, align 4
  %211 = call i8* @msg_hash_to_str(i32 %210)
  br label %215

212:                                              ; preds = %204
  %213 = load i32, i32* @MENU_ENUM_LABEL_VALUE_OFF, align 4
  %214 = call i8* @msg_hash_to_str(i32 %213)
  br label %215

215:                                              ; preds = %212, %209
  %216 = phi i8* [ %211, %209 ], [ %214, %212 ]
  %217 = load i32, i32* %11, align 4
  %218 = load i32, i32* %12, align 4
  %219 = load i32, i32* @TEXT_ALIGN_RIGHT, align 4
  %220 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %221 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %224 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %227 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* %15, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %238

232:                                              ; preds = %215
  %233 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %234 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %233, i32 0, i32 0
  %235 = load %struct.TYPE_17__*, %struct.TYPE_17__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  br label %244

238:                                              ; preds = %215
  %239 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %240 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %239, i32 0, i32 0
  %241 = load %struct.TYPE_17__*, %struct.TYPE_17__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  br label %244

244:                                              ; preds = %238, %232
  %245 = phi i32 [ %237, %232 ], [ %243, %238 ]
  %246 = load i32, i32* %13, align 4
  %247 = call i32 @COLOR_TEXT_ALPHA(i32 %245, i32 %246)
  %248 = call i32 @ozone_draw_text(%struct.TYPE_18__* %205, %struct.TYPE_19__* %206, i8* %216, i32 %217, i32 %218, i32 %219, i32 %222, i32 %225, i32 %229, i32 %247, i32 0)
  br label %249

249:                                              ; preds = %25, %31, %170, %244, %179
  ret void
}

declare dso_local i64 @string_is_empty(i8*) #1

declare dso_local i32 @menu_display_blend_begin(%struct.TYPE_18__*) #1

declare dso_local i32 @ozone_draw_icon(%struct.TYPE_18__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @menu_display_blend_end(%struct.TYPE_18__*) #1

declare dso_local i64 @string_is_equal(i8*, i8*) #1

declare dso_local i8* @msg_hash_to_str(i32) #1

declare dso_local i32 @ozone_draw_text(%struct.TYPE_18__*, %struct.TYPE_19__*, i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @COLOR_TEXT_ALPHA(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
