; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_cfg.c_CFG_LoadConfig.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_cfg.c_CFG_LoadConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@rtconfig_filename = common dso_local global i8* null, align 8
@FALSE = common dso_local global i32 0, align 4
@FILENAME_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@DEFAULT_CFG_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"User config file '%s' not found.\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"No configuration file found, will create fresh one from scratch:\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Using Atari800 config file: %s\0ACreated by %s\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"ATARI_FILES_DIR\00", align 1
@UI_n_atari_files_dir = common dso_local global i64 0, align 8
@UI_MAX_DIRECTORIES = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [32 x i8] c"All ATARI_FILES_DIR slots used!\00", align 1
@UI_atari_files_dir = common dso_local global i8** null, align 8
@.str.7 = private unnamed_addr constant [16 x i8] c"SAVED_FILES_DIR\00", align 1
@UI_n_saved_files_dir = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [32 x i8] c"All SAVED_FILES_DIR slots used!\00", align 1
@UI_saved_files_dir = common dso_local global i8** null, align 8
@.str.9 = private unnamed_addr constant [9 x i8] c"DISK_DIR\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"ROM_DIR\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"EXE_DIR\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"STATE_DIR\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [7 x i8] c"H1_DIR\00", align 1
@Devices_atari_h_dir = common dso_local global i8** null, align 8
@.str.14 = private unnamed_addr constant [7 x i8] c"H2_DIR\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"H3_DIR\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"H4_DIR\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"HD_READ_ONLY\00", align 1
@Devices_h_read_only = common dso_local global i8* null, align 8
@.str.18 = private unnamed_addr constant [14 x i8] c"PRINT_COMMAND\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"Unsafe PRINT_COMMAND ignored\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"SCREEN_REFRESH_RATIO\00", align 1
@Atari800_refresh_rate = common dso_local global i8* null, align 8
@.str.21 = private unnamed_addr constant [14 x i8] c"DISABLE_BASIC\00", align 1
@Atari800_disable_basic = common dso_local global i8* null, align 8
@.str.22 = private unnamed_addr constant [17 x i8] c"ENABLE_SIO_PATCH\00", align 1
@ESC_enable_sio_patch = common dso_local global i8* null, align 8
@.str.23 = private unnamed_addr constant [15 x i8] c"ENABLE_H_PATCH\00", align 1
@Devices_enable_h_patch = common dso_local global i8* null, align 8
@.str.24 = private unnamed_addr constant [15 x i8] c"ENABLE_P_PATCH\00", align 1
@Devices_enable_p_patch = common dso_local global i8* null, align 8
@.str.25 = private unnamed_addr constant [15 x i8] c"ENABLE_R_PATCH\00", align 1
@Devices_enable_r_patch = common dso_local global i8* null, align 8
@.str.26 = private unnamed_addr constant [17 x i8] c"ENABLE_NEW_POKEY\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"STEREO_POKEY\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"SPEAKER_SOUND\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"SERIO_SOUND\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"MACHINE_TYPE\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"Atari 400/800\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"Atari OS/A\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"Atari OS/B\00", align 1
@Atari800_MACHINE_800 = common dso_local global i32 0, align 4
@Atari800_machine_type = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [12 x i8] c"Atari XL/XE\00", align 1
@Atari800_MACHINE_XLXE = common dso_local global i32 0, align 4
@.str.35 = private unnamed_addr constant [11 x i8] c"Atari 5200\00", align 1
@Atari800_MACHINE_5200 = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [25 x i8] c"Invalid machine type: %s\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"RAM_SIZE\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"320 (RAMBO)\00", align 1
@MEMORY_RAM_320_RAMBO = common dso_local global i32 0, align 4
@MEMORY_ram_size = common dso_local global i32 0, align 4
@.str.39 = private unnamed_addr constant [17 x i8] c"320 (COMPY SHOP)\00", align 1
@MEMORY_RAM_320_COMPY_SHOP = common dso_local global i32 0, align 4
@.str.40 = private unnamed_addr constant [21 x i8] c"Invalid RAM size: %s\00", align 1
@.str.41 = private unnamed_addr constant [16 x i8] c"DEFAULT_TV_MODE\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"PAL\00", align 1
@Atari800_TV_PAL = common dso_local global i32 0, align 4
@Atari800_tv_mode = common dso_local global i32 0, align 4
@.str.43 = private unnamed_addr constant [5 x i8] c"NTSC\00", align 1
@Atari800_TV_NTSC = common dso_local global i32 0, align 4
@.str.44 = private unnamed_addr constant [20 x i8] c"Invalid TV Mode: %s\00", align 1
@.str.45 = private unnamed_addr constant [21 x i8] c"MOSAIC_RAM_NUM_BANKS\00", align 1
@MEMORY_mosaic_num_banks = common dso_local global i32 0, align 4
@.str.46 = private unnamed_addr constant [39 x i8] c"Invalid Mosaic RAM number of banks: %s\00", align 1
@.str.47 = private unnamed_addr constant [20 x i8] c"AXLON_RAM_NUM_BANKS\00", align 1
@MEMORY_axlon_num_banks = common dso_local global i32 0, align 4
@.str.48 = private unnamed_addr constant [14 x i8] c"ENABLE_MAPRAM\00", align 1
@MEMORY_enable_mapram = common dso_local global i8* null, align 8
@.str.49 = private unnamed_addr constant [14 x i8] c"BUILTIN_BASIC\00", align 1
@Atari800_builtin_basic = common dso_local global i8* null, align 8
@.str.50 = private unnamed_addr constant [14 x i8] c"KEYBOARD_LEDS\00", align 1
@Atari800_keyboard_leds = common dso_local global i8* null, align 8
@.str.51 = private unnamed_addr constant [7 x i8] c"F_KEYS\00", align 1
@Atari800_f_keys = common dso_local global i8* null, align 8
@.str.52 = private unnamed_addr constant [13 x i8] c"BUILTIN_GAME\00", align 1
@Atari800_builtin_game = common dso_local global i8* null, align 8
@.str.53 = private unnamed_addr constant [18 x i8] c"KEYBOARD_DETACHED\00", align 1
@Atari800_keyboard_detached = common dso_local global i8* null, align 8
@.str.54 = private unnamed_addr constant [14 x i8] c"1200XL_JUMPER\00", align 1
@Atari800_jumper = common dso_local global i8* null, align 8
@.str.55 = private unnamed_addr constant [17 x i8] c"CFG_SAVE_ON_EXIT\00", align 1
@CFG_save_on_exit = common dso_local global i8* null, align 8
@.str.56 = private unnamed_addr constant [26 x i8] c"Unrecognized variable: %s\00", align 1
@.str.57 = private unnamed_addr constant [24 x i8] c"Ignored config line: %s\00", align 1
@.str.58 = private unnamed_addr constant [172 x i8] c"DISK_DIR, ROM_DIR, EXE_DIR and STATE_DIR configuration options\0Aare no longer supported. Please use ATARI_FILES_DIR\0Aand SAVED_FILES_DIR in your Atari800 configuration file.\00", align 1
@POKEYSND_console_sound_enabled = common dso_local global i8* null, align 8
@POKEYSND_enable_new_pokey = common dso_local global i8* null, align 8
@POKEYSND_serio_sound_enabled = common dso_local global i8* null, align 8
@POKEYSND_stereo_enabled = common dso_local global i8* null, align 8
@SYSTEM_WIDE_CFG_FILE = common dso_local global i8* null, align 8
@Sound_desired = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CFG_LoadConfig(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [256 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %13 = load i8*, i8** @rtconfig_filename, align 8
  store i8* %13, i8** %5, align 8
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i8*, i8** %3, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %1
  %18 = load i8*, i8** %3, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load i8*, i8** @rtconfig_filename, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = load i32, i32* @FILENAME_MAX, align 4
  %26 = call i32 @Util_strlcpy(i8* %23, i8* %24, i32 %25)
  br label %41

27:                                               ; preds = %17, %1
  %28 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %28, i8** %8, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load i8*, i8** @rtconfig_filename, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load i32, i32* @DEFAULT_CFG_NAME, align 4
  %35 = call i32 @Util_catpath(i8* %32, i8* %33, i32 %34)
  br label %40

36:                                               ; preds = %27
  %37 = load i8*, i8** @rtconfig_filename, align 8
  %38 = load i32, i32* @DEFAULT_CFG_NAME, align 4
  %39 = call i32 @strcpy(i8* %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %31
  br label %41

41:                                               ; preds = %40, %22
  %42 = load i8*, i8** %5, align 8
  %43 = call i32* @fopen(i8* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %43, i32** %4, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %55

46:                                               ; preds = %41
  %47 = load i8*, i8** @rtconfig_filename, align 8
  %48 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %47)
  %49 = load i32*, i32** %4, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0))
  %53 = load i32, i32* @FALSE, align 4
  store i32 %53, i32* %2, align 4
  br label %585

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54, %41
  %56 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %57 = load i32*, i32** %4, align 8
  %58 = call i32* @fgets(i8* %56, i32 256, i32* %57)
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load i8*, i8** %5, align 8
  %62 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %63 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i8* %61, i8* %62)
  br label %64

