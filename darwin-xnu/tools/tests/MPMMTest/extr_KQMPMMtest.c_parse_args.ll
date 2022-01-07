; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tools/tests/MPMMTest/extr_KQMPMMtest.c_parse_args.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tools/tests/MPMMTest/extr_KQMPMMtest.c_parse_args.c"
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
@TRUE = common dso_local global i8* null, align 8
@verbose = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"-affinity\00", align 1
@affinity = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"-timeshare\00", align 1
@timeshare = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"-threaded\00", align 1
@threaded = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"-oneway\00", align 1
@oneway = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"-type\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"trivial\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"inline\00", align 1
@msg_type_inline = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"complex\00", align 1
@msg_type_complex = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"-numints\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"-count\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"-clients\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"-servers\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"-delay\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"-spin\00", align 1
@client_spin = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [7 x i8] c"-pages\00", align 1
@client_pages = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [8 x i8] c"-select\00", align 1
@do_select = common dso_local global i8* null, align 8
@.str.17 = private unnamed_addr constant [6 x i8] c"-perf\00", align 1
@save_perfdata = common dso_local global i8* null, align 8

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

35:                                               ; preds = %336, %27
  %36 = load i32, i32* %3, align 4
  %37 = icmp slt i32 0, %36
  br i1 %37, label %38, label %337

38:                                               ; preds = %35
  %39 = load i8**, i8*** %4, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i64 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %41)
  %43 = icmp eq i64 0, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load i8*, i8** @TRUE, align 8
  store i8* %45, i8** @verbose, align 8
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %3, align 4
  %48 = load i8**, i8*** %4, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i32 1
  store i8** %49, i8*** %4, align 8
  br label %336

50:                                               ; preds = %38
  %51 = load i8**, i8*** %4, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i64 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %53)
  %55 = icmp eq i64 0, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load i8*, i8** @TRUE, align 8
  store i8* %57, i8** @affinity, align 8
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %3, align 4
  %60 = load i8**, i8*** %4, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i32 1
  store i8** %61, i8*** %4, align 8
  br label %335

62:                                               ; preds = %50
  %63 = load i8**, i8*** %4, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i64 @strcmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %65)
  %67 = icmp eq i64 0, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %62
  %69 = load i8*, i8** @TRUE, align 8
  store i8* %69, i8** @timeshare, align 8
  %70 = load i32, i32* %3, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %3, align 4
  %72 = load i8**, i8*** %4, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i32 1
  store i8** %73, i8*** %4, align 8
  br label %334

74:                                               ; preds = %62
  %75 = load i8**, i8*** %4, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i64 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %77)
  %79 = icmp eq i64 0, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %74
  %81 = load i8*, i8** @TRUE, align 8
  store i8* %81, i8** @threaded, align 8
  %82 = load i32, i32* %3, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %3, align 4
  %84 = load i8**, i8*** %4, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i32 1
  store i8** %85, i8*** %4, align 8
  br label %333

86:                                               ; preds = %74
  %87 = load i8**, i8*** %4, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i64 0
  %89 = load i8*, i8** %88, align 8
  %90 = call i64 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %89)
  %91 = icmp eq i64 0, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %86
  %93 = load i8*, i8** @TRUE, align 8
  store i8* %93, i8** @oneway, align 8
  %94 = load i32, i32* %3, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %3, align 4
  %96 = load i8**, i8*** %4, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i32 1
  store i8** %97, i8*** %4, align 8
  br label %332

98:                                               ; preds = %86
  %99 = load i8**, i8*** %4, align 8
  %100 = getelementptr inbounds i8*, i8** %99, i64 0
  %101 = load i8*, i8** %100, align 8
  %102 = call i64 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %101)
  %103 = icmp eq i64 0, %102
  br i1 %103, label %104, label %144

104:                                              ; preds = %98
  %105 = load i32, i32* %3, align 4
  %106 = icmp slt i32 %105, 2
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i8*, i8** %8, align 8
  %109 = call i32 @usage(i8* %108)
  br label %110

110:                                              ; preds = %107, %104
  %111 = load i8**, i8*** %4, align 8
  %112 = getelementptr inbounds i8*, i8** %111, i64 1
  %113 = load i8*, i8** %112, align 8
  %114 = call i64 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %113)
  %115 = icmp eq i64 0, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %110
  %117 = load i32, i32* @msg_type_trivial, align 4
  store i32 %117, i32* @msg_type, align 4
  br label %139

