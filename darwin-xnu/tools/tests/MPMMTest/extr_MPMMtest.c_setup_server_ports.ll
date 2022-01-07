; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tools/tests/MPMMTest/extr_MPMMtest.c_setup_server_ports.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tools/tests/MPMMTest/extr_MPMMtest.c_setup_server_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_args = type { i32, i32, i32*, i32*, i32, i32, i32, i8*, i8* }

@num_ints = common dso_local global i32 0, align 4
@setcount = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"calloc(%lu, %d) failed!\0A\00", align 1
@stress_prepost = common dso_local global i64 0, align 8
@portcount = common dso_local global i32 0, align 4
@useset = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"Can't use sets with a setcount of %d\0A\00", align 1
@MACH_PORT_RIGHT_PORT_SET = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"mach_port_allocate(SET): \00", align 1
@verbose = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"SVR[%d] allocated set[%d] %#x\0A\00", align 1
@MACH_PORT_RIGHT_RECEIVE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"mach_port_allocate(PORT): \00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"SVR[%d] moving port %#x into set %#x...\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"mach_port_insert_member(): \00", align 1
@MACH_MSG_TYPE_MAKE_SEND = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"mach_port_insert_right(): \00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"task_get_bootstrap_port(): \00", align 1
@.str.9 = private unnamed_addr constant [65 x i8] c"server waiting for IPC messages from client on port '%s' (%#x).\0A\00", align 1
@server_port_name = common dso_local global i8** null, align 8
@.str.10 = private unnamed_addr constant [23 x i8] c"bootstrap_register(): \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup_server_ports(%struct.port_args* %0) #0 {
  %2 = alloca %struct.port_args*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.port_args* %0, %struct.port_args** %2, align 8
  store i64 0, i64* %3, align 8
  %11 = load i32, i32* @num_ints, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 4, %12
  %14 = add i64 4, %13
  %15 = trunc i64 %14 to i32
  %16 = call i32 @MAX(i32 %15, i32 4)
  %17 = load %struct.port_args*, %struct.port_args** %2, align 8
  %18 = getelementptr inbounds %struct.port_args, %struct.port_args* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.port_args*, %struct.port_args** %2, align 8
  %20 = getelementptr inbounds %struct.port_args, %struct.port_args* %19, i32 0, i32 1
  store i32 0, i32* %20, align 4
  %21 = load %struct.port_args*, %struct.port_args** %2, align 8
  %22 = getelementptr inbounds %struct.port_args, %struct.port_args* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i8* @malloc(i32 %23)
  %25 = load %struct.port_args*, %struct.port_args** %2, align 8
  %26 = getelementptr inbounds %struct.port_args, %struct.port_args* %25, i32 0, i32 8
  store i8* %24, i8** %26, align 8
  %27 = load %struct.port_args*, %struct.port_args** %2, align 8
  %28 = getelementptr inbounds %struct.port_args, %struct.port_args* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @malloc(i32 %29)
  %31 = load %struct.port_args*, %struct.port_args** %2, align 8
  %32 = getelementptr inbounds %struct.port_args, %struct.port_args* %31, i32 0, i32 7
  store i8* %30, i8** %32, align 8
  %33 = load i32, i32* @setcount, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %1
  %36 = load i32, i32* @setcount, align 4
  %37 = call i64 @calloc(i32 4, i32 %36)
  %38 = inttoptr i64 %37 to i32*
  %39 = load %struct.port_args*, %struct.port_args** %2, align 8
  %40 = getelementptr inbounds %struct.port_args, %struct.port_args* %39, i32 0, i32 2
  store i32* %38, i32** %40, align 8
  %41 = load %struct.port_args*, %struct.port_args** %2, align 8
  %42 = getelementptr inbounds %struct.port_args, %struct.port_args* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %35
  %46 = load i32, i32* @stderr, align 4
  %47 = load i32, i32* @setcount, align 4
  %48 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 4, i32 %47)
  %49 = call i32 @exit(i32 1) #3
  unreachable

50:                                               ; preds = %35
  br label %51

51:                                               ; preds = %50, %1
  %52 = load i64, i64* @stress_prepost, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %51
  %55 = load i32, i32* @portcount, align 4
  %56 = call i64 @calloc(i32 4, i32 %55)
  %57 = inttoptr i64 %56 to i32*
  %58 = load %struct.port_args*, %struct.port_args** %2, align 8
  %59 = getelementptr inbounds %struct.port_args, %struct.port_args* %58, i32 0, i32 3
  store i32* %57, i32** %59, align 8
  %60 = load %struct.port_args*, %struct.port_args** %2, align 8
  %61 = getelementptr inbounds %struct.port_args, %struct.port_args* %60, i32 0, i32 3
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %69, label %64

