; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_mach_loader.c_load_segment.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_mach_loader.c_load_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8* }
%struct.load_command = type { i64, i64 }
%struct.vnode = type { i32 }
%struct.TYPE_9__ = type { i64, i64, i64, i64, i64, i32, i64 }
%struct.segment_command_64 = type { i64, i64, i64, i64, i32, i32, i32, i64, i32 }
%struct.segment_command = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@LC_SEGMENT_64 = common dso_local global i64 0, align 8
@LOAD_BADMACHO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [81 x i8] c"+++ load_segment %s vm[0x%llx:0x%llx] file[0x%llx:0x%llx] prot %d/%d flags 0x%x\0A\00", align 1
@PAGE_MASK_64 = common dso_local global i64 0, align 8
@cs_debug = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"section outside code signature\0A\00", align 1
@LOAD_SUCCESS = common dso_local global i64 0, align 8
@VM_PROT_ALL = common dso_local global i32 0, align 4
@VM_PROT_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"++++++ load_segment: page_zero up to 0x%llx\0A\00", align 1
@KERN_SUCCESS = common dso_local global i64 0, align 8
@LOAD_FAILURE = common dso_local global i64 0, align 8
@VM_MAP_NULL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [76 x i8] c"++++++ load_segment: mapping at vm [0x%llx:0x%llx] of file [0x%llx:0x%llx]\0A\00", align 1
@LOAD_NOSPACE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [55 x i8] c"++++++ load_segment: delta mapping vm [0x%llx:0x%llx]\0A\00", align 1
@MEMORY_OBJECT_CONTROL_NULL = common dso_local global i8* null, align 8
@SG_PROTECTED_VERSION_1 = common dso_local global i32 0, align 4
@MH_DYLINKER = common dso_local global i64 0, align 8
@MACH_VM_MIN_ADDRESS = common dso_local global i64 0, align 8
@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_PROT_EXECUTE = common dso_local global i32 0, align 4
@FOURK_PAGE_MASK = common dso_local global i64 0, align 8
@FOURK_PAGE_SIZE = common dso_local global i64 0, align 8
@IPC_PORT_NULL = common dso_local global i32 0, align 4
@LOAD_RESOURCE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@VM_FLAGS_ANYWHERE = common dso_local global i32 0, align 4
@VM_FLAGS_FIXED = common dso_local global i32 0, align 4
@VM_INHERIT_DEFAULT = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_BSD = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_NONE = common dso_local global i32 0, align 4
@VM_MAP_KERNEL_FLAGS_NONE = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@kernel_map = common dso_local global i32 0, align 4
@map_addr = common dso_local global i64 0, align 8
@map_size = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.load_command*, i64, i8*, i64, i64, %struct.vnode*, i32, i64, %struct.TYPE_9__*)* @load_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @load_segment(%struct.load_command* %0, i64 %1, i8* %2, i64 %3, i64 %4, %struct.vnode* %5, i32 %6, i64 %7, %struct.TYPE_9__* %8) #0 {
  %10 = alloca i64, align 8
  %11 = alloca %struct.load_command*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.vnode*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_9__*, align 8
  %20 = alloca %struct.segment_command_64, align 8
  %21 = alloca %struct.segment_command_64*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i8*, align 8
  %40 = alloca i64, align 8
  %41 = alloca i64, align 8
  %42 = alloca i64, align 8
  store %struct.load_command* %0, %struct.load_command** %11, align 8
  store i64 %1, i64* %12, align 8
  store i8* %2, i8** %13, align 8
  store i64 %3, i64* %14, align 8
  store i64 %4, i64* %15, align 8
  store %struct.vnode* %5, %struct.vnode** %16, align 8
  store i32 %6, i32* %17, align 4
  store i64 %7, i64* %18, align 8
  store %struct.TYPE_9__* %8, %struct.TYPE_9__** %19, align 8
  %43 = load i32, i32* @PAGE_SIZE, align 4
  %44 = load i32, i32* %17, align 4
  %45 = call i64 @vm_map_page_size(i32 %44)
  %46 = call i64 @MAX(i32 %43, i64 %45)
  store i64 %46, i64* %40, align 8
  %47 = load i32, i32* @PAGE_MASK, align 4
  %48 = load i32, i32* %17, align 4
  %49 = call i64 @vm_map_page_mask(i32 %48)
  %50 = call i64 @MAX(i32 %47, i64 %49)
  store i64 %50, i64* %41, align 8
  %51 = load i8*, i8** @FALSE, align 8
  store i8* %51, i8** %39, align 8
  %52 = load i64, i64* @LC_SEGMENT_64, align 8
  %53 = load %struct.load_command*, %struct.load_command** %11, align 8
  %54 = getelementptr inbounds %struct.load_command, %struct.load_command* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %52, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %9
  store i64 64, i64* %26, align 8
  store i64 4, i64* %28, align 8
  br label %59

