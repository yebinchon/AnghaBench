; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/classq/extr_classq_subr.c_ifclassq_tbr_set.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/classq/extr_classq_subr.c_ifclassq_tbr_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifclassq = type { i32, %struct.tb_regulator, %struct.ifnet* }
%struct.tb_regulator = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ifnet = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.tb_profile = type { i32, i32, i32 }
%struct.timespec = type { i32, i32 }

@machclk_freq = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@pktsched_verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"%s: TBR disabled\0A\00", align 1
@IFCQF_TBR = common dso_local global i32 0, align 4
@CLASSQ_EV_LINK_BANDWIDTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"%s: TBR %s (rate %llu bps depth %u)\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"reconfigured\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@IF_MINMTU = common dso_local global i32 0, align 4
@NSEC_PER_MSEC = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [51 x i8] c"%s: TBR calculated tokens %lld filluptime %llu ns\0A\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"%s: TBR calculated tokens %lld infinite filluptime\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"%s: TBR suspended (link is down)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ifclassq_tbr_set(%struct.ifclassq* %0, %struct.tb_profile* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifclassq*, align 8
  %6 = alloca %struct.tb_profile*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.tb_regulator*, align 8
  %9 = alloca %struct.ifnet*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.timespec, align 4
  store %struct.ifclassq* %0, %struct.ifclassq** %5, align 8
  store %struct.tb_profile* %1, %struct.tb_profile** %6, align 8
  store i64 %2, i64* %7, align 8
  %18 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %19 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %18, i32 0, i32 2
  %20 = load %struct.ifnet*, %struct.ifnet** %19, align 8
  store %struct.ifnet* %20, %struct.ifnet** %9, align 8
  %21 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %22 = call i32 @IFCQ_LOCK_ASSERT_HELD(%struct.ifclassq* %21)
  %23 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %24 = call i32 @IFCQ_IS_READY(%struct.ifclassq* %23)
  %25 = call i32 @VERIFY(i32 %24)
  %26 = load i32, i32* @machclk_freq, align 4
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @VERIFY(i32 %28)
  %30 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %31 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %30, i32 0, i32 1
  store %struct.tb_regulator* %31, %struct.tb_regulator** %8, align 8
  %32 = load %struct.tb_regulator*, %struct.tb_regulator** %8, align 8
  %33 = getelementptr inbounds %struct.tb_regulator, %struct.tb_regulator* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %11, align 4
  %35 = load %struct.tb_profile*, %struct.tb_profile** %6, align 8
  %36 = getelementptr inbounds %struct.tb_profile, %struct.tb_profile* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %10, align 4
  %38 = load %struct.tb_profile*, %struct.tb_profile** %6, align 8
  %39 = getelementptr inbounds %struct.tb_profile, %struct.tb_profile* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %64

42:                                               ; preds = %3
  %43 = load %struct.tb_profile*, %struct.tb_profile** %6, align 8
  %44 = getelementptr inbounds %struct.tb_profile, %struct.tb_profile* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp sgt i32 %45, 100
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @EINVAL, align 4
  store i32 %48, i32* %4, align 4
  br label %313

49:                                               ; preds = %42
  %50 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %51 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %12, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* @ENODEV, align 4
  store i32 %56, i32* %4, align 4
  br label %313

57:                                               ; preds = %49
  %58 = load i32, i32* %12, align 4
  %59 = load %struct.tb_profile*, %struct.tb_profile** %6, align 8
  %60 = getelementptr inbounds %struct.tb_profile, %struct.tb_profile* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = mul nsw i32 %58, %61
  %63 = sdiv i32 %62, 100
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %57, %3
  %65 = load i32, i32* %10, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %98

67:                                               ; preds = %64
  %68 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %69 = call i32 @IFCQ_TBR_IS_ENABLED(%struct.ifclassq* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* @ENOENT, align 4
  store i32 %72, i32* %4, align 4
  br label %313

73:                                               ; preds = %67
  %74 = load i64, i64* @pktsched_verbose, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %78 = call i8* @if_name(%struct.ifnet* %77)
  %79 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %78)
  br label %80

80:                                               ; preds = %76, %73
  %81 = load i32, i32* @IFCQF_TBR, align 4
  %82 = xor i32 %81, -1
  %83 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %84 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = and i32 %85, %82
  store i32 %86, i32* %84, align 8
  %87 = load %struct.tb_regulator*, %struct.tb_regulator** %8, align 8
  %88 = call i32 @bzero(%struct.tb_regulator* %87, i32 28)
  %89 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %90 = call i32 @ifnet_set_start_cycle(%struct.ifnet* %89, %struct.timespec* null)
  %91 = load i64, i64* %7, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %80
  %94 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %95 = load i32, i32* @CLASSQ_EV_LINK_BANDWIDTH, align 4
  %96 = call i32 @ifclassq_update(%struct.ifclassq* %94, i32 %95)
  br label %97