64:                                               ; preds = %54
  %65 = load i32, i32* @stderr, align 4
  %66 = load i32, i32* @portcount, align 4
  %67 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %65, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 4, i32 %66)
  %68 = call i32 @exit(i32 1) #3
  unreachable

69:                                               ; preds = %54
  br label %70

70:                                               ; preds = %69, %51
  %71 = load i64, i64* @useset, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %138

73:                                               ; preds = %70
  %74 = load i32, i32* @setcount, align 4
  %75 = icmp slt i32 %74, 1
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = load i32, i32* @stderr, align 4
  %78 = load i32, i32* @setcount, align 4
  %79 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %77, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  %80 = call i32 @exit(i32 1) #3
  unreachable

81:                                               ; preds = %73
  store i32 0, i32* %7, align 4
  br label %82

82:                                               ; preds = %127, %81
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @setcount, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %130

86:                                               ; preds = %82
  %87 = call i32 (...) @mach_task_self()
  %88 = load i32, i32* @MACH_PORT_RIGHT_PORT_SET, align 4
  %89 = load %struct.port_args*, %struct.port_args** %2, align 8
  %90 = getelementptr inbounds %struct.port_args, %struct.port_args* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = call i64 @mach_port_allocate(i32 %87, i32 %88, i32* %94)
  store i64 %95, i64* %3, align 8
  %96 = load i64, i64* @KERN_SUCCESS, align 8
  %97 = load i64, i64* %3, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %86
  %100 = load i64, i64* %3, align 8
  %101 = call i32 @mach_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %100)
  %102 = call i32 @exit(i32 1) #3
  unreachable

103:                                              ; preds = %86
  %104 = load i32, i32* @verbose, align 4
  %105 = icmp sgt i32 %104, 1
  br i1 %105, label %106, label %119

106:                                              ; preds = %103
  %107 = load %struct.port_args*, %struct.port_args** %2, align 8
  %108 = getelementptr inbounds %struct.port_args, %struct.port_args* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %7, align 4
  %111 = load %struct.port_args*, %struct.port_args** %2, align 8
  %112 = getelementptr inbounds %struct.port_args, %struct.port_args* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %109, i32 %110, i32 %117)
  br label %119

119:                                              ; preds = %106, %103
  %120 = load %struct.port_args*, %struct.port_args** %2, align 8
  %121 = getelementptr inbounds %struct.port_args, %struct.port_args* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %6, align 4
  br label %127

127:                                              ; preds = %119
  %128 = load i32, i32* %7, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %7, align 4
  br label %82

130:                                              ; preds = %82
  %131 = load %struct.port_args*, %struct.port_args** %2, align 8
  %132 = getelementptr inbounds %struct.port_args, %struct.port_args* %131, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.port_args*, %struct.port_args** %2, align 8
  %137 = getelementptr inbounds %struct.port_args, %struct.port_args* %136, i32 0, i32 5
  store i32 %135, i32* %137, align 4
  br label %138

138:                                              ; preds = %130, %70
  store i32 0, i32* %8, align 4
  br label %139

139:                                              ; preds = %213, %138
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* @portcount, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %216

143:                                              ; preds = %139
  %144 = call i32 (...) @mach_task_self()
  %145 = load i32, i32* @MACH_PORT_RIGHT_RECEIVE, align 4
  %146 = call i64 @mach_port_allocate(i32 %144, i32 %145, i32* %5)
  store i64 %146, i64* %3, align 8
  %147 = load i64, i64* @KERN_SUCCESS, align 8
  %148 = load i64, i64* %3, align 8
  %149 = icmp ne i64 %147, %148
  br i1 %149, label %150, label %154

150:                                              ; preds = %143
  %151 = load i64, i64* %3, align 8
  %152 = call i32 @mach_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i64 %151)
  %153 = call i32 @exit(i32 1) #3
  unreachable

154:                                              ; preds = %143
  %155 = load i64, i64* @stress_prepost, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %165

157:                                              ; preds = %154
  %158 = load i32, i32* %5, align 4
  %159 = load %struct.port_args*, %struct.port_args** %2, align 8
  %160 = getelementptr inbounds %struct.port_args, %struct.port_args* %159, i32 0, i32 3
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %8, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  store i32 %158, i32* %164, align 4
  br label %165