118:                                              ; preds = %110
  %119 = load i8**, i8*** %4, align 8
  %120 = getelementptr inbounds i8*, i8** %119, i64 1
  %121 = load i8*, i8** %120, align 8
  %122 = call i64 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %121)
  %123 = icmp eq i64 0, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %118
  %125 = load i32, i32* @msg_type_inline, align 4
  store i32 %125, i32* @msg_type, align 4
  br label %138

126:                                              ; preds = %118
  %127 = load i8**, i8*** %4, align 8
  %128 = getelementptr inbounds i8*, i8** %127, i64 1
  %129 = load i8*, i8** %128, align 8
  %130 = call i64 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* %129)
  %131 = icmp eq i64 0, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %126
  %133 = load i32, i32* @msg_type_complex, align 4
  store i32 %133, i32* @msg_type, align 4
  br label %137

134:                                              ; preds = %126
  %135 = load i8*, i8** %8, align 8
  %136 = call i32 @usage(i8* %135)
  br label %137

137:                                              ; preds = %134, %132
  br label %138

138:                                              ; preds = %137, %124
  br label %139

139:                                              ; preds = %138, %116
  %140 = load i32, i32* %3, align 4
  %141 = sub nsw i32 %140, 2
  store i32 %141, i32* %3, align 4
  %142 = load i8**, i8*** %4, align 8
  %143 = getelementptr inbounds i8*, i8** %142, i64 2
  store i8** %143, i8*** %4, align 8
  br label %331

144:                                              ; preds = %98
  %145 = load i8**, i8*** %4, align 8
  %146 = getelementptr inbounds i8*, i8** %145, i64 0
  %147 = load i8*, i8** %146, align 8
  %148 = call i64 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* %147)
  %149 = icmp eq i64 0, %148
  br i1 %149, label %150, label %166

150:                                              ; preds = %144
  %151 = load i32, i32* %3, align 4
  %152 = icmp slt i32 %151, 2
  br i1 %152, label %153, label %156

153:                                              ; preds = %150
  %154 = load i8*, i8** %8, align 8
  %155 = call i32 @usage(i8* %154)
  br label %156

156:                                              ; preds = %153, %150
  %157 = load i8**, i8*** %4, align 8
  %158 = getelementptr inbounds i8*, i8** %157, i64 1
  %159 = load i8*, i8** %158, align 8
  %160 = call i8* @strtoul(i8* %159, i32* null, i32 0)
  %161 = ptrtoint i8* %160 to i32
  store i32 %161, i32* @num_ints, align 4
  %162 = load i32, i32* %3, align 4
  %163 = sub nsw i32 %162, 2
  store i32 %163, i32* %3, align 4
  %164 = load i8**, i8*** %4, align 8
  %165 = getelementptr inbounds i8*, i8** %164, i64 2
  store i8** %165, i8*** %4, align 8
  br label %330

166:                                              ; preds = %144
  %167 = load i8**, i8*** %4, align 8
  %168 = getelementptr inbounds i8*, i8** %167, i64 0
  %169 = load i8*, i8** %168, align 8
  %170 = call i64 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* %169)
  %171 = icmp eq i64 0, %170
  br i1 %171, label %172, label %188

172:                                              ; preds = %166
  %173 = load i32, i32* %3, align 4
  %174 = icmp slt i32 %173, 2
  br i1 %174, label %175, label %178

175:                                              ; preds = %172
  %176 = load i8*, i8** %8, align 8
  %177 = call i32 @usage(i8* %176)
  br label %178

178:                                              ; preds = %175, %172
  %179 = load i8**, i8*** %4, align 8
  %180 = getelementptr inbounds i8*, i8** %179, i64 1
  %181 = load i8*, i8** %180, align 8
  %182 = call i8* @strtoul(i8* %181, i32* null, i32 0)
  %183 = ptrtoint i8* %182 to i32
  store i32 %183, i32* @num_msgs, align 4
  %184 = load i32, i32* %3, align 4
  %185 = sub nsw i32 %184, 2
  store i32 %185, i32* %3, align 4
  %186 = load i8**, i8*** %4, align 8
  %187 = getelementptr inbounds i8*, i8** %186, i64 2
  store i8** %187, i8*** %4, align 8
  br label %329

188:                                              ; preds = %166
  %189 = load i8**, i8*** %4, align 8
  %190 = getelementptr inbounds i8*, i8** %189, i64 0
  %191 = load i8*, i8** %190, align 8
  %192 = call i64 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8* %191)
  %193 = icmp eq i64 0, %192
  br i1 %193, label %194, label %210

194:                                              ; preds = %188
  %195 = load i32, i32* %3, align 4
  %196 = icmp slt i32 %195, 2
  br i1 %196, label %197, label %200

