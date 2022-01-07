; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_trap.c_panic_trap.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_trap.c_panic_trap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }

@.str = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"CPU %d panic trap number 0x%x, rip 0x%016llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"cr0 0x%016llx cr2 0x%016llx cr3 0x%016llx cr4 0x%016llx\0A\00", align 1
@TRAP_TYPES = common dso_local global i64 0, align 8
@trap_type = common dso_local global i8** null, align 8
@T_PAGE_FAULT = common dso_local global i64 0, align 8
@T_PF_PROT = common dso_local global i32 0, align 4
@T_PF_EXECUTE = common dso_local global i32 0, align 4
@pmap_smep_enabled = common dso_local global i64 0, align 8
@VM_MAX_USER_PAGE_ADDRESS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@VM_MIN_KERNEL_AND_KEXT_ADDRESS = common dso_local global i32 0, align 4
@pmap_smap_enabled = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [513 x i8] c"Kernel trap at 0x%016llx, type %d=%s, registers:\0ACR0: 0x%016llx, CR2: 0x%016llx, CR3: 0x%016llx, CR4: 0x%016llx\0ARAX: 0x%016llx, RBX: 0x%016llx, RCX: 0x%016llx, RDX: 0x%016llx\0ARSP: 0x%016llx, RBP: 0x%016llx, RSI: 0x%016llx, RDI: 0x%016llx\0AR8:  0x%016llx, R9:  0x%016llx, R10: 0x%016llx, R11: 0x%016llx\0AR12: 0x%016llx, R13: 0x%016llx, R14: 0x%016llx, R15: 0x%016llx\0ARFL: 0x%016llx, RIP: 0x%016llx, CS:  0x%016llx, SS:  0x%016llx\0AFault CR2: 0x%016llx, Error code: 0x%016llx, Fault CPU: 0x%x%s%s%s%s, PL: %d, VF: %d\0A\00", align 1
@virtualized = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c" VMM\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [17 x i8] c" Kernel NX fault\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c" SMEP/User NX fault\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c" SMAP fault\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32, i32)* @panic_trap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @panic_trap(%struct.TYPE_6__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %15 = load i64, i64* @FALSE, align 8
  store i64 %15, i64* %12, align 8
  %16 = load i64, i64* @FALSE, align 8
  store i64 %16, i64* %13, align 8
  %17 = load i64, i64* @FALSE, align 8
  store i64 %17, i64* %14, align 8
  %18 = call i32 @pal_get_control_registers(i64* %8, i64* %9, i64* %10, i64* %11)
  %19 = call i64 (...) @ml_get_interrupts_enabled()
  %20 = load i64, i64* @FALSE, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %25 = call %struct.TYPE_7__* (...) @current_cpu_datap()
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %26, align 8
  %27 = call i32 (...) @panic_io_port_read()
  %28 = call i32 (...) @cpu_number()
  %29 = sext i32 %28 to i64
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = call i32 (i8*, i64, i64, i64, ...) @kprintf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %29, i64 %33, i64 %38)
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* %11, align 8
  %44 = call i32 (i8*, i64, i64, i64, ...) @kprintf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i64 %40, i64 %41, i64 %42, i64 %43)
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @TRAP_TYPES, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %3
  %52 = load i8**, i8*** @trap_type, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds i8*, i8** %52, i64 %56
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %7, align 8
  br label %59

59:                                               ; preds = %51, %3
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @T_PAGE_FAULT, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %107

66:                                               ; preds = %59
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @T_PF_PROT, align 4
  %72 = load i32, i32* @T_PF_EXECUTE, align 4
  %73 = or i32 %71, %72
  %74 = icmp eq i32 %70, %73
  br i1 %74, label %75, label %107

75:                                               ; preds = %66
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %79, %82
  br i1 %83, label %84, label %107

