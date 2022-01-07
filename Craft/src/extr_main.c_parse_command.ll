; ModuleID = '/home/carl/AnghaBench/Craft/src/extr_main.c_parse_command.c'
source_filename = "/home/carl/AnghaBench/Craft/src/extr_main.c_parse_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8*, i32, i32, i32, i32, i32, i32, i32, i8* }

@MAX_ADDR_LENGTH = common dso_local global i32 0, align 4
@DEFAULT_PORT = common dso_local global i32 0, align 4
@MAX_PATH_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"/identity %128s %128s\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Successfully imported identity token!\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"/logout\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"/login %128s\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Unknown username.\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"/online %128s %d\00", align 1
@g = common dso_local global %struct.TYPE_2__* null, align 8
@MODE_ONLINE = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [15 x i8] c"cache.%s.%d.db\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"/offline %128s\00", align 1
@MODE_OFFLINE = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [6 x i8] c"%s.db\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"/offline\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@DB_PATH = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [9 x i8] c"/view %d\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"Viewing distance must be between 1 and 24.\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"/copy\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"/paste\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"/tree\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"/array %d %d %d\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"/array %d\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"/fcube\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"/cube\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"/fsphere %d\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"/sphere %d\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"/fcirclex %d\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"/circlex %d\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"/fcircley %d\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"/circley %d\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"/fcirclez %d\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"/circlez %d\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"/fcylinder %d\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"/cylinder %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_command(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [128 x i8], align 16
  %6 = alloca [128 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %16 = bitcast [128 x i8]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 128, i1 false)
  %17 = bitcast [128 x i8]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %17, i8 0, i64 128, i1 false)
  %18 = load i32, i32* @MAX_ADDR_LENGTH, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %7, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %8, align 8
  %22 = load i32, i32* @DEFAULT_PORT, align 4
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* @MAX_PATH_LENGTH, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %10, align 8
  %26 = load i8*, i8** %3, align 8
  %27 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %28 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %29 = call i32 (i8*, i8*, ...) @sscanf(i8* %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %27, i8* %28)
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %37

