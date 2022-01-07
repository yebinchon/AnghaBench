; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_sig.c_build_userspace_exit_reason.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_sig.c_build_userspace_exit_reason.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@OS_REASON_NULL = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [61 x i8] c"build_userspace_exit_reason: failed to allocate exit reason\0A\00", align 1
@OS_REASON_FLAG_FROM_USERSPACE = common dso_local global i32 0, align 4
@OS_REASON_FLAG_MASK_ALLOWED_FROM_USER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [112 x i8] c"build_userspace_exit_reason: illegal flags passed from userspace (some masked off) 0x%llx, ns: %u, code 0x%llx\0A\00", align 1
@OS_REASON_FLAG_NO_CRASH_REPORT = common dso_local global i32 0, align 4
@OS_REASON_FLAG_GENERATE_CRASH_REPORT = common dso_local global i32 0, align 4
@USER_ADDR_NULL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [93 x i8] c"build_userspace_exit_reason: exit reason with namespace %u, nonzero payload but zero length\0A\00", align 1
@OS_REASON_FLAG_BAD_PARAMS = common dso_local global i32 0, align 4
@EXIT_REASON_PAYLOAD_MAX_LEN = common dso_local global i32 0, align 4
@OS_REASON_FLAG_PAYLOAD_TRUNCATED = common dso_local global i32 0, align 4
@EXIT_REASON_USER_DESC_MAX_LEN = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@OS_REASON_FLAG_FAILED_DATA_COPYIN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [70 x i8] c"build_userspace_exit_reason: failed to allocate signal reason buffer\0A\00", align 1
@KERN_SUCCESS = common dso_local global i64 0, align 8
@EXIT_REASON_USER_DESC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [73 x i8] c"build_userspace_exit_reason: failed to allocate space for reason string\0A\00", align 1
@EXIT_REASON_USER_PAYLOAD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [75 x i8] c"build_userspace_exit_reason: failed to copy in payload data with error %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [72 x i8] c"build_userspace_exit_reason: failed to allocate space for payload data\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @build_userspace_exit_reason(i32 %0, i32 %1, i64 %2, i32 %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** @OS_REASON_NULL, align 8
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i8* null, i8** %18, align 8
  store i64 0, i64* %19, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call %struct.TYPE_6__* @os_reason_create(i32 %23, i32 %24)
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %14, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** @OS_REASON_NULL, align 8
  %28 = icmp eq %struct.TYPE_6__* %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %6
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  store %struct.TYPE_6__* %31, %struct.TYPE_6__** %7, align 8
  br label %248

32:                                               ; preds = %6
  %33 = load i32, i32* @OS_REASON_FLAG_FROM_USERSPACE, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* @OS_REASON_FLAG_MASK_ALLOWED_FROM_USER, align 4
  %40 = and i32 %38, %39
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* @OS_REASON_FLAG_MASK_ALLOWED_FROM_USER, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %32
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %50, %32
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @OS_REASON_FLAG_NO_CRASH_REPORT, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %55
  %63 = load i32, i32* @OS_REASON_FLAG_GENERATE_CRASH_REPORT, align 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %62, %55
  %69 = load i64, i64* %10, align 8
  %70 = load i64, i64* @USER_ADDR_NULL, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %102

72:                                               ; preds = %68
  %73 = load i32, i32* %11, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = load i32, i32* %8, align 4
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* @OS_REASON_FLAG_BAD_PARAMS, align 4
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  %83 = load i64, i64* @USER_ADDR_NULL, align 8
  store i64 %83, i64* %10, align 8
  br label %101

84:                                               ; preds = %72
  %85 = load i32, i32* %16, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %16, align 4
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* @EXIT_REASON_PAYLOAD_MAX_LEN, align 4
  %89 = icmp sgt i32 %87, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %84
  %91 = load i32, i32* @OS_REASON_FLAG_PAYLOAD_TRUNCATED, align 4
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 4
  %96 = load i32, i32* @EXIT_REASON_PAYLOAD_MAX_LEN, align 4
  store i32 %96, i32* %11, align 4
  br label %97

97:                                               ; preds = %90, %84
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %17, align 4
  %100 = add nsw i32 %99, %98
  store i32 %100, i32* %17, align 4
  br label %101

101:                                              ; preds = %97, %75
  br label %102

102:                                              ; preds = %101, %68
  %103 = load i64, i64* %12, align 8
  %104 = load i64, i64* @USER_ADDR_NULL, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %156

106:                                              ; preds = %102
  %107 = load i32, i32* @EXIT_REASON_USER_DESC_MAX_LEN, align 4
  %108 = call i64 @kalloc(i32 %107)
  %109 = inttoptr i64 %108 to i8*
  store i8* %109, i8** %18, align 8
  %110 = load i8*, i8** %18, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %155

112:                                              ; preds = %106
  %113 = load i64, i64* %12, align 8
  %114 = load i8*, i8** %18, align 8
  %115 = load i32, i32* @EXIT_REASON_USER_DESC_MAX_LEN, align 4
  %116 = call i32 @copyinstr(i64 %113, i8* %114, i32 %115, i64* %19)
  store i32 %116, i32* %15, align 4
  %117 = load i32, i32* %15, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %112
  %120 = load i32, i32* %16, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %16, align 4
  %122 = load i64, i64* %19, align 8
  %123 = load i32, i32* %17, align 4
  %124 = sext i32 %123 to i64
  %125 = add i64 %124, %122
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %17, align 4
  br label %154

127:                                              ; preds = %112
  %128 = load i32, i32* %15, align 4
  %129 = load i32, i32* @ENAMETOOLONG, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %144

131:                                              ; preds = %127
  %132 = load i32, i32* %16, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %16, align 4
  %134 = load i8*, i8** %18, align 8
  %135 = load i32, i32* @EXIT_REASON_USER_DESC_MAX_LEN, align 4
  %136 = sub nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %134, i64 %137
  store i8 0, i8* %138, align 1
  %139 = load i64, i64* %19, align 8
  %140 = load i32, i32* %17, align 4
  %141 = sext i32 %140 to i64
  %142 = add i64 %141, %139
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %17, align 4
  br label %153

144:                                              ; preds = %127
  %145 = load i32, i32* @OS_REASON_FLAG_FAILED_DATA_COPYIN, align 4
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 4
  %150 = load i8*, i8** %18, align 8
  %151 = load i32, i32* @EXIT_REASON_USER_DESC_MAX_LEN, align 4
  %152 = call i32 @kfree(i8* %150, i32 %151)
  store i8* null, i8** %18, align 8
  store i64 0, i64* %19, align 8
  br label %153

153:                                              ; preds = %144, %131
  br label %154

154:                                              ; preds = %153, %119
  br label %155

155:                                              ; preds = %154, %106
  br label %156

156:                                              ; preds = %155, %102
  %157 = load i32, i32* %16, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %223

159:                                              ; preds = %156
  store i32 0, i32* %20, align 4
  store i64 0, i64* %21, align 8
  %160 = load i32, i32* %16, align 4
  %161 = load i32, i32* %17, align 4
  %162 = call i32 @kcdata_estimate_required_buffer_size(i32 %160, i32 %161)
  store i32 %162, i32* %20, align 4
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %164 = load i32, i32* %20, align 4
  %165 = call i32 @os_reason_alloc_buffer(%struct.TYPE_6__* %163, i32 %164)
  store i32 %165, i32* %15, align 4
  %166 = load i32, i32* %15, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %159
  %169 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0))
  br label %232