58:                                               ; preds = %9
  store i64 4, i64* %26, align 8
  store i64 4, i64* %28, align 8
  br label %59

59:                                               ; preds = %58, %57
  %60 = load %struct.load_command*, %struct.load_command** %11, align 8
  %61 = getelementptr inbounds %struct.load_command, %struct.load_command* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %26, align 8
  %64 = icmp ult i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i64, i64* @LOAD_BADMACHO, align 8
  store i64 %66, i64* %10, align 8
  br label %544

67:                                               ; preds = %59
  %68 = load %struct.load_command*, %struct.load_command** %11, align 8
  %69 = getelementptr inbounds %struct.load_command, %struct.load_command* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %26, align 8
  %72 = sub i64 %70, %71
  store i64 %72, i64* %27, align 8
  %73 = load i64, i64* @LC_SEGMENT_64, align 8
  %74 = load %struct.load_command*, %struct.load_command** %11, align 8
  %75 = getelementptr inbounds %struct.load_command, %struct.load_command* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %73, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %67
  %79 = load %struct.load_command*, %struct.load_command** %11, align 8
  %80 = bitcast %struct.load_command* %79 to %struct.segment_command_64*
  store %struct.segment_command_64* %80, %struct.segment_command_64** %21, align 8
  br label %86

81:                                               ; preds = %67
  store %struct.segment_command_64* %20, %struct.segment_command_64** %21, align 8
  %82 = load %struct.load_command*, %struct.load_command** %11, align 8
  %83 = bitcast %struct.load_command* %82 to %struct.segment_command*
  %84 = load %struct.segment_command_64*, %struct.segment_command_64** %21, align 8
  %85 = call i32 @widen_segment_command(%struct.segment_command* %83, %struct.segment_command_64* %84)
  br label %86

86:                                               ; preds = %81, %78
  %87 = load i8*, i8** %39, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %133

89:                                               ; preds = %86
  %90 = load %struct.segment_command_64*, %struct.segment_command_64** %21, align 8
  %91 = getelementptr inbounds %struct.segment_command_64, %struct.segment_command_64* %90, i32 0, i32 8
  %92 = load i32, i32* %91, align 8
  %93 = load i64, i64* %18, align 8
  %94 = load %struct.segment_command_64*, %struct.segment_command_64** %21, align 8
  %95 = getelementptr inbounds %struct.segment_command_64, %struct.segment_command_64* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %93, %96
  %98 = load i64, i64* %18, align 8
  %99 = load %struct.segment_command_64*, %struct.segment_command_64** %21, align 8
  %100 = getelementptr inbounds %struct.segment_command_64, %struct.segment_command_64* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %98, %101
  %103 = load %struct.segment_command_64*, %struct.segment_command_64** %21, align 8
  %104 = getelementptr inbounds %struct.segment_command_64, %struct.segment_command_64* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %102, %105
  %107 = load i64, i64* %14, align 8
  %108 = load %struct.segment_command_64*, %struct.segment_command_64** %21, align 8
  %109 = getelementptr inbounds %struct.segment_command_64, %struct.segment_command_64* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %107, %110
  %112 = load i64, i64* %14, align 8
  %113 = load %struct.segment_command_64*, %struct.segment_command_64** %21, align 8
  %114 = getelementptr inbounds %struct.segment_command_64, %struct.segment_command_64* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = add nsw i64 %112, %115
  %117 = load %struct.segment_command_64*, %struct.segment_command_64** %21, align 8
  %118 = getelementptr inbounds %struct.segment_command_64, %struct.segment_command_64* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %116, %119
  %121 = load %struct.segment_command_64*, %struct.segment_command_64** %21, align 8
  %122 = getelementptr inbounds %struct.segment_command_64, %struct.segment_command_64* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.segment_command_64*, %struct.segment_command_64** %21, align 8
  %125 = getelementptr inbounds %struct.segment_command_64, %struct.segment_command_64* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.segment_command_64*, %struct.segment_command_64** %21, align 8
  %128 = getelementptr inbounds %struct.segment_command_64, %struct.segment_command_64* %127, i32 0, i32 6
  %129 = load i32, i32* %128, align 8
  %130 = sext i32 %129 to i64
  %131 = inttoptr i64 %130 to i8*
  %132 = call i32 @MACHO_PRINTF(i8* %131)
  br label %133