64:                                               ; preds = %60, %55
  br label %65

65:                                               ; preds = %575, %64
  %66 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %67 = load i32*, i32** %4, align 8
  %68 = call i32* @fgets(i8* %66, i32 256, i32* %67)
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %576

70:                                               ; preds = %65
  %71 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %72 = call i32 @Util_chomp(i8* %71)
  %73 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %74 = call i8* @strchr(i8* %73, i8 signext 61)
  store i8* %74, i8** %9, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %572

77:                                               ; preds = %70
  %78 = load i8*, i8** %9, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %9, align 8
  store i8 0, i8* %78, align 1
  %80 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %81 = call i32 @Util_trim(i8* %80)
  %82 = load i8*, i8** %9, align 8
  %83 = call i32 @Util_trim(i8* %82)
  %84 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %85 = load i8*, i8** %9, align 8
  %86 = call i64 @SYSROM_ReadConfig(i8* %84, i8* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %77
  br label %571

89:                                               ; preds = %77
  %90 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %91 = call i64 @strcmp(i8* %90, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %109

93:                                               ; preds = %89
  %94 = load i64, i64* @UI_n_atari_files_dir, align 8
  %95 = load i64, i64* @UI_MAX_DIRECTORIES, align 8
  %96 = icmp sge i64 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  br label %108

99:                                               ; preds = %93
  %100 = load i8**, i8*** @UI_atari_files_dir, align 8
  %101 = load i64, i64* @UI_n_atari_files_dir, align 8
  %102 = add nsw i64 %101, 1
  store i64 %102, i64* @UI_n_atari_files_dir, align 8
  %103 = getelementptr inbounds i8*, i8** %100, i64 %101
  %104 = load i8*, i8** %103, align 8
  %105 = load i8*, i8** %9, align 8
  %106 = load i32, i32* @FILENAME_MAX, align 4
  %107 = call i32 @Util_strlcpy(i8* %104, i8* %105, i32 %106)
  br label %108

108:                                              ; preds = %99, %97
  br label %570

109:                                              ; preds = %89
  %110 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %111 = call i64 @strcmp(i8* %110, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %129

113:                                              ; preds = %109
  %114 = load i64, i64* @UI_n_saved_files_dir, align 8
  %115 = load i64, i64* @UI_MAX_DIRECTORIES, align 8
  %116 = icmp sge i64 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %113
  %118 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  br label %128

119:                                              ; preds = %113
  %120 = load i8**, i8*** @UI_saved_files_dir, align 8
  %121 = load i64, i64* @UI_n_saved_files_dir, align 8
  %122 = add nsw i64 %121, 1
  store i64 %122, i64* @UI_n_saved_files_dir, align 8
  %123 = getelementptr inbounds i8*, i8** %120, i64 %121
  %124 = load i8*, i8** %123, align 8
  %125 = load i8*, i8** %9, align 8
  %126 = load i32, i32* @FILENAME_MAX, align 4
  %127 = call i32 @Util_strlcpy(i8* %124, i8* %125, i32 %126)
  br label %128

128:                                              ; preds = %119, %117
  br label %569

129:                                              ; preds = %109
  %130 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %131 = call i64 @strcmp(i8* %130, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %145, label %133

133:                                              ; preds = %129
  %134 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %135 = call i64 @strcmp(i8* %134, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %145, label %137

137:                                              ; preds = %133
  %138 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %139 = call i64 @strcmp(i8* %138, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %145, label %141

141:                                              ; preds = %137
  %142 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %143 = call i64 @strcmp(i8* %142, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %166

145:                                              ; preds = %141, %137, %133, %129
  %146 = load i8*, i8** %9, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 0
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %165

151:                                              ; preds = %145
  %152 = load i8*, i8** %9, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 0
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp ne i32 %155, 46
  br i1 %156, label %163, label %157

157:                                              ; preds = %151
  %158 = load i8*, i8** %9, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 1
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %157, %151
  %164 = load i32, i32* @TRUE, align 4
  store i32 %164, i32* %7, align 4
  br label %165

165:                                              ; preds = %163, %157, %145
  br label %568

166:                                              ; preds = %141
  %167 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %168 = call i64 @strcmp(i8* %167, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %166
  %171 = load i8**, i8*** @Devices_atari_h_dir, align 8
  %172 = getelementptr inbounds i8*, i8** %171, i64 0
  %173 = load i8*, i8** %172, align 8
  %174 = load i8*, i8** %9, align 8
  %175 = load i32, i32* @FILENAME_MAX, align 4
  %176 = call i32 @Util_strlcpy(i8* %173, i8* %174, i32 %175)
  br label %567

177:                                              ; preds = %166
  %178 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %179 = call i64 @strcmp(i8* %178, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %188

181:                                              ; preds = %177
  %182 = load i8**, i8*** @Devices_atari_h_dir, align 8
  %183 = getelementptr inbounds i8*, i8** %182, i64 1
  %184 = load i8*, i8** %183, align 8
  %185 = load i8*, i8** %9, align 8
  %186 = load i32, i32* @FILENAME_MAX, align 4
  %187 = call i32 @Util_strlcpy(i8* %184, i8* %185, i32 %186)
  br label %566

188:                                              ; preds = %177
  %189 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %190 = call i64 @strcmp(i8* %189, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %192, label %199

192:                                              ; preds = %188
  %193 = load i8**, i8*** @Devices_atari_h_dir, align 8
  %194 = getelementptr inbounds i8*, i8** %193, i64 2
  %195 = load i8*, i8** %194, align 8
  %196 = load i8*, i8** %9, align 8
  %197 = load i32, i32* @FILENAME_MAX, align 4
  %198 = call i32 @Util_strlcpy(i8* %195, i8* %196, i32 %197)
  br label %565

199:                                              ; preds = %188
  %200 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %201 = call i64 @strcmp(i8* %200, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %203, label %210

203:                                              ; preds = %199
  %204 = load i8**, i8*** @Devices_atari_h_dir, align 8
  %205 = getelementptr inbounds i8*, i8** %204, i64 3
  %206 = load i8*, i8** %205, align 8
  %207 = load i8*, i8** %9, align 8
  %208 = load i32, i32* @FILENAME_MAX, align 4
  %209 = call i32 @Util_strlcpy(i8* %206, i8* %207, i32 %208)
  br label %564

210:                                              ; preds = %199
  %211 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %212 = call i64 @strcmp(i8* %211, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0))
  %213 = icmp eq i64 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %210
  %215 = load i8*, i8** %9, align 8
  %216 = call i8* @Util_sscandec(i8* %215)
  store i8* %216, i8** @Devices_h_read_only, align 8
  br label %563

217:                                              ; preds = %210
  %218 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %219 = call i64 @strcmp(i8* %218, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0))
  %220 = icmp eq i64 %219, 0
  br i1 %220, label %221, label %228

221:                                              ; preds = %217
  %222 = load i8*, i8** %9, align 8
  %223 = call i32 @Devices_SetPrintCommand(i8* %222)
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %227, label %225

225:                                              ; preds = %221
  %226 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i64 0, i64 0))
  br label %227

227:                                              ; preds = %225, %221
  br label %562

228:                                              ; preds = %217
  %229 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %230 = call i64 @strcmp(i8* %229, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0))
  %231 = icmp eq i64 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %228
  %233 = load i8*, i8** %9, align 8
  %234 = call i8* @Util_sscandec(i8* %233)
  store i8* %234, i8** @Atari800_refresh_rate, align 8
  br label %561

235:                                              ; preds = %228
  %236 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %237 = call i64 @strcmp(i8* %236, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0))
  %238 = icmp eq i64 %237, 0
  br i1 %238, label %239, label %242

239:                                              ; preds = %235
  %240 = load i8*, i8** %9, align 8
  %241 = call i8* @Util_sscanbool(i8* %240)
  store i8* %241, i8** @Atari800_disable_basic, align 8
  br label %560

242:                                              ; preds = %235
  %243 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %244 = call i64 @strcmp(i8* %243, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0))
  %245 = icmp eq i64 %244, 0
  br i1 %245, label %246, label %249

246:                                              ; preds = %242
  %247 = load i8*, i8** %9, align 8
  %248 = call i8* @Util_sscanbool(i8* %247)
  store i8* %248, i8** @ESC_enable_sio_patch, align 8
  br label %559

249:                                              ; preds = %242
  %250 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %251 = call i64 @strcmp(i8* %250, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0))
  %252 = icmp eq i64 %251, 0
  br i1 %252, label %253, label %256

253:                                              ; preds = %249
  %254 = load i8*, i8** %9, align 8
  %255 = call i8* @Util_sscanbool(i8* %254)
  store i8* %255, i8** @Devices_enable_h_patch, align 8
  br label %558

256:                                              ; preds = %249
  %257 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %258 = call i64 @strcmp(i8* %257, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0))
  %259 = icmp eq i64 %258, 0
  br i1 %259, label %260, label %263

260:                                              ; preds = %256
  %261 = load i8*, i8** %9, align 8
  %262 = call i8* @Util_sscanbool(i8* %261)
  store i8* %262, i8** @Devices_enable_p_patch, align 8
  br label %557

263:                                              ; preds = %256
  %264 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %265 = call i64 @strcmp(i8* %264, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i64 0, i64 0))
  %266 = icmp eq i64 %265, 0
  br i1 %266, label %267, label %270

267:                                              ; preds = %263
  %268 = load i8*, i8** %9, align 8
  %269 = call i8* @Util_sscanbool(i8* %268)
  store i8* %269, i8** @Devices_enable_r_patch, align 8
  br label %556

270:                                              ; preds = %263
  %271 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %272 = call i64 @strcmp(i8* %271, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i64 0, i64 0))
  %273 = icmp eq i64 %272, 0
  br i1 %273, label %274, label %275