165:                                              ; preds = %157, %154
  %166 = load i64, i64* @useset, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %212

168:                                              ; preds = %165
  store i32 0, i32* %9, align 4
  br label %169

169:                                              ; preds = %208, %168
  %170 = load i32, i32* %9, align 4
  %171 = load i32, i32* @setcount, align 4
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %173, label %211

173:                                              ; preds = %169
  %174 = load i32, i32* @verbose, align 4
  %175 = icmp sgt i32 %174, 1
  br i1 %175, label %176, label %189

176:                                              ; preds = %173
  %177 = load %struct.port_args*, %struct.port_args** %2, align 8
  %178 = getelementptr inbounds %struct.port_args, %struct.port_args* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* %5, align 4
  %181 = load %struct.port_args*, %struct.port_args** %2, align 8
  %182 = getelementptr inbounds %struct.port_args, %struct.port_args* %181, i32 0, i32 2
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* %9, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %179, i32 %180, i32 %187)
  br label %189

189:                                              ; preds = %176, %173
  %190 = call i32 (...) @mach_task_self()
  %191 = load i32, i32* %5, align 4
  %192 = load %struct.port_args*, %struct.port_args** %2, align 8
  %193 = getelementptr inbounds %struct.port_args, %struct.port_args* %192, i32 0, i32 2
  %194 = load i32*, i32** %193, align 8
  %195 = load i32, i32* %9, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %194, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = call i64 @mach_port_insert_member(i32 %190, i32 %191, i32 %198)
  store i64 %199, i64* %3, align 8
  %200 = load i64, i64* @KERN_SUCCESS, align 8
  %201 = load i64, i64* %3, align 8
  %202 = icmp ne i64 %200, %201
  br i1 %202, label %203, label %207

203:                                              ; preds = %189
  %204 = load i64, i64* %3, align 8
  %205 = call i32 @mach_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i64 %204)
  %206 = call i32 @exit(i32 1) #3
  unreachable

207:                                              ; preds = %189
  br label %208

208:                                              ; preds = %207
  %209 = load i32, i32* %9, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %9, align 4
  br label %169

211:                                              ; preds = %169
  br label %212

212:                                              ; preds = %211, %165
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %8, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %8, align 4
  br label %139

216:                                              ; preds = %139
  %217 = load i32, i32* %5, align 4
  %218 = load %struct.port_args*, %struct.port_args** %2, align 8
  %219 = getelementptr inbounds %struct.port_args, %struct.port_args* %218, i32 0, i32 6
  store i32 %217, i32* %219, align 8
  %220 = load i64, i64* @stress_prepost, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %257

222:                                              ; preds = %216
  store i32 0, i32* %10, align 4
  br label %223

223:                                              ; preds = %253, %222
  %224 = load i32, i32* %10, align 4
  %225 = load i32, i32* @portcount, align 4
  %226 = icmp slt i32 %224, %225
  br i1 %226, label %227, label %256

227:                                              ; preds = %223
  %228 = call i32 (...) @mach_task_self()
  %229 = load %struct.port_args*, %struct.port_args** %2, align 8
  %230 = getelementptr inbounds %struct.port_args, %struct.port_args* %229, i32 0, i32 3
  %231 = load i32*, i32** %230, align 8
  %232 = load i32, i32* %10, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.port_args*, %struct.port_args** %2, align 8
  %237 = getelementptr inbounds %struct.port_args, %struct.port_args* %236, i32 0, i32 3
  %238 = load i32*, i32** %237, align 8
  %239 = load i32, i32* %10, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %238, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @MACH_MSG_TYPE_MAKE_SEND, align 4
  %244 = call i64 @mach_port_insert_right(i32 %228, i32 %235, i32 %242, i32 %243)
  store i64 %244, i64* %3, align 8
  %245 = load i64, i64* @KERN_SUCCESS, align 8
  %246 = load i64, i64* %3, align 8
  %247 = icmp ne i64 %245, %246
  br i1 %247, label %248, label %252

248:                                              ; preds = %227
  %249 = load i64, i64* %3, align 8
  %250 = call i32 @mach_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i64 %249)
  %251 = call i32 @exit(i32 1) #3
  unreachable

252:                                              ; preds = %227
  br label %253

253:                                              ; preds = %252
  %254 = load i32, i32* %10, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %10, align 4
  br label %223

256:                                              ; preds = %223
  br label %275

