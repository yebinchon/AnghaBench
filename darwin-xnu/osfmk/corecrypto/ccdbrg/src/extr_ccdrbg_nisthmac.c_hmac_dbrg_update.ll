; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/corecrypto/ccdbrg/src/extr_ccdrbg_nisthmac.c_hmac_dbrg_update.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/corecrypto/ccdbrg/src/extr_ccdrbg_nisthmac.c_hmac_dbrg_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccdrbg_state = type { i32 }
%struct.ccdrbg_nisthmac_state = type { i64, i8*, i8*, i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ccdigest_info* }
%struct.ccdigest_info = type { i32, i32 }

@CCDRBG_STATUS_ERROR = common dso_local global i32 0, align 4
@ctx = common dso_local global i32 0, align 4
@CCDRBG_STATUS_ABORT = common dso_local global i32 0, align 4
@CCDRBG_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccdrbg_state*, i64, i8*, i64, i8*, i64, i8*)* @hmac_dbrg_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hmac_dbrg_update(%struct.ccdrbg_state* %0, i64 %1, i8* %2, i64 %3, i8* %4, i64 %5, i8* %6) #0 {
  %8 = alloca %struct.ccdrbg_state*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.ccdrbg_nisthmac_state*, align 8
  %17 = alloca %struct.ccdigest_info*, align 8
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  store %struct.ccdrbg_state* %0, %struct.ccdrbg_state** %8, align 8
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  store i8* %6, i8** %14, align 8
  %20 = load i32, i32* @CCDRBG_STATUS_ERROR, align 4
  store i32 %20, i32* %15, align 4
  %21 = load %struct.ccdrbg_state*, %struct.ccdrbg_state** %8, align 8
  %22 = bitcast %struct.ccdrbg_state* %21 to %struct.ccdrbg_nisthmac_state*
  store %struct.ccdrbg_nisthmac_state* %22, %struct.ccdrbg_nisthmac_state** %16, align 8
  %23 = load %struct.ccdrbg_nisthmac_state*, %struct.ccdrbg_nisthmac_state** %16, align 8
  %24 = getelementptr inbounds %struct.ccdrbg_nisthmac_state, %struct.ccdrbg_nisthmac_state* %23, i32 0, i32 6
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.ccdigest_info*, %struct.ccdigest_info** %26, align 8
  store %struct.ccdigest_info* %27, %struct.ccdigest_info** %17, align 8
  store i8 0, i8* %18, align 1
  store i8 1, i8* %19, align 1
  %28 = load %struct.ccdigest_info*, %struct.ccdigest_info** %17, align 8
  %29 = getelementptr inbounds %struct.ccdigest_info, %struct.ccdigest_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ccdigest_info*, %struct.ccdigest_info** %17, align 8
  %32 = getelementptr inbounds %struct.ccdigest_info, %struct.ccdigest_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @ctx, align 4
  %35 = call i32 @cchmac_ctx_decl(i32 %30, i32 %33, i32 %34)
  %36 = load %struct.ccdigest_info*, %struct.ccdigest_info** %17, align 8
  %37 = load i32, i32* @ctx, align 4
  %38 = load %struct.ccdrbg_nisthmac_state*, %struct.ccdrbg_nisthmac_state** %16, align 8
  %39 = getelementptr inbounds %struct.ccdrbg_nisthmac_state, %struct.ccdrbg_nisthmac_state* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ccdrbg_nisthmac_state*, %struct.ccdrbg_nisthmac_state** %16, align 8
  %42 = getelementptr inbounds %struct.ccdrbg_nisthmac_state, %struct.ccdrbg_nisthmac_state* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @cchmac_init(%struct.ccdigest_info* %36, i32 %37, i32 %40, i32 %43)
  %45 = load %struct.ccdigest_info*, %struct.ccdigest_info** %17, align 8
  %46 = load i32, i32* @ctx, align 4
  %47 = load %struct.ccdrbg_nisthmac_state*, %struct.ccdrbg_nisthmac_state** %16, align 8
  %48 = getelementptr inbounds %struct.ccdrbg_nisthmac_state, %struct.ccdrbg_nisthmac_state* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.ccdrbg_nisthmac_state*, %struct.ccdrbg_nisthmac_state** %16, align 8
  %51 = getelementptr inbounds %struct.ccdrbg_nisthmac_state, %struct.ccdrbg_nisthmac_state* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @cchmac_update(%struct.ccdigest_info* %45, i32 %46, i64 %49, i8* %52)
  %54 = load %struct.ccdigest_info*, %struct.ccdigest_info** %17, align 8
  %55 = load i32, i32* @ctx, align 4
  %56 = call i32 @cchmac_update(%struct.ccdigest_info* %54, i32 %55, i64 1, i8* %18)
  %57 = load i8*, i8** %10, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %68

