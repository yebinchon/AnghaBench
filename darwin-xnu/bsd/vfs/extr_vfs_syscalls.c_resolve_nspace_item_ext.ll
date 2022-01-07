; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_resolve_nspace_item_ext.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_resolve_nspace_item_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32*, %struct.vnode*, i32 }
%struct.vnode = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.timespec = type { i64, i8* }

@VREG = common dso_local global i64 0, align 8
@VDIR = common dso_local global i64 0, align 8
@VLNK = common dso_local global i64 0, align 8
@NAMESPACE_HANDLER_SNAPSHOT_EVENT = common dso_local global i32 0, align 4
@MNTK_VIRTUALDEV = common dso_local global i32 0, align 4
@nspace_allow_virtual_devs = common dso_local global i32 0, align 4
@nspace_handlers = common dso_local global %struct.TYPE_6__* null, align 8
@EDEADLK = common dso_local global i32 0, align 4
@nspace_handler_lock = common dso_local global i32 0, align 4
@MAX_NSPACE_ITEMS = common dso_local global i32 0, align 4
@nspace_items = common dso_local global %struct.TYPE_5__* null, align 8
@nspace_handler_timeout = common dso_local global i8* null, align 8
@nspace_token_id = common dso_local global i32 0, align 4
@PVFS = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"nspace-no-space\00", align 1
@NSPACE_REARM_NO_ARG = common dso_local global i8* null, align 8
@NSPACE_ITEM_NEW = common dso_local global i32 0, align 4
@NSPACE_ITEM_SNAPSHOT_EVENT = common dso_local global i32 0, align 4
@VNEEDSSNAPSHOT = common dso_local global i32 0, align 4
@nspace_item_idx = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"namespace-done\00", align 1
@NSPACE_ITEM_DONE = common dso_local global i32 0, align 4
@NSPACE_ITEM_CANCELLED = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@NSPACE_ITEM_RESET_TIMER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [80 x i8] c"woken up for token %d but it's not done, cancelled or timedout and error == 0.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @resolve_nspace_item_ext(%struct.vnode* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.timespec, align 8
  %12 = alloca i64, align 8
  store %struct.vnode* %0, %struct.vnode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @nspace_type_for_op(i32 %13)
  store i64 %14, i64* %12, align 8
  %15 = load %struct.vnode*, %struct.vnode** %5, align 8
  %16 = getelementptr inbounds %struct.vnode, %struct.vnode* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @VREG, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %3
  %21 = load %struct.vnode*, %struct.vnode** %5, align 8
  %22 = getelementptr inbounds %struct.vnode, %struct.vnode* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @VDIR, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  %27 = load %struct.vnode*, %struct.vnode** %5, align 8
  %28 = getelementptr inbounds %struct.vnode, %struct.vnode* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @VLNK, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %367

33:                                               ; preds = %26, %20, %3
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @NAMESPACE_HANDLER_SNAPSHOT_EVENT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %33
  %39 = load %struct.vnode*, %struct.vnode** %5, align 8
  %40 = getelementptr inbounds %struct.vnode, %struct.vnode* %39, i32 0, i32 2
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = icmp ne %struct.TYPE_4__* %41, null
  br i1 %42, label %43, label %56

43:                                               ; preds = %38
  %44 = load %struct.vnode*, %struct.vnode** %5, align 8
  %45 = getelementptr inbounds %struct.vnode, %struct.vnode* %44, i32 0, i32 2
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @MNTK_VIRTUALDEV, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %43
  %53 = load i32, i32* @nspace_allow_virtual_devs, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %367

56:                                               ; preds = %52, %43, %38, %33
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** @nspace_handlers, align 8
  %58 = load i64, i64* %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %367

