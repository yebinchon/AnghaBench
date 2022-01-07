; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_fasttrap.c_fasttrap_provider_lookup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_fasttrap.c_fasttrap_provider_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i64, i32, %struct.TYPE_14__*, i32, i32, i32, i32*, i32 }
%struct.TYPE_13__ = type { i64, i32, i32 }

@DTRACE_PROVNAMELEN = common dso_local global i32 0, align 4
@fasttrap_provs = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@P_LINVFORK = common dso_local global i32 0, align 4
@P_LEXIT = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@fasttrap_lck_grp = common dso_local global i32 0, align 4
@fasttrap_lck_attr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%u\00", align 1
@DTRACE_PRIV_PROC = common dso_local global i32 0, align 4
@DTRACE_PRIV_OWNER = common dso_local global i32 0, align 4
@DTRACE_PRIV_ZONEOWNER = common dso_local global i32 0, align 4
@pid_attr = common dso_local global i32 0, align 4
@pid_pops = common dso_local global i32 0, align 4
@usdt_pops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_14__* (%struct.TYPE_13__*, i64, i8*, i32*)* @fasttrap_provider_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_14__* @fasttrap_provider_lookup(%struct.TYPE_13__* %0, i64 %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %10, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %12, align 8
  %21 = load i32, i32* @DTRACE_PROVNAMELEN, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %14, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %15, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @strlen(i8* %25)
  %27 = sext i32 %26 to i64
  %28 = icmp ult i64 %27, 4
  %29 = zext i1 %28 to i32
  %30 = call i32 @ASSERT(i32 %29)
  %31 = load i32*, i32** %9, align 8
  %32 = icmp ne i32* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @ASSERT(i32 %33)
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @fasttrap_provs, i32 0, i32 0), align 8
  %36 = load i64, i64* %10, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = call i64 @FASTTRAP_PROVS_INDEX(i64 %36, i8* %37)
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i64 %38
  store %struct.TYPE_15__* %39, %struct.TYPE_15__** %13, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = call i32 @lck_mtx_lock(i32* %41)
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %44, align 8
  store %struct.TYPE_14__* %45, %struct.TYPE_14__** %11, align 8
  br label %46

46:                                               ; preds = %82, %4
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %48 = icmp ne %struct.TYPE_14__* %47, null
  br i1 %48, label %49, label %86

49:                                               ; preds = %46
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %10, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %81

55:                                               ; preds = %49
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %7, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %81

61:                                               ; preds = %55
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = load i8*, i8** %8, align 8
  %66 = call i64 @strncmp(i32 %64, i8* %65, i32 4)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %61
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %81, label %73

73:                                               ; preds = %68
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 2
  %76 = call i32 @lck_mtx_lock(i32* %75)
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = call i32 @lck_mtx_unlock(i32* %78)
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  store %struct.TYPE_14__* %80, %struct.TYPE_14__** %5, align 8
  store i32 1, i32* %17, align 4
  br label %243

81:                                               ; preds = %68, %61, %55, %49
  br label %82

82:                                               ; preds = %81
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 3
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %84, align 8
  store %struct.TYPE_14__* %85, %struct.TYPE_14__** %11, align 8
  br label %46

86:                                               ; preds = %46
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = call i32 @lck_mtx_unlock(i32* %88)
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %91 = call i32 @proc_lock(%struct.TYPE_13__* %90)
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @P_LINVFORK, align 4
  %96 = load i32, i32* @P_LEXIT, align 4
  %97 = or i32 %95, %96
  %98 = and i32 %94, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %86
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %102 = call i32 @proc_unlock(%struct.TYPE_13__* %101)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %5, align 8
  store i32 1, i32* %17, align 4
  br label %243

103:                                              ; preds = %86
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 4
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %109 = call i32* @kauth_cred_proc_ref(%struct.TYPE_13__* %108)
  store i32* %109, i32** %16, align 8
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %111 = call i32 @proc_unlock(%struct.TYPE_13__* %110)
  %112 = load i32, i32* @KM_SLEEP, align 4
  %113 = call %struct.TYPE_14__* @kmem_zalloc(i32 64, i32 %112)
  store %struct.TYPE_14__* %113, %struct.TYPE_14__** %12, align 8
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %115 = icmp ne %struct.TYPE_14__* %114, null
  %116 = zext i1 %115 to i32
  %117 = call i32 @ASSERT(i32 %116)
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  store i64 %120, i64* %122, align 8
  %123 = load i64, i64* %10, align 8
  %124 = call i32* @fasttrap_proc_lookup(i64 %123)
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 7
  store i32* %124, i32** %126, align 8
  %127 = load i64, i64* %7, align 8
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 1
  store i64 %127, i64* %129, align 8
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 2
  %132 = load i32, i32* @fasttrap_lck_grp, align 4
  %133 = load i32, i32* @fasttrap_lck_attr, align 4
  %134 = call i32 @lck_mtx_init(i32* %131, i32 %132, i32 %133)
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 8
  %137 = load i32, i32* @fasttrap_lck_grp, align 4
  %138 = load i32, i32* @fasttrap_lck_attr, align 4
  %139 = call i32 @lck_mtx_init(i32* %136, i32 %137, i32 %138)
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 7
  %142 = load i32*, i32** %141, align 8
  %143 = icmp ne i32* %142, null
  %144 = zext i1 %143 to i32
  %145 = call i32 @ASSERT(i32 %144)
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 0
  %148 = call i32 @lck_mtx_lock(i32* %147)
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %150, align 8
  store %struct.TYPE_14__* %151, %struct.TYPE_14__** %11, align 8
  br label %152