274:                                              ; preds = %270
  br label %555

275:                                              ; preds = %270
  %276 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %277 = call i64 @strcmp(i8* %276, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i64 0, i64 0))
  %278 = icmp eq i64 %277, 0
  br i1 %278, label %279, label %280

279:                                              ; preds = %275
  br label %554

280:                                              ; preds = %275
  %281 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %282 = call i64 @strcmp(i8* %281, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0))
  %283 = icmp eq i64 %282, 0
  br i1 %283, label %284, label %285

284:                                              ; preds = %280
  br label %553

285:                                              ; preds = %280
  %286 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %287 = call i64 @strcmp(i8* %286, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0))
  %288 = icmp eq i64 %287, 0
  br i1 %288, label %289, label %290

289:                                              ; preds = %285
  br label %552

290:                                              ; preds = %285
  %291 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %292 = call i64 @strcmp(i8* %291, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i64 0, i64 0))
  %293 = icmp eq i64 %292, 0
  br i1 %293, label %294, label %326

294:                                              ; preds = %290
  %295 = load i8*, i8** %9, align 8
  %296 = call i64 @strcmp(i8* %295, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i64 0, i64 0))
  %297 = icmp eq i64 %296, 0
  br i1 %297, label %306, label %298

298:                                              ; preds = %294
  %299 = load i8*, i8** %9, align 8
  %300 = call i64 @strcmp(i8* %299, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i64 0, i64 0))
  %301 = icmp eq i64 %300, 0
  br i1 %301, label %306, label %302