59:                                               ; preds = %7
  %60 = load i64, i64* %9, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load %struct.ccdigest_info*, %struct.ccdigest_info** %17, align 8
  %64 = load i32, i32* @ctx, align 4
  %65 = load i64, i64* %9, align 8
  %66 = load i8*, i8** %10, align 8
  %67 = call i32 @cchmac_update(%struct.ccdigest_info* %63, i32 %64, i64 %65, i8* %66)
  br label %68

68:                                               ; preds = %62, %59, %7
  %69 = load i8*, i8** %12, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %80

71:                                               ; preds = %68
  %72 = load i64, i64* %11, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %71
  %75 = load %struct.ccdigest_info*, %struct.ccdigest_info** %17, align 8
  %76 = load i32, i32* @ctx, align 4
  %77 = load i64, i64* %11, align 8
  %78 = load i8*, i8** %12, align 8
  %79 = call i32 @cchmac_update(%struct.ccdigest_info* %75, i32 %76, i64 %77, i8* %78)
  br label %80

80:                                               ; preds = %74, %71, %68
  %81 = load i8*, i8** %14, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %92

83:                                               ; preds = %80
  %84 = load i64, i64* %13, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %83
  %87 = load %struct.ccdigest_info*, %struct.ccdigest_info** %17, align 8
  %88 = load i32, i32* @ctx, align 4
  %89 = load i64, i64* %13, align 8
  %90 = load i8*, i8** %14, align 8
  %91 = call i32 @cchmac_update(%struct.ccdigest_info* %87, i32 %88, i64 %89, i8* %90)
  br label %92

92:                                               ; preds = %86, %83, %80
  %93 = load %struct.ccdigest_info*, %struct.ccdigest_info** %17, align 8
  %94 = load i32, i32* @ctx, align 4
  %95 = load %struct.ccdrbg_nisthmac_state*, %struct.ccdrbg_nisthmac_state** %16, align 8
  %96 = getelementptr inbounds %struct.ccdrbg_nisthmac_state, %struct.ccdrbg_nisthmac_state* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @cchmac_final(%struct.ccdigest_info* %93, i32 %94, i32 %97)
  %99 = load i8*, i8** %10, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %92
  %102 = load i64, i64* %9, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %116, label %104

104:                                              ; preds = %101, %92
  %105 = load i8*, i8** %12, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i64, i64* %11, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %116, label %110

110:                                              ; preds = %107, %104
  %111 = load i8*, i8** %14, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %197

113:                                              ; preds = %110
  %114 = load i64, i64* %13, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %197

