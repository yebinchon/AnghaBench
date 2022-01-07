; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_trap.c_user_trap.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_trap.c_user_trap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_18__ = type { %struct.TYPE_16__, i64 }
%struct.TYPE_16__ = type { i32, i64, i64, i8* }
%struct.TYPE_19__ = type { i32, i32, i64, i64, i8* }
%struct.TYPE_22__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64 }

@KDEBUG_TRACE = common dso_local global i32 0, align 4
@DBG_MACH_EXCP_UTRAP_x86 = common dso_local global i32 0, align 4
@DBG_FUNC_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"user_trap: type=0x%x(%s) err=0x%x cr2=%p rip=%p\0A\00", align 1
@trap_type = common dso_local global i32* null, align 8
@EXC_ARITHMETIC = common dso_local global i32 0, align 4
@EXC_I386_DIV = common dso_local global i64 0, align 8
@EXC_BREAKPOINT = common dso_local global i32 0, align 4
@EXC_I386_SGL = common dso_local global i64 0, align 8
@EXC_I386_BPT = common dso_local global i64 0, align 8
@EXC_I386_INTO = common dso_local global i64 0, align 8
@EXC_SOFTWARE = common dso_local global i32 0, align 4
@EXC_I386_BOUND = common dso_local global i64 0, align 8
@EXC_BAD_INSTRUCTION = common dso_local global i32 0, align 4
@EXC_I386_INVOP = common dso_local global i64 0, align 8
@EXC_I386_INVTSSFLT = common dso_local global i64 0, align 8
@EXC_I386_SEGNPFLT = common dso_local global i64 0, align 8
@EXC_I386_STKFLT = common dso_local global i64 0, align 8
@EXC_BAD_ACCESS = common dso_local global i32 0, align 4
@EXC_I386_GPFLT = common dso_local global i64 0, align 8
@VM_PROT_READ = common dso_local global i32 0, align 4
@T_PF_WRITE = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@T_PF_EXECUTE = common dso_local global i32 0, align 4
@VM_PROT_EXECUTE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_NONE = common dso_local global i32 0, align 4
@THREAD_ABORTSAFE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@KERN_ABORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Unexpected user trap, type %d\00", align 1
@fsigcs = common dso_local global i32 0, align 4
@fsigns = common dso_local global i32 0, align 4
@fsigs = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @user_trap(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_18__*, align 8
  %15 = alloca %struct.TYPE_19__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_22__*, align 8
  %18 = alloca %struct.TYPE_20__*, align 8
  %19 = alloca %struct.TYPE_20__*, align 8
  store i32* %0, i32** %2, align 8
  %20 = call %struct.TYPE_21__* (...) @current_thread()
  store %struct.TYPE_21__* %20, %struct.TYPE_21__** %10, align 8
  store i64 0, i64* %13, align 8
  %21 = load i32*, i32** %2, align 8
  %22 = call i64 @is_saved_state32(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %26 = call i64 @thread_is_64bit_addr(%struct.TYPE_21__* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %24, %1
  %29 = load i32*, i32** %2, align 8
  %30 = call i64 @is_saved_state64(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %34 = call i64 @thread_is_64bit_addr(%struct.TYPE_21__* %33)
  %35 = icmp ne i64 %34, 0
  br label %36

36:                                               ; preds = %32, %28
  %37 = phi i1 [ false, %28 ], [ %35, %32 ]
  br label %38

38:                                               ; preds = %36, %24
  %39 = phi i1 [ true, %24 ], [ %37, %36 ]
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load i32*, i32** %2, align 8
  %43 = call i64 @is_saved_state64(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %71

45:                                               ; preds = %38
  %46 = load i32*, i32** %2, align 8
  %47 = call %struct.TYPE_18__* @saved_state64(i32* %46)
  store %struct.TYPE_18__* %47, %struct.TYPE_18__** %14, align 8
  %48 = call i8* (...) @cpu_number()
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 3
  store i8* %48, i8** %51, align 8
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %7, align 4
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = and i32 %60, 65535
  store i32 %61, i32* %4, align 4
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %8, align 4
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %12, align 4
  br label %92

71:                                               ; preds = %38
  %72 = load i32*, i32** %2, align 8
  %73 = call %struct.TYPE_19__* @saved_state32(i32* %72)
  store %struct.TYPE_19__* %73, %struct.TYPE_19__** %15, align 8
  %74 = call i8* (...) @cpu_number()
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 4
  store i8* %74, i8** %76, align 8
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %7, align 4
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, 65535
  store i32 %83, i32* %4, align 4
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %8, align 4
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %12, align 4
  br label %92

92:                                               ; preds = %71, %45
  %93 = load i32, i32* %7, align 4
  %94 = icmp eq i32 %93, 143
  br i1 %94, label %95, label %104

95:                                               ; preds = %92
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  store i64 0, i64* %16, align 8
  %102 = call i64 asm sideeffect "mov %db6, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  store i64 %102, i64* %13, align 8
  %103 = load i64, i64* %16, align 8
  call void asm sideeffect "mov $0, %db6", "r,~{dirflag},~{fpsr},~{flags}"(i64 %103) #2, !srcloc !3
  br label %104

104:                                              ; preds = %101, %95, %92
  %105 = call i32 (...) @pal_sti()
  %106 = load i32, i32* @KDEBUG_TRACE, align 4
  %107 = load i32, i32* @DBG_MACH_EXCP_UTRAP_x86, align 4
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @MACHDBG_CODE(i32 %107, i32 %108)
  %110 = load i32, i32* @DBG_FUNC_NONE, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* %8, align 4
  %113 = ashr i32 %112, 32
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* %12, align 4
  %116 = ashr i32 %115, 32
  %117 = load i32, i32* %12, align 4
  %118 = call i32 @KERNEL_DEBUG_CONSTANT_IST(i32 %106, i32 %111, i32 %113, i32 %114, i32 %116, i32 %117, i32 0)
  store i64 0, i64* %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %3, align 4
  %119 = load i32, i32* %7, align 4
  %120 = load i32*, i32** @trap_type, align 8
  %121 = load i32, i32* %7, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %4, align 4
  %126 = load i32, i32* %8, align 4
  %127 = sext i32 %126 to i64
  %128 = inttoptr i64 %127 to i8*
  %129 = load i32, i32* %12, align 4
  %130 = sext i32 %129 to i64
  %131 = inttoptr i64 %130 to i8*
  %132 = call i32 @DEBUG_KPRINT_SYSCALL_MASK(i32 1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %119, i32 %124, i32 %125, i8* %128, i8* %131)
  %133 = load i32, i32* %7, align 4
  switch i32 %133, label %256 [
    i32 142, label %134
    i32 143, label %137
    i32 137, label %168
    i32 132, label %171
    i32 133, label %174
    i32 136, label %177
    i32 134, label %182
    i32 139, label %184
    i32 135, label %186
    i32 130, label %190
    i32 128, label %194
    i32 138, label %198
    i32 131, label %202
    i32 129, label %249
    i32 140, label %251
    i32 141, label %253
  ]

134:                                              ; preds = %104
  %135 = load i32, i32* @EXC_ARITHMETIC, align 4
  store i32 %135, i32* %3, align 4
  %136 = load i64, i64* @EXC_I386_DIV, align 8
  store i64 %136, i64* %5, align 8
  br label %259

137:                                              ; preds = %104
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %139 = call %struct.TYPE_22__* @THREAD_TO_PCB(%struct.TYPE_21__* %138)
  store %struct.TYPE_22__* %139, %struct.TYPE_22__** %17, align 8
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %141 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %141, align 8
  %143 = icmp ne %struct.TYPE_20__* %142, null
  br i1 %143, label %144, label %165

144:                                              ; preds = %137
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %146 = call i64 @thread_is_64bit_addr(%struct.TYPE_21__* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %144
  %149 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %150 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %150, align 8
  store %struct.TYPE_20__* %151, %struct.TYPE_20__** %18, align 8
  %152 = load i64, i64* %13, align 8
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 0
  store i64 %152, i64* %154, align 8
  br label %164

155:                                              ; preds = %144
  %156 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %157 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %157, align 8
  store %struct.TYPE_20__* %158, %struct.TYPE_20__** %19, align 8
  %159 = load i64, i64* %13, align 8
  %160 = inttoptr i64 %159 to i8*
  %161 = ptrtoint i8* %160 to i64
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %162, i32 0, i32 0
  store i64 %161, i64* %163, align 8
  br label %164

164:                                              ; preds = %155, %148
  br label %165

165:                                              ; preds = %164, %137
  %166 = load i32, i32* @EXC_BREAKPOINT, align 4
  store i32 %166, i32* %3, align 4
  %167 = load i64, i64* @EXC_I386_SGL, align 8
  store i64 %167, i64* %5, align 8
  br label %259

168:                                              ; preds = %104
  %169 = load i32, i32* @EXC_BREAKPOINT, align 4
  store i32 %169, i32* %3, align 4
  %170 = load i64, i64* @EXC_I386_BPT, align 8
  store i64 %170, i64* %5, align 8
  br label %259

171:                                              ; preds = %104
  %172 = load i32, i32* @EXC_ARITHMETIC, align 4
  store i32 %172, i32* %3, align 4
  %173 = load i64, i64* @EXC_I386_INTO, align 8
  store i64 %173, i64* %5, align 8
  br label %259

174:                                              ; preds = %104
  %175 = load i32, i32* @EXC_SOFTWARE, align 4
  store i32 %175, i32* %3, align 4
  %176 = load i64, i64* @EXC_I386_BOUND, align 8
  store i64 %176, i64* %5, align 8
  br label %259

177:                                              ; preds = %104
  %178 = load i32, i32* %12, align 4
  %179 = call i32 @fpUDflt(i32 %178)
  %180 = load i32, i32* @EXC_BAD_INSTRUCTION, align 4
  store i32 %180, i32* %3, align 4
  %181 = load i64, i64* @EXC_I386_INVOP, align 8
  store i64 %181, i64* %5, align 8
  br label %259

182:                                              ; preds = %104
  %183 = call i32 (...) @fpnoextflt()
  br label %264

184:                                              ; preds = %104
  %185 = call i32 (...) @fpextovrflt()
  br label %264

186:                                              ; preds = %104
  %187 = load i32, i32* @EXC_BAD_INSTRUCTION, align 4
  store i32 %187, i32* %3, align 4
  %188 = load i64, i64* @EXC_I386_INVTSSFLT, align 8
  store i64 %188, i64* %5, align 8
  %189 = load i32, i32* %4, align 4
  store i32 %189, i32* %6, align 4
  br label %259

190:                                              ; preds = %104
  %191 = load i32, i32* @EXC_BAD_INSTRUCTION, align 4
  store i32 %191, i32* %3, align 4
  %192 = load i64, i64* @EXC_I386_SEGNPFLT, align 8
  store i64 %192, i64* %5, align 8
  %193 = load i32, i32* %4, align 4
  store i32 %193, i32* %6, align 4
  br label %259

194:                                              ; preds = %104
  %195 = load i32, i32* @EXC_BAD_INSTRUCTION, align 4
  store i32 %195, i32* %3, align 4
  %196 = load i64, i64* @EXC_I386_STKFLT, align 8
  store i64 %196, i64* %5, align 8
  %197 = load i32, i32* %4, align 4
  store i32 %197, i32* %6, align 4
  br label %259

198:                                              ; preds = %104
  %199 = load i32, i32* @EXC_BAD_ACCESS, align 4
  store i32 %199, i32* %3, align 4
  %200 = load i64, i64* @EXC_I386_GPFLT, align 8
  store i64 %200, i64* %5, align 8
  %201 = load i32, i32* %4, align 4
  store i32 %201, i32* %6, align 4
  br label %259

202:                                              ; preds = %104
  %203 = load i32, i32* @VM_PROT_READ, align 4
  store i32 %203, i32* %9, align 4
  %204 = load i32, i32* %4, align 4
  %205 = load i32, i32* @T_PF_WRITE, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %202
  %209 = load i32, i32* @VM_PROT_WRITE, align 4
  %210 = load i32, i32* %9, align 4
  %211 = or i32 %210, %209
  store i32 %211, i32* %9, align 4
  br label %212

212:                                              ; preds = %208, %202
  %213 = load i32, i32* %4, align 4
  %214 = load i32, i32* @T_PF_EXECUTE, align 4
  %215 = and i32 %213, %214
  %216 = call i32 @__improbable(i32 %215)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %212
  %219 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %220 = load i32, i32* %9, align 4
  %221 = or i32 %220, %219
  store i32 %221, i32* %9, align 4
  br label %222

222:                                              ; preds = %218, %212
  %223 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %224 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* %8, align 4
  %227 = load i32, i32* %9, align 4
  %228 = load i32, i32* @FALSE, align 4
  %229 = load i32, i32* @VM_KERN_MEMORY_NONE, align 4
  %230 = load i32, i32* @THREAD_ABORTSAFE, align 4
  %231 = call i32 @vm_fault(i32 %225, i32 %226, i32 %227, i32 %228, i32 %229, i32 %230, i32* null, i32 0)
  store i32 %231, i32* %11, align 4
  %232 = load i32, i32* %11, align 4
  %233 = load i32, i32* @KERN_SUCCESS, align 4
  %234 = icmp eq i32 %232, %233
  br i1 %234, label %239, label %235

235:                                              ; preds = %222
  %236 = load i32, i32* %11, align 4
  %237 = load i32, i32* @KERN_ABORTED, align 4
  %238 = icmp eq i32 %236, %237
  br label %239

239:                                              ; preds = %235, %222
  %240 = phi i1 [ true, %222 ], [ %238, %235 ]
  %241 = zext i1 %240 to i32
  %242 = call i32 @__probable(i32 %241)
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %239
  %245 = call i32 (...) @thread_exception_return()
  br label %246

246:                                              ; preds = %244, %239
  %247 = load i32, i32* %11, align 4
  %248 = call i32 @user_page_fault_continue(i32 %247)
  br label %259

249:                                              ; preds = %104
  %250 = call i32 (...) @fpSSEexterrflt()
  br label %264

251:                                              ; preds = %104
  %252 = call i32 (...) @fpexterrflt()
  br label %264

253:                                              ; preds = %104
  %254 = load i32, i32* @EXC_BAD_INSTRUCTION, align 4
  store i32 %254, i32* %3, align 4
  %255 = load i64, i64* @EXC_I386_INVOP, align 8
  store i64 %255, i64* %5, align 8
  br label %259

256:                                              ; preds = %104
  %257 = load i32, i32* %7, align 4
  %258 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %257)
  br label %264

259:                                              ; preds = %253, %246, %198, %194, %190, %186, %177, %174, %171, %168, %165, %134
  %260 = load i32, i32* %3, align 4
  %261 = load i64, i64* %5, align 8
  %262 = load i32, i32* %6, align 4
  %263 = call i32 @i386_exception(i32 %260, i64 %261, i32 %262)
  br label %264

264:                                              ; preds = %259, %256, %251, %249, %184, %182
  ret void
}

declare dso_local %struct.TYPE_21__* @current_thread(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @is_saved_state32(i32*) #1

declare dso_local i64 @thread_is_64bit_addr(%struct.TYPE_21__*) #1

declare dso_local i64 @is_saved_state64(i32*) #1

declare dso_local %struct.TYPE_18__* @saved_state64(i32*) #1

declare dso_local i8* @cpu_number(...) #1

declare dso_local %struct.TYPE_19__* @saved_state32(i32*) #1

declare dso_local i32 @pal_sti(...) #1

declare dso_local i32 @KERNEL_DEBUG_CONSTANT_IST(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @MACHDBG_CODE(i32, i32) #1

declare dso_local i32 @DEBUG_KPRINT_SYSCALL_MASK(i32, i8*, i32, i32, i32, i8*, i8*) #1

declare dso_local %struct.TYPE_22__* @THREAD_TO_PCB(%struct.TYPE_21__*) #1

declare dso_local i32 @fpUDflt(i32) #1

declare dso_local i32 @fpnoextflt(...) #1

declare dso_local i32 @fpextovrflt(...) #1

declare dso_local i32 @__improbable(i32) #1

declare dso_local i32 @vm_fault(i32, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @__probable(i32) #1

declare dso_local i32 @thread_exception_return(...) #1

declare dso_local i32 @user_page_fault_continue(i32) #1

declare dso_local i32 @fpSSEexterrflt(...) #1

declare dso_local i32 @fpexterrflt(...) #1

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i32 @i386_exception(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 3951}
!3 = !{i32 4002}
