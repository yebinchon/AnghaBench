; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tools/tests/MPMMTest/extr_MPMMtest.c_parse_args.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tools/tests/MPMMTest/extr_MPMMtest.c_parse_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@msg_type_trivial = common dso_local global i32 0, align 4
@msg_type = common dso_local global i32 0, align 4
@num_ints = common dso_local global i32 0, align 4
@num_msgs = common dso_local global i32 0, align 4
@client_delay = common dso_local global i8* null, align 8
@num_clients = common dso_local global i32 0, align 4
@HOST_BASIC_INFO_COUNT = common dso_local global i32 0, align 4
@HOST_BASIC_INFO = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@num_servers = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"-verbose\00", align 1
@verbose = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"-affinity\00", align 1
@TRUE = common dso_local global i8* null, align 8
@affinity = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"-timeshare\00", align 1
@timeshare = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"-threaded\00", align 1
@threaded = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"-oneway\00", align 1
@oneway = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"-perf\00", align 1
@save_perfdata = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"-type\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"trivial\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"inline\00", align 1
@msg_type_inline = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"complex\00", align 1
@msg_type_complex = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [9 x i8] c"-numints\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"-count\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"-clients\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"-servers\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"-delay\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"-spin\00", align 1
@client_spin = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [7 x i8] c"-pages\00", align 1
@client_pages = common dso_local global i8* null, align 8
@.str.17 = private unnamed_addr constant [5 x i8] c"-set\00", align 1
@setcount = common dso_local global i32 0, align 4
@portcount = common dso_local global i32 0, align 4
@useset = common dso_local global i8* null, align 8
@.str.18 = private unnamed_addr constant [9 x i8] c"-prepost\00", align 1
@stress_prepost = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [21 x i8] c"unknown option '%s'\0A\00", align 1
@.str.20 = private unnamed_addr constant [40 x i8] c"Prepost stress test _must_ be threaded\0A\00", align 1
@.str.21 = private unnamed_addr constant [53 x i8] c"Prepost stress test requires >= 1 port in >= 1 set.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_args(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.TYPE_2__, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %9 = load i32, i32* @msg_type_trivial, align 4
  store i32 %9, i32* @msg_type, align 4
  store i32 64, i32* @num_ints, align 4
  store i32 100000, i32* @num_msgs, align 4
  store i8* null, i8** @client_delay, align 8
  store i32 4, i32* @num_clients, align 4
  %10 = load i32, i32* @HOST_BASIC_INFO_COUNT, align 4
  store i32 %10, i32* %6, align 4
  %11 = call i32 (...) @mach_host_self()
  %12 = load i32, i32* @HOST_BASIC_INFO, align 4
  %13 = ptrtoint %struct.TYPE_2__* %5 to i32
  %14 = call i64 @host_info(i32 %11, i32 %12, i32 %13, i32* %6)
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @KERN_SUCCESS, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sdiv i32 %24, 2
  store i32 %25, i32* @num_servers, align 4
  br label %27

26:                                               ; preds = %18, %2
  store i32 1, i32* @num_servers, align 4
  br label %27

27:                                               ; preds = %26, %22
  %28 = load i8**, i8*** %4, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %8, align 8
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %3, align 4
  %33 = load i8**, i8*** %4, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i32 1
  store i8** %34, i8*** %4, align 8
  br label %35

35:                                               ; preds = %381, %27
  %36 = load i32, i32* %3, align 4
  %37 = icmp slt i32 0, %36
  br i1 %37, label %38, label %382

38:                                               ; preds = %35
  %39 = load i8**, i8*** %4, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i64 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %41)
  %43 = icmp eq i64 0, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load i32, i32* @verbose, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* @verbose, align 4
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %3, align 4
  %49 = load i8**, i8*** %4, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i32 1
  store i8** %50, i8*** %4, align 8
  br label %381

51:                                               ; preds = %38
  %52 = load i8**, i8*** %4, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i64 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %54)
  %56 = icmp eq i64 0, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %51
  %58 = load i8*, i8** @TRUE, align 8
  store i8* %58, i8** @affinity, align 8
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %3, align 4
  %61 = load i8**, i8*** %4, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i32 1
  store i8** %62, i8*** %4, align 8
  br label %380