84:                                               ; preds = %75
  %85 = load i64, i64* @pmap_smep_enabled, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %84
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @VM_MAX_USER_PAGE_ADDRESS, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %87
  %95 = load i64, i64* @TRUE, align 8
  store i64 %95, i64* %12, align 8
  br label %106

96:                                               ; preds = %87, %84
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @VM_MIN_KERNEL_AND_KEXT_ADDRESS, align 4
  %102 = icmp sge i32 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %96
  %104 = load i64, i64* @TRUE, align 8
  store i64 %104, i64* %13, align 8
  br label %105

105:                                              ; preds = %103, %96
  br label %106

106:                                              ; preds = %105, %94
  br label %141

107:                                              ; preds = %75, %66, %59
  %108 = load i64, i64* @pmap_smap_enabled, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %140

110:                                              ; preds = %107
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @T_PAGE_FAULT, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %140

117:                                              ; preds = %110
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @T_PF_PROT, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %140

125:                                              ; preds = %117
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @VM_MAX_USER_PAGE_ADDRESS, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %140

131:                                              ; preds = %125
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @VM_MIN_KERNEL_AND_KEXT_ADDRESS, align 4
  %137 = icmp sge i32 %135, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %131
  %139 = load i64, i64* @TRUE, align 8
  store i64 %139, i64* %14, align 8
  br label %140

140:                                              ; preds = %138, %131, %125, %117, %110, %107
  br label %141

141:                                              ; preds = %140, %106
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i8*, i8** %7, align 8
  %151 = load i64, i64* %8, align 8
  %152 = load i64, i64* %9, align 8
  %153 = load i64, i64* %10, align 8
  %154 = load i64, i64* %11, align 8
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 16
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 15
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 14
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 13
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 7
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 12
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 11
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 10
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 9
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 8
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 7
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 6
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 5
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 6
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 5
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 4
  %216 = and i32 %215, 65535
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 8
  %221 = and i32 %220, 65535
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i32 0, i32 4
  %232 = load i32, i32* %231, align 4
  %233 = load i64, i64* @virtualized, align 8
  %234 = icmp ne i64 %233, 0
  %235 = zext i1 %234 to i64
  %236 = select i1 %234, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %237 = load i64, i64* %13, align 8
  %238 = icmp ne i64 %237, 0
  %239 = zext i1 %238 to i64
  %240 = select i1 %238, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %241 = load i64, i64* %12, align 8
  %242 = icmp ne i64 %241, 0
  %243 = zext i1 %242 to i64
  %244 = select i1 %242, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %245 = load i64, i64* %14, align 8
  %246 = icmp ne i64 %245, 0
  %247 = zext i1 %246 to i64
  %248 = select i1 %246, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %249 = load i32, i32* %5, align 4
  %250 = load i32, i32* %6, align 4
  %251 = call i32 @panic(i8* getelementptr inbounds ([513 x i8], [513 x i8]* @.str.3, i64 0, i64 0), i32 %145, i64 %149, i8* %150, i64 %151, i64 %152, i64 %153, i64 %154, i32 %157, i32 %160, i32 %163, i32 %166, i32 %170, i32 %173, i32 %176, i32 %179, i32 %182, i32 %185, i32 %188, i32 %191, i32 %194, i32 %197, i32 %200, i32 %203, i32 %207, i32 %211, i32 %216, i32 %221, i32 %224, i32 %228, i32 %232, i8* %236, i8* %240, i8* %244, i8* %248, i32 %249, i32 %250)
  store i64 0, i64* %8, align 8
  ret void
}

declare dso_local i32 @pal_get_control_registers(i64*, i64*, i64*, i64*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ml_get_interrupts_enabled(...) #1

declare dso_local %struct.TYPE_7__* @current_cpu_datap(...) #1

declare dso_local i32 @panic_io_port_read(...) #1

declare dso_local i32 @kprintf(i8*, i64, i64, i64, ...) #1

declare dso_local i32 @cpu_number(...) #1

declare dso_local i32 @panic(i8*, i32, i64, i8*, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