170:                                              ; preds = %159
  %171 = load i8*, i8** %18, align 8
  %172 = icmp ne i8* %171, null
  br i1 %172, label %173, label %195

173:                                              ; preds = %170
  %174 = load i64, i64* %19, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %195

176:                                              ; preds = %173
  %177 = load i64, i64* @KERN_SUCCESS, align 8
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 1
  %180 = load i32, i32* @EXIT_REASON_USER_DESC, align 4
  %181 = load i64, i64* %19, align 8
  %182 = trunc i64 %181 to i32
  %183 = call i64 @kcdata_get_memory_addr(i32* %179, i32 %180, i32 %182, i64* %21)
  %184 = icmp eq i64 %177, %183
  br i1 %184, label %185, label %192

185:                                              ; preds = %176
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 1
  %188 = load i64, i64* %21, align 8
  %189 = load i8*, i8** %18, align 8
  %190 = load i64, i64* %19, align 8
  %191 = call i32 @kcdata_memcpy(i32* %187, i64 %188, i8* %189, i64 %190)
  br label %194

192:                                              ; preds = %176
  %193 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.4, i64 0, i64 0))
  br label %232

194:                                              ; preds = %185
  br label %195

195:                                              ; preds = %194, %173, %170
  %196 = load i64, i64* %10, align 8
  %197 = load i64, i64* @USER_ADDR_NULL, align 8
  %198 = icmp ne i64 %196, %197
  br i1 %198, label %199, label %222