97:                                               ; preds = %93, %80
  store i32 0, i32* %4, align 4
  br label %313

98:                                               ; preds = %64
  %99 = load i64, i64* @pktsched_verbose, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %117

101:                                              ; preds = %98
  %102 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %103 = call i8* @if_name(%struct.ifnet* %102)
  %104 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %105 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @IFCQF_TBR, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)
  %112 = load i32, i32* %10, align 4
  %113 = load %struct.tb_profile*, %struct.tb_profile** %6, align 8
  %114 = getelementptr inbounds %struct.tb_profile, %struct.tb_profile* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %103, i8* %111, i32 %112, i32 %115)
  br label %117

117:                                              ; preds = %101, %98
  %118 = load %struct.tb_regulator*, %struct.tb_regulator** %8, align 8
  %119 = call i32 @bzero(%struct.tb_regulator* %118, i32 28)
  %120 = load i32, i32* %10, align 4
  %121 = load %struct.tb_regulator*, %struct.tb_regulator** %8, align 8
  %122 = getelementptr inbounds %struct.tb_regulator, %struct.tb_regulator* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 4
  %123 = load %struct.tb_profile*, %struct.tb_profile** %6, align 8
  %124 = getelementptr inbounds %struct.tb_profile, %struct.tb_profile* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.tb_regulator*, %struct.tb_regulator** %8, align 8
  %127 = getelementptr inbounds %struct.tb_regulator, %struct.tb_regulator* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* @IFCQF_TBR, align 4
  %129 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %130 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = or i32 %131, %128
  store i32 %132, i32* %130, align 8
  %133 = load i32, i32* %10, align 4
  %134 = sdiv i32 %133, 8
  %135 = call i32 @TBR_SCALE(i32 %134)
  %136 = load i32, i32* @machclk_freq, align 4
  %137 = sdiv i32 %135, %136
  %138 = load %struct.tb_regulator*, %struct.tb_regulator** %8, align 8
  %139 = getelementptr inbounds %struct.tb_regulator, %struct.tb_regulator* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 4
  %140 = load %struct.tb_regulator*, %struct.tb_regulator** %8, align 8
  %141 = getelementptr inbounds %struct.tb_regulator, %struct.tb_regulator* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = icmp sgt i32 %142, 0
  br i1 %143, label %144, label %214

144:                                              ; preds = %117
  %145 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %146 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  store i32 %147, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %148 = load i32, i32* %13, align 4
  %149 = load i32, i32* @IF_MINMTU, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %144
  %152 = load i32, i32* @IF_MINMTU, align 4
  store i32 %152, i32* %13, align 4
  br label %153

153:                                              ; preds = %151, %144
  %154 = load i32, i32* @NSEC_PER_MSEC, align 4
  %155 = mul nsw i32 10, %154
  %156 = call i32 @pktsched_nsecs_to_abstime(i32 %155)
  store i32 %156, i32* %14, align 4
  store i32 1, i32* %16, align 4
  br label %157

157:                                              ; preds = %171, %153
  %158 = load i32, i32* %16, align 4
  %159 = load i32, i32* %13, align 4
  %160 = mul nsw i32 %158, %159
  %161 = call i32 @TBR_SCALE(i32 %160)
  store i32 %161, i32* %15, align 4
  %162 = load i32, i32* %15, align 4
  %163 = load %struct.tb_regulator*, %struct.tb_regulator** %8, align 8
  %164 = getelementptr inbounds %struct.tb_regulator, %struct.tb_regulator* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = sdiv i32 %162, %165
  %167 = load i32, i32* %14, align 4
  %168 = icmp sgt i32 %166, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %157
  br label %174

170:                                              ; preds = %157
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %16, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %16, align 4
  br label %157

174:                                              ; preds = %169
  %175 = load i32, i32* %15, align 4
  %176 = icmp sgt i32 %175, 0
  %177 = zext i1 %176 to i32
  %178 = call i32 @VERIFY(i32 %177)
  %179 = load %struct.tb_profile*, %struct.tb_profile** %6, align 8
  %180 = getelementptr inbounds %struct.tb_profile, %struct.tb_profile* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @TBR_SCALE(i32 %181)
  %183 = load %struct.tb_regulator*, %struct.tb_regulator** %8, align 8
  %184 = getelementptr inbounds %struct.tb_regulator, %struct.tb_regulator* %183, i32 0, i32 3
  store i32 %182, i32* %184, align 4
  %185 = load %struct.tb_regulator*, %struct.tb_regulator** %8, align 8
  %186 = getelementptr inbounds %struct.tb_regulator, %struct.tb_regulator* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %203