63:                                               ; preds = %51
  %64 = load i8**, i8*** %4, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i64 @strcmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %66)
  %68 = icmp eq i64 0, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %63
  %70 = load i8*, i8** @TRUE, align 8
  store i8* %70, i8** @timeshare, align 8
  %71 = load i32, i32* %3, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %3, align 4
  %73 = load i8**, i8*** %4, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i32 1
  store i8** %74, i8*** %4, align 8
  br label %379

75:                                               ; preds = %63
  %76 = load i8**, i8*** %4, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i64 0
  %78 = load i8*, i8** %77, align 8
  %79 = call i64 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %78)
  %80 = icmp eq i64 0, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %75
  %82 = load i8*, i8** @TRUE, align 8
  store i8* %82, i8** @threaded, align 8
  %83 = load i32, i32* %3, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %3, align 4
  %85 = load i8**, i8*** %4, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i32 1
  store i8** %86, i8*** %4, align 8
  br label %378

87:                                               ; preds = %75
  %88 = load i8**, i8*** %4, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 0
  %90 = load i8*, i8** %89, align 8
  %91 = call i64 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %90)
  %92 = icmp eq i64 0, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %87
  %94 = load i8*, i8** @TRUE, align 8
  store i8* %94, i8** @oneway, align 8
  %95 = load i32, i32* %3, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %3, align 4
  %97 = load i8**, i8*** %4, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i32 1
  store i8** %98, i8*** %4, align 8
  br label %377

99:                                               ; preds = %87
  %100 = load i8**, i8*** %4, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 0
  %102 = load i8*, i8** %101, align 8
  %103 = call i64 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %102)
  %104 = icmp eq i64 0, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %99
  %106 = load i8*, i8** @TRUE, align 8
  store i8* %106, i8** @save_perfdata, align 8
  %107 = load i32, i32* %3, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %3, align 4
  %109 = load i8**, i8*** %4, align 8
  %110 = getelementptr inbounds i8*, i8** %109, i32 1
  store i8** %110, i8*** %4, align 8
  br label %376

111:                                              ; preds = %99
  %112 = load i8**, i8*** %4, align 8
  %113 = getelementptr inbounds i8*, i8** %112, i64 0
  %114 = load i8*, i8** %113, align 8
  %115 = call i64 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %114)
  %116 = icmp eq i64 0, %115
  br i1 %116, label %117, label %157

117:                                              ; preds = %111
  %118 = load i32, i32* %3, align 4
  %119 = icmp slt i32 %118, 2
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load i8*, i8** %8, align 8
  %122 = call i32 @usage(i8* %121)
  br label %123

123:                                              ; preds = %120, %117
  %124 = load i8**, i8*** %4, align 8
  %125 = getelementptr inbounds i8*, i8** %124, i64 1
  %126 = load i8*, i8** %125, align 8
  %127 = call i64 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* %126)
  %128 = icmp eq i64 0, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %123
  %130 = load i32, i32* @msg_type_trivial, align 4
  store i32 %130, i32* @msg_type, align 4
  br label %152

131:                                              ; preds = %123
  %132 = load i8**, i8*** %4, align 8
  %133 = getelementptr inbounds i8*, i8** %132, i64 1
  %134 = load i8*, i8** %133, align 8
  %135 = call i64 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* %134)
  %136 = icmp eq i64 0, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %131
  %138 = load i32, i32* @msg_type_inline, align 4
  store i32 %138, i32* @msg_type, align 4
  br label %151

139:                                              ; preds = %131
  %140 = load i8**, i8*** %4, align 8
  %141 = getelementptr inbounds i8*, i8** %140, i64 1
  %142 = load i8*, i8** %141, align 8
  %143 = call i64 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* %142)
  %144 = icmp eq i64 0, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %139
  %146 = load i32, i32* @msg_type_complex, align 4
  store i32 %146, i32* @msg_type, align 4
  br label %150