64:                                               ; preds = %56
  %65 = call i32 (...) @current_proc()
  %66 = call i64 @nspace_is_special_process(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i32, i32* @EDEADLK, align 4
  store i32 %69, i32* %4, align 4
  br label %367

70:                                               ; preds = %64
  %71 = call i32 @lck_mtx_lock(i32* @nspace_handler_lock)
  br label %72

72:                                               ; preds = %145, %70
  store i32 0, i32* %8, align 4
  br label %73

73:                                               ; preds = %97, %72
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @MAX_NSPACE_ITEMS, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %100

77:                                               ; preds = %73
  %78 = load %struct.vnode*, %struct.vnode** %5, align 8
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nspace_items, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 5
  %84 = load %struct.vnode*, %struct.vnode** %83, align 8
  %85 = icmp eq %struct.vnode* %78, %84
  br i1 %85, label %86, label %96

86:                                               ; preds = %77
  %87 = load i32, i32* %6, align 4
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nspace_items, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp eq i32 %87, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %86
  br label %100

96:                                               ; preds = %86, %77
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %8, align 4
  br label %73

100:                                              ; preds = %95, %73
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* @MAX_NSPACE_ITEMS, align 4
  %103 = icmp sge i32 %101, %102
  br i1 %103, label %104, label %123

104:                                              ; preds = %100
  store i32 0, i32* %8, align 4
  br label %105

105:                                              ; preds = %119, %104
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* @MAX_NSPACE_ITEMS, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %122

109:                                              ; preds = %105
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nspace_items, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %109
  br label %122

118:                                              ; preds = %109
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %8, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %8, align 4
  br label %105

122:                                              ; preds = %117, %105
  br label %131

123:                                              ; preds = %100
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nspace_items, align 8
  %125 = load i32, i32* %8, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %128, align 8
  br label %131

131:                                              ; preds = %123, %122
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* @MAX_NSPACE_ITEMS, align 4
  %134 = icmp sge i32 %132, %133
  br i1 %134, label %135, label %149

135:                                              ; preds = %131
  %136 = load i8*, i8** @nspace_handler_timeout, align 8
  %137 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i32 0, i32 1
  store i8* %136, i8** %137, align 8
  %138 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i32 0, i32 0
  store i64 0, i64* %138, align 8
  %139 = load i32, i32* @PVFS, align 4
  %140 = load i32, i32* @PCATCH, align 4
  %141 = or i32 %139, %140
  %142 = call i32 @msleep(i32* @nspace_token_id, i32* @nspace_handler_lock, i32 %141, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.timespec* %11)
  store i32 %142, i32* %9, align 4
  %143 = load i32, i32* %9, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %135
  br label %72

146:                                              ; preds = %135
  %147 = call i32 @lck_mtx_unlock(i32* @nspace_handler_lock)
  %148 = load i32, i32* %9, align 4
  store i32 %148, i32* %4, align 4
  br label %367

149:                                              ; preds = %131
  %150 = load %struct.vnode*, %struct.vnode** %5, align 8
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nspace_items, align 8
  %152 = load i32, i32* %8, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 5
  %156 = load %struct.vnode*, %struct.vnode** %155, align 8
  %157 = icmp ne %struct.vnode* %150, %156
  br i1 %157, label %158, label %242

158:                                              ; preds = %149
  %159 = load %struct.vnode*, %struct.vnode** %5, align 8
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nspace_items, align 8
  %161 = load i32, i32* %8, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 5
  store %struct.vnode* %159, %struct.vnode** %164, align 8
  %165 = load i8*, i8** %7, align 8
  %166 = load i8*, i8** @NSPACE_REARM_NO_ARG, align 8
  %167 = icmp eq i8* %165, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %158
  br label %171

169:                                              ; preds = %158
  %170 = load i8*, i8** %7, align 8
  br label %171

171:                                              ; preds = %169, %168
  %172 = phi i8* [ null, %168 ], [ %170, %169 ]
  %173 = bitcast i8* %172 to i32*
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nspace_items, align 8
  %175 = load i32, i32* %8, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 4
  store i32* %173, i32** %178, align 8
  %179 = load i32, i32* %6, align 4
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nspace_items, align 8
  %181 = load i32, i32* %8, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 0
  store i32 %179, i32* %184, align 8
  %185 = load %struct.vnode*, %struct.vnode** %5, align 8
  %186 = call i32 @vnode_vid(%struct.vnode* %185)
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nspace_items, align 8
  %188 = load i32, i32* %8, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 6
  store i32 %186, i32* %191, align 8
  %192 = load i32, i32* @NSPACE_ITEM_NEW, align 4
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nspace_items, align 8
  %194 = load i32, i32* %8, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 1
  store i32 %192, i32* %197, align 4
  %198 = load i64, i64* %12, align 8
  %199 = call i32 @nspace_item_flags_for_type(i64 %198)
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nspace_items, align 8
  %201 = load i32, i32* %8, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = or i32 %205, %199
  store i32 %206, i32* %204, align 4
  %207 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nspace_items, align 8
  %208 = load i32, i32* %8, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @NSPACE_ITEM_SNAPSHOT_EVENT, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %230

216:                                              ; preds = %171
  %217 = load i8*, i8** %7, align 8
  %218 = icmp ne i8* %217, null
  br i1 %218, label %219, label %229

219:                                              ; preds = %216
  %220 = load %struct.vnode*, %struct.vnode** %5, align 8
  %221 = call i32 @vnode_lock_spin(%struct.vnode* %220)
  %222 = load i32, i32* @VNEEDSSNAPSHOT, align 4
  %223 = load %struct.vnode*, %struct.vnode** %5, align 8
  %224 = getelementptr inbounds %struct.vnode, %struct.vnode* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  %226 = or i32 %225, %222
  store i32 %226, i32* %224, align 8
  %227 = load %struct.vnode*, %struct.vnode** %5, align 8
  %228 = call i32 @vnode_unlock(%struct.vnode* %227)
  br label %229

229:                                              ; preds = %219, %216
  br label %230

230:                                              ; preds = %229, %171
  %231 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nspace_items, align 8
  %232 = load i32, i32* %8, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 3
  store i32 0, i32* %235, align 4
  %236 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nspace_items, align 8
  %237 = load i32, i32* %8, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i32 0, i32 2
  store i32 1, i32* %240, align 8
  %241 = call i32 @wakeup(i32* @nspace_item_idx)
  br label %242

242:                                              ; preds = %230, %149
  store i32 1, i32* %10, align 4
  br label %243

243:                                              ; preds = %362, %305, %242
  %244 = load i32, i32* %10, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %364

246:                                              ; preds = %243
  %247 = load i8*, i8** @nspace_handler_timeout, align 8
  %248 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i32 0, i32 1
  store i8* %247, i8** %248, align 8
  %249 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i32 0, i32 0
  store i64 0, i64* %249, align 8
  %250 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nspace_items, align 8
  %251 = load i32, i32* %8, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %253, i32 0, i32 5
  %255 = bitcast %struct.vnode** %254 to i32*
  %256 = load i32, i32* @PVFS, align 4
  %257 = load i32, i32* @PCATCH, align 4
  %258 = or i32 %256, %257
  %259 = call i32 @msleep(i32* %255, i32* @nspace_handler_lock, i32 %258, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), %struct.timespec* %11)
  store i32 %259, i32* %9, align 4
  %260 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nspace_items, align 8
  %261 = load i32, i32* %8, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %260, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* @NSPACE_ITEM_DONE, align 4
  %267 = and i32 %265, %266
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %270