197:                                              ; preds = %194
  %198 = load i8*, i8** %8, align 8
  %199 = call i32 @usage(i8* %198)
  br label %200

200:                                              ; preds = %197, %194
  %201 = load i8**, i8*** %4, align 8
  %202 = getelementptr inbounds i8*, i8** %201, i64 1
  %203 = load i8*, i8** %202, align 8
  %204 = call i8* @strtoul(i8* %203, i32* null, i32 0)
  %205 = ptrtoint i8* %204 to i32
  store i32 %205, i32* @num_clients, align 4
  %206 = load i32, i32* %3, align 4
  %207 = sub nsw i32 %206, 2
  store i32 %207, i32* %3, align 4
  %208 = load i8**, i8*** %4, align 8
  %209 = getelementptr inbounds i8*, i8** %208, i64 2
  store i8** %209, i8*** %4, align 8
  br label %328

210:                                              ; preds = %188
  %211 = load i8**, i8*** %4, align 8
  %212 = getelementptr inbounds i8*, i8** %211, i64 0
  %213 = load i8*, i8** %212, align 8
  %214 = call i64 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* %213)
  %215 = icmp eq i64 0, %214
  br i1 %215, label %216, label %232

216:                                              ; preds = %210
  %217 = load i32, i32* %3, align 4
  %218 = icmp slt i32 %217, 2
  br i1 %218, label %219, label %222

219:                                              ; preds = %216
  %220 = load i8*, i8** %8, align 8
  %221 = call i32 @usage(i8* %220)
  br label %222

222:                                              ; preds = %219, %216
  %223 = load i8**, i8*** %4, align 8
  %224 = getelementptr inbounds i8*, i8** %223, i64 1
  %225 = load i8*, i8** %224, align 8
  %226 = call i8* @strtoul(i8* %225, i32* null, i32 0)
  %227 = ptrtoint i8* %226 to i32
  store i32 %227, i32* @num_servers, align 4
  %228 = load i32, i32* %3, align 4
  %229 = sub nsw i32 %228, 2
  store i32 %229, i32* %3, align 4
  %230 = load i8**, i8*** %4, align 8
  %231 = getelementptr inbounds i8*, i8** %230, i64 2
  store i8** %231, i8*** %4, align 8
  br label %327

232:                                              ; preds = %210
  %233 = load i8**, i8*** %4, align 8
  %234 = getelementptr inbounds i8*, i8** %233, i64 0
  %235 = load i8*, i8** %234, align 8
  %236 = call i64 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8* %235)
  %237 = icmp eq i64 0, %236
  br i1 %237, label %238, label %253

238:                                              ; preds = %232
  %239 = load i32, i32* %3, align 4
  %240 = icmp slt i32 %239, 2
  br i1 %240, label %241, label %244

241:                                              ; preds = %238
  %242 = load i8*, i8** %8, align 8
  %243 = call i32 @usage(i8* %242)
  br label %244

244:                                              ; preds = %241, %238
  %245 = load i8**, i8*** %4, align 8
  %246 = getelementptr inbounds i8*, i8** %245, i64 1
  %247 = load i8*, i8** %246, align 8
  %248 = call i8* @strtoul(i8* %247, i32* null, i32 0)
  store i8* %248, i8** @client_delay, align 8
  %249 = load i32, i32* %3, align 4
  %250 = sub nsw i32 %249, 2
  store i32 %250, i32* %3, align 4
  %251 = load i8**, i8*** %4, align 8
  %252 = getelementptr inbounds i8*, i8** %251, i64 2
  store i8** %252, i8*** %4, align 8
  br label %326

253:                                              ; preds = %232
  %254 = load i8**, i8*** %4, align 8
  %255 = getelementptr inbounds i8*, i8** %254, i64 0
  %256 = load i8*, i8** %255, align 8
  %257 = call i64 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8* %256)
  %258 = icmp eq i64 0, %257
  br i1 %258, label %259, label %274

259:                                              ; preds = %253
  %260 = load i32, i32* %3, align 4
  %261 = icmp slt i32 %260, 2
  br i1 %261, label %262, label %265

262:                                              ; preds = %259
  %263 = load i8*, i8** %8, align 8
  %264 = call i32 @usage(i8* %263)
  br label %265