147:                                              ; preds = %139
  %148 = load i8*, i8** %8, align 8
  %149 = call i32 @usage(i8* %148)
  br label %150

150:                                              ; preds = %147, %145
  br label %151

151:                                              ; preds = %150, %137
  br label %152

152:                                              ; preds = %151, %129
  %153 = load i32, i32* %3, align 4
  %154 = sub nsw i32 %153, 2
  store i32 %154, i32* %3, align 4
  %155 = load i8**, i8*** %4, align 8
  %156 = getelementptr inbounds i8*, i8** %155, i64 2
  store i8** %156, i8*** %4, align 8
  br label %375

157:                                              ; preds = %111
  %158 = load i8**, i8*** %4, align 8
  %159 = getelementptr inbounds i8*, i8** %158, i64 0
  %160 = load i8*, i8** %159, align 8
  %161 = call i64 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8* %160)
  %162 = icmp eq i64 0, %161
  br i1 %162, label %163, label %179

163:                                              ; preds = %157
  %164 = load i32, i32* %3, align 4
  %165 = icmp slt i32 %164, 2
  br i1 %165, label %166, label %169

166:                                              ; preds = %163
  %167 = load i8*, i8** %8, align 8
  %168 = call i32 @usage(i8* %167)
  br label %169

169:                                              ; preds = %166, %163
  %170 = load i8**, i8*** %4, align 8
  %171 = getelementptr inbounds i8*, i8** %170, i64 1
  %172 = load i8*, i8** %171, align 8
  %173 = call i8* @strtoul(i8* %172, i32* null, i32 0)
  %174 = ptrtoint i8* %173 to i32
  store i32 %174, i32* @num_ints, align 4
  %175 = load i32, i32* %3, align 4
  %176 = sub nsw i32 %175, 2
  store i32 %176, i32* %3, align 4
  %177 = load i8**, i8*** %4, align 8
  %178 = getelementptr inbounds i8*, i8** %177, i64 2
  store i8** %178, i8*** %4, align 8
  br label %374

179:                                              ; preds = %157
  %180 = load i8**, i8*** %4, align 8
  %181 = getelementptr inbounds i8*, i8** %180, i64 0
  %182 = load i8*, i8** %181, align 8
  %183 = call i64 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* %182)
  %184 = icmp eq i64 0, %183
  br i1 %184, label %185, label %201

185:                                              ; preds = %179
  %186 = load i32, i32* %3, align 4
  %187 = icmp slt i32 %186, 2
  br i1 %187, label %188, label %191

188:                                              ; preds = %185
  %189 = load i8*, i8** %8, align 8
  %190 = call i32 @usage(i8* %189)
  br label %191

191:                                              ; preds = %188, %185
  %192 = load i8**, i8*** %4, align 8
  %193 = getelementptr inbounds i8*, i8** %192, i64 1
  %194 = load i8*, i8** %193, align 8
  %195 = call i8* @strtoul(i8* %194, i32* null, i32 0)
  %196 = ptrtoint i8* %195 to i32
  store i32 %196, i32* @num_msgs, align 4
  %197 = load i32, i32* %3, align 4
  %198 = sub nsw i32 %197, 2
  store i32 %198, i32* %3, align 4
  %199 = load i8**, i8*** %4, align 8
  %200 = getelementptr inbounds i8*, i8** %199, i64 2
  store i8** %200, i8*** %4, align 8
  br label %373

201:                                              ; preds = %179
  %202 = load i8**, i8*** %4, align 8
  %203 = getelementptr inbounds i8*, i8** %202, i64 0
  %204 = load i8*, i8** %203, align 8
  %205 = call i64 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* %204)
  %206 = icmp eq i64 0, %205
  br i1 %206, label %207, label %223

207:                                              ; preds = %201
  %208 = load i32, i32* %3, align 4
  %209 = icmp slt i32 %208, 2
  br i1 %209, label %210, label %213

210:                                              ; preds = %207
  %211 = load i8*, i8** %8, align 8
  %212 = call i32 @usage(i8* %211)
  br label %213

