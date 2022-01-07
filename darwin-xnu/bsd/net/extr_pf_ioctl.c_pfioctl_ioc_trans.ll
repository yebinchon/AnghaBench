; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_ioctl.c_pfioctl_ioc_trans.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_ioctl.c_pfioctl_ioc_trans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfioc_trans_32 = type { i32, i32, i32 }
%struct.pfioc_trans_64 = type { i32, i32, i32 }
%struct.proc = type { i32 }
%struct.pfioc_trans_e = type { i8*, i64, i32, i32 }
%struct.pfr_table = type { i8*, i64, i32, i32 }
%struct.pf_ruleset = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@PF_RULESET_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.pfioc_trans_32*, %struct.pfioc_trans_64*, %struct.proc*)* @pfioctl_ioc_trans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfioctl_ioc_trans(i32 %0, %struct.pfioc_trans_32* %1, %struct.pfioc_trans_64* %2, %struct.proc* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pfioc_trans_32*, align 8
  %7 = alloca %struct.pfioc_trans_64*, align 8
  %8 = alloca %struct.proc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.pfioc_trans_e*, align 8
  %15 = alloca %struct.pfr_table*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.pfioc_trans_e*, align 8
  %18 = alloca %struct.pfr_table*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.pfioc_trans_e*, align 8
  %21 = alloca %struct.pfr_table*, align 8
  %22 = alloca %struct.pf_ruleset*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.pfioc_trans_32* %1, %struct.pfioc_trans_32** %6, align 8
  store %struct.pfioc_trans_64* %2, %struct.pfioc_trans_64** %7, align 8
  store %struct.proc* %3, %struct.proc** %8, align 8
  %25 = load %struct.proc*, %struct.proc** %8, align 8
  %26 = call i32 @proc_is64bit(%struct.proc* %25)
  store i32 %26, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %4
  %30 = load %struct.pfioc_trans_64*, %struct.pfioc_trans_64** %7, align 8
  %31 = getelementptr inbounds %struct.pfioc_trans_64, %struct.pfioc_trans_64* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  br label %37

33:                                               ; preds = %4
  %34 = load %struct.pfioc_trans_32*, %struct.pfioc_trans_32** %6, align 8
  %35 = getelementptr inbounds %struct.pfioc_trans_32, %struct.pfioc_trans_32* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  br label %37

37:                                               ; preds = %33, %29
  %38 = phi i32 [ %32, %29 ], [ %36, %33 ]
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load %struct.pfioc_trans_64*, %struct.pfioc_trans_64** %7, align 8
  %43 = getelementptr inbounds %struct.pfioc_trans_64, %struct.pfioc_trans_64* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  br label %49

45:                                               ; preds = %37
  %46 = load %struct.pfioc_trans_32*, %struct.pfioc_trans_32** %6, align 8
  %47 = getelementptr inbounds %struct.pfioc_trans_32, %struct.pfioc_trans_32* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  br label %49

49:                                               ; preds = %45, %41
  %50 = phi i32 [ %44, %41 ], [ %48, %45 ]
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load %struct.pfioc_trans_64*, %struct.pfioc_trans_64** %7, align 8
  %55 = getelementptr inbounds %struct.pfioc_trans_64, %struct.pfioc_trans_64* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  br label %61

57:                                               ; preds = %49
  %58 = load %struct.pfioc_trans_32*, %struct.pfioc_trans_32** %6, align 8
  %59 = getelementptr inbounds %struct.pfioc_trans_32, %struct.pfioc_trans_32* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  br label %61

61:                                               ; preds = %57, %53
  %62 = phi i32 [ %56, %53 ], [ %60, %57 ]
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %5, align 4
  switch i32 %63, label %522 [
    i32 132, label %64
    i32 130, label %181
    i32 131, label %285
  ]

64:                                               ; preds = %61
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = icmp ne i64 %66, 24
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i32, i32* @ENODEV, align 4
  store i32 %69, i32* %10, align 4
  br label %525

70:                                               ; preds = %64
  %71 = load i32, i32* @M_TEMP, align 4
  %72 = load i32, i32* @M_WAITOK, align 4
  %73 = call %struct.pfr_table* @_MALLOC(i32 24, i32 %71, i32 %72)
  %74 = bitcast %struct.pfr_table* %73 to %struct.pfioc_trans_e*
  store %struct.pfioc_trans_e* %74, %struct.pfioc_trans_e** %14, align 8
  %75 = load i32, i32* @M_TEMP, align 4
  %76 = load i32, i32* @M_WAITOK, align 4
  %77 = call %struct.pfr_table* @_MALLOC(i32 24, i32 %75, i32 %76)
  store %struct.pfr_table* %77, %struct.pfr_table** %15, align 8
  store i32 0, i32* %16, align 4
  br label %78

78:                                               ; preds = %166, %70
  %79 = load i32, i32* %16, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %173

82:                                               ; preds = %78
  %83 = load i32, i32* %13, align 4
  %84 = load %struct.pfioc_trans_e*, %struct.pfioc_trans_e** %14, align 8
  %85 = bitcast %struct.pfioc_trans_e* %84 to %struct.pfr_table*
  %86 = call i32 @copyin(i32 %83, %struct.pfr_table* %85, i32 24)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %82
  %89 = load %struct.pfr_table*, %struct.pfr_table** %15, align 8
  %90 = load i32, i32* @M_TEMP, align 4
  %91 = call i32 @_FREE(%struct.pfr_table* %89, i32 %90)
  %92 = load %struct.pfioc_trans_e*, %struct.pfioc_trans_e** %14, align 8
  %93 = bitcast %struct.pfioc_trans_e* %92 to %struct.pfr_table*
  %94 = load i32, i32* @M_TEMP, align 4
  %95 = call i32 @_FREE(%struct.pfr_table* %93, i32 %94)
  %96 = load i32, i32* @EFAULT, align 4
  store i32 %96, i32* %10, align 4
  br label %525

97:                                               ; preds = %82
  %98 = load %struct.pfioc_trans_e*, %struct.pfioc_trans_e** %14, align 8
  %99 = getelementptr inbounds %struct.pfioc_trans_e, %struct.pfioc_trans_e* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 7
  store i8 0, i8* %101, align 1
  %102 = load %struct.pfioc_trans_e*, %struct.pfioc_trans_e** %14, align 8
  %103 = getelementptr inbounds %struct.pfioc_trans_e, %struct.pfioc_trans_e* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  switch i64 %104, label %130 [
    i64 129, label %105
    i64 128, label %106
  ]

105:                                              ; preds = %97
  br label %150

106:                                              ; preds = %97
  %107 = load %struct.pfr_table*, %struct.pfr_table** %15, align 8
  %108 = call i32 @bzero(%struct.pfr_table* %107, i32 24)
  %109 = load %struct.pfr_table*, %struct.pfr_table** %15, align 8
  %110 = getelementptr inbounds %struct.pfr_table, %struct.pfr_table* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.pfioc_trans_e*, %struct.pfioc_trans_e** %14, align 8
  %113 = getelementptr inbounds %struct.pfioc_trans_e, %struct.pfioc_trans_e* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 @strlcpy(i32 %111, i8* %114, i32 4)
  %116 = load %struct.pfr_table*, %struct.pfr_table** %15, align 8
  %117 = load %struct.pfioc_trans_e*, %struct.pfioc_trans_e** %14, align 8
  %118 = getelementptr inbounds %struct.pfioc_trans_e, %struct.pfioc_trans_e* %117, i32 0, i32 2
  %119 = call i32 @pfr_ina_begin(%struct.pfr_table* %116, i32* %118, i32* null, i32 0)
  store i32 %119, i32* %10, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %106
  %122 = load %struct.pfr_table*, %struct.pfr_table** %15, align 8
  %123 = load i32, i32* @M_TEMP, align 4
  %124 = call i32 @_FREE(%struct.pfr_table* %122, i32 %123)
  %125 = load %struct.pfioc_trans_e*, %struct.pfioc_trans_e** %14, align 8
  %126 = bitcast %struct.pfioc_trans_e* %125 to %struct.pfr_table*
  %127 = load i32, i32* @M_TEMP, align 4
  %128 = call i32 @_FREE(%struct.pfr_table* %126, i32 %127)
  br label %525

129:                                              ; preds = %106
  br label %150

130:                                              ; preds = %97
  %131 = load %struct.pfioc_trans_e*, %struct.pfioc_trans_e** %14, align 8
  %132 = getelementptr inbounds %struct.pfioc_trans_e, %struct.pfioc_trans_e* %131, i32 0, i32 2
  %133 = load %struct.pfioc_trans_e*, %struct.pfioc_trans_e** %14, align 8
  %134 = getelementptr inbounds %struct.pfioc_trans_e, %struct.pfioc_trans_e* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.pfioc_trans_e*, %struct.pfioc_trans_e** %14, align 8
  %137 = getelementptr inbounds %struct.pfioc_trans_e, %struct.pfioc_trans_e* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 @pf_begin_rules(i32* %132, i64 %135, i8* %138)
  store i32 %139, i32* %10, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %130
  %142 = load %struct.pfr_table*, %struct.pfr_table** %15, align 8
  %143 = load i32, i32* @M_TEMP, align 4
  %144 = call i32 @_FREE(%struct.pfr_table* %142, i32 %143)
  %145 = load %struct.pfioc_trans_e*, %struct.pfioc_trans_e** %14, align 8
  %146 = bitcast %struct.pfioc_trans_e* %145 to %struct.pfr_table*
  %147 = load i32, i32* @M_TEMP, align 4
  %148 = call i32 @_FREE(%struct.pfr_table* %146, i32 %147)
  br label %525

149:                                              ; preds = %130
  br label %150

150:                                              ; preds = %149, %129, %105
  %151 = load %struct.pfioc_trans_e*, %struct.pfioc_trans_e** %14, align 8
  %152 = bitcast %struct.pfioc_trans_e* %151 to %struct.pfr_table*
  %153 = load i32, i32* %13, align 4
  %154 = call i32 @copyout(%struct.pfr_table* %152, i32 %153, i32 24)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %165

156:                                              ; preds = %150
  %157 = load %struct.pfr_table*, %struct.pfr_table** %15, align 8
  %158 = load i32, i32* @M_TEMP, align 4
  %159 = call i32 @_FREE(%struct.pfr_table* %157, i32 %158)
  %160 = load %struct.pfioc_trans_e*, %struct.pfioc_trans_e** %14, align 8
  %161 = bitcast %struct.pfioc_trans_e* %160 to %struct.pfr_table*
  %162 = load i32, i32* @M_TEMP, align 4
  %163 = call i32 @_FREE(%struct.pfr_table* %161, i32 %162)
  %164 = load i32, i32* @EFAULT, align 4
  store i32 %164, i32* %10, align 4
  br label %525

165:                                              ; preds = %150
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %16, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %16, align 4
  %169 = load i32, i32* %13, align 4
  %170 = sext i32 %169 to i64
  %171 = add i64 %170, 24
  %172 = trunc i64 %171 to i32
  store i32 %172, i32* %13, align 4
  br label %78

173:                                              ; preds = %78
  %174 = load %struct.pfr_table*, %struct.pfr_table** %15, align 8
  %175 = load i32, i32* @M_TEMP, align 4
  %176 = call i32 @_FREE(%struct.pfr_table* %174, i32 %175)
  %177 = load %struct.pfioc_trans_e*, %struct.pfioc_trans_e** %14, align 8
  %178 = bitcast %struct.pfioc_trans_e* %177 to %struct.pfr_table*
  %179 = load i32, i32* @M_TEMP, align 4
  %180 = call i32 @_FREE(%struct.pfr_table* %178, i32 %179)
  br label %524

181:                                              ; preds = %61
  %182 = load i32, i32* %11, align 4
  %183 = sext i32 %182 to i64
  %184 = icmp ne i64 %183, 24
  br i1 %184, label %185, label %187

185:                                              ; preds = %181
  %186 = load i32, i32* @ENODEV, align 4
  store i32 %186, i32* %10, align 4
  br label %525

187:                                              ; preds = %181
  %188 = load i32, i32* @M_TEMP, align 4
  %189 = load i32, i32* @M_WAITOK, align 4
  %190 = call %struct.pfr_table* @_MALLOC(i32 24, i32 %188, i32 %189)
  %191 = bitcast %struct.pfr_table* %190 to %struct.pfioc_trans_e*
  store %struct.pfioc_trans_e* %191, %struct.pfioc_trans_e** %17, align 8
  %192 = load i32, i32* @M_TEMP, align 4
  %193 = load i32, i32* @M_WAITOK, align 4
  %194 = call %struct.pfr_table* @_MALLOC(i32 24, i32 %192, i32 %193)
  store %struct.pfr_table* %194, %struct.pfr_table** %18, align 8
  store i32 0, i32* %19, align 4
  br label %195

195:                                              ; preds = %270, %187
  %196 = load i32, i32* %19, align 4
  %197 = load i32, i32* %12, align 4
  %198 = icmp slt i32 %196, %197
  br i1 %198, label %199, label %277

199:                                              ; preds = %195
  %200 = load i32, i32* %13, align 4
  %201 = load %struct.pfioc_trans_e*, %struct.pfioc_trans_e** %17, align 8
  %202 = bitcast %struct.pfioc_trans_e* %201 to %struct.pfr_table*
  %203 = call i32 @copyin(i32 %200, %struct.pfr_table* %202, i32 24)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %214

205:                                              ; preds = %199
  %206 = load %struct.pfr_table*, %struct.pfr_table** %18, align 8
  %207 = load i32, i32* @M_TEMP, align 4
  %208 = call i32 @_FREE(%struct.pfr_table* %206, i32 %207)
  %209 = load %struct.pfioc_trans_e*, %struct.pfioc_trans_e** %17, align 8
  %210 = bitcast %struct.pfioc_trans_e* %209 to %struct.pfr_table*
  %211 = load i32, i32* @M_TEMP, align 4
  %212 = call i32 @_FREE(%struct.pfr_table* %210, i32 %211)
  %213 = load i32, i32* @EFAULT, align 4
  store i32 %213, i32* %10, align 4
  br label %525

214:                                              ; preds = %199
  %215 = load %struct.pfioc_trans_e*, %struct.pfioc_trans_e** %17, align 8
  %216 = getelementptr inbounds %struct.pfioc_trans_e, %struct.pfioc_trans_e* %215, i32 0, i32 0
  %217 = load i8*, i8** %216, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 7
  store i8 0, i8* %218, align 1
  %219 = load %struct.pfioc_trans_e*, %struct.pfioc_trans_e** %17, align 8
  %220 = getelementptr inbounds %struct.pfioc_trans_e, %struct.pfioc_trans_e* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  switch i64 %221, label %248 [
    i64 129, label %222
    i64 128, label %223
  ]

222:                                              ; preds = %214
  br label %269

223:                                              ; preds = %214
  %224 = load %struct.pfr_table*, %struct.pfr_table** %18, align 8
  %225 = call i32 @bzero(%struct.pfr_table* %224, i32 24)
  %226 = load %struct.pfr_table*, %struct.pfr_table** %18, align 8
  %227 = getelementptr inbounds %struct.pfr_table, %struct.pfr_table* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.pfioc_trans_e*, %struct.pfioc_trans_e** %17, align 8
  %230 = getelementptr inbounds %struct.pfioc_trans_e, %struct.pfioc_trans_e* %229, i32 0, i32 0
  %231 = load i8*, i8** %230, align 8
  %232 = call i32 @strlcpy(i32 %228, i8* %231, i32 4)
  %233 = load %struct.pfr_table*, %struct.pfr_table** %18, align 8
  %234 = load %struct.pfioc_trans_e*, %struct.pfioc_trans_e** %17, align 8
  %235 = getelementptr inbounds %struct.pfioc_trans_e, %struct.pfioc_trans_e* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = call i32 @pfr_ina_rollback(%struct.pfr_table* %233, i32 %236, i32* null, i32 0)
  store i32 %237, i32* %10, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %247

239:                                              ; preds = %223
  %240 = load %struct.pfr_table*, %struct.pfr_table** %18, align 8
  %241 = load i32, i32* @M_TEMP, align 4
  %242 = call i32 @_FREE(%struct.pfr_table* %240, i32 %241)
  %243 = load %struct.pfioc_trans_e*, %struct.pfioc_trans_e** %17, align 8
  %244 = bitcast %struct.pfioc_trans_e* %243 to %struct.pfr_table*
  %245 = load i32, i32* @M_TEMP, align 4
  %246 = call i32 @_FREE(%struct.pfr_table* %244, i32 %245)
  br label %525

247:                                              ; preds = %223
  br label %269

248:                                              ; preds = %214
  %249 = load %struct.pfioc_trans_e*, %struct.pfioc_trans_e** %17, align 8
  %250 = getelementptr inbounds %struct.pfioc_trans_e, %struct.pfioc_trans_e* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 8
  %252 = load %struct.pfioc_trans_e*, %struct.pfioc_trans_e** %17, align 8
  %253 = getelementptr inbounds %struct.pfioc_trans_e, %struct.pfioc_trans_e* %252, i32 0, i32 1
  %254 = load i64, i64* %253, align 8
  %255 = load %struct.pfioc_trans_e*, %struct.pfioc_trans_e** %17, align 8
  %256 = getelementptr inbounds %struct.pfioc_trans_e, %struct.pfioc_trans_e* %255, i32 0, i32 0
  %257 = load i8*, i8** %256, align 8
  %258 = call i32 @pf_rollback_rules(i32 %251, i64 %254, i8* %257)
  store i32 %258, i32* %10, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %268

260:                                              ; preds = %248
  %261 = load %struct.pfr_table*, %struct.pfr_table** %18, align 8
  %262 = load i32, i32* @M_TEMP, align 4
  %263 = call i32 @_FREE(%struct.pfr_table* %261, i32 %262)
  %264 = load %struct.pfioc_trans_e*, %struct.pfioc_trans_e** %17, align 8
  %265 = bitcast %struct.pfioc_trans_e* %264 to %struct.pfr_table*
  %266 = load i32, i32* @M_TEMP, align 4
  %267 = call i32 @_FREE(%struct.pfr_table* %265, i32 %266)
  br label %525

268:                                              ; preds = %248
  br label %269

269:                                              ; preds = %268, %247, %222
  br label %270

270:                                              ; preds = %269
  %271 = load i32, i32* %19, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %19, align 4
  %273 = load i32, i32* %13, align 4
  %274 = sext i32 %273 to i64
  %275 = add i64 %274, 24
  %276 = trunc i64 %275 to i32
  store i32 %276, i32* %13, align 4
  br label %195

277:                                              ; preds = %195
  %278 = load %struct.pfr_table*, %struct.pfr_table** %18, align 8
  %279 = load i32, i32* @M_TEMP, align 4
  %280 = call i32 @_FREE(%struct.pfr_table* %278, i32 %279)
  %281 = load %struct.pfioc_trans_e*, %struct.pfioc_trans_e** %17, align 8
  %282 = bitcast %struct.pfioc_trans_e* %281 to %struct.pfr_table*
  %283 = load i32, i32* @M_TEMP, align 4
  %284 = call i32 @_FREE(%struct.pfr_table* %282, i32 %283)
  br label %524

285:                                              ; preds = %61
  %286 = load i32, i32* %13, align 4
  store i32 %286, i32* %23, align 4
  %287 = load i32, i32* %11, align 4
  %288 = sext i32 %287 to i64
  %289 = icmp ne i64 %288, 24
  br i1 %289, label %290, label %292

290:                                              ; preds = %285
  %291 = load i32, i32* @ENODEV, align 4
  store i32 %291, i32* %10, align 4
  br label %525

292:                                              ; preds = %285
  %293 = load i32, i32* @M_TEMP, align 4
  %294 = load i32, i32* @M_WAITOK, align 4
  %295 = call %struct.pfr_table* @_MALLOC(i32 24, i32 %293, i32 %294)
  %296 = bitcast %struct.pfr_table* %295 to %struct.pfioc_trans_e*
  store %struct.pfioc_trans_e* %296, %struct.pfioc_trans_e** %20, align 8
  %297 = load i32, i32* @M_TEMP, align 4
  %298 = load i32, i32* @M_WAITOK, align 4
  %299 = call %struct.pfr_table* @_MALLOC(i32 24, i32 %297, i32 %298)
  store %struct.pfr_table* %299, %struct.pfr_table** %21, align 8
  store i32 0, i32* %24, align 4
  br label %300

300:                                              ; preds = %423, %292
  %301 = load i32, i32* %24, align 4
  %302 = load i32, i32* %12, align 4
  %303 = icmp slt i32 %301, %302
  br i1 %303, label %304, label %430

304:                                              ; preds = %300
  %305 = load i32, i32* %13, align 4
  %306 = load %struct.pfioc_trans_e*, %struct.pfioc_trans_e** %20, align 8
  %307 = bitcast %struct.pfioc_trans_e* %306 to %struct.pfr_table*
  %308 = call i32 @copyin(i32 %305, %struct.pfr_table* %307, i32 24)
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %319

310:                                              ; preds = %304
  %311 = load %struct.pfr_table*, %struct.pfr_table** %21, align 8
  %312 = load i32, i32* @M_TEMP, align 4
  %313 = call i32 @_FREE(%struct.pfr_table* %311, i32 %312)
  %314 = load %struct.pfioc_trans_e*, %struct.pfioc_trans_e** %20, align 8
  %315 = bitcast %struct.pfioc_trans_e* %314 to %struct.pfr_table*
  %316 = load i32, i32* @M_TEMP, align 4
  %317 = call i32 @_FREE(%struct.pfr_table* %315, i32 %316)
  %318 = load i32, i32* @EFAULT, align 4
  store i32 %318, i32* %10, align 4
  br label %525

319:                                              ; preds = %304
  %320 = load %struct.pfioc_trans_e*, %struct.pfioc_trans_e** %20, align 8
  %321 = getelementptr inbounds %struct.pfioc_trans_e, %struct.pfioc_trans_e* %320, i32 0, i32 0
  %322 = load i8*, i8** %321, align 8
  %323 = getelementptr inbounds i8, i8* %322, i64 7
  store i8 0, i8* %323, align 1
  %324 = load %struct.pfioc_trans_e*, %struct.pfioc_trans_e** %20, align 8
  %325 = getelementptr inbounds %struct.pfioc_trans_e, %struct.pfioc_trans_e* %324, i32 0, i32 1
  %326 = load i64, i64* %325, align 8
  switch i64 %326, label %358 [
    i64 129, label %327
    i64 128, label %328
  ]

327:                                              ; preds = %319
  br label %422

328:                                              ; preds = %319
  %329 = load %struct.pfioc_trans_e*, %struct.pfioc_trans_e** %20, align 8
  %330 = getelementptr inbounds %struct.pfioc_trans_e, %struct.pfioc_trans_e* %329, i32 0, i32 0
  %331 = load i8*, i8** %330, align 8
  %332 = call %struct.pf_ruleset* @pf_find_ruleset(i8* %331)
  store %struct.pf_ruleset* %332, %struct.pf_ruleset** %22, align 8
  %333 = load %struct.pf_ruleset*, %struct.pf_ruleset** %22, align 8
  %334 = icmp eq %struct.pf_ruleset* %333, null
  br i1 %334, label %348, label %335

335:                                              ; preds = %328
  %336 = load %struct.pf_ruleset*, %struct.pf_ruleset** %22, align 8
  %337 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %336, i32 0, i32 2
  %338 = load i32, i32* %337, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %348

340:                                              ; preds = %335
  %341 = load %struct.pfioc_trans_e*, %struct.pfioc_trans_e** %20, align 8
  %342 = getelementptr inbounds %struct.pfioc_trans_e, %struct.pfioc_trans_e* %341, i32 0, i32 2
  %343 = load i32, i32* %342, align 8
  %344 = load %struct.pf_ruleset*, %struct.pf_ruleset** %22, align 8
  %345 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 8
  %347 = icmp ne i32 %343, %346
  br i1 %347, label %348, label %357

348:                                              ; preds = %340, %335, %328
  %349 = load %struct.pfr_table*, %struct.pfr_table** %21, align 8
  %350 = load i32, i32* @M_TEMP, align 4
  %351 = call i32 @_FREE(%struct.pfr_table* %349, i32 %350)
  %352 = load %struct.pfioc_trans_e*, %struct.pfioc_trans_e** %20, align 8
  %353 = bitcast %struct.pfioc_trans_e* %352 to %struct.pfr_table*
  %354 = load i32, i32* @M_TEMP, align 4
  %355 = call i32 @_FREE(%struct.pfr_table* %353, i32 %354)
  %356 = load i32, i32* @EBUSY, align 4
  store i32 %356, i32* %10, align 4
  br label %525

357:                                              ; preds = %340
  br label %422

358:                                              ; preds = %319
  %359 = load %struct.pfioc_trans_e*, %struct.pfioc_trans_e** %20, align 8
  %360 = getelementptr inbounds %struct.pfioc_trans_e, %struct.pfioc_trans_e* %359, i32 0, i32 1
  %361 = load i64, i64* %360, align 8
  %362 = icmp ult i64 %361, 0
  br i1 %362, label %369, label %363

363:                                              ; preds = %358
  %364 = load %struct.pfioc_trans_e*, %struct.pfioc_trans_e** %20, align 8
  %365 = getelementptr inbounds %struct.pfioc_trans_e, %struct.pfioc_trans_e* %364, i32 0, i32 1
  %366 = load i64, i64* %365, align 8
  %367 = load i64, i64* @PF_RULESET_MAX, align 8
  %368 = icmp uge i64 %366, %367
  br i1 %368, label %369, label %378

369:                                              ; preds = %363, %358
  %370 = load %struct.pfr_table*, %struct.pfr_table** %21, align 8
  %371 = load i32, i32* @M_TEMP, align 4
  %372 = call i32 @_FREE(%struct.pfr_table* %370, i32 %371)
  %373 = load %struct.pfioc_trans_e*, %struct.pfioc_trans_e** %20, align 8
  %374 = bitcast %struct.pfioc_trans_e* %373 to %struct.pfr_table*
  %375 = load i32, i32* @M_TEMP, align 4
  %376 = call i32 @_FREE(%struct.pfr_table* %374, i32 %375)
  %377 = load i32, i32* @EINVAL, align 4
  store i32 %377, i32* %10, align 4
  br label %525

378:                                              ; preds = %363
  %379 = load %struct.pfioc_trans_e*, %struct.pfioc_trans_e** %20, align 8
  %380 = getelementptr inbounds %struct.pfioc_trans_e, %struct.pfioc_trans_e* %379, i32 0, i32 0
  %381 = load i8*, i8** %380, align 8
  %382 = call %struct.pf_ruleset* @pf_find_ruleset(i8* %381)
  store %struct.pf_ruleset* %382, %struct.pf_ruleset** %22, align 8
  %383 = load %struct.pf_ruleset*, %struct.pf_ruleset** %22, align 8
  %384 = icmp eq %struct.pf_ruleset* %383, null
  br i1 %384, label %412, label %385

385:                                              ; preds = %378
  %386 = load %struct.pf_ruleset*, %struct.pf_ruleset** %22, align 8
  %387 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %386, i32 0, i32 0
  %388 = load %struct.TYPE_4__*, %struct.TYPE_4__** %387, align 8
  %389 = load %struct.pfioc_trans_e*, %struct.pfioc_trans_e** %20, align 8
  %390 = getelementptr inbounds %struct.pfioc_trans_e, %struct.pfioc_trans_e* %389, i32 0, i32 1
  %391 = load i64, i64* %390, align 8
  %392 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %388, i64 %391
  %393 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %392, i32 0, i32 0
  %394 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %393, i32 0, i32 1
  %395 = load i32, i32* %394, align 4
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %412

397:                                              ; preds = %385
  %398 = load %struct.pf_ruleset*, %struct.pf_ruleset** %22, align 8
  %399 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %398, i32 0, i32 0
  %400 = load %struct.TYPE_4__*, %struct.TYPE_4__** %399, align 8
  %401 = load %struct.pfioc_trans_e*, %struct.pfioc_trans_e** %20, align 8
  %402 = getelementptr inbounds %struct.pfioc_trans_e, %struct.pfioc_trans_e* %401, i32 0, i32 1
  %403 = load i64, i64* %402, align 8
  %404 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %400, i64 %403
  %405 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %404, i32 0, i32 0
  %406 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %405, i32 0, i32 0
  %407 = load i32, i32* %406, align 4
  %408 = load %struct.pfioc_trans_e*, %struct.pfioc_trans_e** %20, align 8
  %409 = getelementptr inbounds %struct.pfioc_trans_e, %struct.pfioc_trans_e* %408, i32 0, i32 2
  %410 = load i32, i32* %409, align 8
  %411 = icmp ne i32 %407, %410
  br i1 %411, label %412, label %421

412:                                              ; preds = %397, %385, %378
  %413 = load %struct.pfr_table*, %struct.pfr_table** %21, align 8
  %414 = load i32, i32* @M_TEMP, align 4
  %415 = call i32 @_FREE(%struct.pfr_table* %413, i32 %414)
  %416 = load %struct.pfioc_trans_e*, %struct.pfioc_trans_e** %20, align 8
  %417 = bitcast %struct.pfioc_trans_e* %416 to %struct.pfr_table*
  %418 = load i32, i32* @M_TEMP, align 4
  %419 = call i32 @_FREE(%struct.pfr_table* %417, i32 %418)
  %420 = load i32, i32* @EBUSY, align 4
  store i32 %420, i32* %10, align 4
  br label %525

421:                                              ; preds = %397
  br label %422

422:                                              ; preds = %421, %357, %327
  br label %423

423:                                              ; preds = %422
  %424 = load i32, i32* %24, align 4
  %425 = add nsw i32 %424, 1
  store i32 %425, i32* %24, align 4
  %426 = load i32, i32* %13, align 4
  %427 = sext i32 %426 to i64
  %428 = add i64 %427, 24
  %429 = trunc i64 %428 to i32
  store i32 %429, i32* %13, align 4
  br label %300

430:                                              ; preds = %300
  %431 = load i32, i32* %23, align 4
  store i32 %431, i32* %13, align 4
  store i32 0, i32* %24, align 4
  br label %432

432:                                              ; preds = %507, %430
  %433 = load i32, i32* %24, align 4
  %434 = load i32, i32* %12, align 4
  %435 = icmp slt i32 %433, %434
  br i1 %435, label %436, label %514

436:                                              ; preds = %432
  %437 = load i32, i32* %13, align 4
  %438 = load %struct.pfioc_trans_e*, %struct.pfioc_trans_e** %20, align 8
  %439 = bitcast %struct.pfioc_trans_e* %438 to %struct.pfr_table*
  %440 = call i32 @copyin(i32 %437, %struct.pfr_table* %439, i32 24)
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %442, label %451

442:                                              ; preds = %436
  %443 = load %struct.pfr_table*, %struct.pfr_table** %21, align 8
  %444 = load i32, i32* @M_TEMP, align 4
  %445 = call i32 @_FREE(%struct.pfr_table* %443, i32 %444)
  %446 = load %struct.pfioc_trans_e*, %struct.pfioc_trans_e** %20, align 8
  %447 = bitcast %struct.pfioc_trans_e* %446 to %struct.pfr_table*
  %448 = load i32, i32* @M_TEMP, align 4
  %449 = call i32 @_FREE(%struct.pfr_table* %447, i32 %448)
  %450 = load i32, i32* @EFAULT, align 4
  store i32 %450, i32* %10, align 4
  br label %525

451:                                              ; preds = %436
  %452 = load %struct.pfioc_trans_e*, %struct.pfioc_trans_e** %20, align 8
  %453 = getelementptr inbounds %struct.pfioc_trans_e, %struct.pfioc_trans_e* %452, i32 0, i32 0
  %454 = load i8*, i8** %453, align 8
  %455 = getelementptr inbounds i8, i8* %454, i64 7
  store i8 0, i8* %455, align 1
  %456 = load %struct.pfioc_trans_e*, %struct.pfioc_trans_e** %20, align 8
  %457 = getelementptr inbounds %struct.pfioc_trans_e, %struct.pfioc_trans_e* %456, i32 0, i32 1
  %458 = load i64, i64* %457, align 8
  switch i64 %458, label %485 [
    i64 129, label %459
    i64 128, label %460
  ]

459:                                              ; preds = %451
  br label %506

460:                                              ; preds = %451
  %461 = load %struct.pfr_table*, %struct.pfr_table** %21, align 8
  %462 = call i32 @bzero(%struct.pfr_table* %461, i32 24)
  %463 = load %struct.pfr_table*, %struct.pfr_table** %21, align 8
  %464 = getelementptr inbounds %struct.pfr_table, %struct.pfr_table* %463, i32 0, i32 3
  %465 = load i32, i32* %464, align 4
  %466 = load %struct.pfioc_trans_e*, %struct.pfioc_trans_e** %20, align 8
  %467 = getelementptr inbounds %struct.pfioc_trans_e, %struct.pfioc_trans_e* %466, i32 0, i32 0
  %468 = load i8*, i8** %467, align 8
  %469 = call i32 @strlcpy(i32 %465, i8* %468, i32 4)
  %470 = load %struct.pfr_table*, %struct.pfr_table** %21, align 8
  %471 = load %struct.pfioc_trans_e*, %struct.pfioc_trans_e** %20, align 8
  %472 = getelementptr inbounds %struct.pfioc_trans_e, %struct.pfioc_trans_e* %471, i32 0, i32 2
  %473 = load i32, i32* %472, align 8
  %474 = call i32 @pfr_ina_commit(%struct.pfr_table* %470, i32 %473, i32* null, i32* null, i32 0)
  store i32 %474, i32* %10, align 4
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %476, label %484

476:                                              ; preds = %460
  %477 = load %struct.pfr_table*, %struct.pfr_table** %21, align 8
  %478 = load i32, i32* @M_TEMP, align 4
  %479 = call i32 @_FREE(%struct.pfr_table* %477, i32 %478)
  %480 = load %struct.pfioc_trans_e*, %struct.pfioc_trans_e** %20, align 8
  %481 = bitcast %struct.pfioc_trans_e* %480 to %struct.pfr_table*
  %482 = load i32, i32* @M_TEMP, align 4
  %483 = call i32 @_FREE(%struct.pfr_table* %481, i32 %482)
  br label %525

484:                                              ; preds = %460
  br label %506

485:                                              ; preds = %451
  %486 = load %struct.pfioc_trans_e*, %struct.pfioc_trans_e** %20, align 8
  %487 = getelementptr inbounds %struct.pfioc_trans_e, %struct.pfioc_trans_e* %486, i32 0, i32 2
  %488 = load i32, i32* %487, align 8
  %489 = load %struct.pfioc_trans_e*, %struct.pfioc_trans_e** %20, align 8
  %490 = getelementptr inbounds %struct.pfioc_trans_e, %struct.pfioc_trans_e* %489, i32 0, i32 1
  %491 = load i64, i64* %490, align 8
  %492 = load %struct.pfioc_trans_e*, %struct.pfioc_trans_e** %20, align 8
  %493 = getelementptr inbounds %struct.pfioc_trans_e, %struct.pfioc_trans_e* %492, i32 0, i32 0
  %494 = load i8*, i8** %493, align 8
  %495 = call i32 @pf_commit_rules(i32 %488, i64 %491, i8* %494)
  store i32 %495, i32* %10, align 4
  %496 = icmp ne i32 %495, 0
  br i1 %496, label %497, label %505

497:                                              ; preds = %485
  %498 = load %struct.pfr_table*, %struct.pfr_table** %21, align 8
  %499 = load i32, i32* @M_TEMP, align 4
  %500 = call i32 @_FREE(%struct.pfr_table* %498, i32 %499)
  %501 = load %struct.pfioc_trans_e*, %struct.pfioc_trans_e** %20, align 8
  %502 = bitcast %struct.pfioc_trans_e* %501 to %struct.pfr_table*
  %503 = load i32, i32* @M_TEMP, align 4
  %504 = call i32 @_FREE(%struct.pfr_table* %502, i32 %503)
  br label %525

505:                                              ; preds = %485
  br label %506

506:                                              ; preds = %505, %484, %459
  br label %507

507:                                              ; preds = %506
  %508 = load i32, i32* %24, align 4
  %509 = add nsw i32 %508, 1
  store i32 %509, i32* %24, align 4
  %510 = load i32, i32* %13, align 4
  %511 = sext i32 %510 to i64
  %512 = add i64 %511, 24
  %513 = trunc i64 %512 to i32
  store i32 %513, i32* %13, align 4
  br label %432

514:                                              ; preds = %432
  %515 = load %struct.pfr_table*, %struct.pfr_table** %21, align 8
  %516 = load i32, i32* @M_TEMP, align 4
  %517 = call i32 @_FREE(%struct.pfr_table* %515, i32 %516)
  %518 = load %struct.pfioc_trans_e*, %struct.pfioc_trans_e** %20, align 8
  %519 = bitcast %struct.pfioc_trans_e* %518 to %struct.pfr_table*
  %520 = load i32, i32* @M_TEMP, align 4
  %521 = call i32 @_FREE(%struct.pfr_table* %519, i32 %520)
  br label %524

522:                                              ; preds = %61
  %523 = call i32 @VERIFY(i32 0)
  br label %524

524:                                              ; preds = %522, %514, %277, %173
  br label %525

525:                                              ; preds = %524, %497, %476, %442, %412, %369, %348, %310, %290, %260, %239, %205, %185, %156, %141, %121, %88, %68
  %526 = load i32, i32* %10, align 4
  ret i32 %526
}

declare dso_local i32 @proc_is64bit(%struct.proc*) #1

declare dso_local %struct.pfr_table* @_MALLOC(i32, i32, i32) #1

declare dso_local i32 @copyin(i32, %struct.pfr_table*, i32) #1

declare dso_local i32 @_FREE(%struct.pfr_table*, i32) #1

declare dso_local i32 @bzero(%struct.pfr_table*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @pfr_ina_begin(%struct.pfr_table*, i32*, i32*, i32) #1

declare dso_local i32 @pf_begin_rules(i32*, i64, i8*) #1

declare dso_local i32 @copyout(%struct.pfr_table*, i32, i32) #1

declare dso_local i32 @pfr_ina_rollback(%struct.pfr_table*, i32, i32*, i32) #1

declare dso_local i32 @pf_rollback_rules(i32, i64, i8*) #1

declare dso_local %struct.pf_ruleset* @pf_find_ruleset(i8*) #1

declare dso_local i32 @pfr_ina_commit(%struct.pfr_table*, i32, i32*, i32*, i32) #1

declare dso_local i32 @pf_commit_rules(i32, i64, i8*) #1

declare dso_local i32 @VERIFY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