189:                                              ; preds = %174
  %190 = load i32, i32* %15, align 4
  %191 = load %struct.tb_regulator*, %struct.tb_regulator** %8, align 8
  %192 = getelementptr inbounds %struct.tb_regulator, %struct.tb_regulator* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = sdiv i32 %190, %193
  %195 = load %struct.tb_regulator*, %struct.tb_regulator** %8, align 8
  %196 = getelementptr inbounds %struct.tb_regulator, %struct.tb_regulator* %195, i32 0, i32 4
  store i32 %194, i32* %196, align 4
  %197 = load i32, i32* %15, align 4
  %198 = load i32, i32* %15, align 4
  %199 = ashr i32 %198, 3
  %200 = add nsw i32 %197, %199
  %201 = load %struct.tb_regulator*, %struct.tb_regulator** %8, align 8
  %202 = getelementptr inbounds %struct.tb_regulator, %struct.tb_regulator* %201, i32 0, i32 3
  store i32 %200, i32* %202, align 4
  br label %213

203:                                              ; preds = %174
  %204 = load %struct.tb_regulator*, %struct.tb_regulator** %8, align 8
  %205 = getelementptr inbounds %struct.tb_regulator, %struct.tb_regulator* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.tb_regulator*, %struct.tb_regulator** %8, align 8
  %208 = getelementptr inbounds %struct.tb_regulator, %struct.tb_regulator* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 4
  %210 = sdiv i32 %206, %209
  %211 = load %struct.tb_regulator*, %struct.tb_regulator** %8, align 8
  %212 = getelementptr inbounds %struct.tb_regulator, %struct.tb_regulator* %211, i32 0, i32 4
  store i32 %210, i32* %212, align 4
  br label %213

213:                                              ; preds = %203, %189
  br label %223

214:                                              ; preds = %117
  %215 = load %struct.tb_profile*, %struct.tb_profile** %6, align 8
  %216 = getelementptr inbounds %struct.tb_profile, %struct.tb_profile* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @TBR_SCALE(i32 %217)
  %219 = load %struct.tb_regulator*, %struct.tb_regulator** %8, align 8
  %220 = getelementptr inbounds %struct.tb_regulator, %struct.tb_regulator* %219, i32 0, i32 3
  store i32 %218, i32* %220, align 4
  %221 = load %struct.tb_regulator*, %struct.tb_regulator** %8, align 8
  %222 = getelementptr inbounds %struct.tb_regulator, %struct.tb_regulator* %221, i32 0, i32 4
  store i32 -1, i32* %222, align 4
  br label %223

223:                                              ; preds = %214, %213
  %224 = load %struct.tb_regulator*, %struct.tb_regulator** %8, align 8
  %225 = getelementptr inbounds %struct.tb_regulator, %struct.tb_regulator* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.tb_regulator*, %struct.tb_regulator** %8, align 8
  %228 = getelementptr inbounds %struct.tb_regulator, %struct.tb_regulator* %227, i32 0, i32 5
  store i32 %226, i32* %228, align 4
  %229 = call i32 (...) @read_machclk()
  %230 = load %struct.tb_regulator*, %struct.tb_regulator** %8, align 8
  %231 = getelementptr inbounds %struct.tb_regulator, %struct.tb_regulator* %230, i32 0, i32 6
  store i32 %229, i32* %231, align 4
  %232 = load %struct.tb_regulator*, %struct.tb_regulator** %8, align 8
  %233 = getelementptr inbounds %struct.tb_regulator, %struct.tb_regulator* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 4
  %235 = icmp sgt i32 %234, 0
  br i1 %235, label %236, label %267

236:                                              ; preds = %223
  %237 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %238 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* @IFF_UP, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %267

243:                                              ; preds = %236
  %244 = getelementptr inbounds %struct.timespec, %struct.timespec* %17, i32 0, i32 0
  store i32 0, i32* %244, align 4
  %245 = getelementptr inbounds %struct.timespec, %struct.timespec* %17, i32 0, i32 1
  %246 = load %struct.tb_regulator*, %struct.tb_regulator** %8, align 8
  %247 = getelementptr inbounds %struct.tb_regulator, %struct.tb_regulator* %246, i32 0, i32 4
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @pktsched_abs_to_nsecs(i32 %248)
  store i32 %249, i32* %245, align 4
  %250 = load i64, i64* @pktsched_verbose, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %264

