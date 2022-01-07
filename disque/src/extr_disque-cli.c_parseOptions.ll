; ModuleID = '/home/carl/AnghaBench/disque/src/extr_disque-cli.c_parseOptions.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_disque-cli.c_parseOptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i8*, double, i8*, i32, i32, i32, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i8*, i8*, i8*, i32, i8*, i32, i8* }

@.str = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-x\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"-r\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"-i\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"-n\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"-a\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"--raw\00", align 1
@OUTPUT_RAW = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [9 x i8] c"--no-raw\00", align 1
@OUTPUT_STANDARD = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"--csv\00", align 1
@OUTPUT_CSV = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [10 x i8] c"--latency\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"--latency-history\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"--slave\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"--stat\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"--scan\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"--pattern\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"--intrinsic-latency\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"--rdb\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"--pipe\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"--pipe-timeout\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"--bigkeys\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"--eval\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"disque %s\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [53 x i8] c"Unrecognized option or bad number of args for: '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @parseOptions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parseOptions(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 1, i32* %5, align 4
  br label %9

9:                                                ; preds = %470, %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %473

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %3, align 4
  %16 = sub nsw i32 %15, 1
  %17 = icmp eq i32 %14, %16
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %6, align 4
  %19 = load i8**, i8*** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8*, i8** %19, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %39, label %26

26:                                               ; preds = %13
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %26
  %30 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %31 = call i32 @sdsfree(i8* %30)
  %32 = load i8**, i8*** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %32, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = call i8* @sdsnew(i8* %37)
  store i8* %38, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  br label %469