31:                                               ; preds = %2
  %32 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %33 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %34 = call i32 @db_auth_set(i8* %32, i8* %33)
  %35 = call i32 @add_message(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %36 = call i32 (...) @login()
  br label %332

37:                                               ; preds = %2
  %38 = load i8*, i8** %3, align 8
  %39 = call i64 @strcmp(i8* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = call i32 (...) @db_auth_select_none()
  %43 = call i32 (...) @login()
  br label %331

44:                                               ; preds = %37
  %45 = load i8*, i8** %3, align 8
  %46 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %47 = call i32 (i8*, i8*, ...) @sscanf(i8* %45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %46)
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %58

49:                                               ; preds = %44
  %50 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %51 = call i64 @db_auth_select(i8* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = call i32 (...) @login()
  br label %57

55:                                               ; preds = %49
  %56 = call i32 @add_message(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %53
  br label %330

58:                                               ; preds = %44
  %59 = load i8*, i8** %3, align 8
  %60 = call i32 (i8*, i8*, ...) @sscanf(i8* %59, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %21, i32* %9)
  %61 = icmp sge i32 %60, 1
  br i1 %61, label %62, label %87

62:                                               ; preds = %58
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  %65 = load i8*, i8** @MODE_ONLINE, align 8
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 9
  store i8* %65, i8** %67, align 8
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = load i32, i32* @MAX_ADDR_LENGTH, align 4
  %72 = call i32 @strncpy(i8* %70, i8* %21, i32 %71)
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 8
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @MAX_PATH_LENGTH, align 4
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i32 (i32, i32, i8*, i8*, ...) @snprintf(i32 %78, i32 %79, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* %82, i32 %85)
  br label %329

87:                                               ; preds = %58
  %88 = load i8*, i8** %3, align 8
  %89 = call i32 (i8*, i8*, ...) @sscanf(i8* %88, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* %25)
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %91, label %102

91:                                               ; preds = %87
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  store i32 1, i32* %93, align 8
  %94 = load i8*, i8** @MODE_OFFLINE, align 8
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 9
  store i8* %94, i8** %96, align 8
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 8
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @MAX_PATH_LENGTH, align 4
  %101 = call i32 (i32, i32, i8*, i8*, ...) @snprintf(i32 %99, i32 %100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* %25)
  br label %328

102:                                              ; preds = %87
  %103 = load i8*, i8** %3, align 8
  %104 = call i64 @strcmp(i8* %103, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %118

106:                                              ; preds = %102
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  store i32 1, i32* %108, align 8
  %109 = load i8*, i8** @MODE_OFFLINE, align 8
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 9
  store i8* %109, i8** %111, align 8
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 8
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @MAX_PATH_LENGTH, align 4
  %116 = load i8*, i8** @DB_PATH, align 8
  %117 = call i32 (i32, i32, i8*, i8*, ...) @snprintf(i32 %114, i32 %115, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* %116)
  br label %327

118:                                              ; preds = %102
  %119 = load i8*, i8** %3, align 8
  %120 = call i32 (i8*, i8*, ...) @sscanf(i8* %119, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i32* %11)
  %121 = icmp eq i32 %120, 1
  br i1 %121, label %122, label %142

122:                                              ; preds = %118
  %123 = load i32, i32* %11, align 4
  %124 = icmp sge i32 %123, 1
  br i1 %124, label %125, label %139

125:                                              ; preds = %122
  %126 = load i32, i32* %11, align 4
  %127 = icmp sle i32 %126, 24
  br i1 %127, label %128, label %139

128:                                              ; preds = %125
  %129 = load i32, i32* %11, align 4
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 3
  store i32 %129, i32* %131, align 4
  %132 = load i32, i32* %11, align 4
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 4
  store i32 %132, i32* %134, align 8
  %135 = load i32, i32* %11, align 4
  %136 = add nsw i32 %135, 4
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 5
  store i32 %136, i32* %138, align 4
  br label %141

139:                                              ; preds = %125, %122
  %140 = call i32 @add_message(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0))
  br label %141

141:                                              ; preds = %139, %128
  br label %326

142:                                              ; preds = %118
  %143 = load i8*, i8** %3, align 8
  %144 = call i64 @strcmp(i8* %143, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %142
  %147 = call i32 (...) @copy()
  br label %325

148:                                              ; preds = %142
  %149 = load i8*, i8** %3, align 8
  %150 = call i64 @strcmp(i8* %149, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %148
  %153 = call i32 (...) @paste()
  br label %324

154:                                              ; preds = %148
  %155 = load i8*, i8** %3, align 8
  %156 = call i64 @strcmp(i8* %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %154
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 7
  %161 = call i32 @tree(i32* %160)
  br label %323

162:                                              ; preds = %154
  %163 = load i8*, i8** %3, align 8
  %164 = call i32 (i8*, i8*, ...) @sscanf(i8* %163, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i32* %13, i32* %14, i32* %15)
  %165 = icmp eq i32 %164, 3
  br i1 %165, label %166, label %175

166:                                              ; preds = %162
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 6
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 7
  %171 = load i32, i32* %13, align 4
  %172 = load i32, i32* %14, align 4
  %173 = load i32, i32* %15, align 4
  %174 = call i32 @array(i32* %168, i32* %170, i32 %171, i32 %172, i32 %173)
  br label %322

175:                                              ; preds = %162
  %176 = load i8*, i8** %3, align 8
  %177 = call i32 (i8*, i8*, ...) @sscanf(i8* %176, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i32* %12)
  %178 = icmp eq i32 %177, 1
  br i1 %178, label %179, label %188

179:                                              ; preds = %175
  %180 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 6
  %182 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 7
  %184 = load i32, i32* %12, align 4
  %185 = load i32, i32* %12, align 4
  %186 = load i32, i32* %12, align 4
  %187 = call i32 @array(i32* %181, i32* %183, i32 %184, i32 %185, i32 %186)
  br label %321

188:                                              ; preds = %175
  %189 = load i8*, i8** %3, align 8
  %190 = call i64 @strcmp(i8* %189, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0))
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %188
  %193 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 7
  %195 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 6
  %197 = call i32 @cube(i32* %194, i32* %196, i32 1)
  br label %320

198:                                              ; preds = %188
  %199 = load i8*, i8** %3, align 8
  %200 = call i64 @strcmp(i8* %199, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0))
  %201 = icmp eq i64 %200, 0
  br i1 %201, label %202, label %208

202:                                              ; preds = %198
  %203 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 7
  %205 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 6
  %207 = call i32 @cube(i32* %204, i32* %206, i32 0)
  br label %319

208:                                              ; preds = %198
  %209 = load i8*, i8** %3, align 8
  %210 = call i32 (i8*, i8*, ...) @sscanf(i8* %209, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i32* %11)
  %211 = icmp eq i32 %210, 1
  br i1 %211, label %212, label %217

212:                                              ; preds = %208
  %213 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %214 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %213, i32 0, i32 7
  %215 = load i32, i32* %11, align 4
  %216 = call i32 @sphere(i32* %214, i32 %215, i32 1, i32 0, i32 0, i32 0)
  br label %318

217:                                              ; preds = %208
  %218 = load i8*, i8** %3, align 8
  %219 = call i32 (i8*, i8*, ...) @sscanf(i8* %218, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i32* %11)
  %220 = icmp eq i32 %219, 1
  br i1 %220, label %221, label %226

221:                                              ; preds = %217
  %222 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i32 0, i32 7
  %224 = load i32, i32* %11, align 4
  %225 = call i32 @sphere(i32* %223, i32 %224, i32 0, i32 0, i32 0, i32 0)
  br label %317

226:                                              ; preds = %217
  %227 = load i8*, i8** %3, align 8
  %228 = call i32 (i8*, i8*, ...) @sscanf(i8* %227, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0), i32* %11)
  %229 = icmp eq i32 %228, 1
  br i1 %229, label %230, label %235

230:                                              ; preds = %226
  %231 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %232 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %231, i32 0, i32 7
  %233 = load i32, i32* %11, align 4
  %234 = call i32 @sphere(i32* %232, i32 %233, i32 1, i32 1, i32 0, i32 0)
  br label %316

235:                                              ; preds = %226
  %236 = load i8*, i8** %3, align 8
  %237 = call i32 (i8*, i8*, ...) @sscanf(i8* %236, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0), i32* %11)
  %238 = icmp eq i32 %237, 1
  br i1 %238, label %239, label %244

239:                                              ; preds = %235
  %240 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %241 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %240, i32 0, i32 7
  %242 = load i32, i32* %11, align 4
  %243 = call i32 @sphere(i32* %241, i32 %242, i32 0, i32 1, i32 0, i32 0)
  br label %315

244:                                              ; preds = %235
  %245 = load i8*, i8** %3, align 8
  %246 = call i32 (i8*, i8*, ...) @sscanf(i8* %245, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i32* %11)
  %247 = icmp eq i32 %246, 1
  br i1 %247, label %248, label %253

248:                                              ; preds = %244
  %249 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %250 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %249, i32 0, i32 7
  %251 = load i32, i32* %11, align 4
  %252 = call i32 @sphere(i32* %250, i32 %251, i32 1, i32 0, i32 1, i32 0)
  br label %314

253:                                              ; preds = %244
  %254 = load i8*, i8** %3, align 8
  %255 = call i32 (i8*, i8*, ...) @sscanf(i8* %254, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0), i32* %11)
  %256 = icmp eq i32 %255, 1
  br i1 %256, label %257, label %262

257:                                              ; preds = %253
  %258 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %259 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %258, i32 0, i32 7
  %260 = load i32, i32* %11, align 4
  %261 = call i32 @sphere(i32* %259, i32 %260, i32 0, i32 0, i32 1, i32 0)
  br label %313

262:                                              ; preds = %253
  %263 = load i8*, i8** %3, align 8
  %264 = call i32 (i8*, i8*, ...) @sscanf(i8* %263, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0), i32* %11)
  %265 = icmp eq i32 %264, 1
  br i1 %265, label %266, label %271

266:                                              ; preds = %262
  %267 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %268 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %267, i32 0, i32 7
  %269 = load i32, i32* %11, align 4
  %270 = call i32 @sphere(i32* %268, i32 %269, i32 1, i32 0, i32 0, i32 1)
  br label %312

271:                                              ; preds = %262
  %272 = load i8*, i8** %3, align 8
  %273 = call i32 (i8*, i8*, ...) @sscanf(i8* %272, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i32* %11)
  %274 = icmp eq i32 %273, 1
  br i1 %274, label %275, label %280

275:                                              ; preds = %271
  %276 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %277 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %276, i32 0, i32 7
  %278 = load i32, i32* %11, align 4
  %279 = call i32 @sphere(i32* %277, i32 %278, i32 0, i32 0, i32 0, i32 1)
  br label %311

280:                                              ; preds = %271
  %281 = load i8*, i8** %3, align 8
  %282 = call i32 (i8*, i8*, ...) @sscanf(i8* %281, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0), i32* %11)
  %283 = icmp eq i32 %282, 1
  br i1 %283, label %284, label %291