213:                                              ; preds = %210, %207
  %214 = load i8**, i8*** %4, align 8
  %215 = getelementptr inbounds i8*, i8** %214, i64 1
  %216 = load i8*, i8** %215, align 8
  %217 = call i8* @strtoul(i8* %216, i32* null, i32 0)
  %218 = ptrtoint i8* %217 to i32
  store i32 %218, i32* @num_clients, align 4
  %219 = load i32, i32* %3, align 4
  %220 = sub nsw i32 %219, 2
  store i32 %220, i32* %3, align 4
  %221 = load i8**, i8*** %4, align 8
  %222 = getelementptr inbounds i8*, i8** %221, i64 2
  store i8** %222, i8*** %4, align 8
  br label %372

223:                                              ; preds = %201
  %224 = load i8**, i8*** %4, align 8
  %225 = getelementptr inbounds i8*, i8** %224, i64 0
  %226 = load i8*, i8** %225, align 8
  %227 = call i64 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i8* %226)
  %228 = icmp eq i64 0, %227
  br i1 %228, label %229, label %245

229:                                              ; preds = %223
  %230 = load i32, i32* %3, align 4
  %231 = icmp slt i32 %230, 2
  br i1 %231, label %232, label %235

232:                                              ; preds = %229
  %233 = load i8*, i8** %8, align 8
  %234 = call i32 @usage(i8* %233)
  br label %235

235:                                              ; preds = %232, %229
  %236 = load i8**, i8*** %4, align 8
  %237 = getelementptr inbounds i8*, i8** %236, i64 1
  %238 = load i8*, i8** %237, align 8
  %239 = call i8* @strtoul(i8* %238, i32* null, i32 0)
  %240 = ptrtoint i8* %239 to i32
  store i32 %240, i32* @num_servers, align 4
  %241 = load i32, i32* %3, align 4
  %242 = sub nsw i32 %241, 2
  store i32 %242, i32* %3, align 4
  %243 = load i8**, i8*** %4, align 8
  %244 = getelementptr inbounds i8*, i8** %243, i64 2
  store i8** %244, i8*** %4, align 8
  br label %371

245:                                              ; preds = %223
  %246 = load i8**, i8*** %4, align 8
  %247 = getelementptr inbounds i8*, i8** %246, i64 0
  %248 = load i8*, i8** %247, align 8
  %249 = call i64 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8* %248)
  %250 = icmp eq i64 0, %249
  br i1 %250, label %251, label %266

251:                                              ; preds = %245
  %252 = load i32, i32* %3, align 4
  %253 = icmp slt i32 %252, 2
  br i1 %253, label %254, label %257

254:                                              ; preds = %251
  %255 = load i8*, i8** %8, align 8
  %256 = call i32 @usage(i8* %255)
  br label %257

257:                                              ; preds = %254, %251
  %258 = load i8**, i8*** %4, align 8
  %259 = getelementptr inbounds i8*, i8** %258, i64 1
  %260 = load i8*, i8** %259, align 8
  %261 = call i8* @strtoul(i8* %260, i32* null, i32 0)
  store i8* %261, i8** @client_delay, align 8
  %262 = load i32, i32* %3, align 4
  %263 = sub nsw i32 %262, 2
  store i32 %263, i32* %3, align 4
  %264 = load i8**, i8*** %4, align 8
  %265 = getelementptr inbounds i8*, i8** %264, i64 2
  store i8** %265, i8*** %4, align 8
  br label %370

266:                                              ; preds = %245
  %267 = load i8**, i8*** %4, align 8
  %268 = getelementptr inbounds i8*, i8** %267, i64 0
  %269 = load i8*, i8** %268, align 8
  %270 = call i64 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i8* %269)
  %271 = icmp eq i64 0, %270
  br i1 %271, label %272, label %287

272:                                              ; preds = %266
  %273 = load i32, i32* %3, align 4
  %274 = icmp slt i32 %273, 2
  br i1 %274, label %275, label %278

275:                                              ; preds = %272
  %276 = load i8*, i8** %8, align 8
  %277 = call i32 @usage(i8* %276)
  br label %278