39:                                               ; preds = %26, %13
  %40 = load i8**, i8*** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @strcmp(i8* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %39
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = call i32 (...) @usage()
  br label %468

52:                                               ; preds = %47, %39
  %53 = load i8**, i8*** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @strcmp(i8* %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %52
  %61 = call i32 (...) @usage()
  br label %467

62:                                               ; preds = %52
  %63 = load i8**, i8*** %4, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @strcmp(i8* %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %62
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 1), align 8
  br label %466

71:                                               ; preds = %62
  %72 = load i8**, i8*** %4, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %72, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @strcmp(i8* %76, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %90, label %79

79:                                               ; preds = %71
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %90, label %82

82:                                               ; preds = %79
  %83 = load i8**, i8*** %4, align 8
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %83, i64 %86
  %88 = load i8*, i8** %87, align 8
  %89 = call i8* @atoi(i8* %88)
  store i8* %89, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 24), align 8
  br label %465

90:                                               ; preds = %79, %71
  %91 = load i8**, i8*** %4, align 8
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8*, i8** %91, i64 %93
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @strcmp(i8* %95, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %108, label %98

98:                                               ; preds = %90
  %99 = load i32, i32* %6, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %108, label %101

101:                                              ; preds = %98
  %102 = load i8**, i8*** %4, align 8
  %103 = load i32, i32* %5, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %5, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8*, i8** %102, i64 %105
  %107 = load i8*, i8** %106, align 8
  store i8* %107, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 2), align 8
  br label %464

108:                                              ; preds = %98, %90
  %109 = load i8**, i8*** %4, align 8
  %110 = load i32, i32* %5, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8*, i8** %109, i64 %111
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @strcmp(i8* %113, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %127, label %116

116:                                              ; preds = %108
  %117 = load i32, i32* %6, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %127, label %119

119:                                              ; preds = %116
  %120 = load i8**, i8*** %4, align 8
  %121 = load i32, i32* %5, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %5, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8*, i8** %120, i64 %123
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @strtoll(i8* %125, i32* null, i32 10)
  store i32 %126, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 23), align 8
  br label %463

127:                                              ; preds = %116, %108
  %128 = load i8**, i8*** %4, align 8
  %129 = load i32, i32* %5, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8*, i8** %128, i64 %130
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @strcmp(i8* %132, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %148, label %135

135:                                              ; preds = %127
  %136 = load i32, i32* %6, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %148, label %138

138:                                              ; preds = %135
  %139 = load i8**, i8*** %4, align 8
  %140 = load i32, i32* %5, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %5, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8*, i8** %139, i64 %142
  %144 = load i8*, i8** %143, align 8
  %145 = call double @atof(i8* %144)
  store double %145, double* %7, align 8
  %146 = load double, double* %7, align 8
  %147 = fmul double %146, 1.000000e+06
  store double %147, double* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 3), align 8
  br label %462

148:                                              ; preds = %135, %127
  %149 = load i8**, i8*** %4, align 8
  %150 = load i32, i32* %5, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8*, i8** %149, i64 %151
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 @strcmp(i8* %153, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %167, label %156

156:                                              ; preds = %148
  %157 = load i32, i32* %6, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %167, label %159

159:                                              ; preds = %156
  %160 = load i8**, i8*** %4, align 8
  %161 = load i32, i32* %5, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %5, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8*, i8** %160, i64 %163
  %165 = load i8*, i8** %164, align 8
  %166 = call i8* @atoi(i8* %165)
  store i8* %166, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 22), align 8
  br label %461

167:                                              ; preds = %156, %148
  %168 = load i8**, i8*** %4, align 8
  %169 = load i32, i32* %5, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8*, i8** %168, i64 %170
  %172 = load i8*, i8** %171, align 8
  %173 = call i32 @strcmp(i8* %172, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %185, label %175

175:                                              ; preds = %167
  %176 = load i32, i32* %6, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %185, label %178

178:                                              ; preds = %175
  %179 = load i8**, i8*** %4, align 8
  %180 = load i32, i32* %5, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %5, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8*, i8** %179, i64 %182
  %184 = load i8*, i8** %183, align 8
  store i8* %184, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 4), align 8
  br label %460

185:                                              ; preds = %175, %167
  %186 = load i8**, i8*** %4, align 8
  %187 = load i32, i32* %5, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8*, i8** %186, i64 %188
  %190 = load i8*, i8** %189, align 8
  %191 = call i32 @strcmp(i8* %190, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %195, label %193

193:                                              ; preds = %185
  %194 = load i32, i32* @OUTPUT_RAW, align 4
  store i32 %194, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 21), align 8
  br label %459

195:                                              ; preds = %185
  %196 = load i8**, i8*** %4, align 8
  %197 = load i32, i32* %5, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i8*, i8** %196, i64 %198
  %200 = load i8*, i8** %199, align 8
  %201 = call i32 @strcmp(i8* %200, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %205, label %203

203:                                              ; preds = %195
  %204 = load i32, i32* @OUTPUT_STANDARD, align 4
  store i32 %204, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 21), align 8
  br label %458

205:                                              ; preds = %195
  %206 = load i8**, i8*** %4, align 8
  %207 = load i32, i32* %5, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8*, i8** %206, i64 %208
  %210 = load i8*, i8** %209, align 8
  %211 = call i32 @strcmp(i8* %210, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %215, label %213

213:                                              ; preds = %205
  %214 = load i32, i32* @OUTPUT_CSV, align 4
  store i32 %214, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 21), align 8
  br label %457

215:                                              ; preds = %205
  %216 = load i8**, i8*** %4, align 8
  %217 = load i32, i32* %5, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i8*, i8** %216, i64 %218
  %220 = load i8*, i8** %219, align 8
  %221 = call i32 @strcmp(i8* %220, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %224, label %223

223:                                              ; preds = %215
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 5), align 8
  br label %456

224:                                              ; preds = %215
  %225 = load i8**, i8*** %4, align 8
  %226 = load i32, i32* %5, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i8*, i8** %225, i64 %227
  %229 = load i8*, i8** %228, align 8
  %230 = call i32 @strcmp(i8* %229, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0))
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %233, label %232

232:                                              ; preds = %224
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 5), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 6), align 4
  br label %455

233:                                              ; preds = %224
  %234 = load i8**, i8*** %4, align 8
  %235 = load i32, i32* %5, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i8*, i8** %234, i64 %236
  %238 = load i8*, i8** %237, align 8
  %239 = call i32 @strcmp(i8* %238, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %242, label %241

241:                                              ; preds = %233
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 7), align 8
  br label %454

242:                                              ; preds = %233
  %243 = load i8**, i8*** %4, align 8
  %244 = load i32, i32* %5, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i8*, i8** %243, i64 %245
  %247 = load i8*, i8** %246, align 8
  %248 = call i32 @strcmp(i8* %247, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %251, label %250

250:                                              ; preds = %242
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 8), align 4
  br label %453

251:                                              ; preds = %242
  %252 = load i8**, i8*** %4, align 8
  %253 = load i32, i32* %5, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i8*, i8** %252, i64 %254
  %256 = load i8*, i8** %255, align 8
  %257 = call i32 @strcmp(i8* %256, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %260, label %259

259:                                              ; preds = %251
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 9), align 8
  br label %452

260:                                              ; preds = %251
  %261 = load i8**, i8*** %4, align 8
  %262 = load i32, i32* %5, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i8*, i8** %261, i64 %263
  %265 = load i8*, i8** %264, align 8
  %266 = call i32 @strcmp(i8* %265, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0))
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %278, label %268

268:                                              ; preds = %260
  %269 = load i32, i32* %6, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %278, label %271