116:                                              ; preds = %113, %107, %101
  %117 = load %struct.ccdigest_info*, %struct.ccdigest_info** %17, align 8
  %118 = load %struct.ccdrbg_nisthmac_state*, %struct.ccdrbg_nisthmac_state** %16, align 8
  %119 = getelementptr inbounds %struct.ccdrbg_nisthmac_state, %struct.ccdrbg_nisthmac_state* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.ccdrbg_nisthmac_state*, %struct.ccdrbg_nisthmac_state** %16, align 8
  %122 = getelementptr inbounds %struct.ccdrbg_nisthmac_state, %struct.ccdrbg_nisthmac_state* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.ccdrbg_nisthmac_state*, %struct.ccdrbg_nisthmac_state** %16, align 8
  %125 = getelementptr inbounds %struct.ccdrbg_nisthmac_state, %struct.ccdrbg_nisthmac_state* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.ccdrbg_nisthmac_state*, %struct.ccdrbg_nisthmac_state** %16, align 8
  %128 = getelementptr inbounds %struct.ccdrbg_nisthmac_state, %struct.ccdrbg_nisthmac_state* %127, i32 0, i32 1
  %129 = load i8*, i8** %128, align 8
  %130 = load %struct.ccdrbg_nisthmac_state*, %struct.ccdrbg_nisthmac_state** %16, align 8
  %131 = getelementptr inbounds %struct.ccdrbg_nisthmac_state, %struct.ccdrbg_nisthmac_state* %130, i32 0, i32 1
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @cchmac(%struct.ccdigest_info* %117, i32 %120, i32 %123, i64 %126, i8* %129, i8* %132)
  %134 = load %struct.ccdigest_info*, %struct.ccdigest_info** %17, align 8
  %135 = load i32, i32* @ctx, align 4
  %136 = load %struct.ccdrbg_nisthmac_state*, %struct.ccdrbg_nisthmac_state** %16, align 8
  %137 = getelementptr inbounds %struct.ccdrbg_nisthmac_state, %struct.ccdrbg_nisthmac_state* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.ccdrbg_nisthmac_state*, %struct.ccdrbg_nisthmac_state** %16, align 8
  %140 = getelementptr inbounds %struct.ccdrbg_nisthmac_state, %struct.ccdrbg_nisthmac_state* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @cchmac_init(%struct.ccdigest_info* %134, i32 %135, i32 %138, i32 %141)
  %143 = load %struct.ccdigest_info*, %struct.ccdigest_info** %17, align 8
  %144 = load i32, i32* @ctx, align 4
  %145 = load %struct.ccdrbg_nisthmac_state*, %struct.ccdrbg_nisthmac_state** %16, align 8
  %146 = getelementptr inbounds %struct.ccdrbg_nisthmac_state, %struct.ccdrbg_nisthmac_state* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.ccdrbg_nisthmac_state*, %struct.ccdrbg_nisthmac_state** %16, align 8
  %149 = getelementptr inbounds %struct.ccdrbg_nisthmac_state, %struct.ccdrbg_nisthmac_state* %148, i32 0, i32 1
  %150 = load i8*, i8** %149, align 8
  %151 = call i32 @cchmac_update(%struct.ccdigest_info* %143, i32 %144, i64 %147, i8* %150)
  %152 = load %struct.ccdigest_info*, %struct.ccdigest_info** %17, align 8
  %153 = load i32, i32* @ctx, align 4
  %154 = call i32 @cchmac_update(%struct.ccdigest_info* %152, i32 %153, i64 1, i8* %19)
  %155 = load i8*, i8** %10, align 8
  %156 = icmp ne i8* %155, null
  br i1 %156, label %157, label %166

157:                                              ; preds = %116
  %158 = load i64, i64* %9, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %157
  %161 = load %struct.ccdigest_info*, %struct.ccdigest_info** %17, align 8
  %162 = load i32, i32* @ctx, align 4
  %163 = load i64, i64* %9, align 8
  %164 = load i8*, i8** %10, align 8
  %165 = call i32 @cchmac_update(%struct.ccdigest_info* %161, i32 %162, i64 %163, i8* %164)
  br label %166

166:                                              ; preds = %160, %157, %116
  %167 = load i8*, i8** %12, align 8
  %168 = icmp ne i8* %167, null
  br i1 %168, label %169, label %178