265:                                              ; preds = %262, %259
  %266 = load i8**, i8*** %4, align 8
  %267 = getelementptr inbounds i8*, i8** %266, i64 1
  %268 = load i8*, i8** %267, align 8
  %269 = call i8* @strtoul(i8* %268, i32* null, i32 0)
  store i8* %269, i8** @client_spin, align 8
  %270 = load i32, i32* %3, align 4
  %271 = sub nsw i32 %270, 2
  store i32 %271, i32* %3, align 4
  %272 = load i8**, i8*** %4, align 8
  %273 = getelementptr inbounds i8*, i8** %272, i64 2
  store i8** %273, i8*** %4, align 8
  br label %325

274:                                              ; preds = %253
  %275 = load i8**, i8*** %4, align 8
  %276 = getelementptr inbounds i8*, i8** %275, i64 0
  %277 = load i8*, i8** %276, align 8
  %278 = call i64 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8* %277)
  %279 = icmp eq i64 0, %278
  br i1 %279, label %280, label %295

280:                                              ; preds = %274
  %281 = load i32, i32* %3, align 4
  %282 = icmp slt i32 %281, 2
  br i1 %282, label %283, label %286

283:                                              ; preds = %280
  %284 = load i8*, i8** %8, align 8
  %285 = call i32 @usage(i8* %284)
  br label %286

286:                                              ; preds = %283, %280
  %287 = load i8**, i8*** %4, align 8
  %288 = getelementptr inbounds i8*, i8** %287, i64 1
  %289 = load i8*, i8** %288, align 8
  %290 = call i8* @strtoul(i8* %289, i32* null, i32 0)
  store i8* %290, i8** @client_pages, align 8
  %291 = load i32, i32* %3, align 4
  %292 = sub nsw i32 %291, 2
  store i32 %292, i32* %3, align 4
  %293 = load i8**, i8*** %4, align 8
  %294 = getelementptr inbounds i8*, i8** %293, i64 2
  store i8** %294, i8*** %4, align 8
  br label %324

295:                                              ; preds = %274
  %296 = load i8**, i8*** %4, align 8
  %297 = getelementptr inbounds i8*, i8** %296, i64 0
  %298 = load i8*, i8** %297, align 8
  %299 = call i64 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8* %298)
  %300 = icmp eq i64 0, %299
  br i1 %300, label %301, label %307

301:                                              ; preds = %295
  %302 = load i8*, i8** @TRUE, align 8
  store i8* %302, i8** @do_select, align 8
  %303 = load i32, i32* %3, align 4
  %304 = add nsw i32 %303, -1
  store i32 %304, i32* %3, align 4
  %305 = load i8**, i8*** %4, align 8
  %306 = getelementptr inbounds i8*, i8** %305, i32 1
  store i8** %306, i8*** %4, align 8
  br label %323

307:                                              ; preds = %295
  %308 = load i8**, i8*** %4, align 8
  %309 = getelementptr inbounds i8*, i8** %308, i64 0
  %310 = load i8*, i8** %309, align 8
  %311 = call i64 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i8* %310)
  %312 = icmp eq i64 0, %311
  br i1 %312, label %313, label %319

313:                                              ; preds = %307
  %314 = load i8*, i8** @TRUE, align 8
  store i8* %314, i8** @save_perfdata, align 8
  %315 = load i32, i32* %3, align 4
  %316 = add nsw i32 %315, -1
  store i32 %316, i32* %3, align 4
  %317 = load i8**, i8*** %4, align 8
  %318 = getelementptr inbounds i8*, i8** %317, i32 1
  store i8** %318, i8*** %4, align 8
  br label %322

319:                                              ; preds = %307
  %320 = load i8*, i8** %8, align 8
  %321 = call i32 @usage(i8* %320)
  br label %322

322:                                              ; preds = %319, %313
  br label %323

323:                                              ; preds = %322, %301
  br label %324

324:                                              ; preds = %323, %286
  br label %325

325:                                              ; preds = %324, %265
  br label %326

326:                                              ; preds = %325, %244
  br label %327

327:                                              ; preds = %326, %222
  br label %328

328:                                              ; preds = %327, %200
  br label %329

329:                                              ; preds = %328, %178
  br label %330

330:                                              ; preds = %329, %156
  br label %331

331:                                              ; preds = %330, %139
  br label %332

332:                                              ; preds = %331, %92
  br label %333

333:                                              ; preds = %332, %80
  br label %334

334:                                              ; preds = %333, %68
  br label %335

335:                                              ; preds = %334, %56
  br label %336

336:                                              ; preds = %335, %44
  br label %35

337:                                              ; preds = %35
  ret void
}

declare dso_local i64 @host_info(i32, i32, i32, i32*) #1

declare dso_local i32 @mach_host_self(...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local i8* @strtoul(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