284:                                              ; preds = %280
  %285 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %286 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %285, i32 0, i32 7
  %287 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %288 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %287, i32 0, i32 6
  %289 = load i32, i32* %11, align 4
  %290 = call i32 @cylinder(i32* %286, i32* %288, i32 %289, i32 1)
  br label %310

291:                                              ; preds = %280
  %292 = load i8*, i8** %3, align 8
  %293 = call i32 (i8*, i8*, ...) @sscanf(i8* %292, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i64 0, i64 0), i32* %11)
  %294 = icmp eq i32 %293, 1
  br i1 %294, label %295, label %302

295:                                              ; preds = %291
  %296 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %297 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %296, i32 0, i32 7
  %298 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %299 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %298, i32 0, i32 6
  %300 = load i32, i32* %11, align 4
  %301 = call i32 @cylinder(i32* %297, i32* %299, i32 %300, i32 0)
  br label %309

302:                                              ; preds = %291
  %303 = load i32, i32* %4, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %308

305:                                              ; preds = %302
  %306 = load i8*, i8** %3, align 8
  %307 = call i32 @client_talk(i8* %306)
  br label %308

308:                                              ; preds = %305, %302
  br label %309

309:                                              ; preds = %308, %295
  br label %310

310:                                              ; preds = %309, %284
  br label %311