199:                                              ; preds = %195
  %200 = load i64, i64* @KERN_SUCCESS, align 8
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 1
  %203 = load i32, i32* @EXIT_REASON_USER_PAYLOAD, align 4
  %204 = load i32, i32* %11, align 4
  %205 = call i64 @kcdata_get_memory_addr(i32* %202, i32 %203, i32 %204, i64* %21)
  %206 = icmp eq i64 %200, %205
  br i1 %206, label %207, label %219

207:                                              ; preds = %199
  %208 = load i64, i64* %10, align 8
  %209 = load i64, i64* %21, align 8
  %210 = inttoptr i64 %209 to i8*
  %211 = load i32, i32* %11, align 4
  %212 = call i32 @copyin(i64 %208, i8* %210, i32 %211)
  store i32 %212, i32* %15, align 4
  %213 = load i32, i32* %15, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %207
  %216 = load i32, i32* %15, align 4
  %217 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.5, i64 0, i64 0), i32 %216)
  br label %232

218:                                              ; preds = %207
  br label %221

219:                                              ; preds = %199
  %220 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.6, i64 0, i64 0))
  br label %232

221:                                              ; preds = %218
  br label %222

222:                                              ; preds = %221, %195
  br label %223

223:                                              ; preds = %222, %156
  %224 = load i8*, i8** %18, align 8
  %225 = icmp ne i8* %224, null
  br i1 %225, label %226, label %230

226:                                              ; preds = %223
  %227 = load i8*, i8** %18, align 8
  %228 = load i32, i32* @EXIT_REASON_USER_DESC_MAX_LEN, align 4
  %229 = call i32 @kfree(i8* %227, i32 %228)
  store i8* null, i8** %18, align 8
  store i64 0, i64* %19, align 8
  br label %230

230:                                              ; preds = %226, %223
  %231 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  store %struct.TYPE_6__* %231, %struct.TYPE_6__** %7, align 8
  br label %248

232:                                              ; preds = %219, %215, %192, %168
  %233 = load i8*, i8** %18, align 8
  %234 = icmp ne i8* %233, null
  br i1 %234, label %235, label %239

235:                                              ; preds = %232
  %236 = load i8*, i8** %18, align 8
  %237 = load i32, i32* @EXIT_REASON_USER_DESC_MAX_LEN, align 4
  %238 = call i32 @kfree(i8* %236, i32 %237)
  store i8* null, i8** %18, align 8
  store i64 0, i64* %19, align 8
  br label %239

239:                                              ; preds = %235, %232
  %240 = load i32, i32* @OS_REASON_FLAG_FAILED_DATA_COPYIN, align 4
  %241 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = or i32 %243, %240
  store i32 %244, i32* %242, align 4
  %245 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %246 = call i32 @os_reason_alloc_buffer(%struct.TYPE_6__* %245, i32 0)
  %247 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  store %struct.TYPE_6__* %247, %struct.TYPE_6__** %7, align 8
  br label %248

248:                                              ; preds = %239, %230, %29
  %249 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  ret %struct.TYPE_6__* %249
}

declare dso_local %struct.TYPE_6__* @os_reason_create(i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @kalloc(i32) #1

declare dso_local i32 @copyinstr(i64, i8*, i32, i64*) #1

declare dso_local i32 @kfree(i8*, i32) #1

declare dso_local i32 @kcdata_estimate_required_buffer_size(i32, i32) #1

declare dso_local i32 @os_reason_alloc_buffer(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @kcdata_get_memory_addr(i32*, i32, i32, i64*) #1

declare dso_local i32 @kcdata_memcpy(i32*, i64, i8*, i64) #1

declare dso_local i32 @copyin(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