302:                                              ; preds = %298
  %303 = load i8*, i8** %9, align 8
  %304 = call i64 @strcmp(i8* %303, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i64 0, i64 0))
  %305 = icmp eq i64 %304, 0
  br i1 %305, label %306, label %308

306:                                              ; preds = %302, %298, %294
  %307 = load i32, i32* @Atari800_MACHINE_800, align 4
  store i32 %307, i32* @Atari800_machine_type, align 4
  br label %325

308:                                              ; preds = %302
  %309 = load i8*, i8** %9, align 8
  %310 = call i64 @strcmp(i8* %309, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0))
  %311 = icmp eq i64 %310, 0
  br i1 %311, label %312, label %314

312:                                              ; preds = %308
  %313 = load i32, i32* @Atari800_MACHINE_XLXE, align 4
  store i32 %313, i32* @Atari800_machine_type, align 4
  br label %324

314:                                              ; preds = %308
  %315 = load i8*, i8** %9, align 8
  %316 = call i64 @strcmp(i8* %315, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i64 0, i64 0))
  %317 = icmp eq i64 %316, 0
  br i1 %317, label %318, label %320

318:                                              ; preds = %314
  %319 = load i32, i32* @Atari800_MACHINE_5200, align 4
  store i32 %319, i32* @Atari800_machine_type, align 4
  br label %323