311:                                              ; preds = %310, %275
  br label %312

312:                                              ; preds = %311, %266
  br label %313

313:                                              ; preds = %312, %257
  br label %314

314:                                              ; preds = %313, %248
  br label %315

315:                                              ; preds = %314, %239
  br label %316

316:                                              ; preds = %315, %230
  br label %317

317:                                              ; preds = %316, %221
  br label %318

318:                                              ; preds = %317, %212
  br label %319

319:                                              ; preds = %318, %202
  br label %320

320:                                              ; preds = %319, %192
  br label %321

321:                                              ; preds = %320, %179
  br label %322

322:                                              ; preds = %321, %166
  br label %323

323:                                              ; preds = %322, %158
  br label %324

324:                                              ; preds = %323, %152
  br label %325

325:                                              ; preds = %324, %146
  br label %326

326:                                              ; preds = %325, %141
  br label %327

327:                                              ; preds = %326, %106
  br label %328

328:                                              ; preds = %327, %91
  br label %329

329:                                              ; preds = %328, %62
  br label %330

330:                                              ; preds = %329, %57
  br label %331

331:                                              ; preds = %330, %41
  br label %332

332:                                              ; preds = %331, %31
  %333 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %333)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @sscanf(i8*, i8*, ...) #3

declare dso_local i32 @db_auth_set(i8*, i8*) #3

declare dso_local i32 @add_message(i8*) #3

declare dso_local i32 @login(...) #3

declare dso_local i64 @strcmp(i8*, i8*) #3

declare dso_local i32 @db_auth_select_none(...) #3

declare dso_local i64 @db_auth_select(i8*) #3

declare dso_local i32 @strncpy(i8*, i8*, i32) #3

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, ...) #3

declare dso_local i32 @copy(...) #3

declare dso_local i32 @paste(...) #3

declare dso_local i32 @tree(i32*) #3

declare dso_local i32 @array(i32*, i32*, i32, i32, i32) #3

declare dso_local i32 @cube(i32*, i32*, i32) #3

declare dso_local i32 @sphere(i32*, i32, i32, i32, i32, i32) #3

declare dso_local i32 @cylinder(i32*, i32*, i32, i32) #3

declare dso_local i32 @client_talk(i8*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