271:                                              ; preds = %268
  %272 = load i8**, i8*** %4, align 8
  %273 = load i32, i32* %5, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %5, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i8*, i8** %272, i64 %275
  %277 = load i8*, i8** %276, align 8
  store i8* %277, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 10), align 8
  br label %451

278:                                              ; preds = %268, %260
  %279 = load i8**, i8*** %4, align 8
  %280 = load i32, i32* %5, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i8*, i8** %279, i64 %281
  %283 = load i8*, i8** %282, align 8
  %284 = call i32 @strcmp(i8* %283, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0))
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %297, label %286

286:                                              ; preds = %278
  %287 = load i32, i32* %6, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %297, label %289

289:                                              ; preds = %286
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 11), align 8
  %290 = load i8**, i8*** %4, align 8
  %291 = load i32, i32* %5, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %5, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i8*, i8** %290, i64 %293
  %295 = load i8*, i8** %294, align 8
  %296 = call i8* @atoi(i8* %295)
  store i8* %296, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 20), align 8
  br label %450

297:                                              ; preds = %286, %278
  %298 = load i8**, i8*** %4, align 8
  %299 = load i32, i32* %5, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i8*, i8** %298, i64 %300
  %302 = load i8*, i8** %301, align 8
  %303 = call i32 @strcmp(i8* %302, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0))
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %315, label %305

305:                                              ; preds = %297
  %306 = load i32, i32* %6, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %315, label %308

308:                                              ; preds = %305
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 12), align 4
  %309 = load i8**, i8*** %4, align 8
  %310 = load i32, i32* %5, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %5, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i8*, i8** %309, i64 %312
  %314 = load i8*, i8** %313, align 8
  store i8* %314, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 13), align 8
  br label %449

315:                                              ; preds = %305, %297
  %316 = load i8**, i8*** %4, align 8
  %317 = load i32, i32* %5, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i8*, i8** %316, i64 %318
  %320 = load i8*, i8** %319, align 8
  %321 = call i32 @strcmp(i8* %320, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0))
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %324, label %323

323:                                              ; preds = %315
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 14), align 8
  br label %448

324:                                              ; preds = %315
  %325 = load i8**, i8*** %4, align 8
  %326 = load i32, i32* %5, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i8*, i8** %325, i64 %327
  %329 = load i8*, i8** %328, align 8
  %330 = call i32 @strcmp(i8* %329, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0))
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %343, label %332

332:                                              ; preds = %324
  %333 = load i32, i32* %6, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %343, label %335

335:                                              ; preds = %332
  %336 = load i8**, i8*** %4, align 8
  %337 = load i32, i32* %5, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %5, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i8*, i8** %336, i64 %339
  %341 = load i8*, i8** %340, align 8
  %342 = call i8* @atoi(i8* %341)
  store i8* %342, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 19), align 8
  br label %447

343:                                              ; preds = %332, %324
  %344 = load i8**, i8*** %4, align 8
  %345 = load i32, i32* %5, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i8*, i8** %344, i64 %346
  %348 = load i8*, i8** %347, align 8
  %349 = call i32 @strcmp(i8* %348, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0))
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %352, label %351

351:                                              ; preds = %343
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 15), align 4
  br label %446

352:                                              ; preds = %343
  %353 = load i8**, i8*** %4, align 8
  %354 = load i32, i32* %5, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i8*, i8** %353, i64 %355
  %357 = load i8*, i8** %356, align 8
  %358 = call i32 @strcmp(i8* %357, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0))
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %370, label %360

360:                                              ; preds = %352
  %361 = load i32, i32* %6, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %370, label %363

363:                                              ; preds = %360
  %364 = load i8**, i8*** %4, align 8
  %365 = load i32, i32* %5, align 4
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %5, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i8*, i8** %364, i64 %367
  %369 = load i8*, i8** %368, align 8
  store i8* %369, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 16), align 8
  br label %445

370:                                              ; preds = %360, %352
  %371 = load i8**, i8*** %4, align 8
  %372 = load i32, i32* %5, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i8*, i8** %371, i64 %373
  %375 = load i8*, i8** %374, align 8
  %376 = call i32 @strcmp(i8* %375, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0))
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %379, label %378

378:                                              ; preds = %370
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 17), align 8
  br label %444

379:                                              ; preds = %370
  %380 = load i8**, i8*** %4, align 8
  %381 = load i32, i32* %5, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds i8*, i8** %380, i64 %382
  %384 = load i8*, i8** %383, align 8
  %385 = call i32 @strcmp(i8* %384, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0))
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %400, label %387

