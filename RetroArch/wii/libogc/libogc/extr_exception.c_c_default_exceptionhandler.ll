; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_exception.c_c_default_exceptionhandler.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_exception.c_c_default_exceptionhandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64*, i64, i32, i32 }

@exception_xfb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"\0A\0A\0A\09Exception (%s) occurred!\0A\00", align 1
@exception_name = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"\09GPR00 %08X GPR08 %08X GPR16 %08X GPR24 %08X\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"\09GPR01 %08X GPR09 %08X GPR17 %08X GPR25 %08X\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"\09GPR02 %08X GPR10 %08X GPR18 %08X GPR26 %08X\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"\09GPR03 %08X GPR11 %08X GPR19 %08X GPR27 %08X\0A\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"\09GPR04 %08X GPR12 %08X GPR20 %08X GPR28 %08X\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"\09GPR05 %08X GPR13 %08X GPR21 %08X GPR29 %08X\0A\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"\09GPR06 %08X GPR14 %08X GPR22 %08X GPR30 %08X\0A\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"\09GPR07 %08X GPR15 %08X GPR23 %08X GPR31 %08X\0A\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"\09LR %08X SRR0 %08x SRR1 %08x MSR %08x\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"\09DAR %08X DSISR %08X\0A\00", align 1
@EX_DSI = common dso_local global i64 0, align 8
@EX_FP = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [15 x i8] c"\0A\0A\09CODE DUMP:\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"\09%p:  %08X %08X %08X %08X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c_default_exceptionhandler(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %5 = call i32 (...) @GX_AbortFrame()
  %6 = load i32, i32* @exception_xfb, align 4
  %7 = call i32 @VIDEO_SetFramebuffer(i32 %6)
  %8 = load i32, i32* @exception_xfb, align 4
  %9 = call i32 @__console_init(i32 %8, i32 20, i32 20, i32 640, i32 574, i32 1280)
  %10 = call i32 @CON_EnableGecko(i32 1, i32 1)
  %11 = load i32*, i32** @exception_name, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i32, i32* %11, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 8
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 16
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 24
  %37 = load i64, i64* %36, align 8
  %38 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %22, i64 %27, i64 %32, i64 %37)
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 9
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 17
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 25
  %58 = load i64, i64* %57, align 8
  %59 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i64 %43, i64 %48, i64 %53, i64 %58)
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  %62 = load i64*, i64** %61, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 2
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 2
  %67 = load i64*, i64** %66, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 10
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  %72 = load i64*, i64** %71, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 18
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 2
  %77 = load i64*, i64** %76, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 26
  %79 = load i64, i64* %78, align 8
  %80 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i64 %64, i64 %69, i64 %74, i64 %79)
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 2
  %83 = load i64*, i64** %82, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 3
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 2
  %88 = load i64*, i64** %87, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 11
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 2
  %93 = load i64*, i64** %92, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 19
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 2
  %98 = load i64*, i64** %97, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 27
  %100 = load i64, i64* %99, align 8
  %101 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i64 %85, i64 %90, i64 %95, i64 %100)
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 2
  %104 = load i64*, i64** %103, align 8
  %105 = getelementptr inbounds i64, i64* %104, i64 4
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 2
  %109 = load i64*, i64** %108, align 8
  %110 = getelementptr inbounds i64, i64* %109, i64 12
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 2
  %114 = load i64*, i64** %113, align 8
  %115 = getelementptr inbounds i64, i64* %114, i64 20
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 2
  %119 = load i64*, i64** %118, align 8
  %120 = getelementptr inbounds i64, i64* %119, i64 28
  %121 = load i64, i64* %120, align 8
  %122 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i64 %106, i64 %111, i64 %116, i64 %121)
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 2
  %125 = load i64*, i64** %124, align 8
  %126 = getelementptr inbounds i64, i64* %125, i64 5
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 2
  %130 = load i64*, i64** %129, align 8
  %131 = getelementptr inbounds i64, i64* %130, i64 13
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 2
  %135 = load i64*, i64** %134, align 8
  %136 = getelementptr inbounds i64, i64* %135, i64 21
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 2
  %140 = load i64*, i64** %139, align 8
  %141 = getelementptr inbounds i64, i64* %140, i64 29
  %142 = load i64, i64* %141, align 8
  %143 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i64 %127, i64 %132, i64 %137, i64 %142)
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 2
  %146 = load i64*, i64** %145, align 8
  %147 = getelementptr inbounds i64, i64* %146, i64 6
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 2
  %151 = load i64*, i64** %150, align 8
  %152 = getelementptr inbounds i64, i64* %151, i64 14
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 2
  %156 = load i64*, i64** %155, align 8
  %157 = getelementptr inbounds i64, i64* %156, i64 22
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 2
  %161 = load i64*, i64** %160, align 8
  %162 = getelementptr inbounds i64, i64* %161, i64 30
  %163 = load i64, i64* %162, align 8
  %164 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i64 %148, i64 %153, i64 %158, i64 %163)
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 2
  %167 = load i64*, i64** %166, align 8
  %168 = getelementptr inbounds i64, i64* %167, i64 7
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 2
  %172 = load i64*, i64** %171, align 8
  %173 = getelementptr inbounds i64, i64* %172, i64 15
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 2
  %177 = load i64*, i64** %176, align 8
  %178 = getelementptr inbounds i64, i64* %177, i64 23
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 2
  %182 = load i64*, i64** %181, align 8
  %183 = getelementptr inbounds i64, i64* %182, i64 31
  %184 = load i64, i64* %183, align 8
  %185 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0), i64 %169, i64 %174, i64 %179, i64 %184)
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 3
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 5
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 8
  %198 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i64 %188, i64 %191, i32 %194, i32 %197)
  %199 = call i32 @mfspr(i32 19)
  %200 = call i32 @mfspr(i32 18)
  %201 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i32 %199, i32 %200)
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = inttoptr i64 %204 to i8*
  %206 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 3
  %208 = load i64, i64* %207, align 8
  %209 = inttoptr i64 %208 to i8*
  %210 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 2
  %212 = load i64*, i64** %211, align 8
  %213 = getelementptr inbounds i64, i64* %212, i64 1
  %214 = load i64, i64* %213, align 8
  %215 = inttoptr i64 %214 to i8*
  %216 = call i32 @_cpu_print_stack(i8* %205, i8* %209, i8* %215)
  %217 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @EX_DSI, align 8
  %221 = icmp eq i64 %219, %220
  br i1 %221, label %228, label %222