169:                                              ; preds = %166
  %170 = load i64, i64* %11, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %169
  %173 = load %struct.ccdigest_info*, %struct.ccdigest_info** %17, align 8
  %174 = load i32, i32* @ctx, align 4
  %175 = load i64, i64* %11, align 8
  %176 = load i8*, i8** %12, align 8
  %177 = call i32 @cchmac_update(%struct.ccdigest_info* %173, i32 %174, i64 %175, i8* %176)
  br label %178

178:                                              ; preds = %172, %169, %166
  %179 = load i8*, i8** %14, align 8
  %180 = icmp ne i8* %179, null
  br i1 %180, label %181, label %190

181:                                              ; preds = %178
  %182 = load i64, i64* %13, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %181
  %185 = load %struct.ccdigest_info*, %struct.ccdigest_info** %17, align 8
  %186 = load i32, i32* @ctx, align 4
  %187 = load i64, i64* %13, align 8
  %188 = load i8*, i8** %14, align 8
  %189 = call i32 @cchmac_update(%struct.ccdigest_info* %185, i32 %186, i64 %187, i8* %188)
  br label %190

190:                                              ; preds = %184, %181, %178
  %191 = load %struct.ccdigest_info*, %struct.ccdigest_info** %17, align 8
  %192 = load i32, i32* @ctx, align 4
  %193 = load %struct.ccdrbg_nisthmac_state*, %struct.ccdrbg_nisthmac_state** %16, align 8
  %194 = getelementptr inbounds %struct.ccdrbg_nisthmac_state, %struct.ccdrbg_nisthmac_state* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @cchmac_final(%struct.ccdigest_info* %191, i32 %192, i32 %195)
  br label %197