133:                                              ; preds = %89, %86
  %134 = load %struct.segment_command_64*, %struct.segment_command_64** %21, align 8
  %135 = getelementptr inbounds %struct.segment_command_64, %struct.segment_command_64* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.segment_command_64*, %struct.segment_command_64** %21, align 8
  %138 = getelementptr inbounds %struct.segment_command_64, %struct.segment_command_64* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = add nsw i64 %136, %139
  %141 = load %struct.segment_command_64*, %struct.segment_command_64** %21, align 8
  %142 = getelementptr inbounds %struct.segment_command_64, %struct.segment_command_64* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = icmp slt i64 %140, %143
  br i1 %144, label %155, label %145

145:                                              ; preds = %133
  %146 = load %struct.segment_command_64*, %struct.segment_command_64** %21, align 8
  %147 = getelementptr inbounds %struct.segment_command_64, %struct.segment_command_64* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.segment_command_64*, %struct.segment_command_64** %21, align 8
  %150 = getelementptr inbounds %struct.segment_command_64, %struct.segment_command_64* %149, i32 0, i32 3
  %151 = load i64, i64* %150, align 8
  %152 = add nsw i64 %148, %151
  %153 = load i64, i64* %15, align 8
  %154 = icmp sgt i64 %152, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %145, %133
  %156 = load i64, i64* @LOAD_BADMACHO, align 8
  store i64 %156, i64* %10, align 8
  br label %544

157:                                              ; preds = %145
  %158 = load i64, i64* %27, align 8
  %159 = load i64, i64* %28, align 8
  %160 = udiv i64 %158, %159
  %161 = load %struct.segment_command_64*, %struct.segment_command_64** %21, align 8
  %162 = getelementptr inbounds %struct.segment_command_64, %struct.segment_command_64* %161, i32 0, i32 7
  %163 = load i64, i64* %162, align 8
  %164 = icmp ult i64 %160, %163
  br i1 %164, label %165, label %167

165:                                              ; preds = %157
  %166 = load i64, i64* @LOAD_BADMACHO, align 8
  store i64 %166, i64* %10, align 8
  br label %544

167:                                              ; preds = %157
  %168 = load i64, i64* %14, align 8
  %169 = load %struct.segment_command_64*, %struct.segment_command_64** %21, align 8
  %170 = getelementptr inbounds %struct.segment_command_64, %struct.segment_command_64* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = add nsw i64 %168, %171
  store i64 %172, i64* %29, align 8
  %173 = load %struct.segment_command_64*, %struct.segment_command_64** %21, align 8
  %174 = getelementptr inbounds %struct.segment_command_64, %struct.segment_command_64* %173, i32 0, i32 3
  %175 = load i64, i64* %174, align 8
  store i64 %175, i64* %30, align 8
  %176 = load i64, i64* %29, align 8
  %177 = load i64, i64* @PAGE_MASK_64, align 8
  %178 = and i64 %176, %177
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %186, label %180

180:                                              ; preds = %167
  %181 = load i64, i64* %29, align 8
  %182 = load i32, i32* %17, align 4
  %183 = call i64 @vm_map_page_mask(i32 %182)
  %184 = and i64 %181, %183
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %180, %167
  %187 = load i64, i64* @LOAD_BADMACHO, align 8
  store i64 %187, i64* %10, align 8
  br label %544

188:                                              ; preds = %180
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %220

193:                                              ; preds = %188
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.segment_command_64*, %struct.segment_command_64** %21, align 8
  %198 = getelementptr inbounds %struct.segment_command_64, %struct.segment_command_64* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = icmp slt i64 %196, %199
  br i1 %200, label %201, label %220

