; ModuleID = '/home/carl/AnghaBench/beanstalkd/extr_util.c_optparse.c'
source_filename = "/home/carl/AnghaBench/beanstalkd/extr_util.c_optparse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i32, i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-l\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-z\00", align 1
@job_data_size_limit = common dso_local global i8* null, align 8
@JOB_DATA_SIZE_LIMIT_MAX = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"maximum job size was set to %d\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"-c flag was removed. binlog is always compacted.\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"-n flag was removed. binlog is always compacted.\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"-f\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"-u\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"-b\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"beanstalkd %s\0A\00", align 1
@version = common dso_local global i8* null, align 8
@verbose = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [17 x i8] c"unknown flag: %s\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"unknown argument: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @optparse(%struct.TYPE_5__* %0, i8** %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i8** %1, i8*** %4, align 8
  br label %9

9:                                                ; preds = %270, %2
  %10 = load i8**, i8*** %4, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i32 1
  store i8** %11, i8*** %4, align 8
  %12 = load i8*, i8** %10, align 8
  store i8* %12, i8** %6, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %25

14:                                               ; preds = %9
  %15 = load i8*, i8** %6, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %6, align 8
  %17 = load i8, i8* %15, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 45
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = load i8*, i8** %6, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  br label %25

25:                                               ; preds = %20, %14, %9
  %26 = phi i1 [ false, %14 ], [ false, %9 ], [ %24, %20 ]
  br i1 %26, label %27, label %271

27:                                               ; preds = %25
  br label %28

28:                                               ; preds = %269, %27
  %29 = load i8*, i8** %6, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %6, align 8
  %31 = load i8, i8* %29, align 1
  store i8 %31, i8* %8, align 1
  %32 = icmp ne i8 %31, 0
  br i1 %32, label %33, label %270

33:                                               ; preds = %28
  %34 = load i8, i8* %8, align 1
  %35 = sext i8 %34 to i32
  switch i32 %35, label %264 [
    i32 112, label %36
    i32 108, label %66
    i32 122, label %96
    i32 115, label %129
    i32 99, label %157
    i32 110, label %159
    i32 102, label %161
    i32 70, label %195
    i32 117, label %199
    i32 98, label %225
    i32 104, label %255
    i32 118, label %257
    i32 86, label %261
  ]

36:                                               ; preds = %33
  %37 = load i8*, i8** %6, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i8*, i8** %6, align 8
  store i8* %42, i8** %7, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %43 = load i8*, i8** %7, align 8
  br label %58

44:                                               ; preds = %36
  %45 = load i8**, i8*** %4, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i8**, i8*** %4, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i32 1
  store i8** %50, i8*** %4, align 8
  %51 = load i8*, i8** %49, align 8
  br label %56

52:                                               ; preds = %44
  %53 = call i32 @flagusage(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to i8*
  br label %56

56:                                               ; preds = %52, %48
  %57 = phi i8* [ %51, %48 ], [ %55, %52 ]
  br label %58

58:                                               ; preds = %56, %41
  %59 = phi i8* [ %43, %41 ], [ %57, %56 ]
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 3
  store i8* %59, i8** %61, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 3
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @warn_systemd_ignored_option(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %64)
  br label %269

66:                                               ; preds = %33
  %67 = load i8*, i8** %6, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i8*, i8** %6, align 8
  store i8* %72, i8** %7, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %73 = load i8*, i8** %7, align 8
  br label %88

74:                                               ; preds = %66
  %75 = load i8**, i8*** %4, align 8
  %76 = load i8*, i8** %75, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load i8**, i8*** %4, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i32 1
  store i8** %80, i8*** %4, align 8
  %81 = load i8*, i8** %79, align 8
  br label %86

82:                                               ; preds = %74
  %83 = call i32 @flagusage(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %84 = sext i32 %83 to i64
  %85 = inttoptr i64 %84 to i8*
  br label %86

86:                                               ; preds = %82, %78
  %87 = phi i8* [ %81, %78 ], [ %85, %82 ]
  br label %88

88:                                               ; preds = %86, %71
  %89 = phi i8* [ %73, %71 ], [ %87, %86 ]
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 2
  store i8* %89, i8** %91, align 8
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 2
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @warn_systemd_ignored_option(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %94)
  br label %269

96:                                               ; preds = %33
  %97 = load i8*, i8** %6, align 8
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load i8*, i8** %6, align 8
  store i8* %102, i8** %7, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %103 = load i8*, i8** %7, align 8
  br label %118

104:                                              ; preds = %96
  %105 = load i8**, i8*** %4, align 8
  %106 = load i8*, i8** %105, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %112

108:                                              ; preds = %104
  %109 = load i8**, i8*** %4, align 8
  %110 = getelementptr inbounds i8*, i8** %109, i32 1
  store i8** %110, i8*** %4, align 8
  %111 = load i8*, i8** %109, align 8
  br label %116

112:                                              ; preds = %104
  %113 = call i32 @flagusage(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %114 = sext i32 %113 to i64
  %115 = inttoptr i64 %114 to i8*
  br label %116

116:                                              ; preds = %112, %108
  %117 = phi i8* [ %111, %108 ], [ %115, %112 ]
  br label %118

118:                                              ; preds = %116, %101
  %119 = phi i8* [ %103, %101 ], [ %117, %116 ]
  %120 = call i8* @parse_size_t(i8* %119)
  store i8* %120, i8** @job_data_size_limit, align 8
  %121 = load i8*, i8** @job_data_size_limit, align 8
  %122 = load i8*, i8** @JOB_DATA_SIZE_LIMIT_MAX, align 8
  %123 = icmp ugt i8* %121, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %118
  %125 = load i8*, i8** @JOB_DATA_SIZE_LIMIT_MAX, align 8
  %126 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* %125)
  %127 = load i8*, i8** @JOB_DATA_SIZE_LIMIT_MAX, align 8
  store i8* %127, i8** @job_data_size_limit, align 8
  br label %128

128:                                              ; preds = %124, %118
  br label %269

129:                                              ; preds = %33
  %130 = load i8*, i8** %6, align 8
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load i8*, i8** %6, align 8
  store i8* %135, i8** %7, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %136 = load i8*, i8** %7, align 8
  br label %151

137:                                              ; preds = %129
  %138 = load i8**, i8*** %4, align 8
  %139 = load i8*, i8** %138, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %141, label %145

141:                                              ; preds = %137
  %142 = load i8**, i8*** %4, align 8
  %143 = getelementptr inbounds i8*, i8** %142, i32 1
  store i8** %143, i8*** %4, align 8
  %144 = load i8*, i8** %142, align 8
  br label %149

145:                                              ; preds = %137
  %146 = call i32 @flagusage(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %147 = sext i32 %146 to i64
  %148 = inttoptr i64 %147 to i8*
  br label %149

149:                                              ; preds = %145, %141
  %150 = phi i8* [ %144, %141 ], [ %148, %145 ]
  br label %151

151:                                              ; preds = %149, %134
  %152 = phi i8* [ %136, %134 ], [ %150, %149 ]
  %153 = call i8* @parse_size_t(i8* %152)
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 4
  store i8* %153, i8** %156, align 8
  br label %269

157:                                              ; preds = %33
  %158 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0))
  br label %269

159:                                              ; preds = %33
  %160 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0))
  br label %269

