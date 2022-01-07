; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StEnumLogFile.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StEnumLogFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, i8*, i32*, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64, i32*, i32* }
%struct.TYPE_23__ = type { i64, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i32, i32, i32 }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"no_read_log_file\00", align 1
@SERVER_TYPE_FARM_CONTROLLER = common dso_local global i64 0, align 8
@ERR_NOT_SUPPORTED = common dso_local global i64 0, align 8
@ERR_NOT_ENOUGH_RIGHT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CmpLogFile = common dso_local global i32* null, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @StEnumLogFile(%struct.TYPE_26__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_25__*, align 8
  %14 = alloca %struct.TYPE_23__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_22__*, align 8
  %17 = alloca %struct.TYPE_23__*, align 8
  %18 = alloca %struct.TYPE_22__*, align 8
  %19 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %4, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %5, align 8
  %20 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  store %struct.TYPE_21__* %22, %struct.TYPE_21__** %6, align 8
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %26 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %2
  %31 = load i32*, i32** %7, align 8
  %32 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = call i32* @GetHub(i32* %31, i8* %34)
  store i32* %35, i32** %10, align 8
  %36 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %30
  %41 = load i32*, i32** %10, align 8
  %42 = call i64 @GetHubAdminOption(i32* %41, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 1, i32* %9, align 4
  br label %45

45:                                               ; preds = %44, %40, %30
  %46 = load i32*, i32** %10, align 8
  %47 = call i32 @ReleaseHub(i32* %46)
  br label %57

48:                                               ; preds = %2
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SERVER_TYPE_FARM_CONTROLLER, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i64, i64* @ERR_NOT_SUPPORTED, align 8
  store i64 %55, i64* %3, align 8
  br label %257

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56, %45
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i64, i64* @ERR_NOT_ENOUGH_RIGHT, align 8
  store i64 %61, i64* %3, align 8
  br label %257

62:                                               ; preds = %57
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %64 = call i32 @FreeRpcEnumLogFile(%struct.TYPE_23__* %63)
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %66 = call i32 @Zero(%struct.TYPE_23__* %65, i32 16)
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %68 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %62
  br label %77

73:                                               ; preds = %62
  %74 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  br label %77

77:                                               ; preds = %73, %72
  %78 = phi i8* [ null, %72 ], [ %76, %73 ]
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %80 = call i32 @SiEnumLocalLogFileList(%struct.TYPE_21__* %67, i8* %78, %struct.TYPE_23__* %79)
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @SERVER_TYPE_FARM_CONTROLLER, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %193

86:                                               ; preds = %77
  %87 = call i8* @NewListFast(i32* null)
  %88 = bitcast i8* %87 to i32*
  store i32* %88, i32** %12, align 8
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @LockList(i32* %91)
  store i64 0, i64* %11, align 8
  br label %93

93:                                               ; preds = %162, %86
  %94 = load i64, i64* %11, align 8
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = call i64 @LIST_NUM(i32* %97)
  %99 = icmp slt i64 %94, %98
  br i1 %99, label %100, label %165

100:                                              ; preds = %93
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load i64, i64* %11, align 8
  %105 = call i8* @LIST_DATA(i32* %103, i64 %104)
  %106 = bitcast i8* %105 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %106, %struct.TYPE_25__** %13, align 8
  %107 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %108 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %161

111:                                              ; preds = %100
  %112 = call i8* @ZeroMalloc(i32 16)
  %113 = bitcast i8* %112 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %113, %struct.TYPE_23__** %14, align 8
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %115 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %116 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %117 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %111
  br label %126

122:                                              ; preds = %111
  %123 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %123, i32 0, i32 1
  %125 = load i8*, i8** %124, align 8
  br label %126

126:                                              ; preds = %122, %121
  %127 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %121 ], [ %125, %122 ]
  %128 = call i64 @SiCallEnumLogFileList(%struct.TYPE_21__* %114, %struct.TYPE_25__* %115, %struct.TYPE_23__* %116, i8* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %157

130:                                              ; preds = %126
  store i64 0, i64* %15, align 8
  br label %131

131:                                              ; preds = %150, %130
  %132 = load i64, i64* %15, align 8
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %134 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp slt i64 %132, %135
  br i1 %136, label %137, label %153

137:                                              ; preds = %131
  %138 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %139 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %139, align 8
  %141 = load i64, i64* %15, align 8
  %142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %140, i64 %141
  store %struct.TYPE_22__* %142, %struct.TYPE_22__** %16, align 8
  %143 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %144 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %147 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @StrCpy(i32 %145, i32 4, i32 %148)
  br label %150

150:                                              ; preds = %137
  %151 = load i64, i64* %15, align 8
  %152 = add nsw i64 %151, 1
  store i64 %152, i64* %15, align 8
  br label %131

153:                                              ; preds = %131
  %154 = load i32*, i32** %12, align 8
  %155 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %156 = call i32 @Add(i32* %154, %struct.TYPE_23__* %155)
  br label %160

157:                                              ; preds = %126
  %158 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %159 = call i32 @Free(%struct.TYPE_23__* %158)
  br label %160

160:                                              ; preds = %157, %153
  br label %161

161:                                              ; preds = %160, %100
  br label %162

162:                                              ; preds = %161
  %163 = load i64, i64* %11, align 8
  %164 = add nsw i64 %163, 1
  store i64 %164, i64* %11, align 8
  br label %93

165:                                              ; preds = %93
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %166, i32 0, i32 1
  %168 = load i32*, i32** %167, align 8
  %169 = call i32 @UnlockList(i32* %168)
  store i64 0, i64* %11, align 8
  br label %170

170:                                              ; preds = %187, %165
  %171 = load i64, i64* %11, align 8
  %172 = load i32*, i32** %12, align 8
  %173 = call i64 @LIST_NUM(i32* %172)
  %174 = icmp slt i64 %171, %173
  br i1 %174, label %175, label %190

175:                                              ; preds = %170
  %176 = load i32*, i32** %12, align 8
  %177 = load i64, i64* %11, align 8
  %178 = call i8* @LIST_DATA(i32* %176, i64 %177)
  %179 = bitcast i8* %178 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %179, %struct.TYPE_23__** %17, align 8
  %180 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %181 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %182 = call i32 @AdjoinRpcEnumLogFile(%struct.TYPE_23__* %180, %struct.TYPE_23__* %181)
  %183 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %184 = call i32 @FreeRpcEnumLogFile(%struct.TYPE_23__* %183)
  %185 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %186 = call i32 @Free(%struct.TYPE_23__* %185)
  br label %187

187:                                              ; preds = %175
  %188 = load i64, i64* %11, align 8
  %189 = add nsw i64 %188, 1
  store i64 %189, i64* %11, align 8
  br label %170

190:                                              ; preds = %170
  %191 = load i32*, i32** %12, align 8
  %192 = call i32 @ReleaseList(i32* %191)
  br label %193

193:                                              ; preds = %190, %77
  %194 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %194, i32 0, i32 2
  %196 = load i32*, i32** %195, align 8
  %197 = icmp ne i32* %196, null
  br i1 %197, label %198, label %203

198:                                              ; preds = %193
  %199 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %199, i32 0, i32 2
  %201 = load i32*, i32** %200, align 8
  %202 = call i32 @FreeEnumLogFile(i32* %201)
  br label %203

203:                                              ; preds = %198, %193
  %204 = load i32*, i32** @CmpLogFile, align 8
  %205 = call i8* @NewListFast(i32* %204)
  %206 = bitcast i8* %205 to i32*
  %207 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %207, i32 0, i32 2
  store i32* %206, i32** %208, align 8
  store i64 0, i64* %8, align 8
  br label %209

209:                                              ; preds = %252, %203
  %210 = load i64, i64* %8, align 8
  %211 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = icmp slt i64 %210, %213
  br i1 %214, label %215, label %255

215:                                              ; preds = %209
  %216 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %216, i32 0, i32 1
  %218 = load %struct.TYPE_22__*, %struct.TYPE_22__** %217, align 8
  %219 = load i64, i64* %8, align 8
  %220 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %218, i64 %219
  store %struct.TYPE_22__* %220, %struct.TYPE_22__** %18, align 8
  %221 = call i8* @ZeroMalloc(i32 16)
  %222 = bitcast i8* %221 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %222, %struct.TYPE_24__** %19, align 8
  %223 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %224 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %227 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %226, i32 0, i32 3
  store i32 %225, i32* %227, align 4
  %228 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %229 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %232 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %231, i32 0, i32 2
  store i32 %230, i32* %232, align 4
  %233 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %234 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %237 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @StrCpy(i32 %235, i32 4, i32 %238)
  %240 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %241 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %244 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @StrCpy(i32 %242, i32 4, i32 %245)
  %247 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %248 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %247, i32 0, i32 2
  %249 = load i32*, i32** %248, align 8
  %250 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %251 = call i32 @Insert(i32* %249, %struct.TYPE_24__* %250)
  br label %252

252:                                              ; preds = %215
  %253 = load i64, i64* %8, align 8
  %254 = add nsw i64 %253, 1
  store i64 %254, i64* %8, align 8
  br label %209

255:                                              ; preds = %209
  %256 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %256, i64* %3, align 8
  br label %257

257:                                              ; preds = %255, %60, %54
  %258 = load i64, i64* %3, align 8
  ret i64 %258
}

declare dso_local i32* @GetHub(i32*, i8*) #1

declare dso_local i64 @GetHubAdminOption(i32*, i8*) #1

declare dso_local i32 @ReleaseHub(i32*) #1

declare dso_local i32 @FreeRpcEnumLogFile(%struct.TYPE_23__*) #1

declare dso_local i32 @Zero(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @SiEnumLocalLogFileList(%struct.TYPE_21__*, i8*, %struct.TYPE_23__*) #1

declare dso_local i8* @NewListFast(i32*) #1

declare dso_local i32 @LockList(i32*) #1

declare dso_local i64 @LIST_NUM(i32*) #1

declare dso_local i8* @LIST_DATA(i32*, i64) #1

declare dso_local i8* @ZeroMalloc(i32) #1

declare dso_local i64 @SiCallEnumLogFileList(%struct.TYPE_21__*, %struct.TYPE_25__*, %struct.TYPE_23__*, i8*) #1

declare dso_local i32 @StrCpy(i32, i32, i32) #1

declare dso_local i32 @Add(i32*, %struct.TYPE_23__*) #1

declare dso_local i32 @Free(%struct.TYPE_23__*) #1

declare dso_local i32 @UnlockList(i32*) #1

declare dso_local i32 @AdjoinRpcEnumLogFile(%struct.TYPE_23__*, %struct.TYPE_23__*) #1

declare dso_local i32 @ReleaseList(i32*) #1

declare dso_local i32 @FreeEnumLogFile(i32*) #1

declare dso_local i32 @Insert(i32*, %struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
