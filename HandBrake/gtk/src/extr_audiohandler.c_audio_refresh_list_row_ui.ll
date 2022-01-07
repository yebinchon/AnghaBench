; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_audiohandler.c_audio_refresh_list_row_ui.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_audiohandler.c_audio_refresh_list_row_ui.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32* }
%struct.TYPE_16__ = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32, i64 }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_15__ = type { i8*, i32 }
%struct.TYPE_14__ = type { i8* }

@.str = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Track\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Encoder\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Quality\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Bitrate\00", align 1
@HB_INVALID_AUDIO_QUALITY = common dso_local global double 0.000000e+00, align 8
@.str.5 = private unnamed_addr constant [10 x i8] c"Quality: \00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"Bitrate: %dkbps\0A\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"Samplerate\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"%.4gkHz\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"Mixdown\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"Gain\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"%ddB\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"DRC\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"Off\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"%.1f\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"<small>%d - %s (%.4gkHz)</small>\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"Bitrate: %.4gkbps\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"<small>Passthrough</small>\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"<small>%s (%s) (%s)</small>\00", align 1
@.str.22 = private unnamed_addr constant [34 x i8] c"%sGain: %s\0ADRC: %s\0ATrack Name: %s\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"%sGain: %s\0ADRC: %s\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"-->\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"hb-edit\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"hb-remove\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_13__*, i32*)* @audio_refresh_list_row_ui to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audio_refresh_list_row_ui(i32* %0, i32* %1, %struct.TYPE_13__* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca %struct.TYPE_16__*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca %struct.TYPE_15__*, align 8
  %29 = alloca i64, align 8
  %30 = alloca double, align 8
  %31 = alloca i32, align 4
  %32 = alloca i8*, align 8
  %33 = alloca %struct.TYPE_14__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %7, align 8
  store i32* %3, i32** %8, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %13, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @ghb_dict_get_int(i32* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %37, i32* %25, align 4
  %38 = load i32, i32* %25, align 4
  %39 = call i32* @ghb_lookup_title(i32 %38, i32* %26)
  store i32* %39, i32** %27, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @ghb_dict_get_int(i32* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %41, i32* %23, align 4
  %42 = load i32*, i32** %27, align 8
  %43 = load i32, i32* %23, align 4
  %44 = call %struct.TYPE_16__* @ghb_get_audio_info(i32* %42, i32 %43)
  store %struct.TYPE_16__* %44, %struct.TYPE_16__** %22, align 8
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %46 = icmp eq %struct.TYPE_16__* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %4
  br label %255

48:                                               ; preds = %4
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %14, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = call %struct.TYPE_15__* @ghb_settings_audio_encoder(i32* %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_15__* %54, %struct.TYPE_15__** %28, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = call i64 @ghb_audio_quality_enabled(i32* %55)
  store i64 %56, i64* %29, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = call double @ghb_dict_get_double(i32* %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store double %58, double* %30, align 8
  %59 = load i32*, i32** %8, align 8
  %60 = call i32 @ghb_dict_get_int(i32* %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i32 %60, i32* %31, align 4
  %61 = load i64, i64* %29, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %48
  %64 = load double, double* %30, align 8
  %65 = load double, double* @HB_INVALID_AUDIO_QUALITY, align 8
  %66 = fcmp une double %64, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %63
  %68 = call i8* @_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load double, double* %30, align 8
  %73 = call i8* @ghb_format_quality(i8* %68, i32 %71, double %72)
  store i8* %73, i8** %32, align 8
  %74 = load i8*, i8** %32, align 8
  %75 = call i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %74)
  store i8* %75, i8** %18, align 8
  %76 = load i8*, i8** %32, align 8
  %77 = call i32 @g_free(i8* %76)
  br label %88

78:                                               ; preds = %63, %48
  %79 = load i32, i32* %31, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = call i8* @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %83 = load i32, i32* %31, align 4
  %84 = call i8* (i8*, ...) @g_strdup_printf(i8* %82, i32 %83)
  store i8* %84, i8** %18, align 8
  br label %87

85:                                               ; preds = %78
  %86 = call i8* @g_strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0))
  store i8* %86, i8** %18, align 8
  br label %87

87:                                               ; preds = %85, %81
  br label %88

88:                                               ; preds = %87, %67
  %89 = load i32*, i32** %8, align 8
  %90 = call i32 @ghb_dict_get_int(i32* %89, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  store i32 %90, i32* %24, align 4
  %91 = load i32, i32* %24, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  store i32 %97, i32* %24, align 4
  br label %98

98:                                               ; preds = %93, %88
  %99 = call i8* @_(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %100 = load i32, i32* %24, align 4
  %101 = sitofp i32 %100 to double
  %102 = fdiv double %101, 1.000000e+03
  %103 = call i8* (i8*, ...) @g_strdup_printf(i8* %99, double %102)
  store i8* %103, i8** %19, align 8
  %104 = load i32*, i32** %8, align 8
  %105 = call %struct.TYPE_14__* @ghb_settings_mixdown(i32* %104, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  store %struct.TYPE_14__* %105, %struct.TYPE_14__** %33, align 8
  %106 = load i32*, i32** %8, align 8
  %107 = call double @ghb_dict_get_double(i32* %106, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  store double %107, double* %21, align 8
  %108 = call i8* @_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %109 = load double, double* %21, align 8
  %110 = fptosi double %109 to i32
  %111 = call i8* (i8*, ...) @g_strdup_printf(i8* %108, i32 %110)
  store i8* %111, i8** %17, align 8
  %112 = load i32*, i32** %8, align 8
  %113 = call double @ghb_dict_get_double(i32* %112, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  store double %113, double* %20, align 8
  %114 = load double, double* %20, align 8
  %115 = fcmp olt double %114, 1.000000e+00
  br i1 %115, label %116, label %119

116:                                              ; preds = %98
  %117 = call i8* @_(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  %118 = call i8* @g_strdup(i8* %117)
  store i8* %118, i8** %16, align 8
  br label %122

119:                                              ; preds = %98
  %120 = load double, double* %20, align 8
  %121 = call i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), double %120)
  store i8* %121, i8** %16, align 8
  br label %122

122:                                              ; preds = %119, %116
  %123 = load i32*, i32** %8, align 8
  %124 = call i8* @ghb_dict_get_string(i32* %123, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  store i8* %124, i8** %15, align 8
  %125 = call i8* @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i64 0, i64 0))
  %126 = load i32, i32* %23, align 4
  %127 = add nsw i32 %126, 1
  %128 = load i8*, i8** %14, align 8
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = sitofp i32 %132 to double
  %134 = fdiv double %133, 1.000000e+03
  %135 = call i8* (i8*, ...) @g_strdup_printf(i8* %125, i32 %127, i8* %128, double %134)
  store i8* %135, i8** %10, align 8
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = icmp sgt i64 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %122
  %142 = call i8* @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0))
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = sitofp i64 %146 to double
  %148 = fdiv double %147, 1.000000e+03
  %149 = call i8* (i8*, ...) @g_strdup_printf(i8* %142, double %148)
  store i8* %149, i8** %11, align 8
  br label %150

150:                                              ; preds = %141, %122
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = call i64 @ghb_audio_is_passthru(i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %150
  %157 = call i8* @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i64 0, i64 0))
  %158 = call i8* (i8*, ...) @g_strdup_printf(i8* %157)
  store i8* %158, i8** %12, align 8
  br label %190

159:                                              ; preds = %150
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %33, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 0
  %165 = load i8*, i8** %164, align 8
  %166 = load i8*, i8** %19, align 8
  %167 = call i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i64 0, i64 0), i8* %162, i8* %165, i8* %166)
  store i8* %167, i8** %12, align 8
  %168 = load i8*, i8** %15, align 8
  %169 = icmp ne i8* %168, null
  br i1 %169, label %170, label %183