320:                                              ; preds = %314
  %321 = load i8*, i8** %9, align 8
  %322 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.36, i64 0, i64 0), i8* %321)
  br label %323

323:                                              ; preds = %320, %318
  br label %324

324:                                              ; preds = %323, %312
  br label %325

325:                                              ; preds = %324, %306
  br label %551

326:                                              ; preds = %290
  %327 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %328 = call i64 @strcmp(i8* %327, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i64 0, i64 0))
  %329 = icmp eq i64 %328, 0
  br i1 %329, label %330, label %357

330:                                              ; preds = %326
  %331 = load i8*, i8** %9, align 8
  %332 = call i64 @strcmp(i8* %331, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i64 0, i64 0))
  %333 = icmp eq i64 %332, 0
  br i1 %333, label %334, label %336

334:                                              ; preds = %330
  %335 = load i32, i32* @MEMORY_RAM_320_RAMBO, align 4
  store i32 %335, i32* @MEMORY_ram_size, align 4
  br label %356

336:                                              ; preds = %330
  %337 = load i8*, i8** %9, align 8
  %338 = call i64 @strcmp(i8* %337, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.39, i64 0, i64 0))
  %339 = icmp eq i64 %338, 0
  br i1 %339, label %340, label %342

340:                                              ; preds = %336
  %341 = load i32, i32* @MEMORY_RAM_320_COMPY_SHOP, align 4
  store i32 %341, i32* @MEMORY_ram_size, align 4
  br label %355

342:                                              ; preds = %336
  %343 = load i8*, i8** %9, align 8
  %344 = call i8* @Util_sscandec(i8* %343)
  %345 = ptrtoint i8* %344 to i32
  store i32 %345, i32* %10, align 4
  %346 = load i32, i32* %10, align 4
  %347 = call i64 @MEMORY_SizeValid(i32 %346)
  %348 = icmp ne i64 %347, 0
  br i1 %348, label %349, label %351

349:                                              ; preds = %342
  %350 = load i32, i32* %10, align 4
  store i32 %350, i32* @MEMORY_ram_size, align 4
  br label %354

351:                                              ; preds = %342
  %352 = load i8*, i8** %9, align 8
  %353 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.40, i64 0, i64 0), i8* %352)
  br label %354

354:                                              ; preds = %351, %349
  br label %355

355:                                              ; preds = %354, %340
  br label %356

