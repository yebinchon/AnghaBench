; ModuleID = '/home/carl/AnghaBench/dsvpn/src/extr_vpn.c_main.c'
source_filename = "/home/carl/AnghaBench/dsvpn/src/extr_vpn.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"server\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Unable to load the key file [%s]\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@DEFAULT_PORT = common dso_local global i8* null, align 8
@DEFAULT_SERVER_IP = common dso_local global i8* null, align 8
@DEFAULT_CLIENT_IP = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"Unable to automatically determine the gateway IP\0A\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"Unable to automatically determine the external interface\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"tun device creation\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"Interface: [%s]\0A\00", align 1
@DEFAULT_MTU = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"mtu\00", align 1
@SIGINT = common dso_local global i32 0, align 4
@signal_handler = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"Done.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_7__, align 8
  %7 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 3
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = call i32 (...) @usage()
  br label %12

12:                                               ; preds = %10, %2
  %13 = call i32 @memset(%struct.TYPE_7__* %6, i32 0, i32 96)
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 1
  %16 = load i8*, i8** %15, align 8
  %17 = call i64 @strcmp(i8* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %18 = icmp eq i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  store i32 %19, i32* %20, align 8
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 2
  %23 = load i8*, i8** %22, align 8
  %24 = call i64 @load_key_file(%struct.TYPE_7__* %6, i8* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %12
  %27 = load i32, i32* @stderr, align 4
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 2
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 (i32, i8*, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  store i32 1, i32* %3, align 4
  br label %260

32:                                               ; preds = %12
  %33 = load i32, i32* %4, align 4
  %34 = icmp sle i32 %33, 3
  br i1 %34, label %41, label %35

35:                                               ; preds = %32
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 3
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @strcmp(i8* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35, %32
  br label %46

42:                                               ; preds = %35
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 3
  %45 = load i8*, i8** %44, align 8
  br label %46

46:                                               ; preds = %42, %41
  %47 = phi i8* [ null, %41 ], [ %45, %42 ]
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  store i8* %47, i8** %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  %57 = call i32 (...) @usage()
  br label %58

58:                                               ; preds = %56, %52, %46
  %59 = load i32, i32* %4, align 4
  %60 = icmp sle i32 %59, 4
  br i1 %60, label %67, label %61

61:                                               ; preds = %58
  %62 = load i8**, i8*** %5, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 4
  %64 = load i8*, i8** %63, align 8
  %65 = call i64 @strcmp(i8* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %61, %58
  %68 = load i8*, i8** @DEFAULT_PORT, align 8
  br label %73

69:                                               ; preds = %61
  %70 = load i8**, i8*** %5, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 4
  %72 = load i8*, i8** %71, align 8
  br label %73

73:                                               ; preds = %69, %67
  %74 = phi i8* [ %68, %67 ], [ %72, %69 ]
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  store i8* %74, i8** %75, align 8
  %76 = load i32, i32* %4, align 4
  %77 = icmp sle i32 %76, 5
  br i1 %77, label %84, label %78

78:                                               ; preds = %73
  %79 = load i8**, i8*** %5, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 5
  %81 = load i8*, i8** %80, align 8
  %82 = call i64 @strcmp(i8* %81, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %78, %73
  br label %89

85:                                               ; preds = %78
  %86 = load i8**, i8*** %5, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i64 5
  %88 = load i8*, i8** %87, align 8
  br label %89

89:                                               ; preds = %85, %84
  %90 = phi i8* [ null, %84 ], [ %88, %85 ]
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 3
  store i8* %90, i8** %91, align 8
  %92 = load i32, i32* %4, align 4
  %93 = icmp sle i32 %92, 6
  br i1 %93, label %100, label %94

94:                                               ; preds = %89
  %95 = load i8**, i8*** %5, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i64 6
  %97 = load i8*, i8** %96, align 8
  %98 = call i64 @strcmp(i8* %97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %94, %89
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = load i8*, i8** @DEFAULT_SERVER_IP, align 8
  br label %108

106:                                              ; preds = %100
  %107 = load i8*, i8** @DEFAULT_CLIENT_IP, align 8
  br label %108

108:                                              ; preds = %106, %104
  %109 = phi i8* [ %105, %104 ], [ %107, %106 ]
  br label %114

110:                                              ; preds = %94
  %111 = load i8**, i8*** %5, align 8
  %112 = getelementptr inbounds i8*, i8** %111, i64 6
  %113 = load i8*, i8** %112, align 8
  br label %114

114:                                              ; preds = %110, %108
  %115 = phi i8* [ %109, %108 ], [ %113, %110 ]
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 4
  store i8* %115, i8** %116, align 8
  %117 = load i32, i32* %4, align 4
  %118 = icmp sle i32 %117, 7
  br i1 %118, label %125, label %119

119:                                              ; preds = %114
  %120 = load i8**, i8*** %5, align 8
  %121 = getelementptr inbounds i8*, i8** %120, i64 7
  %122 = load i8*, i8** %121, align 8
  %123 = call i64 @strcmp(i8* %122, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %135

125:                                              ; preds = %119, %114
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %125
  %130 = load i8*, i8** @DEFAULT_CLIENT_IP, align 8
  br label %133

131:                                              ; preds = %125
  %132 = load i8*, i8** @DEFAULT_SERVER_IP, align 8
  br label %133

133:                                              ; preds = %131, %129
  %134 = phi i8* [ %130, %129 ], [ %132, %131 ]
  br label %139

135:                                              ; preds = %119
  %136 = load i8**, i8*** %5, align 8
  %137 = getelementptr inbounds i8*, i8** %136, i64 7
  %138 = load i8*, i8** %137, align 8
  br label %139

139:                                              ; preds = %135, %133
  %140 = phi i8* [ %134, %133 ], [ %138, %135 ]
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 5
  store i8* %140, i8** %141, align 8
  %142 = load i32, i32* %4, align 4
  %143 = icmp sle i32 %142, 8
  br i1 %143, label %150, label %144

144:                                              ; preds = %139
  %145 = load i8**, i8*** %5, align 8
  %146 = getelementptr inbounds i8*, i8** %145, i64 8
  %147 = load i8*, i8** %146, align 8
  %148 = call i64 @strcmp(i8* %147, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %144, %139
  br label %155

151:                                              ; preds = %144
  %152 = load i8**, i8*** %5, align 8
  %153 = getelementptr inbounds i8*, i8** %152, i64 8
  %154 = load i8*, i8** %153, align 8
  br label %155

155:                                              ; preds = %151, %150
  %156 = phi i8* [ null, %150 ], [ %154, %151 ]
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 6
  store i8* %156, i8** %157, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 6
  %159 = load i8*, i8** %158, align 8
  %160 = icmp ne i8* %159, null
  br i1 %160, label %161, label %164

161:                                              ; preds = %155
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 6
  %163 = load i8*, i8** %162, align 8
  br label %166

164:                                              ; preds = %155
  %165 = call i8* (...) @get_default_gw_ip()
  br label %166

166:                                              ; preds = %164, %161
  %167 = phi i8* [ %163, %161 ], [ %165, %164 ]
  store i8* %167, i8** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 12
  %169 = load i32, i32* %168, align 8
  %170 = load i8*, i8** %7, align 8
  %171 = icmp eq i8* %170, null
  br i1 %171, label %172, label %173

172:                                              ; preds = %166
  br label %175

173:                                              ; preds = %166
  %174 = load i8*, i8** %7, align 8
  br label %175

175:                                              ; preds = %173, %172
  %176 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %172 ], [ %174, %173 ]
  %177 = call i32 @snprintf(i32 %169, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %176)
  %178 = load i8*, i8** %7, align 8
  %179 = icmp eq i8* %178, null
  br i1 %179, label %180, label %187

180:                                              ; preds = %175
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %187, label %184

184:                                              ; preds = %180
  %185 = load i32, i32* @stderr, align 4
  %186 = call i32 (i32, i8*, ...) @fprintf(i32 %185, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %260

187:                                              ; preds = %180, %175
  %188 = call i32* (...) @get_default_ext_if_name()
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 11
  store i32* %188, i32** %189, align 8
  %190 = icmp eq i32* %188, null
  br i1 %190, label %191, label %198

191:                                              ; preds = %187
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %191
  %196 = load i32, i32* @stderr, align 4
  %197 = call i32 (i32, i8*, ...) @fprintf(i32 %196, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %260

198:                                              ; preds = %191, %187
  %199 = call i32 @get_tun6_addresses(%struct.TYPE_7__* %6)
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 8
  %201 = load i8*, i8** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 3
  %203 = load i8*, i8** %202, align 8
  %204 = call i32 @tun_create(i8* %201, i8* %203)
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 7
  store i32 %204, i32* %205, align 8
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 7
  %207 = load i32, i32* %206, align 8
  %208 = icmp eq i32 %207, -1
  br i1 %208, label %209, label %211

209:                                              ; preds = %198
  %210 = call i32 @perror(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %260

211:                                              ; preds = %198
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 8
  %213 = load i8*, i8** %212, align 8
  %214 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* %213)
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 8
  %216 = load i8*, i8** %215, align 8
  %217 = load i32, i32* @DEFAULT_MTU, align 4
  %218 = call i64 @tun_set_mtu(i8* %216, i32 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %211
  %221 = call i32 @perror(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  br label %222

222:                                              ; preds = %220, %211
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 9
  store i32 -1, i32* %223, align 8
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %225 = load i8*, i8** %224, align 8
  %226 = icmp ne i8* %225, null
  br i1 %226, label %227, label %236

227:                                              ; preds = %222
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 10
  %229 = load i32, i32* %228, align 4
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %231 = load i8*, i8** %230, align 8
  %232 = call i64 @resolve_ip(i32 %229, i32 4, i8* %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %227
  %235 = call i64 @firewall_rules(%struct.TYPE_7__* %6, i32 0, i32 1)
  store i32 1, i32* %3, align 4
  br label %260

236:                                              ; preds = %227, %222
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %245

240:                                              ; preds = %236
  %241 = call i64 @firewall_rules(%struct.TYPE_7__* %6, i32 1, i32 0)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %240
  store i32 -1, i32* %3, align 4
  br label %260

244:                                              ; preds = %240
  br label %247

245:                                              ; preds = %236
  %246 = call i64 @firewall_rules(%struct.TYPE_7__* %6, i32 0, i32 1)
  br label %247

247:                                              ; preds = %245, %244
  %248 = load i32, i32* @SIGINT, align 4
  %249 = load i32, i32* @signal_handler, align 4
  %250 = call i32 @signal(i32 %248, i32 %249)
  %251 = load i32, i32* @SIGTERM, align 4
  %252 = load i32, i32* @signal_handler, align 4
  %253 = call i32 @signal(i32 %251, i32 %252)
  %254 = call i64 @doit(%struct.TYPE_7__* %6)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %247
  store i32 -1, i32* %3, align 4
  br label %260

257:                                              ; preds = %247
  %258 = call i64 @firewall_rules(%struct.TYPE_7__* %6, i32 0, i32 0)
  %259 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %260

260:                                              ; preds = %257, %256, %243, %234, %209, %195, %184, %26
  %261 = load i32, i32* %3, align 4
  ret i32 %261
}

declare dso_local i32 @usage(...) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @load_key_file(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @get_default_gw_ip(...) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32* @get_default_ext_if_name(...) #1

declare dso_local i32 @get_tun6_addresses(%struct.TYPE_7__*) #1

declare dso_local i32 @tun_create(i8*, i8*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i64 @tun_set_mtu(i8*, i32) #1

declare dso_local i64 @resolve_ip(i32, i32, i8*) #1

declare dso_local i64 @firewall_rules(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i64 @doit(%struct.TYPE_7__*) #1

declare dso_local i32 @puts(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