222:                                              ; preds = %1
  %223 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @EX_FP, align 8
  %227 = icmp eq i64 %225, %226
  br i1 %227, label %228, label %270

228:                                              ; preds = %222, %1
  %229 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = inttoptr i64 %231 to i32*
  store i32* %232, i32** %4, align 8
  %233 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %234

234:                                              ; preds = %266, %228
  %235 = load i32, i32* %3, align 4
  %236 = icmp slt i32 %235, 12
  br i1 %236, label %237, label %269

237:                                              ; preds = %234
  %238 = load i32*, i32** %4, align 8
  %239 = load i32, i32* %3, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %238, i64 %240
  %242 = load i32*, i32** %4, align 8
  %243 = load i32, i32* %3, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = load i32*, i32** %4, align 8
  %248 = load i32, i32* %3, align 4
  %249 = add nsw i32 %248, 1
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %247, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = load i32*, i32** %4, align 8
  %254 = load i32, i32* %3, align 4
  %255 = add nsw i32 %254, 2
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %253, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = load i32*, i32** %4, align 8
  %260 = load i32, i32* %3, align 4
  %261 = add nsw i32 %260, 3
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %259, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i32* %241, i32 %246, i32 %252, i32 %258, i32 %264)
  br label %266

266:                                              ; preds = %237
  %267 = load i32, i32* %3, align 4
  %268 = add nsw i32 %267, 4
  store i32 %268, i32* %3, align 4
  br label %234

269:                                              ; preds = %234
  br label %270

270:                                              ; preds = %269, %222
  %271 = call i32 (...) @waitForReload()
  ret void
}

declare dso_local i32 @GX_AbortFrame(...) #1

declare dso_local i32 @VIDEO_SetFramebuffer(i32) #1

declare dso_local i32 @__console_init(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @CON_EnableGecko(i32, i32) #1

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i32 @mfspr(i32) #1

declare dso_local i32 @_cpu_print_stack(i8*, i8*, i8*) #1

declare dso_local i32 @waitForReload(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