356:                                              ; preds = %355, %334
  br label %550

357:                                              ; preds = %326
  %358 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %359 = call i64 @strcmp(i8* %358, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.41, i64 0, i64 0))
  %360 = icmp eq i64 %359, 0
  br i1 %360, label %361, label %378

361:                                              ; preds = %357
  %362 = load i8*, i8** %9, align 8
  %363 = call i64 @strcmp(i8* %362, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i64 0, i64 0))
  %364 = icmp eq i64 %363, 0
  br i1 %364, label %365, label %367

365:                                              ; preds = %361
  %366 = load i32, i32* @Atari800_TV_PAL, align 4
  store i32 %366, i32* @Atari800_tv_mode, align 4
  br label %377

367:                                              ; preds = %361
  %368 = load i8*, i8** %9, align 8
  %369 = call i64 @strcmp(i8* %368, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0))
  %370 = icmp eq i64 %369, 0
  br i1 %370, label %371, label %373

371:                                              ; preds = %367
  %372 = load i32, i32* @Atari800_TV_NTSC, align 4
  store i32 %372, i32* @Atari800_tv_mode, align 4
  br label %376

373:                                              ; preds = %367
  %374 = load i8*, i8** %9, align 8
  %375 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.44, i64 0, i64 0), i8* %374)
  br label %376

376:                                              ; preds = %373, %371
  br label %377

377:                                              ; preds = %376, %365
  br label %549

378:                                              ; preds = %357
  %379 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %380 = call i64 @strcmp(i8* %379, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.45, i64 0, i64 0))
  %381 = icmp eq i64 %380, 0
  br i1 %381, label %382, label %397

382:                                              ; preds = %378
  %383 = load i8*, i8** %9, align 8
  %384 = call i8* @Util_sscandec(i8* %383)
  %385 = ptrtoint i8* %384 to i32
  store i32 %385, i32* %11, align 4
  %386 = load i32, i32* %11, align 4
  %387 = icmp sge i32 %386, 0
  br i1 %387, label %388, label %393

388:                                              ; preds = %382
  %389 = load i32, i32* %11, align 4
  %390 = icmp sle i32 %389, 64
  br i1 %390, label %391, label %393

391:                                              ; preds = %388
  %392 = load i32, i32* %11, align 4
  store i32 %392, i32* @MEMORY_mosaic_num_banks, align 4
  br label %396

393:                                              ; preds = %388, %382
  %394 = load i8*, i8** %9, align 8
  %395 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.46, i64 0, i64 0), i8* %394)
  br label %396

396:                                              ; preds = %393, %391
  br label %548

397:                                              ; preds = %378
  %398 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %399 = call i64 @strcmp(i8* %398, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0))
  %400 = icmp eq i64 %399, 0
  br i1 %400, label %401, label %431

401:                                              ; preds = %397
  %402 = load i8*, i8** %9, align 8
  %403 = call i8* @Util_sscandec(i8* %402)
  %404 = ptrtoint i8* %403 to i32
  store i32 %404, i32* %12, align 4
  %405 = load i32, i32* %12, align 4
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %425, label %407

407:                                              ; preds = %401
  %408 = load i32, i32* %12, align 4
  %409 = icmp eq i32 %408, 8
  br i1 %409, label %425, label %410

410:                                              ; preds = %407
  %411 = load i32, i32* %12, align 4
  %412 = icmp eq i32 %411, 16
  br i1 %412, label %425, label %413

413:                                              ; preds = %410
  %414 = load i32, i32* %12, align 4
  %415 = icmp eq i32 %414, 32
  br i1 %415, label %425, label %416

416:                                              ; preds = %413
  %417 = load i32, i32* %12, align 4
  %418 = icmp eq i32 %417, 64
  br i1 %418, label %425, label %419

419:                                              ; preds = %416
  %420 = load i32, i32* %12, align 4
  %421 = icmp eq i32 %420, 128
  br i1 %421, label %425, label %422

422:                                              ; preds = %419
  %423 = load i32, i32* %12, align 4
  %424 = icmp eq i32 %423, 256
  br i1 %424, label %425, label %427

425:                                              ; preds = %422, %419, %416, %413, %410, %407, %401
  %426 = load i32, i32* %12, align 4
  store i32 %426, i32* @MEMORY_axlon_num_banks, align 4
  br label %430

427:                                              ; preds = %422
  %428 = load i8*, i8** %9, align 8
  %429 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.46, i64 0, i64 0), i8* %428)
  br label %430

430:                                              ; preds = %427, %425
  br label %547

431:                                              ; preds = %397
  %432 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %433 = call i64 @strcmp(i8* %432, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.48, i64 0, i64 0))
  %434 = icmp eq i64 %433, 0
  br i1 %434, label %435, label %438

435:                                              ; preds = %431
  %436 = load i8*, i8** %9, align 8
  %437 = call i8* @Util_sscanbool(i8* %436)
  store i8* %437, i8** @MEMORY_enable_mapram, align 8
  br label %546