269:                                              ; preds = %246
  store i32 0, i32* %9, align 4
  br label %332

270:                                              ; preds = %246
  %271 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nspace_items, align 8
  %272 = load i32, i32* %8, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %271, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* @NSPACE_ITEM_CANCELLED, align 4
  %278 = and i32 %276, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %287

280:                                              ; preds = %270
  %281 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nspace_items, align 8
  %282 = load i32, i32* %8, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %281, i64 %283
  %285 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %284, i32 0, i32 3
  %286 = load i32, i32* %285, align 4
  store i32 %286, i32* %9, align 4
  br label %331

287:                                              ; preds = %270
  %288 = load i32, i32* %9, align 4
  %289 = load i32, i32* @EWOULDBLOCK, align 4
  %290 = icmp eq i32 %288, %289
  br i1 %290, label %295, label %291

291:                                              ; preds = %287
  %292 = load i32, i32* %9, align 4
  %293 = load i32, i32* @ETIMEDOUT, align 4
  %294 = icmp eq i32 %292, %293
  br i1 %294, label %295, label %318

295:                                              ; preds = %291, %287
  %296 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nspace_items, align 8
  %297 = load i32, i32* %8, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %296, i64 %298
  %300 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = load i32, i32* @NSPACE_ITEM_RESET_TIMER, align 4
  %303 = and i32 %301, %302
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %315