201:                                              ; preds = %193
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.segment_command_64*, %struct.segment_command_64** %21, align 8
  %206 = getelementptr inbounds %struct.segment_command_64, %struct.segment_command_64* %205, i32 0, i32 2
  %207 = load i64, i64* %206, align 8
  %208 = sub nsw i64 %204, %207
  %209 = load %struct.segment_command_64*, %struct.segment_command_64** %21, align 8
  %210 = getelementptr inbounds %struct.segment_command_64, %struct.segment_command_64* %209, i32 0, i32 3
  %211 = load i64, i64* %210, align 8
  %212 = icmp slt i64 %208, %211
  br i1 %212, label %213, label %220

213:                                              ; preds = %201
  %214 = load i64, i64* @cs_debug, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %213
  %217 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %218

218:                                              ; preds = %216, %213
  %219 = load i64, i64* @LOAD_BADMACHO, align 8
  store i64 %219, i64* %10, align 8
  br label %544

220:                                              ; preds = %201, %193, %188
  %221 = load %struct.segment_command_64*, %struct.segment_command_64** %21, align 8
  %222 = getelementptr inbounds %struct.segment_command_64, %struct.segment_command_64* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* %18, align 8
  %225 = add nsw i64 %223, %224
  store i64 %225, i64* %31, align 8
  %226 = load %struct.segment_command_64*, %struct.segment_command_64** %21, align 8
  %227 = getelementptr inbounds %struct.segment_command_64, %struct.segment_command_64* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  store i64 %228, i64* %32, align 8
  %229 = load i64, i64* %32, align 8
  %230 = icmp eq i64 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %220
  %232 = load i64, i64* @LOAD_SUCCESS, align 8
  store i64 %232, i64* %10, align 8
  br label %544

233:                                              ; preds = %220
  %234 = load %struct.segment_command_64*, %struct.segment_command_64** %21, align 8
  %235 = getelementptr inbounds %struct.segment_command_64, %struct.segment_command_64* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = icmp eq i64 %236, 0
  br i1 %237, label %238, label %291

238:                                              ; preds = %233
  %239 = load i64, i64* %30, align 8
  %240 = icmp eq i64 %239, 0
  br i1 %240, label %241, label %291

241:                                              ; preds = %238
  %242 = load i64, i64* %32, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %291

244:                                              ; preds = %241
  %245 = load %struct.segment_command_64*, %struct.segment_command_64** %21, align 8
  %246 = getelementptr inbounds %struct.segment_command_64, %struct.segment_command_64* %245, i32 0, i32 4
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* @VM_PROT_ALL, align 4
  %249 = and i32 %247, %248
  %250 = load i32, i32* @VM_PROT_NONE, align 4
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %252, label %291

252:                                              ; preds = %244
  %253 = load %struct.segment_command_64*, %struct.segment_command_64** %21, align 8
  %254 = getelementptr inbounds %struct.segment_command_64, %struct.segment_command_64* %253, i32 0, i32 5
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* @VM_PROT_ALL, align 4
  %257 = and i32 %255, %256
  %258 = load i32, i32* @VM_PROT_NONE, align 4
  %259 = icmp eq i32 %257, %258
  br i1 %259, label %260, label %291

260:                                              ; preds = %252
  %261 = load i64, i64* %31, align 8
  %262 = load i64, i64* %32, align 8
  %263 = add nsw i64 %261, %262
  store i64 %263, i64* %34, align 8
  %264 = load i64, i64* %34, align 8
  %265 = load i64, i64* %31, align 8
  %266 = icmp slt i64 %264, %265
  br i1 %266, label %267, label %269

267:                                              ; preds = %260
  %268 = load i64, i64* @LOAD_BADMACHO, align 8
  store i64 %268, i64* %10, align 8
  br label %544

269:                                              ; preds = %260
  %270 = load i8*, i8** %39, align 8
  %271 = icmp ne i8* %270, null
  br i1 %271, label %272, label %276

272:                                              ; preds = %269
  %273 = load i64, i64* %34, align 8
  %274 = inttoptr i64 %273 to i8*
  %275 = call i32 @MACHO_PRINTF(i8* %274)
  br label %276