387:                                              ; preds = %379
  %388 = load i32, i32* %6, align 4
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %400, label %390

390:                                              ; preds = %387
  %391 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 18), align 8
  %392 = call i32 @sdsfree(i8* %391)
  %393 = load i8**, i8*** %4, align 8
  %394 = load i32, i32* %5, align 4
  %395 = add nsw i32 %394, 1
  store i32 %395, i32* %5, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds i8*, i8** %393, i64 %396
  %398 = load i8*, i8** %397, align 8
  %399 = call i8* @sdsnew(i8* %398)
  store i8* %399, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 18), align 8
  br label %443

400:                                              ; preds = %387, %379
  %401 = load i8**, i8*** %4, align 8
  %402 = load i32, i32* %5, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i8*, i8** %401, i64 %403
  %405 = load i8*, i8** %404, align 8
  %406 = call i32 @strcmp(i8* %405, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0))
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %416

408:                                              ; preds = %400
  %409 = load i8**, i8*** %4, align 8
  %410 = load i32, i32* %5, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds i8*, i8** %409, i64 %411
  %413 = load i8*, i8** %412, align 8
  %414 = call i32 @strcmp(i8* %413, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i64 0, i64 0))
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %423, label %416

416:                                              ; preds = %408, %400
  %417 = call i8* (...) @cliVersion()
  store i8* %417, i8** %8, align 8
  %418 = load i8*, i8** %8, align 8
  %419 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i64 0, i64 0), i8* %418)
  %420 = load i8*, i8** %8, align 8
  %421 = call i32 @sdsfree(i8* %420)
  %422 = call i32 @exit(i32 0) #3
  unreachable

423:                                              ; preds = %408
  %424 = load i8**, i8*** %4, align 8
  %425 = load i32, i32* %5, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds i8*, i8** %424, i64 %426
  %428 = load i8*, i8** %427, align 8
  %429 = getelementptr inbounds i8, i8* %428, i64 0
  %430 = load i8, i8* %429, align 1
  %431 = sext i8 %430 to i32
  %432 = icmp eq i32 %431, 45
  br i1 %432, label %433, label %442

433:                                              ; preds = %423
  %434 = load i32, i32* @stderr, align 4
  %435 = load i8**, i8*** %4, align 8
  %436 = load i32, i32* %5, align 4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds i8*, i8** %435, i64 %437
  %439 = load i8*, i8** %438, align 8
  %440 = call i32 @fprintf(i32 %434, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.29, i64 0, i64 0), i8* %439)
  %441 = call i32 @exit(i32 1) #3
  unreachable

442:                                              ; preds = %423
  br label %473

443:                                              ; preds = %390
  br label %444

444:                                              ; preds = %443, %378
  br label %445

445:                                              ; preds = %444, %363
  br label %446

446:                                              ; preds = %445, %351
  br label %447

447:                                              ; preds = %446, %335
  br label %448

448:                                              ; preds = %447, %323
  br label %449

449:                                              ; preds = %448, %308
  br label %450

450:                                              ; preds = %449, %289
  br label %451

451:                                              ; preds = %450, %271
  br label %452

452:                                              ; preds = %451, %259
  br label %453

453:                                              ; preds = %452, %250
  br label %454

454:                                              ; preds = %453, %241
  br label %455

455:                                              ; preds = %454, %232
  br label %456

456:                                              ; preds = %455, %223
  br label %457

457:                                              ; preds = %456, %213
  br label %458

458:                                              ; preds = %457, %203
  br label %459

459:                                              ; preds = %458, %193
  br label %460

460:                                              ; preds = %459, %178
  br label %461

461:                                              ; preds = %460, %159
  br label %462

462:                                              ; preds = %461, %138
  br label %463

463:                                              ; preds = %462, %119
  br label %464

464:                                              ; preds = %463, %101
  br label %465

465:                                              ; preds = %464, %82
  br label %466

466:                                              ; preds = %465, %70
  br label %467

467:                                              ; preds = %466, %60
  br label %468

468:                                              ; preds = %467, %50
  br label %469

469:                                              ; preds = %468, %29
  br label %470

470:                                              ; preds = %469
  %471 = load i32, i32* %5, align 4
  %472 = add nsw i32 %471, 1
  store i32 %472, i32* %5, align 4
  br label %9

473:                                              ; preds = %442, %9
  %474 = load i32, i32* %5, align 4
  ret i32 %474
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @sdsfree(i8*) #1

declare dso_local i8* @sdsnew(i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @strtoll(i8*, i32*, i32) #1

declare dso_local double @atof(i8*) #1

declare dso_local i8* @cliVersion(...) #1

declare dso_local i32 @printf(i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
