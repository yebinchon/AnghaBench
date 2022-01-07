; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_vm.c_VM_Create.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_vm.c_VM_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 (i32*)*, i32, i32, i64, i32, i64, i32, i8*, i8*, i32*, i64, i32, i32 }
%struct.TYPE_13__ = type { i64, i32, i32, i32, i64, i32, i32 }

@MAX_QPATH = common dso_local global i32 0, align 4
@ERR_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"VM_Create: bad parms\00", align 1
@MAX_VM = common dso_local global i32 0, align 4
@vmTable = common dso_local global %struct.TYPE_12__* null, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"VM_Create: no free vm_t\00", align 1
@VMI_NATIVE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"fs_restrict\00", align 1
@VMI_COMPILED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"Loading dll file %s.\0A\00", align 1
@VM_DllSyscall = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"Failed to load dll, looking for qvm.\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"vm/%s.qvm\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Loading vm file %s.\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"Failed.\0A\00", align 1
@VM_MAGIC = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [18 x i8] c"%s has bad header\00", align 1
@h_high = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@STACK_SIZE = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [35 x i8] c"%s loaded in %d bytes on the hunk\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @VM_Create(i8* %0, i32 (i32*)* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32 (i32*)*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 (i32*)* %1, i32 (i32*)** %6, align 8
  store i64 %2, i64* %7, align 8
  %17 = load i32, i32* @MAX_QPATH, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %14, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %15, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %3
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = icmp ne i8 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32 (i32*)*, i32 (i32*)** %6, align 8
  %30 = icmp ne i32 (i32*)* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %28, %23, %3
  %32 = load i32, i32* @ERR_FATAL, align 4
  %33 = call i32 (i32, i8*, ...) @Com_Error(i32 %32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %28
  %35 = call i32 (...) @Hunk_MemoryRemaining()
  store i32 %35, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %36

36:                                               ; preds = %57, %34
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* @MAX_VM, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %60

40:                                               ; preds = %36
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** @vmTable, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 9
  %46 = load i32*, i32** %45, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @Q_stricmp(i32* %46, i8* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %40
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** @vmTable, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i64 %53
  store %struct.TYPE_12__* %54, %struct.TYPE_12__** %8, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %55, %struct.TYPE_12__** %4, align 8
  store i32 1, i32* %16, align 4
  br label %342

56:                                               ; preds = %40
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %12, align 4
  br label %36

60:                                               ; preds = %36
  store i32 0, i32* %12, align 4
  br label %61

61:                                               ; preds = %77, %60
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* @MAX_VM, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %80

65:                                               ; preds = %61
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** @vmTable, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 9
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %65
  br label %80

76:                                               ; preds = %65
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %12, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %12, align 4
  br label %61

80:                                               ; preds = %75, %61
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* @MAX_VM, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = load i32, i32* @ERR_FATAL, align 4
  %86 = call i32 (i32, i8*, ...) @Com_Error(i32 %85, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %87

87:                                               ; preds = %84, %80
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** @vmTable, align 8
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i64 %90
  store %struct.TYPE_12__* %91, %struct.TYPE_12__** %8, align 8
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 9
  %94 = load i32*, i32** %93, align 8
  %95 = load i8*, i8** %5, align 8
  %96 = call i32 @Q_strncpyz(i32* %94, i8* %95, i32 8)
  %97 = load i32 (i32*)*, i32 (i32*)** %6, align 8
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  store i32 (i32*)* %97, i32 (i32*)** %99, align 8
  %100 = load i64, i64* %7, align 8
  %101 = load i64, i64* @VMI_NATIVE, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %87
  %104 = call i64 @Cvar_VariableValue(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = load i64, i64* @VMI_COMPILED, align 8
  store i64 %107, i64* %7, align 8
  br label %108

108:                                              ; preds = %106, %103
  br label %109

109:                                              ; preds = %108, %87
  %110 = load i64, i64* %7, align 8
  %111 = load i64, i64* @VMI_NATIVE, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %137

113:                                              ; preds = %109
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 9
  %116 = load i32*, i32** %115, align 8
  %117 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32* %116)
  %118 = load i8*, i8** %5, align 8
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 12
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 11
  %124 = load i32, i32* @VM_DllSyscall, align 4
  %125 = call i64 @Sys_LoadDll(i8* %118, i32 %121, i32* %123, i32 %124)
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 10
  store i64 %125, i64* %127, align 8
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 10
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %113
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %133, %struct.TYPE_12__** %4, align 8
  store i32 1, i32* %16, align 4
  br label %342

134:                                              ; preds = %113
  %135 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %136 = load i64, i64* @VMI_COMPILED, align 8
  store i64 %136, i64* %7, align 8
  br label %137

137:                                              ; preds = %134, %109
  %138 = trunc i64 %18 to i32
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 9
  %141 = load i32*, i32** %140, align 8
  %142 = call i32 @Com_sprintf(i8* %20, i32 %138, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32* %141)
  %143 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8* %20)
  %144 = bitcast %struct.TYPE_13__** %9 to i8**
  %145 = call i32 @FS_ReadFile(i8* %20, i8** %144)
  store i32 %145, i32* %10, align 4
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %147 = icmp ne %struct.TYPE_13__* %146, null
  br i1 %147, label %152, label %148

148:                                              ; preds = %137
  %149 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %151 = call i32 @VM_Free(%struct.TYPE_12__* %150)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  store i32 1, i32* %16, align 4
  br label %342

152:                                              ; preds = %137
  store i32 0, i32* %12, align 4
  br label %153

153:                                              ; preds = %170, %152
  %154 = load i32, i32* %12, align 4
  %155 = sext i32 %154 to i64
  %156 = icmp ult i64 %155, 10
  br i1 %156, label %157, label %173

157:                                              ; preds = %153
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %159 = bitcast %struct.TYPE_13__* %158 to i32*
  %160 = load i32, i32* %12, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @LittleLong(i32 %163)
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %166 = bitcast %struct.TYPE_13__* %165 to i32*
  %167 = load i32, i32* %12, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  store i32 %164, i32* %169, align 4
  br label %170

170:                                              ; preds = %157
  %171 = load i32, i32* %12, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %12, align 4
  br label %153

173:                                              ; preds = %153
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @VM_MAGIC, align 8
  %178 = icmp ne i64 %176, %177
  br i1 %178, label %199, label %179

179:                                              ; preds = %173
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %199, label %184

184:                                              ; preds = %179
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %199, label %189

189:                                              ; preds = %184
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 8
  %193 = icmp slt i32 %192, 0
  br i1 %193, label %199, label %194

194:                                              ; preds = %189
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 4
  %197 = load i64, i64* %196, align 8
  %198 = icmp sle i64 %197, 0
  br i1 %198, label %199, label %204

199:                                              ; preds = %194, %189, %184, %179, %173
  %200 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %201 = call i32 @VM_Free(%struct.TYPE_12__* %200)
  %202 = load i32, i32* @ERR_FATAL, align 4
  %203 = call i32 (i32, i8*, ...) @Com_Error(i32 %202, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8* %20)
  br label %204

204:                                              ; preds = %199, %194
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 8
  %211 = add nsw i32 %207, %210
  %212 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 8
  %215 = add nsw i32 %211, %214
  store i32 %215, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %216

216:                                              ; preds = %222, %204
  %217 = load i32, i32* %11, align 4
  %218 = load i32, i32* %12, align 4
  %219 = shl i32 1, %218
  %220 = icmp sgt i32 %217, %219
  br i1 %220, label %221, label %225

221:                                              ; preds = %216
  br label %222

222:                                              ; preds = %221
  %223 = load i32, i32* %12, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %12, align 4
  br label %216

225:                                              ; preds = %216
  %226 = load i32, i32* %12, align 4
  %227 = shl i32 1, %226
  store i32 %227, i32* %11, align 4
  %228 = load i32, i32* %11, align 4
  %229 = load i32, i32* @h_high, align 4
  %230 = call i8* @Hunk_Alloc(i32 %228, i32 %229)
  %231 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 8
  store i8* %230, i8** %232, align 8
  %233 = load i32, i32* %11, align 4
  %234 = sub nsw i32 %233, 1
  %235 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i32 0, i32 1
  store i32 %234, i32* %236, align 8
  %237 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 8
  %239 = load i8*, i8** %238, align 8
  %240 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %241 = bitcast %struct.TYPE_13__* %240 to i32*
  %242 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %242, i32 0, i32 5
  %244 = load i32, i32* %243, align 8
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %241, i64 %245
  %247 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %248 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %251 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 8
  %253 = add nsw i32 %249, %252
  %254 = call i32 @Com_Memcpy(i8* %239, i32* %246, i32 %253)
  store i32 0, i32* %12, align 4
  br label %255

255:                                              ; preds = %278, %225
  %256 = load i32, i32* %12, align 4
  %257 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %258 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 4
  %260 = icmp slt i32 %256, %259
  br i1 %260, label %261, label %281

261:                                              ; preds = %255
  %262 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %263 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %262, i32 0, i32 8
  %264 = load i8*, i8** %263, align 8
  %265 = load i32, i32* %12, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr i8, i8* %264, i64 %266
  %268 = bitcast i8* %267 to i32*
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @LittleLong(i32 %269)
  %271 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %272 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %271, i32 0, i32 8
  %273 = load i8*, i8** %272, align 8
  %274 = load i32, i32* %12, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr i8, i8* %273, i64 %275
  %277 = bitcast i8* %276 to i32*
  store i32 %270, i32* %277, align 4
  br label %278

278:                                              ; preds = %261
  %279 = load i32, i32* %12, align 4
  %280 = add nsw i32 %279, 4
  store i32 %280, i32* %12, align 4
  br label %255

281:                                              ; preds = %255
  %282 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %283 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %282, i32 0, i32 6
  %284 = load i32, i32* %283, align 4
  %285 = mul nsw i32 %284, 4
  %286 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %287 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %286, i32 0, i32 2
  store i32 %285, i32* %287, align 4
  %288 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %289 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 4
  %291 = load i32, i32* @h_high, align 4
  %292 = call i8* @Hunk_Alloc(i32 %290, i32 %291)
  %293 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %294 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %293, i32 0, i32 7
  store i8* %292, i8** %294, align 8
  %295 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %296 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %295, i32 0, i32 4
  %297 = load i64, i64* %296, align 8
  %298 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %299 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %298, i32 0, i32 3
  store i64 %297, i64* %299, align 8
  %300 = load i64, i64* %7, align 8
  %301 = load i64, i64* @VMI_COMPILED, align 8
  %302 = icmp sge i64 %300, %301
  br i1 %302, label %303, label %310

303:                                              ; preds = %281
  %304 = load i32, i32* @qtrue, align 4
  %305 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %306 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %305, i32 0, i32 6
  store i32 %304, i32* %306, align 8
  %307 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %308 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %309 = call i32 @VM_Compile(%struct.TYPE_12__* %307, %struct.TYPE_13__* %308)
  br label %317

310:                                              ; preds = %281
  %311 = load i32, i32* @qfalse, align 4
  %312 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %313 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %312, i32 0, i32 6
  store i32 %311, i32* %313, align 8
  %314 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %315 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %316 = call i32 @VM_PrepareInterpreter(%struct.TYPE_12__* %314, %struct.TYPE_13__* %315)
  br label %317

317:                                              ; preds = %310, %303
  %318 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %319 = call i32 @FS_FreeFile(%struct.TYPE_13__* %318)
  %320 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %321 = call i32 @VM_LoadSymbols(%struct.TYPE_12__* %320)
  %322 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %323 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 8
  %325 = add nsw i32 %324, 1
  %326 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %327 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %326, i32 0, i32 4
  store i32 %325, i32* %327, align 8
  %328 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %329 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %328, i32 0, i32 4
  %330 = load i32, i32* %329, align 8
  %331 = sext i32 %330 to i64
  %332 = load i64, i64* @STACK_SIZE, align 8
  %333 = sub nsw i64 %331, %332
  %334 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %335 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %334, i32 0, i32 5
  store i64 %333, i64* %335, align 8
  %336 = load i8*, i8** %5, align 8
  %337 = load i32, i32* %13, align 4
  %338 = call i32 (...) @Hunk_MemoryRemaining()
  %339 = sub nsw i32 %337, %338
  %340 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i8* %336, i32 %339)
  %341 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %341, %struct.TYPE_12__** %4, align 8
  store i32 1, i32* %16, align 4
  br label %342

342:                                              ; preds = %317, %148, %132, %50
  %343 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %343)
  %344 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  ret %struct.TYPE_12__* %344
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Com_Error(i32, i8*, ...) #2

declare dso_local i32 @Hunk_MemoryRemaining(...) #2

declare dso_local i32 @Q_stricmp(i32*, i8*) #2

declare dso_local i32 @Q_strncpyz(i32*, i8*, i32) #2

declare dso_local i64 @Cvar_VariableValue(i8*) #2

declare dso_local i32 @Com_Printf(i8*, ...) #2

declare dso_local i64 @Sys_LoadDll(i8*, i32, i32*, i32) #2

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i32*) #2

declare dso_local i32 @FS_ReadFile(i8*, i8**) #2

declare dso_local i32 @VM_Free(%struct.TYPE_12__*) #2

declare dso_local i32 @LittleLong(i32) #2

declare dso_local i8* @Hunk_Alloc(i32, i32) #2

declare dso_local i32 @Com_Memcpy(i8*, i32*, i32) #2

declare dso_local i32 @VM_Compile(%struct.TYPE_12__*, %struct.TYPE_13__*) #2

declare dso_local i32 @VM_PrepareInterpreter(%struct.TYPE_12__*, %struct.TYPE_13__*) #2

declare dso_local i32 @FS_FreeFile(%struct.TYPE_13__*) #2

declare dso_local i32 @VM_LoadSymbols(%struct.TYPE_12__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