276:                                              ; preds = %272, %269
  %277 = load i64, i64* %34, align 8
  %278 = load i64, i64* @PAGE_MASK_64, align 8
  %279 = call i64 @vm_map_round_page(i64 %277, i64 %278)
  store i64 %279, i64* %34, align 8
  %280 = load i64, i64* %34, align 8
  store i64 %280, i64* %35, align 8
  %281 = load i32, i32* %17, align 4
  %282 = load i64, i64* %35, align 8
  %283 = call i64 @vm_map_raise_min_offset(i32 %281, i64 %282)
  store i64 %283, i64* %22, align 8
  %284 = load i64, i64* %22, align 8
  %285 = load i64, i64* @KERN_SUCCESS, align 8
  %286 = icmp ne i64 %284, %285
  br i1 %286, label %287, label %289

287:                                              ; preds = %276
  %288 = load i64, i64* @LOAD_FAILURE, align 8
  store i64 %288, i64* %10, align 8
  br label %544

289:                                              ; preds = %276
  %290 = load i64, i64* @LOAD_SUCCESS, align 8
  store i64 %290, i64* %10, align 8
  br label %544

291:                                              ; preds = %252, %244, %241, %238, %233
  br label %292

292:                                              ; preds = %291
  %293 = load i64, i64* %29, align 8
  %294 = load i64, i64* %41, align 8
  %295 = call i64 @vm_map_trunc_page(i64 %293, i64 %294)
  store i64 %295, i64* %36, align 8
  %296 = load i64, i64* %29, align 8
  %297 = load i64, i64* %30, align 8
  %298 = add nsw i64 %296, %297
  %299 = load i64, i64* %41, align 8
  %300 = call i64 @vm_map_round_page(i64 %298, i64 %299)
  store i64 %300, i64* %37, align 8
  %301 = load i64, i64* %31, align 8
  %302 = load i64, i64* %41, align 8
  %303 = call i64 @vm_map_trunc_page(i64 %301, i64 %302)
  store i64 %303, i64* %33, align 8
  %304 = load i64, i64* %31, align 8
  %305 = load i64, i64* %32, align 8
  %306 = add nsw i64 %304, %305
  %307 = load i64, i64* %41, align 8
  %308 = call i64 @vm_map_round_page(i64 %306, i64 %307)
  store i64 %308, i64* %34, align 8
  %309 = load i64, i64* %33, align 8
  %310 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %311 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %310, i32 0, i32 1
  %312 = load i64, i64* %311, align 8
  %313 = icmp slt i64 %309, %312
  br i1 %313, label %314, label %318

314:                                              ; preds = %292
  %315 = load i64, i64* %33, align 8
  %316 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %317 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %316, i32 0, i32 1
  store i64 %315, i64* %317, align 8
  br label %318

318:                                              ; preds = %314, %292
  %319 = load i64, i64* %34, align 8
  %320 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %321 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %320, i32 0, i32 2
  %322 = load i64, i64* %321, align 8
  %323 = icmp sgt i64 %319, %322
  br i1 %323, label %324, label %328

324:                                              ; preds = %318
  %325 = load i64, i64* %34, align 8
  %326 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %327 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %326, i32 0, i32 2
  store i64 %325, i64* %327, align 8
  br label %328

328:                                              ; preds = %324, %318
  %329 = load i32, i32* %17, align 4
  %330 = load i32, i32* @VM_MAP_NULL, align 4
  %331 = icmp eq i32 %329, %330
  br i1 %331, label %332, label %334

332:                                              ; preds = %328
  %333 = load i64, i64* @LOAD_SUCCESS, align 8
  store i64 %333, i64* %10, align 8
  br label %544

334:                                              ; preds = %328
  %335 = load i64, i64* %32, align 8
  %336 = icmp sgt i64 %335, 0
  br i1 %336, label %337, label %373

337:                                              ; preds = %334
  %338 = load %struct.segment_command_64*, %struct.segment_command_64** %21, align 8
  %339 = getelementptr inbounds %struct.segment_command_64, %struct.segment_command_64* %338, i32 0, i32 4
  %340 = load i32, i32* %339, align 8
  %341 = load i32, i32* @VM_PROT_ALL, align 4
  %342 = and i32 %340, %341
  store i32 %342, i32* %24, align 4
  %343 = load %struct.segment_command_64*, %struct.segment_command_64** %21, align 8
  %344 = getelementptr inbounds %struct.segment_command_64, %struct.segment_command_64* %343, i32 0, i32 5
  %345 = load i32, i32* %344, align 4
  %346 = load i32, i32* @VM_PROT_ALL, align 4
  %347 = and i32 %345, %346
  store i32 %347, i32* %25, align 4
  %348 = load i8*, i8** %39, align 8
  %349 = icmp ne i8* %348, null
  br i1 %349, label %350, label %357