197:                                              ; preds = %190, %113, %110
  %198 = load %struct.ccdrbg_nisthmac_state*, %struct.ccdrbg_nisthmac_state** %16, align 8
  %199 = getelementptr inbounds %struct.ccdrbg_nisthmac_state, %struct.ccdrbg_nisthmac_state* %198, i32 0, i32 5
  store i64 0, i64* %199, align 8
  %200 = load %struct.ccdigest_info*, %struct.ccdigest_info** %17, align 8
  %201 = load %struct.ccdrbg_nisthmac_state*, %struct.ccdrbg_nisthmac_state** %16, align 8
  %202 = getelementptr inbounds %struct.ccdrbg_nisthmac_state, %struct.ccdrbg_nisthmac_state* %201, i32 0, i32 4
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.ccdrbg_nisthmac_state*, %struct.ccdrbg_nisthmac_state** %16, align 8
  %205 = getelementptr inbounds %struct.ccdrbg_nisthmac_state, %struct.ccdrbg_nisthmac_state* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.ccdrbg_nisthmac_state*, %struct.ccdrbg_nisthmac_state** %16, align 8
  %208 = getelementptr inbounds %struct.ccdrbg_nisthmac_state, %struct.ccdrbg_nisthmac_state* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.ccdrbg_nisthmac_state*, %struct.ccdrbg_nisthmac_state** %16, align 8
  %211 = getelementptr inbounds %struct.ccdrbg_nisthmac_state, %struct.ccdrbg_nisthmac_state* %210, i32 0, i32 1
  %212 = load i8*, i8** %211, align 8
  %213 = load %struct.ccdrbg_nisthmac_state*, %struct.ccdrbg_nisthmac_state** %16, align 8
  %214 = getelementptr inbounds %struct.ccdrbg_nisthmac_state, %struct.ccdrbg_nisthmac_state* %213, i32 0, i32 1
  %215 = load i8*, i8** %214, align 8
  %216 = call i32 @cchmac(%struct.ccdigest_info* %200, i32 %203, i32 %206, i64 %209, i8* %212, i8* %215)
  %217 = load %struct.ccdigest_info*, %struct.ccdigest_info** %17, align 8
  %218 = load %struct.ccdrbg_nisthmac_state*, %struct.ccdrbg_nisthmac_state** %16, align 8
  %219 = getelementptr inbounds %struct.ccdrbg_nisthmac_state, %struct.ccdrbg_nisthmac_state* %218, i32 0, i32 4
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.ccdrbg_nisthmac_state*, %struct.ccdrbg_nisthmac_state** %16, align 8
  %222 = getelementptr inbounds %struct.ccdrbg_nisthmac_state, %struct.ccdrbg_nisthmac_state* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.ccdrbg_nisthmac_state*, %struct.ccdrbg_nisthmac_state** %16, align 8
  %225 = getelementptr inbounds %struct.ccdrbg_nisthmac_state, %struct.ccdrbg_nisthmac_state* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.ccdrbg_nisthmac_state*, %struct.ccdrbg_nisthmac_state** %16, align 8
  %228 = getelementptr inbounds %struct.ccdrbg_nisthmac_state, %struct.ccdrbg_nisthmac_state* %227, i32 0, i32 1
  %229 = load i8*, i8** %228, align 8
  %230 = load %struct.ccdrbg_nisthmac_state*, %struct.ccdrbg_nisthmac_state** %16, align 8
  %231 = getelementptr inbounds %struct.ccdrbg_nisthmac_state, %struct.ccdrbg_nisthmac_state* %230, i32 0, i32 2
  %232 = load i8*, i8** %231, align 8
  %233 = call i32 @cchmac(%struct.ccdigest_info* %217, i32 %220, i32 %223, i64 %226, i8* %229, i8* %232)
  %234 = load %struct.ccdrbg_nisthmac_state*, %struct.ccdrbg_nisthmac_state** %16, align 8
  %235 = getelementptr inbounds %struct.ccdrbg_nisthmac_state, %struct.ccdrbg_nisthmac_state* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = load %struct.ccdrbg_nisthmac_state*, %struct.ccdrbg_nisthmac_state** %16, align 8
  %238 = getelementptr inbounds %struct.ccdrbg_nisthmac_state, %struct.ccdrbg_nisthmac_state* %237, i32 0, i32 1
  %239 = load i8*, i8** %238, align 8
  %240 = load %struct.ccdrbg_nisthmac_state*, %struct.ccdrbg_nisthmac_state** %16, align 8
  %241 = getelementptr inbounds %struct.ccdrbg_nisthmac_state, %struct.ccdrbg_nisthmac_state* %240, i32 0, i32 2
  %242 = load i8*, i8** %241, align 8
  %243 = call i64 @cc_cmp_safe(i64 %236, i8* %239, i8* %242)
  %244 = icmp eq i64 0, %243
  br i1 %244, label %245, label %250

245:                                              ; preds = %197
  %246 = load %struct.ccdrbg_state*, %struct.ccdrbg_state** %8, align 8
  %247 = call i32 @done(%struct.ccdrbg_state* %246)
  %248 = load i32, i32* @CCDRBG_STATUS_ABORT, align 4
  store i32 %248, i32* %15, align 4
  %249 = call i32 @cc_try_abort(i32* null)
  br label %252

250:                                              ; preds = %197
  %251 = load i32, i32* @CCDRBG_STATUS_OK, align 4
  store i32 %251, i32* %15, align 4
  br label %252

252:                                              ; preds = %250, %245
  %253 = load i32, i32* %15, align 4
  ret i32 %253
}

declare dso_local i32 @cchmac_ctx_decl(i32, i32, i32) #1

declare dso_local i32 @cchmac_init(%struct.ccdigest_info*, i32, i32, i32) #1

declare dso_local i32 @cchmac_update(%struct.ccdigest_info*, i32, i64, i8*) #1

declare dso_local i32 @cchmac_final(%struct.ccdigest_info*, i32, i32) #1

declare dso_local i32 @cchmac(%struct.ccdigest_info*, i32, i32, i64, i8*, i8*) #1

declare dso_local i64 @cc_cmp_safe(i64, i8*, i8*) #1

declare dso_local i32 @done(%struct.ccdrbg_state*) #1

declare dso_local i32 @cc_try_abort(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