257:                                              ; preds = %216
  %258 = call i32 (...) @mach_task_self()
  %259 = load %struct.port_args*, %struct.port_args** %2, align 8
  %260 = getelementptr inbounds %struct.port_args, %struct.port_args* %259, i32 0, i32 6
  %261 = load i32, i32* %260, align 8
  %262 = load %struct.port_args*, %struct.port_args** %2, align 8
  %263 = getelementptr inbounds %struct.port_args, %struct.port_args* %262, i32 0, i32 6
  %264 = load i32, i32* %263, align 8
  %265 = load i32, i32* @MACH_MSG_TYPE_MAKE_SEND, align 4
  %266 = call i64 @mach_port_insert_right(i32 %258, i32 %261, i32 %264, i32 %265)
  store i64 %266, i64* %3, align 8
  %267 = load i64, i64* @KERN_SUCCESS, align 8
  %268 = load i64, i64* %3, align 8
  %269 = icmp ne i64 %267, %268
  br i1 %269, label %270, label %274

270:                                              ; preds = %257
  %271 = load i64, i64* %3, align 8
  %272 = call i32 @mach_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i64 %271)
  %273 = call i32 @exit(i32 1) #3
  unreachable

274:                                              ; preds = %257
  br label %275

275:                                              ; preds = %274, %256
  %276 = call i32 (...) @mach_task_self()
  %277 = call i64 @task_get_bootstrap_port(i32 %276, i32* %4)
  store i64 %277, i64* %3, align 8
  %278 = load i64, i64* @KERN_SUCCESS, align 8
  %279 = load i64, i64* %3, align 8
  %280 = icmp ne i64 %278, %279
  br i1 %280, label %281, label %285

281:                                              ; preds = %275
  %282 = load i64, i64* %3, align 8
  %283 = call i32 @mach_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i64 %282)
  %284 = call i32 @exit(i32 1) #3
  unreachable

285:                                              ; preds = %275
  %286 = load i32, i32* @verbose, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %300

288:                                              ; preds = %285
  %289 = load i8**, i8*** @server_port_name, align 8
  %290 = load %struct.port_args*, %struct.port_args** %2, align 8
  %291 = getelementptr inbounds %struct.port_args, %struct.port_args* %290, i32 0, i32 4
  %292 = load i32, i32* %291, align 8
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i8*, i8** %289, i64 %293
  %295 = load i8*, i8** %294, align 8
  %296 = load %struct.port_args*, %struct.port_args** %2, align 8
  %297 = getelementptr inbounds %struct.port_args, %struct.port_args* %296, i32 0, i32 6
  %298 = load i32, i32* %297, align 8
  %299 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.9, i64 0, i64 0), i8* %295, i32 %298)
  br label %300

300:                                              ; preds = %288, %285
  %301 = load i32, i32* %4, align 4
  %302 = load i8**, i8*** @server_port_name, align 8
  %303 = load %struct.port_args*, %struct.port_args** %2, align 8
  %304 = getelementptr inbounds %struct.port_args, %struct.port_args* %303, i32 0, i32 4
  %305 = load i32, i32* %304, align 8
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i8*, i8** %302, i64 %306
  %308 = load i8*, i8** %307, align 8
  %309 = load %struct.port_args*, %struct.port_args** %2, align 8
  %310 = getelementptr inbounds %struct.port_args, %struct.port_args* %309, i32 0, i32 6
  %311 = load i32, i32* %310, align 8
  %312 = call i64 @bootstrap_register(i32 %301, i8* %308, i32 %311)
  store i64 %312, i64* %3, align 8
  %313 = load i64, i64* @KERN_SUCCESS, align 8
  %314 = load i64, i64* %3, align 8
  %315 = icmp ne i64 %313, %314
  br i1 %315, label %316, label %320

316:                                              ; preds = %300
  %317 = load i64, i64* %3, align 8
  %318 = call i32 @mach_error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i64 %317)
  %319 = call i32 @exit(i32 1) #3
  unreachable

320:                                              ; preds = %300
  ret void
}

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @mach_port_allocate(i32, i32, i32*) #1

declare dso_local i32 @mach_task_self(...) #1

declare dso_local i32 @mach_error(i8*, i64) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @mach_port_insert_member(i32, i32, i32) #1

declare dso_local i64 @mach_port_insert_right(i32, i32, i32, i32) #1

declare dso_local i64 @task_get_bootstrap_port(i32, i32*) #1

declare dso_local i64 @bootstrap_register(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