350:                                              ; preds = %337
  %351 = load i64, i64* %33, align 8
  %352 = load i64, i64* %34, align 8
  %353 = load i64, i64* %36, align 8
  %354 = load i64, i64* %37, align 8
  %355 = inttoptr i64 %354 to i8*
  %356 = call i32 @MACHO_PRINTF(i8* %355)
  br label %357

357:                                              ; preds = %350, %337
  %358 = load i32, i32* %17, align 4
  %359 = load i64, i64* %33, align 8
  %360 = load i64, i64* %34, align 8
  %361 = load i8*, i8** %13, align 8
  %362 = load i64, i64* %36, align 8
  %363 = load i64, i64* %37, align 8
  %364 = load i32, i32* %24, align 4
  %365 = load i32, i32* %25, align 4
  %366 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %367 = call i64 @map_segment(i32 %358, i64 %359, i64 %360, i8* %361, i64 %362, i64 %363, i32 %364, i32 %365, %struct.TYPE_9__* %366)
  store i64 %367, i64* %22, align 8
  %368 = load i64, i64* %22, align 8
  %369 = icmp ne i64 %368, 0
  br i1 %369, label %370, label %372

370:                                              ; preds = %357
  %371 = load i64, i64* @LOAD_NOSPACE, align 8
  store i64 %371, i64* %10, align 8
  br label %544

372:                                              ; preds = %357
  br label %373

373:                                              ; preds = %372, %334
  %374 = load i64, i64* %34, align 8
  %375 = load i64, i64* %33, align 8
  %376 = sub nsw i64 %374, %375
  %377 = load i64, i64* %37, align 8
  %378 = load i64, i64* %36, align 8
  %379 = sub nsw i64 %377, %378
  %380 = icmp sgt i64 %376, %379
  br i1 %380, label %381, label %389

381:                                              ; preds = %373
  %382 = load i64, i64* %34, align 8
  %383 = load i64, i64* %33, align 8
  %384 = sub nsw i64 %382, %383
  %385 = load i64, i64* %37, align 8
  %386 = load i64, i64* %36, align 8
  %387 = sub nsw i64 %385, %386
  %388 = sub nsw i64 %384, %387
  store i64 %388, i64* %23, align 8
  br label %390

389:                                              ; preds = %373
  store i64 0, i64* %23, align 8
  br label %390

390:                                              ; preds = %389, %381
  %391 = load i64, i64* %23, align 8
  %392 = icmp sgt i64 %391, 0
  br i1 %392, label %393, label %430

393:                                              ; preds = %390
  %394 = load i64, i64* %33, align 8
  %395 = load i64, i64* %37, align 8
  %396 = load i64, i64* %36, align 8
  %397 = sub nsw i64 %395, %396
  %398 = add nsw i64 %394, %397
  store i64 %398, i64* %42, align 8
  %399 = load i8*, i8** %39, align 8
  %400 = icmp ne i8* %399, null
  br i1 %400, label %401, label %408

401:                                              ; preds = %393
  %402 = load i64, i64* %42, align 8
  %403 = load i64, i64* %42, align 8
  %404 = load i64, i64* %23, align 8
  %405 = add nsw i64 %403, %404
  %406 = inttoptr i64 %405 to i8*
  %407 = call i32 @MACHO_PRINTF(i8* %406)
  br label %408

408:                                              ; preds = %401, %393
  %409 = load i32, i32* %17, align 4
  %410 = load i64, i64* %42, align 8
  %411 = load i64, i64* %42, align 8
  %412 = load i64, i64* %23, align 8
  %413 = add nsw i64 %411, %412
  %414 = load i8*, i8** @MEMORY_OBJECT_CONTROL_NULL, align 8
  %415 = load i64, i64* %23, align 8
  %416 = load %struct.segment_command_64*, %struct.segment_command_64** %21, align 8
  %417 = getelementptr inbounds %struct.segment_command_64, %struct.segment_command_64* %416, i32 0, i32 4
  %418 = load i32, i32* %417, align 8
  %419 = load %struct.segment_command_64*, %struct.segment_command_64** %21, align 8
  %420 = getelementptr inbounds %struct.segment_command_64, %struct.segment_command_64* %419, i32 0, i32 5
  %421 = load i32, i32* %420, align 4
  %422 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %423 = call i64 @map_segment(i32 %409, i64 %410, i64 %413, i8* %414, i64 0, i64 %415, i32 %418, i32 %421, %struct.TYPE_9__* %422)
  store i64 %423, i64* %38, align 8
  %424 = load i64, i64* %38, align 8
  %425 = load i64, i64* @KERN_SUCCESS, align 8
  %426 = icmp ne i64 %424, %425
  br i1 %426, label %427, label %429