278:                                              ; preds = %275, %272
  %279 = load i8**, i8*** %4, align 8
  %280 = getelementptr inbounds i8*, i8** %279, i64 1
  %281 = load i8*, i8** %280, align 8
  %282 = call i8* @strtoul(i8* %281, i32* null, i32 0)
  store i8* %282, i8** @client_spin, align 8
  %283 = load i32, i32* %3, align 4
  %284 = sub nsw i32 %283, 2
  store i32 %284, i32* %3, align 4
  %285 = load i8**, i8*** %4, align 8
  %286 = getelementptr inbounds i8*, i8** %285, i64 2
  store i8** %286, i8*** %4, align 8
  br label %369

287:                                              ; preds = %266
  %288 = load i8**, i8*** %4, align 8
  %289 = getelementptr inbounds i8*, i8** %288, i64 0
  %290 = load i8*, i8** %289, align 8
  %291 = call i64 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i8* %290)
  %292 = icmp eq i64 0, %291
  br i1 %292, label %293, label %308

293:                                              ; preds = %287
  %294 = load i32, i32* %3, align 4
  %295 = icmp slt i32 %294, 2
  br i1 %295, label %296, label %299

296:                                              ; preds = %293
  %297 = load i8*, i8** %8, align 8
  %298 = call i32 @usage(i8* %297)
  br label %299

299:                                              ; preds = %296, %293
  %300 = load i8**, i8*** %4, align 8
  %301 = getelementptr inbounds i8*, i8** %300, i64 1
  %302 = load i8*, i8** %301, align 8
  %303 = call i8* @strtoul(i8* %302, i32* null, i32 0)
  store i8* %303, i8** @client_pages, align 8
  %304 = load i32, i32* %3, align 4
  %305 = sub nsw i32 %304, 2
  store i32 %305, i32* %3, align 4
  %306 = load i8**, i8*** %4, align 8
  %307 = getelementptr inbounds i8*, i8** %306, i64 2
  store i8** %307, i8*** %4, align 8
  br label %368

308:                                              ; preds = %287
  %309 = load i8**, i8*** %4, align 8
  %310 = getelementptr inbounds i8*, i8** %309, i64 0
  %311 = load i8*, i8** %310, align 8
  %312 = call i64 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i8* %311)
  %313 = icmp eq i64 0, %312
  br i1 %313, label %314, label %345

314:                                              ; preds = %308
  %315 = load i32, i32* %3, align 4
  %316 = icmp slt i32 %315, 3
  br i1 %316, label %317, label %320

317:                                              ; preds = %314
  %318 = load i8*, i8** %8, align 8
  %319 = call i32 @usage(i8* %318)
  br label %320

320:                                              ; preds = %317, %314
  %321 = load i8**, i8*** %4, align 8
  %322 = getelementptr inbounds i8*, i8** %321, i64 1
  %323 = load i8*, i8** %322, align 8
  %324 = call i8* @strtoul(i8* %323, i32* null, i32 0)
  %325 = ptrtoint i8* %324 to i32
  store i32 %325, i32* @setcount, align 4
  %326 = load i8**, i8*** %4, align 8
  %327 = getelementptr inbounds i8*, i8** %326, i64 2
  %328 = load i8*, i8** %327, align 8
  %329 = call i8* @strtoul(i8* %328, i32* null, i32 0)
  %330 = ptrtoint i8* %329 to i32
  store i32 %330, i32* @portcount, align 4
  %331 = load i32, i32* @setcount, align 4
  %332 = icmp sle i32 %331, 0
  br i1 %332, label %336, label %333

333:                                              ; preds = %320
  %334 = load i32, i32* @portcount, align 4
  %335 = icmp sle i32 %334, 0
  br i1 %335, label %336, label %339

336:                                              ; preds = %333, %320
  %337 = load i8*, i8** %8, align 8
  %338 = call i32 @usage(i8* %337)
  br label %339