305:                                              ; preds = %295
  %306 = load i32, i32* @NSPACE_ITEM_RESET_TIMER, align 4
  %307 = xor i32 %306, -1
  %308 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nspace_items, align 8
  %309 = load i32, i32* %8, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %308, i64 %310
  %312 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 4
  %314 = and i32 %313, %307
  store i32 %314, i32* %312, align 4
  br label %243

315:                                              ; preds = %295
  %316 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %316, i32* %9, align 4
  br label %317

317:                                              ; preds = %315
  br label %330

318:                                              ; preds = %291
  %319 = load i32, i32* %9, align 4
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %321, label %329

321:                                              ; preds = %318
  %322 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nspace_items, align 8
  %323 = load i32, i32* %8, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %322, i64 %324
  %326 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %325, i32 0, i32 3
  %327 = load i32, i32* %326, align 4
  %328 = call i32 @printf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.2, i64 0, i64 0), i32 %327)
  br label %329

329:                                              ; preds = %321, %318
  br label %330

330:                                              ; preds = %329, %317
  br label %331

331:                                              ; preds = %330, %280
  br label %332

332:                                              ; preds = %331, %269
  %333 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nspace_items, align 8
  %334 = load i32, i32* %8, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %333, i64 %335
  %337 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %336, i32 0, i32 2
  %338 = load i32, i32* %337, align 8
  %339 = add nsw i32 %338, -1
  store i32 %339, i32* %337, align 8
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %341, label %362

341:                                              ; preds = %332
  %342 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nspace_items, align 8
  %343 = load i32, i32* %8, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %342, i64 %344
  %346 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %345, i32 0, i32 5
  store %struct.vnode* null, %struct.vnode** %346, align 8
  %347 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nspace_items, align 8
  %348 = load i32, i32* %8, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %347, i64 %349
  %351 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %350, i32 0, i32 4
  store i32* null, i32** %351, align 8
  %352 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nspace_items, align 8
  %353 = load i32, i32* %8, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %352, i64 %354
  %356 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %355, i32 0, i32 3
  store i32 0, i32* %356, align 4
  %357 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nspace_items, align 8
  %358 = load i32, i32* %8, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %357, i64 %359
  %361 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %360, i32 0, i32 1
  store i32 0, i32* %361, align 4
  br label %362

362:                                              ; preds = %341, %332
  %363 = call i32 @wakeup(i32* @nspace_token_id)
  store i32 0, i32* %10, align 4
  br label %243

364:                                              ; preds = %243
  %365 = call i32 @lck_mtx_unlock(i32* @nspace_handler_lock)
  %366 = load i32, i32* %9, align 4
  store i32 %366, i32* %4, align 4
  br label %367

367:                                              ; preds = %364, %146, %68, %63, %55, %32
  %368 = load i32, i32* %4, align 4
  ret i32 %368
}

declare dso_local i64 @nspace_type_for_op(i32) #1

declare dso_local i64 @nspace_is_special_process(i32) #1

declare dso_local i32 @current_proc(...) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @msleep(i32*, i32*, i32, i8*, %struct.timespec*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @vnode_vid(%struct.vnode*) #1

declare dso_local i32 @nspace_item_flags_for_type(i64) #1

declare dso_local i32 @vnode_lock_spin(%struct.vnode*) #1

declare dso_local i32 @vnode_unlock(%struct.vnode*) #1

declare dso_local i32 @wakeup(i32*) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
