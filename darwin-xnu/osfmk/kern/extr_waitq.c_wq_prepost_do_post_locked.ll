; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_wq_prepost_do_post_locked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_wq_prepost_do_post_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.waitq_set = type { i64, i32, %struct.waitq }
%struct.waitq = type { i64 }
%struct.wq_prepost = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.waitq* }

@WQP_WQ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"preposting waitq %p (0x%llx) to set 0x%llx\00", align 1
@WQP_POST = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"POST 0x%llx :: WQ 0x%llx\00", align 1
@.str.2 = private unnamed_addr constant [80 x i8] c"set 0x%llx previous had 1 WQ prepost (0x%llx): replacing with two POST preposts\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"set 0x%llx: 0x%llx/0x%llx -> 0x%llx/0x%llx -> 0x%llx\00", align 1
@.str.4 = private unnamed_addr constant [72 x i8] c"set 0x%llx (wqp:0x%llx) last_prepost:0x%llx, new_prepost:0x%llx->0x%llx\00", align 1
@g_prepost_table = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.waitq_set*, %struct.waitq*, i64*)* @wq_prepost_do_post_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wq_prepost_do_post_locked(%struct.waitq_set* %0, %struct.waitq* %1, i64* %2) #0 {
  %4 = alloca %struct.waitq_set*, align 8
  %5 = alloca %struct.waitq*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.wq_prepost*, align 8
  %8 = alloca %struct.wq_prepost*, align 8
  %9 = alloca %struct.wq_prepost*, align 8
  %10 = alloca %struct.wq_prepost*, align 8
  %11 = alloca i64, align 8
  store %struct.waitq_set* %0, %struct.waitq_set** %4, align 8
  store %struct.waitq* %1, %struct.waitq** %5, align 8
  store i64* %2, i64** %6, align 8
  %12 = load %struct.waitq*, %struct.waitq** %5, align 8
  %13 = call i64 @waitq_held(%struct.waitq* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load %struct.waitq_set*, %struct.waitq_set** %4, align 8
  %17 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %16, i32 0, i32 2
  %18 = call i64 @waitq_held(%struct.waitq* %17)
  %19 = icmp ne i64 %18, 0
  br label %20

20:                                               ; preds = %15, %3
  %21 = phi i1 [ false, %3 ], [ %19, %15 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.waitq*, %struct.waitq** %5, align 8
  %25 = load %struct.waitq_set*, %struct.waitq_set** %4, align 8
  %26 = call i64 @wq_is_preposted_on_set(%struct.waitq* %24, %struct.waitq_set* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %283

29:                                               ; preds = %20
  %30 = load %struct.waitq_set*, %struct.waitq_set** %4, align 8
  %31 = call i32 @waitqs_is_linked(%struct.waitq_set* %30)
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.waitq*, %struct.waitq** %5, align 8
  %34 = getelementptr inbounds %struct.waitq, %struct.waitq* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %29
  %38 = load i64*, i64** %6, align 8
  %39 = load i64, i64* @WQP_WQ, align 8
  %40 = call %struct.wq_prepost* @wq_get_prepost_obj(i64* %38, i64 %39)
  store %struct.wq_prepost* %40, %struct.wq_prepost** %10, align 8
  %41 = load %struct.waitq*, %struct.waitq** %5, align 8
  %42 = load %struct.wq_prepost*, %struct.wq_prepost** %10, align 8
  %43 = getelementptr inbounds %struct.wq_prepost, %struct.wq_prepost* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store %struct.waitq* %41, %struct.waitq** %44, align 8
  %45 = load %struct.wq_prepost*, %struct.wq_prepost** %10, align 8
  %46 = call i32 @wqp_set_valid(%struct.wq_prepost* %45)
  %47 = load %struct.wq_prepost*, %struct.wq_prepost** %10, align 8
  %48 = getelementptr inbounds %struct.wq_prepost, %struct.wq_prepost* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.waitq*, %struct.waitq** %5, align 8
  %52 = getelementptr inbounds %struct.waitq, %struct.waitq* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load %struct.wq_prepost*, %struct.wq_prepost** %10, align 8
  %54 = call i32 @wq_prepost_put(%struct.wq_prepost* %53)
  br label %55

55:                                               ; preds = %37, %29
  %56 = load %struct.waitq*, %struct.waitq** %5, align 8
  %57 = call i64 @VM_KERNEL_UNSLIDE_OR_PERM(%struct.waitq* %56)
  %58 = inttoptr i64 %57 to i8*
  %59 = load %struct.waitq*, %struct.waitq** %5, align 8
  %60 = getelementptr inbounds %struct.waitq, %struct.waitq* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.waitq_set*, %struct.waitq_set** %4, align 8
  %63 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 (i8*, i8*, i64, ...) @wqdbg_v(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %58, i64 %61, i32 %64)
  %66 = load %struct.waitq_set*, %struct.waitq_set** %4, align 8
  %67 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %55
  %71 = load %struct.waitq*, %struct.waitq** %5, align 8
  %72 = getelementptr inbounds %struct.waitq, %struct.waitq* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.waitq_set*, %struct.waitq_set** %4, align 8
  %75 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  br label %283

76:                                               ; preds = %55
  %77 = load %struct.waitq_set*, %struct.waitq_set** %4, align 8
  %78 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call %struct.wq_prepost* @wq_prepost_get(i64 %79)
  store %struct.wq_prepost* %80, %struct.wq_prepost** %8, align 8
  %81 = load %struct.wq_prepost*, %struct.wq_prepost** %8, align 8
  %82 = icmp ne %struct.wq_prepost* %81, null
  br i1 %82, label %89, label %83

83:                                               ; preds = %76
  %84 = load %struct.waitq*, %struct.waitq** %5, align 8
  %85 = getelementptr inbounds %struct.waitq, %struct.waitq* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.waitq_set*, %struct.waitq_set** %4, align 8
  %88 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  br label %283

89:                                               ; preds = %76
  %90 = load %struct.wq_prepost*, %struct.wq_prepost** %8, align 8
  %91 = getelementptr inbounds %struct.wq_prepost, %struct.wq_prepost* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.waitq_set*, %struct.waitq_set** %4, align 8
  %95 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %93, %96
  %98 = zext i1 %97 to i32
  %99 = call i32 @assert(i32 %98)
  %100 = load i64*, i64** %6, align 8
  %101 = load i64, i64* @WQP_POST, align 8
  %102 = call %struct.wq_prepost* @wq_get_prepost_obj(i64* %100, i64 %101)
  store %struct.wq_prepost* %102, %struct.wq_prepost** %7, align 8
  %103 = load %struct.waitq*, %struct.waitq** %5, align 8
  %104 = getelementptr inbounds %struct.waitq, %struct.waitq* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.wq_prepost*, %struct.wq_prepost** %7, align 8
  %107 = getelementptr inbounds %struct.wq_prepost, %struct.wq_prepost* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  store i64 %105, i64* %108, align 8
  %109 = load %struct.wq_prepost*, %struct.wq_prepost** %7, align 8
  %110 = getelementptr inbounds %struct.wq_prepost, %struct.wq_prepost* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = inttoptr i64 %112 to i8*
  %114 = load %struct.waitq*, %struct.waitq** %5, align 8
  %115 = getelementptr inbounds %struct.waitq, %struct.waitq* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = call i32 (i8*, i8*, i64, ...) @wqdbg_v(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %113, i64 %116)
  %118 = load %struct.wq_prepost*, %struct.wq_prepost** %8, align 8
  %119 = call i64 @wqp_type(%struct.wq_prepost* %118)
  %120 = load i64, i64* @WQP_WQ, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %209

122:                                              ; preds = %89
  %123 = load %struct.wq_prepost*, %struct.wq_prepost** %8, align 8
  %124 = getelementptr inbounds %struct.wq_prepost, %struct.wq_prepost* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  store i64 %126, i64* %11, align 8
  %127 = load %struct.waitq_set*, %struct.waitq_set** %4, align 8
  %128 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = sext i32 %129 to i64
  %131 = inttoptr i64 %130 to i8*
  %132 = load i64, i64* %11, align 8
  %133 = call i32 (i8*, i8*, i64, ...) @wqdbg_v(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.2, i64 0, i64 0), i8* %131, i64 %132)
  %134 = load %struct.wq_prepost*, %struct.wq_prepost** %8, align 8
  %135 = call i32 @wq_prepost_put(%struct.wq_prepost* %134)
  %136 = load i64*, i64** %6, align 8
  %137 = load i64, i64* @WQP_POST, align 8
  %138 = call %struct.wq_prepost* @wq_get_prepost_obj(i64* %136, i64 %137)
  store %struct.wq_prepost* %138, %struct.wq_prepost** %8, align 8
  %139 = load i64, i64* %11, align 8
  %140 = load %struct.wq_prepost*, %struct.wq_prepost** %8, align 8
  %141 = getelementptr inbounds %struct.wq_prepost, %struct.wq_prepost* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  store i64 %139, i64* %142, align 8
  %143 = load %struct.wq_prepost*, %struct.wq_prepost** %8, align 8
  %144 = getelementptr inbounds %struct.wq_prepost, %struct.wq_prepost* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = inttoptr i64 %146 to i8*
  %148 = load i64, i64* %11, align 8
  %149 = call i32 (i8*, i8*, i64, ...) @wqdbg_v(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %147, i64 %148)
  %150 = load %struct.wq_prepost*, %struct.wq_prepost** %7, align 8
  %151 = getelementptr inbounds %struct.wq_prepost, %struct.wq_prepost* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.wq_prepost*, %struct.wq_prepost** %8, align 8
  %155 = getelementptr inbounds %struct.wq_prepost, %struct.wq_prepost* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 1
  store i64 %153, i64* %156, align 8
  %157 = load %struct.wq_prepost*, %struct.wq_prepost** %8, align 8
  %158 = load %struct.wq_prepost*, %struct.wq_prepost** %7, align 8
  %159 = call i32 @wq_prepost_rlink(%struct.wq_prepost* %157, %struct.wq_prepost* %158)
  %160 = load %struct.wq_prepost*, %struct.wq_prepost** %8, align 8
  %161 = getelementptr inbounds %struct.wq_prepost, %struct.wq_prepost* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.wq_prepost*, %struct.wq_prepost** %7, align 8
  %165 = getelementptr inbounds %struct.wq_prepost, %struct.wq_prepost* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 1
  store i64 %163, i64* %166, align 8
  %167 = load %struct.wq_prepost*, %struct.wq_prepost** %7, align 8
  %168 = load %struct.wq_prepost*, %struct.wq_prepost** %8, align 8
  %169 = call i32 @wq_prepost_rlink(%struct.wq_prepost* %167, %struct.wq_prepost* %168)
  %170 = load %struct.wq_prepost*, %struct.wq_prepost** %8, align 8
  %171 = call i32 @wqp_set_valid(%struct.wq_prepost* %170)
  %172 = load %struct.wq_prepost*, %struct.wq_prepost** %7, align 8
  %173 = call i32 @wqp_set_valid(%struct.wq_prepost* %172)
  %174 = load %struct.wq_prepost*, %struct.wq_prepost** %8, align 8
  %175 = getelementptr inbounds %struct.wq_prepost, %struct.wq_prepost* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.waitq_set*, %struct.waitq_set** %4, align 8
  %179 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %178, i32 0, i32 0
  store i64 %177, i64* %179, align 8
  %180 = load %struct.wq_prepost*, %struct.wq_prepost** %8, align 8
  %181 = call i32 @wq_prepost_put(%struct.wq_prepost* %180)
  %182 = load %struct.wq_prepost*, %struct.wq_prepost** %7, align 8
  %183 = call i32 @wq_prepost_put(%struct.wq_prepost* %182)
  %184 = load %struct.waitq_set*, %struct.waitq_set** %4, align 8
  %185 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = sext i32 %186 to i64
  %188 = inttoptr i64 %187 to i8*
  %189 = load %struct.waitq_set*, %struct.waitq_set** %4, align 8
  %190 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.wq_prepost*, %struct.wq_prepost** %8, align 8
  %193 = getelementptr inbounds %struct.wq_prepost, %struct.wq_prepost* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.wq_prepost*, %struct.wq_prepost** %8, align 8
  %197 = getelementptr inbounds %struct.wq_prepost, %struct.wq_prepost* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.wq_prepost*, %struct.wq_prepost** %7, align 8
  %201 = getelementptr inbounds %struct.wq_prepost, %struct.wq_prepost* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.wq_prepost*, %struct.wq_prepost** %7, align 8
  %205 = getelementptr inbounds %struct.wq_prepost, %struct.wq_prepost* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = call i32 (i8*, i8*, i64, ...) @wqdbg_v(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i8* %188, i64 %191, i64 %195, i64 %199, i64 %203, i64 %207)
  br label %283

209:                                              ; preds = %89
  %210 = load %struct.wq_prepost*, %struct.wq_prepost** %8, align 8
  %211 = call i64 @wqp_type(%struct.wq_prepost* %210)
  %212 = load i64, i64* @WQP_POST, align 8
  %213 = icmp eq i64 %211, %212
  %214 = zext i1 %213 to i32
  %215 = call i32 @assert(i32 %214)
  %216 = load %struct.wq_prepost*, %struct.wq_prepost** %8, align 8
  %217 = call %struct.wq_prepost* @wq_prepost_get_rnext(%struct.wq_prepost* %216)
  store %struct.wq_prepost* %217, %struct.wq_prepost** %9, align 8
  %218 = load %struct.wq_prepost*, %struct.wq_prepost** %9, align 8
  %219 = icmp ne %struct.wq_prepost* %218, null
  %220 = zext i1 %219 to i32
  %221 = call i32 @assert(i32 %220)
  %222 = load %struct.wq_prepost*, %struct.wq_prepost** %9, align 8
  %223 = getelementptr inbounds %struct.wq_prepost, %struct.wq_prepost* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = load %struct.waitq_set*, %struct.waitq_set** %4, align 8
  %227 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = icmp eq i64 %225, %228
  %230 = zext i1 %229 to i32
  %231 = call i32 @assert(i32 %230)
  %232 = load %struct.wq_prepost*, %struct.wq_prepost** %8, align 8
  %233 = call i32 @wq_prepost_reset_rnext(%struct.wq_prepost* %232)
  %234 = load %struct.wq_prepost*, %struct.wq_prepost** %8, align 8
  %235 = load %struct.wq_prepost*, %struct.wq_prepost** %7, align 8
  %236 = call i32 @wq_prepost_rlink(%struct.wq_prepost* %234, %struct.wq_prepost* %235)
  %237 = load %struct.wq_prepost*, %struct.wq_prepost** %8, align 8
  %238 = getelementptr inbounds %struct.wq_prepost, %struct.wq_prepost* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load %struct.wq_prepost*, %struct.wq_prepost** %7, align 8
  %242 = getelementptr inbounds %struct.wq_prepost, %struct.wq_prepost* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 1
  store i64 %240, i64* %243, align 8
  %244 = load %struct.wq_prepost*, %struct.wq_prepost** %7, align 8
  %245 = load %struct.wq_prepost*, %struct.wq_prepost** %9, align 8
  %246 = call i32 @wq_prepost_rlink(%struct.wq_prepost* %244, %struct.wq_prepost* %245)
  %247 = load %struct.wq_prepost*, %struct.wq_prepost** %7, align 8
  %248 = getelementptr inbounds %struct.wq_prepost, %struct.wq_prepost* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = load %struct.wq_prepost*, %struct.wq_prepost** %9, align 8
  %252 = getelementptr inbounds %struct.wq_prepost, %struct.wq_prepost* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %252, i32 0, i32 1
  store i64 %250, i64* %253, align 8
  %254 = load %struct.wq_prepost*, %struct.wq_prepost** %7, align 8
  %255 = call i32 @wqp_set_valid(%struct.wq_prepost* %254)
  %256 = load %struct.wq_prepost*, %struct.wq_prepost** %8, align 8
  %257 = call i32 @wq_prepost_put(%struct.wq_prepost* %256)
  %258 = load %struct.wq_prepost*, %struct.wq_prepost** %9, align 8
  %259 = call i32 @wq_prepost_put(%struct.wq_prepost* %258)
  %260 = load %struct.wq_prepost*, %struct.wq_prepost** %7, align 8
  %261 = call i32 @wq_prepost_put(%struct.wq_prepost* %260)
  %262 = load %struct.waitq_set*, %struct.waitq_set** %4, align 8
  %263 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 8
  %265 = sext i32 %264 to i64
  %266 = inttoptr i64 %265 to i8*
  %267 = load %struct.waitq_set*, %struct.waitq_set** %4, align 8
  %268 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = load %struct.wq_prepost*, %struct.wq_prepost** %8, align 8
  %271 = getelementptr inbounds %struct.wq_prepost, %struct.wq_prepost* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = load %struct.wq_prepost*, %struct.wq_prepost** %7, align 8
  %275 = getelementptr inbounds %struct.wq_prepost, %struct.wq_prepost* %274, i32 0, i32 1
  %276 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = load %struct.wq_prepost*, %struct.wq_prepost** %7, align 8
  %279 = getelementptr inbounds %struct.wq_prepost, %struct.wq_prepost* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %279, i32 0, i32 1
  %281 = load i64, i64* %280, align 8
  %282 = call i32 (i8*, i8*, i64, ...) @wqdbg_v(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.4, i64 0, i64 0), i8* %266, i64 %269, i64 %273, i64 %277, i64 %281)
  br label %283

283:                                              ; preds = %209, %122, %83, %70, %28
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @waitq_held(%struct.waitq*) #1

declare dso_local i64 @wq_is_preposted_on_set(%struct.waitq*, %struct.waitq_set*) #1

declare dso_local i32 @waitqs_is_linked(%struct.waitq_set*) #1

declare dso_local %struct.wq_prepost* @wq_get_prepost_obj(i64*, i64) #1

declare dso_local i32 @wqp_set_valid(%struct.wq_prepost*) #1

declare dso_local i32 @wq_prepost_put(%struct.wq_prepost*) #1

declare dso_local i32 @wqdbg_v(i8*, i8*, i64, ...) #1

declare dso_local i64 @VM_KERNEL_UNSLIDE_OR_PERM(%struct.waitq*) #1

declare dso_local %struct.wq_prepost* @wq_prepost_get(i64) #1

declare dso_local i64 @wqp_type(%struct.wq_prepost*) #1

declare dso_local i32 @wq_prepost_rlink(%struct.wq_prepost*, %struct.wq_prepost*) #1

declare dso_local %struct.wq_prepost* @wq_prepost_get_rnext(%struct.wq_prepost*) #1

declare dso_local i32 @wq_prepost_reset_rnext(%struct.wq_prepost*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