170:                                              ; preds = %159
  %171 = load i8*, i8** %15, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 0
  %173 = load i8, i8* %172, align 1
  %174 = sext i8 %173 to i32
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %183

176:                                              ; preds = %170
  %177 = call i8* @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.22, i64 0, i64 0))
  %178 = load i8*, i8** %18, align 8
  %179 = load i8*, i8** %17, align 8
  %180 = load i8*, i8** %16, align 8
  %181 = load i8*, i8** %15, align 8
  %182 = call i8* (i8*, ...) @g_strdup_printf(i8* %177, i8* %178, i8* %179, i8* %180, i8* %181)
  store i8* %182, i8** %13, align 8
  br label %189

183:                                              ; preds = %170, %159
  %184 = call i8* @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i64 0, i64 0))
  %185 = load i8*, i8** %18, align 8
  %186 = load i8*, i8** %17, align 8
  %187 = load i8*, i8** %16, align 8
  %188 = call i8* (i8*, ...) @g_strdup_printf(i8* %184, i8* %185, i8* %186, i8* %187)
  store i8* %188, i8** %13, align 8
  br label %189

189:                                              ; preds = %183, %176
  br label %190

190:                                              ; preds = %189, %156
  %191 = load i32*, i32** %5, align 8
  %192 = call i32 @GTK_TREE_STORE(i32* %191)
  %193 = load i32*, i32** %6, align 8
  %194 = load i8*, i8** %10, align 8
  %195 = load i8*, i8** %12, align 8
  %196 = call i32 (i32, i32*, i32, i8*, i32, i8*, i32, ...) @gtk_tree_store_set(i32 %192, i32* %193, i32 0, i8* %194, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i32 2, i8* %195, i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0), i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0), i32 5, double 5.000000e-01, i32 -1)
  %197 = load i8*, i8** %11, align 8
  %198 = icmp ne i8* %197, null
  br i1 %198, label %202, label %199