427:                                              ; preds = %408
  %428 = load i64, i64* @LOAD_NOSPACE, align 8
  store i64 %428, i64* %10, align 8
  br label %544

429:                                              ; preds = %408
  br label %430

430:                                              ; preds = %429, %390
  %431 = load %struct.segment_command_64*, %struct.segment_command_64** %21, align 8
  %432 = getelementptr inbounds %struct.segment_command_64, %struct.segment_command_64* %431, i32 0, i32 2
  %433 = load i64, i64* %432, align 8
  %434 = icmp eq i64 %433, 0
  br i1 %434, label %435, label %444

435:                                              ; preds = %430
  %436 = load %struct.segment_command_64*, %struct.segment_command_64** %21, align 8
  %437 = getelementptr inbounds %struct.segment_command_64, %struct.segment_command_64* %436, i32 0, i32 3
  %438 = load i64, i64* %437, align 8
  %439 = icmp ne i64 %438, 0
  br i1 %439, label %440, label %444

440:                                              ; preds = %435
  %441 = load i64, i64* %31, align 8
  %442 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %443 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %442, i32 0, i32 6
  store i64 %441, i64* %443, align 8
  br label %444

444:                                              ; preds = %440, %435, %430
  %445 = load %struct.segment_command_64*, %struct.segment_command_64** %21, align 8
  %446 = getelementptr inbounds %struct.segment_command_64, %struct.segment_command_64* %445, i32 0, i32 6
  %447 = load i32, i32* %446, align 8
  %448 = load i32, i32* @SG_PROTECTED_VERSION_1, align 4
  %449 = and i32 %447, %448
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %451, label %470

451:                                              ; preds = %444
  %452 = load i64, i64* %36, align 8
  %453 = load i64, i64* %37, align 8
  %454 = load i64, i64* %36, align 8
  %455 = sub nsw i64 %453, %454
  %456 = load %struct.vnode*, %struct.vnode** %16, align 8
  %457 = load i64, i64* %14, align 8
  %458 = load i32, i32* %17, align 4
  %459 = load i64, i64* %33, align 8
  %460 = load i64, i64* %34, align 8
  %461 = load i64, i64* %33, align 8
  %462 = sub nsw i64 %460, %461
  %463 = call i64 @unprotect_dsmos_segment(i64 %452, i64 %455, %struct.vnode* %456, i64 %457, i32 %458, i64 %459, i64 %462)
  store i64 %463, i64* %22, align 8
  %464 = load i64, i64* %22, align 8
  %465 = load i64, i64* @LOAD_SUCCESS, align 8
  %466 = icmp ne i64 %464, %465
  br i1 %466, label %467, label %469

467:                                              ; preds = %451
  %468 = load i64, i64* %22, align 8
  store i64 %468, i64* %10, align 8
  br label %544

469:                                              ; preds = %451
  br label %472

470:                                              ; preds = %444
  %471 = load i64, i64* @LOAD_SUCCESS, align 8
  store i64 %471, i64* %22, align 8
  br label %472

472:                                              ; preds = %470, %469
  %473 = load i64, i64* @LOAD_SUCCESS, align 8
  %474 = load i64, i64* %22, align 8
  %475 = icmp eq i64 %473, %474
  br i1 %475, label %476, label %502

476:                                              ; preds = %472
  %477 = load i64, i64* %12, align 8
  %478 = load i64, i64* @MH_DYLINKER, align 8
  %479 = icmp eq i64 %477, %478
  br i1 %479, label %480, label %502

480:                                              ; preds = %476
  %481 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %482 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %481, i32 0, i32 3
  %483 = load i64, i64* %482, align 8
  %484 = load i64, i64* @MACH_VM_MIN_ADDRESS, align 8
  %485 = icmp eq i64 %483, %484
  br i1 %485, label %486, label %502