438:                                              ; preds = %431
  %439 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %440 = call i64 @strcmp(i8* %439, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i64 0, i64 0))
  %441 = icmp eq i64 %440, 0
  br i1 %441, label %442, label %445

442:                                              ; preds = %438
  %443 = load i8*, i8** %9, align 8
  %444 = call i8* @Util_sscanbool(i8* %443)
  store i8* %444, i8** @Atari800_builtin_basic, align 8
  br label %545

445:                                              ; preds = %438
  %446 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %447 = call i64 @strcmp(i8* %446, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.50, i64 0, i64 0))
  %448 = icmp eq i64 %447, 0
  br i1 %448, label %449, label %452

449:                                              ; preds = %445
  %450 = load i8*, i8** %9, align 8
  %451 = call i8* @Util_sscanbool(i8* %450)
  store i8* %451, i8** @Atari800_keyboard_leds, align 8
  br label %544

452:                                              ; preds = %445
  %453 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %454 = call i64 @strcmp(i8* %453, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i64 0, i64 0))
  %455 = icmp eq i64 %454, 0
  br i1 %455, label %456, label %459

456:                                              ; preds = %452
  %457 = load i8*, i8** %9, align 8
  %458 = call i8* @Util_sscanbool(i8* %457)
  store i8* %458, i8** @Atari800_f_keys, align 8
  br label %543

459:                                              ; preds = %452
  %460 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %461 = call i64 @strcmp(i8* %460, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.52, i64 0, i64 0))
  %462 = icmp eq i64 %461, 0
  br i1 %462, label %463, label %466

463:                                              ; preds = %459
  %464 = load i8*, i8** %9, align 8
  %465 = call i8* @Util_sscanbool(i8* %464)
  store i8* %465, i8** @Atari800_builtin_game, align 8
  br label %542

466:                                              ; preds = %459
  %467 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %468 = call i64 @strcmp(i8* %467, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.53, i64 0, i64 0))
  %469 = icmp eq i64 %468, 0
  br i1 %469, label %470, label %473

470:                                              ; preds = %466
  %471 = load i8*, i8** %9, align 8
  %472 = call i8* @Util_sscanbool(i8* %471)
  store i8* %472, i8** @Atari800_keyboard_detached, align 8
  br label %541

473:                                              ; preds = %466
  %474 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %475 = call i64 @strcmp(i8* %474, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i64 0, i64 0))
  %476 = icmp eq i64 %475, 0
  br i1 %476, label %477, label %480

477:                                              ; preds = %473
  %478 = load i8*, i8** %9, align 8
  %479 = call i8* @Util_sscanbool(i8* %478)
  store i8* %479, i8** @Atari800_jumper, align 8
  br label %540

480:                                              ; preds = %473
  %481 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %482 = call i64 @strcmp(i8* %481, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.55, i64 0, i64 0))
  %483 = icmp eq i64 %482, 0
  br i1 %483, label %484, label %487

484:                                              ; preds = %480
  %485 = load i8*, i8** %9, align 8
  %486 = call i8* @Util_sscanbool(i8* %485)
  store i8* %486, i8** @CFG_save_on_exit, align 8
  br label %539

487:                                              ; preds = %480
  %488 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %489 = load i8*, i8** %9, align 8
  %490 = call i64 @PBI_ReadConfig(i8* %488, i8* %489)
  %491 = icmp ne i64 %490, 0
  br i1 %491, label %492, label %493

492:                                              ; preds = %487
  br label %538

493:                                              ; preds = %487
  %494 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %495 = load i8*, i8** %9, align 8
  %496 = call i64 @CARTRIDGE_ReadConfig(i8* %494, i8* %495)
  %497 = icmp ne i64 %496, 0
  br i1 %497, label %498, label %499

498:                                              ; preds = %493
  br label %537

499:                                              ; preds = %493
  %500 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %501 = load i8*, i8** %9, align 8
  %502 = call i64 @CASSETTE_ReadConfig(i8* %500, i8* %501)
  %503 = icmp ne i64 %502, 0
  br i1 %503, label %504, label %505

504:                                              ; preds = %499
  br label %536

505:                                              ; preds = %499
  %506 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %507 = load i8*, i8** %9, align 8
  %508 = call i64 @RTIME_ReadConfig(i8* %506, i8* %507)
  %509 = icmp ne i64 %508, 0
  br i1 %509, label %510, label %511

510:                                              ; preds = %505
  br label %535

511:                                              ; preds = %505
  %512 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %513 = load i8*, i8** %9, align 8
  %514 = call i64 @Colours_ReadConfig(i8* %512, i8* %513)
  %515 = icmp ne i64 %514, 0
  br i1 %515, label %516, label %517

516:                                              ; preds = %511
  br label %534