199:                                              ; preds = %190
  %200 = load i8*, i8** %13, align 8
  %201 = icmp ne i8* %200, null
  br i1 %201, label %202, label %228

202:                                              ; preds = %199, %190
  %203 = load i8*, i8** %11, align 8
  %204 = icmp eq i8* %203, null
  br i1 %204, label %205, label %207

205:                                              ; preds = %202
  %206 = call i8* @g_strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0))
  store i8* %206, i8** %11, align 8
  br label %207

207:                                              ; preds = %205, %202
  %208 = load i8*, i8** %13, align 8
  %209 = icmp eq i8* %208, null
  br i1 %209, label %210, label %212

210:                                              ; preds = %207
  %211 = call i8* @g_strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0))
  store i8* %211, i8** %13, align 8
  br label %212

212:                                              ; preds = %210, %207
  %213 = load i32*, i32** %5, align 8
  %214 = load i32*, i32** %6, align 8
  %215 = call i64 @gtk_tree_model_iter_children(i32* %213, i32* %9, i32* %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %222, label %217

217:                                              ; preds = %212
  %218 = load i32*, i32** %5, align 8
  %219 = call i32 @GTK_TREE_STORE(i32* %218)
  %220 = load i32*, i32** %6, align 8
  %221 = call i32 @gtk_tree_store_append(i32 %219, i32* %9, i32* %220)
  br label %222

222:                                              ; preds = %217, %212
  %223 = load i32*, i32** %5, align 8
  %224 = call i32 @GTK_TREE_STORE(i32* %223)
  %225 = load i8*, i8** %11, align 8
  %226 = load i8*, i8** %13, align 8
  %227 = call i32 (i32, i32*, i32, i8*, i32, i8*, i32, ...) @gtk_tree_store_set(i32 %224, i32* %9, i32 0, i8* %225, i32 2, i8* %226, i32 5, double 0.000000e+00, i32 -1)
  br label %238

228:                                              ; preds = %199
  %229 = load i32*, i32** %5, align 8
  %230 = load i32*, i32** %6, align 8
  %231 = call i64 @gtk_tree_model_iter_children(i32* %229, i32* %9, i32* %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %228
  %234 = load i32*, i32** %5, align 8
  %235 = call i32 @GTK_TREE_STORE(i32* %234)
  %236 = call i32 @gtk_tree_store_remove(i32 %235, i32* %9)
  br label %237

237:                                              ; preds = %233, %228
  br label %238

238:                                              ; preds = %237, %222
  %239 = load i8*, i8** %10, align 8
  %240 = call i32 @g_free(i8* %239)
  %241 = load i8*, i8** %11, align 8
  %242 = call i32 @g_free(i8* %241)
  %243 = load i8*, i8** %12, align 8
  %244 = call i32 @g_free(i8* %243)
  %245 = load i8*, i8** %13, align 8
  %246 = call i32 @g_free(i8* %245)
  %247 = load i8*, i8** %19, align 8
  %248 = call i32 @g_free(i8* %247)
  %249 = load i8*, i8** %16, align 8
  %250 = call i32 @g_free(i8* %249)
  %251 = load i8*, i8** %17, align 8
  %252 = call i32 @g_free(i8* %251)
  %253 = load i8*, i8** %18, align 8
  %254 = call i32 @g_free(i8* %253)
  br label %255

255:                                              ; preds = %238, %47
  ret void
}

declare dso_local i32 @ghb_dict_get_int(i32*, i8*) #1

declare dso_local i32* @ghb_lookup_title(i32, i32*) #1

declare dso_local %struct.TYPE_16__* @ghb_get_audio_info(i32*, i32) #1

declare dso_local %struct.TYPE_15__* @ghb_settings_audio_encoder(i32*, i8*) #1

declare dso_local i64 @ghb_audio_quality_enabled(i32*) #1

declare dso_local double @ghb_dict_get_double(i32*, i8*) #1

declare dso_local i8* @ghb_format_quality(i8*, i32, double) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i8* @g_strdup_printf(i8*, ...) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i8* @g_strdup(i8*) #1

declare dso_local %struct.TYPE_14__* @ghb_settings_mixdown(i32*, i8*) #1

declare dso_local i8* @ghb_dict_get_string(i32*, i8*) #1

declare dso_local i64 @ghb_audio_is_passthru(i32) #1

declare dso_local i32 @gtk_tree_store_set(i32, i32*, i32, i8*, i32, i8*, i32, ...) #1

declare dso_local i32 @GTK_TREE_STORE(i32*) #1

declare dso_local i64 @gtk_tree_model_iter_children(i32*, i32*, i32*) #1

declare dso_local i32 @gtk_tree_store_append(i32, i32*, i32*) #1

declare dso_local i32 @gtk_tree_store_remove(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