161:                                              ; preds = %33
  %162 = load i8*, i8** %6, align 8
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %161
  %167 = load i8*, i8** %6, align 8
  store i8* %167, i8** %7, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %168 = load i8*, i8** %7, align 8
  br label %183

169:                                              ; preds = %161
  %170 = load i8**, i8*** %4, align 8
  %171 = load i8*, i8** %170, align 8
  %172 = icmp ne i8* %171, null
  br i1 %172, label %173, label %177

173:                                              ; preds = %169
  %174 = load i8**, i8*** %4, align 8
  %175 = getelementptr inbounds i8*, i8** %174, i32 1
  store i8** %175, i8*** %4, align 8
  %176 = load i8*, i8** %174, align 8
  br label %181

177:                                              ; preds = %169
  %178 = call i32 @flagusage(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %179 = sext i32 %178 to i64
  %180 = inttoptr i64 %179 to i8*
  br label %181

181:                                              ; preds = %177, %173
  %182 = phi i8* [ %176, %173 ], [ %180, %177 ]
  br label %183

183:                                              ; preds = %181, %166
  %184 = phi i8* [ %168, %166 ], [ %182, %181 ]
  %185 = call i8* @parse_size_t(i8* %184)
  %186 = ptrtoint i8* %185 to i32
  store i32 %186, i32* %5, align 4
  %187 = load i32, i32* %5, align 4
  %188 = mul nsw i32 %187, 1000000
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 0
  store i32 %188, i32* %191, align 8
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 1
  store i32 1, i32* %194, align 4
  br label %269

195:                                              ; preds = %33
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 1
  store i32 0, i32* %198, align 4
  br label %269

199:                                              ; preds = %33
  %200 = load i8*, i8** %6, align 8
  %201 = load i8, i8* %200, align 1
  %202 = sext i8 %201 to i32
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %199
  %205 = load i8*, i8** %6, align 8
  store i8* %205, i8** %7, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %206 = load i8*, i8** %7, align 8
  br label %221

207:                                              ; preds = %199
  %208 = load i8**, i8*** %4, align 8
  %209 = load i8*, i8** %208, align 8
  %210 = icmp ne i8* %209, null
  br i1 %210, label %211, label %215

211:                                              ; preds = %207
  %212 = load i8**, i8*** %4, align 8
  %213 = getelementptr inbounds i8*, i8** %212, i32 1
  store i8** %213, i8*** %4, align 8
  %214 = load i8*, i8** %212, align 8
  br label %219

215:                                              ; preds = %207
  %216 = call i32 @flagusage(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %217 = sext i32 %216 to i64
  %218 = inttoptr i64 %217 to i8*
  br label %219

219:                                              ; preds = %215, %211
  %220 = phi i8* [ %214, %211 ], [ %218, %215 ]
  br label %221

221:                                              ; preds = %219, %204
  %222 = phi i8* [ %206, %204 ], [ %220, %219 ]
  %223 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 1
  store i8* %222, i8** %224, align 8
  br label %269

225:                                              ; preds = %33
  %226 = load i8*, i8** %6, align 8
  %227 = load i8, i8* %226, align 1
  %228 = sext i8 %227 to i32
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %233

230:                                              ; preds = %225
  %231 = load i8*, i8** %6, align 8
  store i8* %231, i8** %7, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %232 = load i8*, i8** %7, align 8
  br label %247

233:                                              ; preds = %225
  %234 = load i8**, i8*** %4, align 8
  %235 = load i8*, i8** %234, align 8
  %236 = icmp ne i8* %235, null
  br i1 %236, label %237, label %241

237:                                              ; preds = %233
  %238 = load i8**, i8*** %4, align 8
  %239 = getelementptr inbounds i8*, i8** %238, i32 1
  store i8** %239, i8*** %4, align 8
  %240 = load i8*, i8** %238, align 8
  br label %245

241:                                              ; preds = %233
  %242 = call i32 @flagusage(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %243 = sext i32 %242 to i64
  %244 = inttoptr i64 %243 to i8*
  br label %245

245:                                              ; preds = %241, %237
  %246 = phi i8* [ %240, %237 ], [ %244, %241 ]
  br label %247

247:                                              ; preds = %245, %230
  %248 = phi i8* [ %232, %230 ], [ %246, %245 ]
  %249 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %250 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i32 0, i32 3
  store i8* %248, i8** %251, align 8
  %252 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %253, i32 0, i32 2
  store i32 1, i32* %254, align 8
  br label %269

255:                                              ; preds = %33
  %256 = call i32 @usage(i32 0)
  br label %257

257:                                              ; preds = %33, %255
  %258 = load i8*, i8** @version, align 8
  %259 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i8* %258)
  %260 = call i32 @exit(i32 0) #3
  unreachable

261:                                              ; preds = %33
  %262 = load i32, i32* @verbose, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* @verbose, align 4
  br label %269

264:                                              ; preds = %33
  %265 = load i8*, i8** %6, align 8
  %266 = getelementptr inbounds i8, i8* %265, i64 -2
  %267 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i8* %266)
  %268 = call i32 @usage(i32 5)
  br label %269

269:                                              ; preds = %264, %261, %247, %221, %195, %183, %159, %157, %151, %128, %88, %58
  br label %28

270:                                              ; preds = %28
  br label %9

271:                                              ; preds = %25
  %272 = load i8*, i8** %6, align 8
  %273 = icmp ne i8* %272, null
  br i1 %273, label %274, label %279

274:                                              ; preds = %271
  %275 = load i8*, i8** %6, align 8
  %276 = getelementptr inbounds i8, i8* %275, i64 -1
  %277 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i8* %276)
  %278 = call i32 @usage(i32 5)
  br label %279

279:                                              ; preds = %274, %271
  ret void
}

declare dso_local i32 @flagusage(i8*) #1

declare dso_local i32 @warn_systemd_ignored_option(i8*, i8*) #1

declare dso_local i8* @parse_size_t(i8*) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