486:                                              ; preds = %480
  %487 = load %struct.segment_command_64*, %struct.segment_command_64** %21, align 8
  %488 = load i64, i64* @LC_SEGMENT_64, align 8
  %489 = load %struct.load_command*, %struct.load_command** %11, align 8
  %490 = getelementptr inbounds %struct.load_command, %struct.load_command* %489, i32 0, i32 0
  %491 = load i64, i64* %490, align 8
  %492 = icmp eq i64 %488, %491
  %493 = zext i1 %492 to i32
  %494 = load i64, i64* %28, align 8
  %495 = load %struct.load_command*, %struct.load_command** %11, align 8
  %496 = bitcast %struct.load_command* %495 to i8*
  %497 = load i64, i64* %26, align 8
  %498 = getelementptr inbounds i8, i8* %496, i64 %497
  %499 = load i64, i64* %18, align 8
  %500 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %501 = call i32 @note_all_image_info_section(%struct.segment_command_64* %487, i32 %493, i64 %494, i8* %498, i64 %499, %struct.TYPE_9__* %500)
  br label %502

502:                                              ; preds = %486, %480, %476, %472
  %503 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %504 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %503, i32 0, i32 4
  %505 = load i64, i64* %504, align 8
  %506 = load i64, i64* @MACH_VM_MIN_ADDRESS, align 8
  %507 = icmp ne i64 %505, %506
  br i1 %507, label %508, label %542

508:                                              ; preds = %502
  %509 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %510 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %509, i32 0, i32 4
  %511 = load i64, i64* %510, align 8
  %512 = load i64, i64* %31, align 8
  %513 = icmp sge i64 %511, %512
  br i1 %513, label %514, label %541

514:                                              ; preds = %508
  %515 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %516 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %515, i32 0, i32 4
  %517 = load i64, i64* %516, align 8
  %518 = load i64, i64* %31, align 8
  %519 = load i64, i64* %32, align 8
  %520 = add nsw i64 %518, %519
  %521 = icmp slt i64 %517, %520
  br i1 %521, label %522, label %541

522:                                              ; preds = %514
  %523 = load %struct.segment_command_64*, %struct.segment_command_64** %21, align 8
  %524 = getelementptr inbounds %struct.segment_command_64, %struct.segment_command_64* %523, i32 0, i32 4
  %525 = load i32, i32* %524, align 8
  %526 = load i32, i32* @VM_PROT_READ, align 4
  %527 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %528 = or i32 %526, %527
  %529 = and i32 %525, %528
  %530 = load i32, i32* @VM_PROT_READ, align 4
  %531 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %532 = or i32 %530, %531
  %533 = icmp eq i32 %529, %532
  br i1 %533, label %534, label %537

534:                                              ; preds = %522
  %535 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %536 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %535, i32 0, i32 5
  store i32 1, i32* %536, align 8
  br label %540

537:                                              ; preds = %522
  %538 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %539 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %538, i32 0, i32 5
  store i32 0, i32* %539, align 8
  br label %540

540:                                              ; preds = %537, %534
  br label %541

541:                                              ; preds = %540, %514, %508
  br label %542

542:                                              ; preds = %541, %502
  %543 = load i64, i64* %22, align 8
  store i64 %543, i64* %10, align 8
  br label %544

544:                                              ; preds = %542, %467, %427, %370, %332, %289, %287, %267, %231, %218, %186, %165, %155, %65
  %545 = load i64, i64* %10, align 8
  ret i64 %545
}

declare dso_local i64 @MAX(i32, i64) #1

declare dso_local i64 @vm_map_page_size(i32) #1

declare dso_local i64 @vm_map_page_mask(i32) #1

declare dso_local i32 @widen_segment_command(%struct.segment_command*, %struct.segment_command_64*) #1

declare dso_local i32 @MACHO_PRINTF(i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @vm_map_round_page(i64, i64) #1

declare dso_local i64 @vm_map_raise_min_offset(i32, i64) #1

declare dso_local i64 @vm_map_trunc_page(i64, i64) #1

declare dso_local i64 @map_segment(i32, i64, i64, i8*, i64, i64, i32, i32, %struct.TYPE_9__*) #1

declare dso_local i64 @unprotect_dsmos_segment(i64, i64, %struct.vnode*, i64, i32, i64, i64) #1

declare dso_local i32 @note_all_image_info_section(%struct.segment_command_64*, i32, i64, i8*, i64, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