152:                                              ; preds = %185, %103
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %154 = icmp ne %struct.TYPE_14__* %153, null
  br i1 %154, label %155, label %189

155:                                              ; preds = %152
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* %10, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %184

161:                                              ; preds = %155
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 5
  %164 = load i32, i32* %163, align 4
  %165 = load i8*, i8** %8, align 8
  %166 = call i64 @strncmp(i32 %164, i8* %165, i32 4)
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %184

168:                                              ; preds = %161
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 6
  %171 = load i32, i32* %170, align 8
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %184, label %173

173:                                              ; preds = %168
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 2
  %176 = call i32 @lck_mtx_lock(i32* %175)
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 0
  %179 = call i32 @lck_mtx_unlock(i32* %178)
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %181 = call i32 @fasttrap_provider_free(%struct.TYPE_14__* %180)
  %182 = call i32 @kauth_cred_unref(i32** %16)
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  store %struct.TYPE_14__* %183, %struct.TYPE_14__** %5, align 8
  store i32 1, i32* %17, align 4
  br label %243

184:                                              ; preds = %168, %161, %155
  br label %185

185:                                              ; preds = %184
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 3
  %188 = load %struct.TYPE_14__*, %struct.TYPE_14__** %187, align 8
  store %struct.TYPE_14__* %188, %struct.TYPE_14__** %11, align 8
  br label %152

189:                                              ; preds = %152
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 5
  %192 = load i32, i32* %191, align 4
  %193 = load i8*, i8** %8, align 8
  %194 = call i32 @strlcpy(i32 %192, i8* %193, i32 4)
  %195 = trunc i64 %22 to i32
  %196 = load i8*, i8** %8, align 8
  %197 = load i64, i64* %10, align 8
  %198 = trunc i64 %197 to i32
  %199 = call i32 @snprintf(i8* %24, i32 %195, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %196, i32 %198)
  %200 = trunc i64 %22 to i32
  %201 = icmp sge i32 %199, %200
  br i1 %201, label %219, label %202

202:                                              ; preds = %189
  %203 = load i32*, i32** %9, align 8
  %204 = load i32, i32* @DTRACE_PRIV_PROC, align 4
  %205 = load i32, i32* @DTRACE_PRIV_OWNER, align 4
  %206 = or i32 %204, %205
  %207 = load i32, i32* @DTRACE_PRIV_ZONEOWNER, align 4
  %208 = or i32 %206, %207
  %209 = load i32*, i32** %16, align 8
  %210 = load i32*, i32** %9, align 8
  %211 = icmp eq i32* %210, @pid_attr
  %212 = zext i1 %211 to i64
  %213 = select i1 %211, i32* @pid_pops, i32* @usdt_pops
  %214 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %215 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 4
  %217 = call i64 @dtrace_register(i8* %24, i32* %203, i32 %208, i32* %209, i32* %213, %struct.TYPE_14__* %214, i32* %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %226

219:                                              ; preds = %202, %189
  %220 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %221 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %220, i32 0, i32 0
  %222 = call i32 @lck_mtx_unlock(i32* %221)
  %223 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %224 = call i32 @fasttrap_provider_free(%struct.TYPE_14__* %223)
  %225 = call i32 @kauth_cred_unref(i32** %16)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %5, align 8
  store i32 1, i32* %17, align 4
  br label %243

226:                                              ; preds = %202
  %227 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i32 0, i32 1
  %229 = load %struct.TYPE_14__*, %struct.TYPE_14__** %228, align 8
  %230 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %230, i32 0, i32 3
  store %struct.TYPE_14__* %229, %struct.TYPE_14__** %231, align 8
  %232 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %233 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %234 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %233, i32 0, i32 1
  store %struct.TYPE_14__* %232, %struct.TYPE_14__** %234, align 8
  %235 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %236 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %235, i32 0, i32 2
  %237 = call i32 @lck_mtx_lock(i32* %236)
  %238 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %239 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %238, i32 0, i32 0
  %240 = call i32 @lck_mtx_unlock(i32* %239)
  %241 = call i32 @kauth_cred_unref(i32** %16)
  %242 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  store %struct.TYPE_14__* %242, %struct.TYPE_14__** %5, align 8
  store i32 1, i32* %17, align 4
  br label %243

243:                                              ; preds = %226, %219, %173, %100, %73
  %244 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %244)
  %245 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  ret %struct.TYPE_14__* %245
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ASSERT(i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @FASTTRAP_PROVS_INDEX(i64, i8*) #2

declare dso_local i32 @lck_mtx_lock(i32*) #2

declare dso_local i64 @strncmp(i32, i8*, i32) #2

declare dso_local i32 @lck_mtx_unlock(i32*) #2

declare dso_local i32 @proc_lock(%struct.TYPE_13__*) #2

declare dso_local i32 @proc_unlock(%struct.TYPE_13__*) #2

declare dso_local i32* @kauth_cred_proc_ref(%struct.TYPE_13__*) #2

declare dso_local %struct.TYPE_14__* @kmem_zalloc(i32, i32) #2

declare dso_local i32* @fasttrap_proc_lookup(i64) #2

declare dso_local i32 @lck_mtx_init(i32*, i32, i32) #2

declare dso_local i32 @fasttrap_provider_free(%struct.TYPE_14__*) #2

declare dso_local i32 @kauth_cred_unref(i32**) #2

declare dso_local i32 @strlcpy(i32, i8*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #2

declare dso_local i64 @dtrace_register(i8*, i32*, i32, i32*, i32*, %struct.TYPE_14__*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