517:                                              ; preds = %511
  %518 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %519 = load i8*, i8** %9, align 8
  %520 = call i64 @ARTIFACT_ReadConfig(i8* %518, i8* %519)
  %521 = icmp ne i64 %520, 0
  br i1 %521, label %522, label %523

522:                                              ; preds = %517
  br label %533

523:                                              ; preds = %517
  %524 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %525 = load i8*, i8** %9, align 8
  %526 = call i64 @Screen_ReadConfig(i8* %524, i8* %525)
  %527 = icmp ne i64 %526, 0
  br i1 %527, label %528, label %529

528:                                              ; preds = %523
  br label %532

529:                                              ; preds = %523
  %530 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %531 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.56, i64 0, i64 0), i8* %530)
  br label %532

532:                                              ; preds = %529, %528
  br label %533

533:                                              ; preds = %532, %522
  br label %534

534:                                              ; preds = %533, %516
  br label %535

535:                                              ; preds = %534, %510
  br label %536

536:                                              ; preds = %535, %504
  br label %537

537:                                              ; preds = %536, %498
  br label %538

538:                                              ; preds = %537, %492
  br label %539

539:                                              ; preds = %538, %484
  br label %540

540:                                              ; preds = %539, %477
  br label %541

541:                                              ; preds = %540, %470
  br label %542

542:                                              ; preds = %541, %463
  br label %543

543:                                              ; preds = %542, %456
  br label %544

544:                                              ; preds = %543, %449
  br label %545

545:                                              ; preds = %544, %442
  br label %546

546:                                              ; preds = %545, %435
  br label %547

547:                                              ; preds = %546, %430
  br label %548

548:                                              ; preds = %547, %396
  br label %549

549:                                              ; preds = %548, %377
  br label %550

550:                                              ; preds = %549, %356
  br label %551

551:                                              ; preds = %550, %325
  br label %552

552:                                              ; preds = %551, %289
  br label %553

553:                                              ; preds = %552, %284
  br label %554

554:                                              ; preds = %553, %279
  br label %555

555:                                              ; preds = %554, %274
  br label %556

556:                                              ; preds = %555, %267
  br label %557

557:                                              ; preds = %556, %260
  br label %558

558:                                              ; preds = %557, %253
  br label %559

559:                                              ; preds = %558, %246
  br label %560

560:                                              ; preds = %559, %239
  br label %561

561:                                              ; preds = %560, %232
  br label %562

562:                                              ; preds = %561, %227
  br label %563

563:                                              ; preds = %562, %214
  br label %564

564:                                              ; preds = %563, %203
  br label %565

565:                                              ; preds = %564, %192
  br label %566

566:                                              ; preds = %565, %181
  br label %567

567:                                              ; preds = %566, %170
  br label %568

568:                                              ; preds = %567, %165
  br label %569

569:                                              ; preds = %568, %128
  br label %570

570:                                              ; preds = %569, %108
  br label %571

571:                                              ; preds = %570, %88
  br label %575

572:                                              ; preds = %70
  %573 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %574 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.57, i64 0, i64 0), i8* %573)
  br label %575

575:                                              ; preds = %572, %571
  br label %65

576:                                              ; preds = %65
  %577 = load i32*, i32** %4, align 8
  %578 = call i32 @fclose(i32* %577)
  %579 = load i32, i32* %7, align 4
  %580 = icmp ne i32 %579, 0
  br i1 %580, label %581, label %583

581:                                              ; preds = %576
  %582 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([172 x i8], [172 x i8]* @.str.58, i64 0, i64 0))
  br label %583

583:                                              ; preds = %581, %576
  %584 = load i32, i32* @TRUE, align 4
  store i32 %584, i32* %2, align 4
  br label %585

585:                                              ; preds = %583, %51
  %586 = load i32, i32* %2, align 4
  ret i32 %586
}

declare dso_local i32 @Util_strlcpy(i8*, i8*, i32) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @Util_catpath(i8*, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @Log_print(i8*, ...) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i32 @Util_chomp(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @Util_trim(i8*) #1

declare dso_local i64 @SYSROM_ReadConfig(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @Util_sscandec(i8*) #1

declare dso_local i32 @Devices_SetPrintCommand(i8*) #1

declare dso_local i8* @Util_sscanbool(i8*) #1

declare dso_local i64 @MEMORY_SizeValid(i32) #1

declare dso_local i64 @PBI_ReadConfig(i8*, i8*) #1

declare dso_local i64 @CARTRIDGE_ReadConfig(i8*, i8*) #1

declare dso_local i64 @CASSETTE_ReadConfig(i8*, i8*) #1

declare dso_local i64 @RTIME_ReadConfig(i8*, i8*) #1

declare dso_local i64 @Colours_ReadConfig(i8*, i8*) #1

declare dso_local i64 @ARTIFACT_ReadConfig(i8*, i8*) #1

declare dso_local i64 @Screen_ReadConfig(i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
