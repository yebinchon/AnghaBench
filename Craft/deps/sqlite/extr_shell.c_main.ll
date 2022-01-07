; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_shell.c_main.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_shell.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.callback_data = type { i8*, i8*, i8*, i32, i32, i32, i64, i32, i32 }

@SQLITE_SOURCE_ID = common dso_local global i8* null, align 8
@stderr = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [49 x i8] c"SQLite header and source version mismatch\0A%s\0A%s\0A\00", align 1
@Argv0 = common dso_local global i8* null, align 8
@stdin_is_interactive = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"%s: Error: too many options: \22%s\22\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Use -help for a list of options.\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"-separator\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"-nullvalue\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"-cmd\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"-init\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"-batch\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"-heap\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"-mmap\00", align 1
@SQLITE_CONFIG_MMAP_SIZE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"-vfs\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"no such VFS: \22%s\22\0A\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c":memory:\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"-html\00", align 1
@MODE_Html = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [6 x i8] c"-list\00", align 1
@MODE_List = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [6 x i8] c"-line\00", align 1
@MODE_Line = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [8 x i8] c"-column\00", align 1
@MODE_Column = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [5 x i8] c"-csv\00", align 1
@MODE_Csv = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"-header\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"-noheader\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"-echo\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"-stats\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"-bail\00", align 1
@bail_on_error = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [9 x i8] c"-version\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"-interactive\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"-help\00", align 1
@shell_callback = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [11 x i8] c"Error: %s\0A\00", align 1
@.str.30 = private unnamed_addr constant [35 x i8] c"Error: unable to process SQL \22%s\22\0A\00", align 1
@.str.31 = private unnamed_addr constant [31 x i8] c"%s: Error: unknown option: %s\0A\00", align 1
@.str.32 = private unnamed_addr constant [99 x i8] c"SQLite version %s %.19s\0AEnter \22.help\22 for instructions\0AEnter SQL statements terminated with a \22;\22\0A\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"%s/.sqlite_history\00", align 1
@stdin = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SQLITE_CONFIG_HEAP = common dso_local global i32 0, align 4
@fputs = common dso_local global i64 0, align 8
@interrupt_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.callback_data, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i32 0, i32* %11, align 4
  %19 = call i8* (...) @sqlite3_sourceid()
  %20 = load i8*, i8** @SQLITE_SOURCE_ID, align 8
  %21 = call i64 @strcmp(i8* %19, i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load i8*, i8** @stderr, align 8
  %25 = call i8* (...) @sqlite3_sourceid()
  %26 = load i8*, i8** @SQLITE_SOURCE_ID, align 8
  %27 = call i32 (i8*, i8*, ...) @fprintf(i8* %24, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* %25, i8* %26)
  %28 = call i32 @exit(i32 1) #3
  unreachable

29:                                               ; preds = %2
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 0
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** @Argv0, align 8
  %33 = call i32 @main_init(%struct.callback_data* %7)
  %34 = call i32 @isatty(i32 0)
  store i32 %34, i32* @stdin_is_interactive, align 4
  store i32 1, i32* %10, align 4
  br label %35

35:                                               ; preds = %167, %29
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %170

39:                                               ; preds = %35
  %40 = load i8**, i8*** %5, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %12, align 8
  %45 = load i8*, i8** %12, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 45
  br i1 %49, label %50, label %73

50:                                               ; preds = %39
  %51 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %7, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i8*, i8** %12, align 8
  %56 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %7, i32 0, i32 0
  store i8* %55, i8** %56, align 8
  br label %167

57:                                               ; preds = %50
  %58 = load i8*, i8** %9, align 8
  %59 = icmp eq i8* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i8*, i8** %12, align 8
  store i8* %61, i8** %9, align 8
  br label %167

62:                                               ; preds = %57
  %63 = load i8*, i8** @stderr, align 8
  %64 = load i8*, i8** @Argv0, align 8
  %65 = load i8**, i8*** %5, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %65, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 (i8*, i8*, ...) @fprintf(i8* %63, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %64, i8* %69)
  %71 = load i8*, i8** @stderr, align 8
  %72 = call i32 (i8*, i8*, ...) @fprintf(i8* %71, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %567

73:                                               ; preds = %39
  %74 = load i8*, i8** %12, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 45
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load i8*, i8** %12, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %12, align 8
  br label %82

82:                                               ; preds = %79, %73
  %83 = load i8*, i8** %12, align 8
  %84 = call i64 @strcmp(i8* %83, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %94, label %86

86:                                               ; preds = %82
  %87 = load i8*, i8** %12, align 8
  %88 = call i64 @strcmp(i8* %87, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %86
  %91 = load i8*, i8** %12, align 8
  %92 = call i64 @strcmp(i8* %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %90, %86, %82
  %95 = load i32, i32* %4, align 4
  %96 = load i8**, i8*** %5, align 8
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %10, align 4
  %99 = call i8* @cmdline_option_value(i32 %95, i8** %96, i32 %98)
  br label %166

100:                                              ; preds = %90
  %101 = load i8*, i8** %12, align 8
  %102 = call i64 @strcmp(i8* %101, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %100
  %105 = load i32, i32* %4, align 4
  %106 = load i8**, i8*** %5, align 8
  %107 = load i32, i32* %10, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %10, align 4
  %109 = call i8* @cmdline_option_value(i32 %105, i8** %106, i32 %108)
  store i8* %109, i8** %8, align 8
  br label %165

110:                                              ; preds = %100
  %111 = load i8*, i8** %12, align 8
  %112 = call i64 @strcmp(i8* %111, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %110
  store i32 0, i32* @stdin_is_interactive, align 4
  br label %164

115:                                              ; preds = %110
  %116 = load i8*, i8** %12, align 8
  %117 = call i64 @strcmp(i8* %116, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %115
  br label %163

120:                                              ; preds = %115
  %121 = load i8*, i8** %12, align 8
  %122 = call i64 @strcmp(i8* %121, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %135

124:                                              ; preds = %120
  %125 = load i32, i32* %4, align 4
  %126 = load i8**, i8*** %5, align 8
  %127 = load i32, i32* %10, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %10, align 4
  %129 = call i8* @cmdline_option_value(i32 %125, i8** %126, i32 %128)
  %130 = call i32 @integerValue(i8* %129)
  store i32 %130, i32* %13, align 4
  %131 = load i32, i32* @SQLITE_CONFIG_MMAP_SIZE, align 4
  %132 = load i32, i32* %13, align 4
  %133 = load i32, i32* %13, align 4
  %134 = call i32 (i32, ...) @sqlite3_config(i32 %131, i32 %132, i32 %133)
  br label %162

135:                                              ; preds = %120
  %136 = load i8*, i8** %12, align 8
  %137 = call i64 @strcmp(i8* %136, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %161

139:                                              ; preds = %135
  %140 = load i32, i32* %4, align 4
  %141 = load i8**, i8*** %5, align 8
  %142 = load i32, i32* %10, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %10, align 4
  %144 = call i8* @cmdline_option_value(i32 %140, i8** %141, i32 %143)
  %145 = call i32* @sqlite3_vfs_find(i8* %144)
  store i32* %145, i32** %14, align 8
  %146 = load i32*, i32** %14, align 8
  %147 = icmp ne i32* %146, null
  br i1 %147, label %148, label %151

148:                                              ; preds = %139
  %149 = load i32*, i32** %14, align 8
  %150 = call i32 @sqlite3_vfs_register(i32* %149, i32 1)
  br label %160

151:                                              ; preds = %139
  %152 = load i8*, i8** @stderr, align 8
  %153 = load i8**, i8*** %5, align 8
  %154 = load i32, i32* %10, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8*, i8** %153, i64 %155
  %157 = load i8*, i8** %156, align 8
  %158 = call i32 (i8*, i8*, ...) @fprintf(i8* %152, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i8* %157)
  %159 = call i32 @exit(i32 1) #3
  unreachable

160:                                              ; preds = %148
  br label %161

161:                                              ; preds = %160, %135
  br label %162

162:                                              ; preds = %161, %124
  br label %163

163:                                              ; preds = %162, %119
  br label %164

164:                                              ; preds = %163, %114
  br label %165

165:                                              ; preds = %164, %104
  br label %166

166:                                              ; preds = %165, %94
  br label %167

167:                                              ; preds = %166, %60, %54
  %168 = load i32, i32* %10, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %10, align 4
  br label %35

170:                                              ; preds = %35
  %171 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %7, i32 0, i32 0
  %172 = load i8*, i8** %171, align 8
  %173 = icmp eq i8* %172, null
  br i1 %173, label %174, label %176

174:                                              ; preds = %170
  %175 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %7, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8** %175, align 8
  br label %176

176:                                              ; preds = %174, %170
  %177 = load i32, i32* @stdout, align 4
  %178 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %7, i32 0, i32 8
  store i32 %177, i32* %178, align 4
  %179 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %7, i32 0, i32 0
  %180 = load i8*, i8** %179, align 8
  %181 = call i64 @access(i8* %180, i32 0)
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %176
  %184 = call i32 @open_db(%struct.callback_data* %7)
  br label %185

185:                                              ; preds = %183, %176
  %186 = load i8*, i8** %8, align 8
  %187 = call i32 @process_sqliterc(%struct.callback_data* %7, i8* %186)
  store i32 %187, i32* %11, align 4
  %188 = load i32, i32* %11, align 4
  %189 = icmp sgt i32 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %185
  %191 = load i32, i32* %11, align 4
  store i32 %191, i32* %3, align 4
  br label %567

192:                                              ; preds = %185
  store i32 1, i32* %10, align 4
  br label %193

193:                                              ; preds = %468, %192
  %194 = load i32, i32* %10, align 4
  %195 = load i32, i32* %4, align 4
  %196 = icmp slt i32 %194, %195
  br i1 %196, label %197, label %471

197:                                              ; preds = %193
  %198 = load i8**, i8*** %5, align 8
  %199 = load i32, i32* %10, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i8*, i8** %198, i64 %200
  %202 = load i8*, i8** %201, align 8
  store i8* %202, i8** %15, align 8
  %203 = load i8*, i8** %15, align 8
  %204 = getelementptr inbounds i8, i8* %203, i64 0
  %205 = load i8, i8* %204, align 1
  %206 = sext i8 %205 to i32
  %207 = icmp ne i32 %206, 45
  br i1 %207, label %208, label %209

208:                                              ; preds = %197
  br label %468

209:                                              ; preds = %197
  %210 = load i8*, i8** %15, align 8
  %211 = getelementptr inbounds i8, i8* %210, i64 1
  %212 = load i8, i8* %211, align 1
  %213 = sext i8 %212 to i32
  %214 = icmp eq i32 %213, 45
  br i1 %214, label %215, label %218

215:                                              ; preds = %209
  %216 = load i8*, i8** %15, align 8
  %217 = getelementptr inbounds i8, i8* %216, i32 1
  store i8* %217, i8** %15, align 8
  br label %218

218:                                              ; preds = %215, %209
  %219 = load i8*, i8** %15, align 8
  %220 = call i64 @strcmp(i8* %219, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %221 = icmp eq i64 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %218
  %223 = load i32, i32* %10, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %10, align 4
  br label %467

225:                                              ; preds = %218
  %226 = load i8*, i8** %15, align 8
  %227 = call i64 @strcmp(i8* %226, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  %228 = icmp eq i64 %227, 0
  br i1 %228, label %229, label %232

229:                                              ; preds = %225
  %230 = load i32, i32* @MODE_Html, align 4
  %231 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %7, i32 0, i32 7
  store i32 %230, i32* %231, align 8
  br label %466

232:                                              ; preds = %225
  %233 = load i8*, i8** %15, align 8
  %234 = call i64 @strcmp(i8* %233, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  %235 = icmp eq i64 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %232
  %237 = load i32, i32* @MODE_List, align 4
  %238 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %7, i32 0, i32 7
  store i32 %237, i32* %238, align 8
  br label %465

239:                                              ; preds = %232
  %240 = load i8*, i8** %15, align 8
  %241 = call i64 @strcmp(i8* %240, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  %242 = icmp eq i64 %241, 0
  br i1 %242, label %243, label %246

243:                                              ; preds = %239
  %244 = load i32, i32* @MODE_Line, align 4
  %245 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %7, i32 0, i32 7
  store i32 %244, i32* %245, align 8
  br label %464

246:                                              ; preds = %239
  %247 = load i8*, i8** %15, align 8
  %248 = call i64 @strcmp(i8* %247, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0))
  %249 = icmp eq i64 %248, 0
  br i1 %249, label %250, label %253

250:                                              ; preds = %246
  %251 = load i32, i32* @MODE_Column, align 4
  %252 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %7, i32 0, i32 7
  store i32 %251, i32* %252, align 8
  br label %463

253:                                              ; preds = %246
  %254 = load i8*, i8** %15, align 8
  %255 = call i64 @strcmp(i8* %254, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  %256 = icmp eq i64 %255, 0
  br i1 %256, label %257, label %263

257:                                              ; preds = %253
  %258 = load i32, i32* @MODE_Csv, align 4
  %259 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %7, i32 0, i32 7
  store i32 %258, i32* %259, align 8
  %260 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %7, i32 0, i32 1
  %261 = load i8*, i8** %260, align 8
  %262 = call i32 @memcpy(i8* %261, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i32 2)
  br label %462

263:                                              ; preds = %253
  %264 = load i8*, i8** %15, align 8
  %265 = call i64 @strcmp(i8* %264, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %266 = icmp eq i64 %265, 0
  br i1 %266, label %267, label %276

267:                                              ; preds = %263
  %268 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %7, i32 0, i32 1
  %269 = load i8*, i8** %268, align 8
  %270 = load i32, i32* %4, align 4
  %271 = load i8**, i8*** %5, align 8
  %272 = load i32, i32* %10, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %10, align 4
  %274 = call i8* @cmdline_option_value(i32 %270, i8** %271, i32 %273)
  %275 = call i32 @sqlite3_snprintf(i32 8, i8* %269, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* %274)
  br label %461

276:                                              ; preds = %263
  %277 = load i8*, i8** %15, align 8
  %278 = call i64 @strcmp(i8* %277, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %279 = icmp eq i64 %278, 0
  br i1 %279, label %280, label %289

280:                                              ; preds = %276
  %281 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %7, i32 0, i32 2
  %282 = load i8*, i8** %281, align 8
  %283 = load i32, i32* %4, align 4
  %284 = load i8**, i8*** %5, align 8
  %285 = load i32, i32* %10, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %10, align 4
  %287 = call i8* @cmdline_option_value(i32 %283, i8** %284, i32 %286)
  %288 = call i32 @sqlite3_snprintf(i32 8, i8* %282, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* %287)
  br label %460

289:                                              ; preds = %276
  %290 = load i8*, i8** %15, align 8
  %291 = call i64 @strcmp(i8* %290, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0))
  %292 = icmp eq i64 %291, 0
  br i1 %292, label %293, label %295

293:                                              ; preds = %289
  %294 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %7, i32 0, i32 3
  store i32 1, i32* %294, align 8
  br label %459

295:                                              ; preds = %289
  %296 = load i8*, i8** %15, align 8
  %297 = call i64 @strcmp(i8* %296, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0))
  %298 = icmp eq i64 %297, 0
  br i1 %298, label %299, label %301

299:                                              ; preds = %295
  %300 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %7, i32 0, i32 3
  store i32 0, i32* %300, align 8
  br label %458

301:                                              ; preds = %295
  %302 = load i8*, i8** %15, align 8
  %303 = call i64 @strcmp(i8* %302, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0))
  %304 = icmp eq i64 %303, 0
  br i1 %304, label %305, label %307

305:                                              ; preds = %301
  %306 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %7, i32 0, i32 4
  store i32 1, i32* %306, align 4
  br label %457

307:                                              ; preds = %301
  %308 = load i8*, i8** %15, align 8
  %309 = call i64 @strcmp(i8* %308, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0))
  %310 = icmp eq i64 %309, 0
  br i1 %310, label %311, label %313

311:                                              ; preds = %307
  %312 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %7, i32 0, i32 5
  store i32 1, i32* %312, align 8
  br label %456

313:                                              ; preds = %307
  %314 = load i8*, i8** %15, align 8
  %315 = call i64 @strcmp(i8* %314, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0))
  %316 = icmp eq i64 %315, 0
  br i1 %316, label %317, label %318

317:                                              ; preds = %313
  store i32 1, i32* @bail_on_error, align 4
  br label %455

318:                                              ; preds = %313
  %319 = load i8*, i8** %15, align 8
  %320 = call i64 @strcmp(i8* %319, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0))
  %321 = icmp eq i64 %320, 0
  br i1 %321, label %322, label %326

322:                                              ; preds = %318
  %323 = call i8* (...) @sqlite3_libversion()
  %324 = call i8* (...) @sqlite3_sourceid()
  %325 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0), i8* %323, i8* %324)
  store i32 0, i32* %3, align 4
  br label %567

326:                                              ; preds = %318
  %327 = load i8*, i8** %15, align 8
  %328 = call i64 @strcmp(i8* %327, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i64 0, i64 0))
  %329 = icmp eq i64 %328, 0
  br i1 %329, label %330, label %331

330:                                              ; preds = %326
  store i32 1, i32* @stdin_is_interactive, align 4
  br label %453

331:                                              ; preds = %326
  %332 = load i8*, i8** %15, align 8
  %333 = call i64 @strcmp(i8* %332, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %334 = icmp eq i64 %333, 0
  br i1 %334, label %335, label %336

335:                                              ; preds = %331
  store i32 0, i32* @stdin_is_interactive, align 4
  br label %452

336:                                              ; preds = %331
  %337 = load i8*, i8** %15, align 8
  %338 = call i64 @strcmp(i8* %337, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %339 = icmp eq i64 %338, 0
  br i1 %339, label %340, label %343

340:                                              ; preds = %336
  %341 = load i32, i32* %10, align 4
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %10, align 4
  br label %451

343:                                              ; preds = %336
  %344 = load i8*, i8** %15, align 8
  %345 = call i64 @strcmp(i8* %344, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %346 = icmp eq i64 %345, 0
  br i1 %346, label %347, label %350

347:                                              ; preds = %343
  %348 = load i32, i32* %10, align 4
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %10, align 4
  br label %450

350:                                              ; preds = %343
  %351 = load i8*, i8** %15, align 8
  %352 = call i64 @strcmp(i8* %351, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %353 = icmp eq i64 %352, 0
  br i1 %353, label %354, label %357

354:                                              ; preds = %350
  %355 = load i32, i32* %10, align 4
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %10, align 4
  br label %449

357:                                              ; preds = %350
  %358 = load i8*, i8** %15, align 8
  %359 = call i64 @strcmp(i8* %358, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0))
  %360 = icmp eq i64 %359, 0
  br i1 %360, label %361, label %363

361:                                              ; preds = %357
  %362 = call i32 @usage(i32 1)
  br label %448

363:                                              ; preds = %357
  %364 = load i8*, i8** %15, align 8
  %365 = call i64 @strcmp(i8* %364, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %366 = icmp eq i64 %365, 0
  br i1 %366, label %367, label %440

367:                                              ; preds = %363
  %368 = load i32, i32* %10, align 4
  %369 = load i32, i32* %4, align 4
  %370 = sub nsw i32 %369, 1
  %371 = icmp eq i32 %368, %370
  br i1 %371, label %372, label %373

372:                                              ; preds = %367
  br label %471

373:                                              ; preds = %367
  %374 = load i32, i32* %4, align 4
  %375 = load i8**, i8*** %5, align 8
  %376 = load i32, i32* %10, align 4
  %377 = add nsw i32 %376, 1
  store i32 %377, i32* %10, align 4
  %378 = call i8* @cmdline_option_value(i32 %374, i8** %375, i32 %377)
  store i8* %378, i8** %15, align 8
  %379 = load i8*, i8** %15, align 8
  %380 = getelementptr inbounds i8, i8* %379, i64 0
  %381 = load i8, i8* %380, align 1
  %382 = sext i8 %381 to i32
  %383 = icmp eq i32 %382, 46
  br i1 %383, label %384, label %401

384:                                              ; preds = %373
  %385 = load i8*, i8** %15, align 8
  %386 = call i32 @do_meta_command(i8* %385, %struct.callback_data* %7)
  store i32 %386, i32* %11, align 4
  %387 = load i32, i32* %11, align 4
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %400

389:                                              ; preds = %384
  %390 = load i32, i32* @bail_on_error, align 4
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %400

392:                                              ; preds = %389
  %393 = load i32, i32* %11, align 4
  %394 = icmp eq i32 %393, 2
  br i1 %394, label %395, label %396

395:                                              ; preds = %392
  br label %398

396:                                              ; preds = %392
  %397 = load i32, i32* %11, align 4
  br label %398

398:                                              ; preds = %396, %395
  %399 = phi i32 [ 0, %395 ], [ %397, %396 ]
  store i32 %399, i32* %3, align 4
  br label %567

400:                                              ; preds = %389, %384
  br label %439

401:                                              ; preds = %373
  %402 = call i32 @open_db(%struct.callback_data* %7)
  %403 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %7, i32 0, i32 6
  %404 = load i64, i64* %403, align 8
  %405 = load i8*, i8** %15, align 8
  %406 = load i32, i32* @shell_callback, align 4
  %407 = call i32 @shell_exec(i64 %404, i8* %405, i32 %406, %struct.callback_data* %7, i8** %6)
  store i32 %407, i32* %11, align 4
  %408 = load i8*, i8** %6, align 8
  %409 = icmp ne i8* %408, null
  br i1 %409, label %410, label %425

410:                                              ; preds = %401
  %411 = load i8*, i8** @stderr, align 8
  %412 = load i8*, i8** %6, align 8
  %413 = call i32 (i8*, i8*, ...) @fprintf(i8* %411, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), i8* %412)
  %414 = load i32, i32* @bail_on_error, align 4
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %416, label %424

416:                                              ; preds = %410
  %417 = load i32, i32* %11, align 4
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %421

419:                                              ; preds = %416
  %420 = load i32, i32* %11, align 4
  br label %422

421:                                              ; preds = %416
  br label %422

422:                                              ; preds = %421, %419
  %423 = phi i32 [ %420, %419 ], [ 1, %421 ]
  store i32 %423, i32* %3, align 4
  br label %567

424:                                              ; preds = %410
  br label %438

425:                                              ; preds = %401
  %426 = load i32, i32* %11, align 4
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %437

428:                                              ; preds = %425
  %429 = load i8*, i8** @stderr, align 8
  %430 = load i8*, i8** %15, align 8
  %431 = call i32 (i8*, i8*, ...) @fprintf(i8* %429, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.30, i64 0, i64 0), i8* %430)
  %432 = load i32, i32* @bail_on_error, align 4
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %436

434:                                              ; preds = %428
  %435 = load i32, i32* %11, align 4
  store i32 %435, i32* %3, align 4
  br label %567

436:                                              ; preds = %428
  br label %437

437:                                              ; preds = %436, %425
  br label %438

438:                                              ; preds = %437, %424
  br label %439

439:                                              ; preds = %438, %400
  br label %447

440:                                              ; preds = %363
  %441 = load i8*, i8** @stderr, align 8
  %442 = load i8*, i8** @Argv0, align 8
  %443 = load i8*, i8** %15, align 8
  %444 = call i32 (i8*, i8*, ...) @fprintf(i8* %441, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.31, i64 0, i64 0), i8* %442, i8* %443)
  %445 = load i8*, i8** @stderr, align 8
  %446 = call i32 (i8*, i8*, ...) @fprintf(i8* %445, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %567

447:                                              ; preds = %439
  br label %448

448:                                              ; preds = %447, %361
  br label %449

449:                                              ; preds = %448, %354
  br label %450

450:                                              ; preds = %449, %347
  br label %451

451:                                              ; preds = %450, %340
  br label %452

452:                                              ; preds = %451, %335
  br label %453

453:                                              ; preds = %452, %330
  br label %454

454:                                              ; preds = %453
  br label %455

455:                                              ; preds = %454, %317
  br label %456

456:                                              ; preds = %455, %311
  br label %457

457:                                              ; preds = %456, %305
  br label %458

458:                                              ; preds = %457, %299
  br label %459

459:                                              ; preds = %458, %293
  br label %460

460:                                              ; preds = %459, %280
  br label %461

461:                                              ; preds = %460, %267
  br label %462

462:                                              ; preds = %461, %257
  br label %463

463:                                              ; preds = %462, %250
  br label %464

464:                                              ; preds = %463, %243
  br label %465

465:                                              ; preds = %464, %236
  br label %466

466:                                              ; preds = %465, %229
  br label %467

467:                                              ; preds = %466, %222
  br label %468

468:                                              ; preds = %467, %208
  %469 = load i32, i32* %10, align 4
  %470 = add nsw i32 %469, 1
  store i32 %470, i32* %10, align 4
  br label %193

471:                                              ; preds = %372, %193
  %472 = load i8*, i8** %9, align 8
  %473 = icmp ne i8* %472, null
  br i1 %473, label %474, label %518

474:                                              ; preds = %471
  %475 = load i8*, i8** %9, align 8
  %476 = getelementptr inbounds i8, i8* %475, i64 0
  %477 = load i8, i8* %476, align 1
  %478 = sext i8 %477 to i32
  %479 = icmp eq i32 %478, 46
  br i1 %479, label %480, label %487

480:                                              ; preds = %474
  %481 = load i8*, i8** %9, align 8
  %482 = call i32 @do_meta_command(i8* %481, %struct.callback_data* %7)
  store i32 %482, i32* %11, align 4
  %483 = load i32, i32* %11, align 4
  %484 = icmp eq i32 %483, 2
  br i1 %484, label %485, label %486

485:                                              ; preds = %480
  store i32 0, i32* %11, align 4
  br label %486

486:                                              ; preds = %485, %480
  br label %517

487:                                              ; preds = %474
  %488 = call i32 @open_db(%struct.callback_data* %7)
  %489 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %7, i32 0, i32 6
  %490 = load i64, i64* %489, align 8
  %491 = load i8*, i8** %9, align 8
  %492 = load i32, i32* @shell_callback, align 4
  %493 = call i32 @shell_exec(i64 %490, i8* %491, i32 %492, %struct.callback_data* %7, i8** %6)
  store i32 %493, i32* %11, align 4
  %494 = load i8*, i8** %6, align 8
  %495 = icmp ne i8* %494, null
  br i1 %495, label %496, label %507

496:                                              ; preds = %487
  %497 = load i8*, i8** @stderr, align 8
  %498 = load i8*, i8** %6, align 8
  %499 = call i32 (i8*, i8*, ...) @fprintf(i8* %497, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), i8* %498)
  %500 = load i32, i32* %11, align 4
  %501 = icmp ne i32 %500, 0
  br i1 %501, label %502, label %504

502:                                              ; preds = %496
  %503 = load i32, i32* %11, align 4
  br label %505

504:                                              ; preds = %496
  br label %505

505:                                              ; preds = %504, %502
  %506 = phi i32 [ %503, %502 ], [ 1, %504 ]
  store i32 %506, i32* %3, align 4
  br label %567

507:                                              ; preds = %487
  %508 = load i32, i32* %11, align 4
  %509 = icmp ne i32 %508, 0
  br i1 %509, label %510, label %515

510:                                              ; preds = %507
  %511 = load i8*, i8** @stderr, align 8
  %512 = load i8*, i8** %9, align 8
  %513 = call i32 (i8*, i8*, ...) @fprintf(i8* %511, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.30, i64 0, i64 0), i8* %512)
  %514 = load i32, i32* %11, align 4
  store i32 %514, i32* %3, align 4
  br label %567

515:                                              ; preds = %507
  br label %516

516:                                              ; preds = %515
  br label %517

517:                                              ; preds = %516, %486
  br label %556

518:                                              ; preds = %471
  %519 = load i32, i32* @stdin_is_interactive, align 4
  %520 = icmp ne i32 %519, 0
  br i1 %520, label %521, label %552

521:                                              ; preds = %518
  store i8* null, i8** %17, align 8
  %522 = call i8* (...) @sqlite3_libversion()
  %523 = call i8* (...) @sqlite3_sourceid()
  %524 = call i32 @printf(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.32, i64 0, i64 0), i8* %522, i8* %523)
  %525 = call i8* (...) @find_home_dir()
  store i8* %525, i8** %16, align 8
  %526 = load i8*, i8** %16, align 8
  %527 = icmp ne i8* %526, null
  br i1 %527, label %528, label %541

528:                                              ; preds = %521
  %529 = load i8*, i8** %16, align 8
  %530 = call i32 @strlen30(i8* %529)
  %531 = add nsw i32 %530, 20
  store i32 %531, i32* %18, align 4
  %532 = load i32, i32* %18, align 4
  %533 = call i8* @malloc(i32 %532)
  store i8* %533, i8** %17, align 8
  %534 = icmp ne i8* %533, null
  br i1 %534, label %535, label %540

535:                                              ; preds = %528
  %536 = load i32, i32* %18, align 4
  %537 = load i8*, i8** %17, align 8
  %538 = load i8*, i8** %16, align 8
  %539 = call i32 @sqlite3_snprintf(i32 %536, i8* %537, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i64 0, i64 0), i8* %538)
  br label %540

540:                                              ; preds = %535, %528
  br label %541

541:                                              ; preds = %540, %521
  %542 = call i32 @process_input(%struct.callback_data* %7, i32 0)
  store i32 %542, i32* %11, align 4
  %543 = load i8*, i8** %17, align 8
  %544 = icmp ne i8* %543, null
  br i1 %544, label %545, label %551

545:                                              ; preds = %541
  %546 = call i32 @stifle_history(i32 100)
  %547 = load i8*, i8** %17, align 8
  %548 = call i32 @write_history(i8* %547)
  %549 = load i8*, i8** %17, align 8
  %550 = call i32 @free(i8* %549)
  br label %551

551:                                              ; preds = %545, %541
  br label %555

552:                                              ; preds = %518
  %553 = load i32, i32* @stdin, align 4
  %554 = call i32 @process_input(%struct.callback_data* %7, i32 %553)
  store i32 %554, i32* %11, align 4
  br label %555

555:                                              ; preds = %552, %551
  br label %556

556:                                              ; preds = %555, %517
  %557 = call i32 @set_table_name(%struct.callback_data* %7, i32 0)
  %558 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %7, i32 0, i32 6
  %559 = load i64, i64* %558, align 8
  %560 = icmp ne i64 %559, 0
  br i1 %560, label %561, label %565

561:                                              ; preds = %556
  %562 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %7, i32 0, i32 6
  %563 = load i64, i64* %562, align 8
  %564 = call i32 @sqlite3_close(i64 %563)
  br label %565

565:                                              ; preds = %561, %556
  %566 = load i32, i32* %11, align 4
  store i32 %566, i32* %3, align 4
  br label %567

567:                                              ; preds = %565, %510, %505, %440, %434, %422, %398, %322, %190, %62
  %568 = load i32, i32* %3, align 4
  ret i32 %568
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @sqlite3_sourceid(...) #1

declare dso_local i32 @fprintf(i8*, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @main_init(%struct.callback_data*) #1

declare dso_local i32 @isatty(i32) #1

declare dso_local i8* @cmdline_option_value(i32, i8**, i32) #1

declare dso_local i32 @integerValue(i8*) #1

declare dso_local i32 @sqlite3_config(i32, ...) #1

declare dso_local i32* @sqlite3_vfs_find(i8*) #1

declare dso_local i32 @sqlite3_vfs_register(i32*, i32) #1

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i32 @open_db(%struct.callback_data*) #1

declare dso_local i32 @process_sqliterc(%struct.callback_data*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @sqlite3_snprintf(i32, i8*, i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i8* @sqlite3_libversion(...) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @do_meta_command(i8*, %struct.callback_data*) #1

declare dso_local i32 @shell_exec(i64, i8*, i32, %struct.callback_data*, i8**) #1

declare dso_local i8* @find_home_dir(...) #1

declare dso_local i32 @strlen30(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @process_input(%struct.callback_data*, i32) #1

declare dso_local i32 @stifle_history(i32) #1

declare dso_local i32 @write_history(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @set_table_name(%struct.callback_data*, i32) #1

declare dso_local i32 @sqlite3_close(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