339:                                              ; preds = %336, %333
  %340 = load i8*, i8** @TRUE, align 8
  store i8* %340, i8** @useset, align 8
  %341 = load i32, i32* %3, align 4
  %342 = sub nsw i32 %341, 3
  store i32 %342, i32* %3, align 4
  %343 = load i8**, i8*** %4, align 8
  %344 = getelementptr inbounds i8*, i8** %343, i64 3
  store i8** %344, i8*** %4, align 8
  br label %367

345:                                              ; preds = %308
  %346 = load i8**, i8*** %4, align 8
  %347 = getelementptr inbounds i8*, i8** %346, i64 0
  %348 = load i8*, i8** %347, align 8
  %349 = call i64 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0), i8* %348)
  %350 = icmp eq i64 0, %349
  br i1 %350, label %351, label %358

351:                                              ; preds = %345
  %352 = load i8*, i8** @TRUE, align 8
  store i8* %352, i8** @stress_prepost, align 8
  %353 = load i8*, i8** @TRUE, align 8
  store i8* %353, i8** @threaded, align 8
  %354 = load i32, i32* %3, align 4
  %355 = add nsw i32 %354, -1
  store i32 %355, i32* %3, align 4
  %356 = load i8**, i8*** %4, align 8
  %357 = getelementptr inbounds i8*, i8** %356, i32 1
  store i8** %357, i8*** %4, align 8
  br label %366

358:                                              ; preds = %345
  %359 = load i32, i32* @stderr, align 4
  %360 = load i8**, i8*** %4, align 8
  %361 = getelementptr inbounds i8*, i8** %360, i64 0
  %362 = load i8*, i8** %361, align 8
  %363 = call i32 (i32, i8*, ...) @fprintf(i32 %359, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0), i8* %362)
  %364 = load i8*, i8** %8, align 8
  %365 = call i32 @usage(i8* %364)
  br label %366

366:                                              ; preds = %358, %351
  br label %367

367:                                              ; preds = %366, %339
  br label %368

368:                                              ; preds = %367, %299
  br label %369

369:                                              ; preds = %368, %278
  br label %370

370:                                              ; preds = %369, %257
  br label %371

371:                                              ; preds = %370, %235
  br label %372

372:                                              ; preds = %371, %213
  br label %373

373:                                              ; preds = %372, %191
  br label %374

374:                                              ; preds = %373, %169
  br label %375

375:                                              ; preds = %374, %152
  br label %376

376:                                              ; preds = %375, %105
  br label %377

377:                                              ; preds = %376, %93
  br label %378

378:                                              ; preds = %377, %81
  br label %379

379:                                              ; preds = %378, %69
  br label %380

380:                                              ; preds = %379, %57
  br label %381

381:                                              ; preds = %380, %44
  br label %35

382:                                              ; preds = %35
  %383 = load i8*, i8** @stress_prepost, align 8
  %384 = icmp ne i8* %383, null
  br i1 %384, label %385, label %403

385:                                              ; preds = %382
  %386 = load i8*, i8** @threaded, align 8
  %387 = icmp ne i8* %386, null
  br i1 %387, label %392, label %388

388:                                              ; preds = %385
  %389 = load i32, i32* @stderr, align 4
  %390 = call i32 (i32, i8*, ...) @fprintf(i32 %389, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20, i64 0, i64 0))
  %391 = call i32 @exit(i32 1) #3
  unreachable

392:                                              ; preds = %385
  %393 = load i32, i32* @portcount, align 4
  %394 = icmp slt i32 %393, 1
  br i1 %394, label %398, label %395

395:                                              ; preds = %392
  %396 = load i32, i32* @setcount, align 4
  %397 = icmp slt i32 %396, 1
  br i1 %397, label %398, label %402

398:                                              ; preds = %395, %392
  %399 = load i32, i32* @stderr, align 4
  %400 = call i32 (i32, i8*, ...) @fprintf(i32 %399, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.21, i64 0, i64 0))
  %401 = call i32 @exit(i32 1) #3
  unreachable

402:                                              ; preds = %395
  br label %403

403:                                              ; preds = %402, %382
  ret void
}

declare dso_local i64 @host_info(i32, i32, i32, i32*) #1

declare dso_local i32 @mach_host_self(...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local i8* @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

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