252:                                              ; preds = %243
  %253 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %254 = call i8* @if_name(%struct.ifnet* %253)
  %255 = load %struct.tb_regulator*, %struct.tb_regulator** %8, align 8
  %256 = getelementptr inbounds %struct.tb_regulator, %struct.tb_regulator* %255, i32 0, i32 5
  %257 = load i32, i32* %256, align 4
  %258 = call i32 @TBR_UNSCALE(i32 %257)
  %259 = load %struct.tb_regulator*, %struct.tb_regulator** %8, align 8
  %260 = getelementptr inbounds %struct.tb_regulator, %struct.tb_regulator* %259, i32 0, i32 4
  %261 = load i32, i32* %260, align 4
  %262 = call i32 @pktsched_abs_to_nsecs(i32 %261)
  %263 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i8* %254, i32 %258, i32 %262)
  br label %264

264:                                              ; preds = %252, %243
  %265 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %266 = call i32 @ifnet_set_start_cycle(%struct.ifnet* %265, %struct.timespec* %17)
  br label %299

267:                                              ; preds = %236, %223
  %268 = load i64, i64* @pktsched_verbose, align 8
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %296

270:                                              ; preds = %267
  %271 = load %struct.tb_regulator*, %struct.tb_regulator** %8, align 8
  %272 = getelementptr inbounds %struct.tb_regulator, %struct.tb_regulator* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 4
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %275, label %283

275:                                              ; preds = %270
  %276 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %277 = call i8* @if_name(%struct.ifnet* %276)
  %278 = load %struct.tb_regulator*, %struct.tb_regulator** %8, align 8
  %279 = getelementptr inbounds %struct.tb_regulator, %struct.tb_regulator* %278, i32 0, i32 5
  %280 = load i32, i32* %279, align 4
  %281 = call i32 @TBR_UNSCALE(i32 %280)
  %282 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i8* %277, i32 %281)
  br label %295

283:                                              ; preds = %270
  %284 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %285 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = load i32, i32* @IFF_UP, align 4
  %288 = and i32 %286, %287
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %294, label %290

290:                                              ; preds = %283
  %291 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %292 = call i8* @if_name(%struct.ifnet* %291)
  %293 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i8* %292)
  br label %294

294:                                              ; preds = %290, %283
  br label %295

295:                                              ; preds = %294, %275
  br label %296

296:                                              ; preds = %295, %267
  %297 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %298 = call i32 @ifnet_set_start_cycle(%struct.ifnet* %297, %struct.timespec* null)
  br label %299

299:                                              ; preds = %296, %264
  %300 = load i64, i64* %7, align 8
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %312

302:                                              ; preds = %299
  %303 = load %struct.tb_regulator*, %struct.tb_regulator** %8, align 8
  %304 = getelementptr inbounds %struct.tb_regulator, %struct.tb_regulator* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 4
  %306 = load i32, i32* %11, align 4
  %307 = icmp ne i32 %305, %306
  br i1 %307, label %308, label %312

308:                                              ; preds = %302
  %309 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %310 = load i32, i32* @CLASSQ_EV_LINK_BANDWIDTH, align 4
  %311 = call i32 @ifclassq_update(%struct.ifclassq* %309, i32 %310)
  br label %312

312:                                              ; preds = %308, %302, %299
  store i32 0, i32* %4, align 4
  br label %313

313:                                              ; preds = %312, %97, %71, %55, %47
  %314 = load i32, i32* %4, align 4
  ret i32 %314
}

declare dso_local i32 @IFCQ_LOCK_ASSERT_HELD(%struct.ifclassq*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @IFCQ_IS_READY(%struct.ifclassq*) #1

declare dso_local i32 @IFCQ_TBR_IS_ENABLED(%struct.ifclassq*) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i8* @if_name(%struct.ifnet*) #1

declare dso_local i32 @bzero(%struct.tb_regulator*, i32) #1

declare dso_local i32 @ifnet_set_start_cycle(%struct.ifnet*, %struct.timespec*) #1

declare dso_local i32 @ifclassq_update(%struct.ifclassq*, i32) #1

declare dso_local i32 @TBR_SCALE(i32) #1

declare dso_local i32 @pktsched_nsecs_to_abstime(i32) #1

declare dso_local i32 @read_machclk(...) #1

declare dso_local i32 @pktsched_abs_to_nsecs(i32) #1

declare dso_local i32 @TBR_UNSCALE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
