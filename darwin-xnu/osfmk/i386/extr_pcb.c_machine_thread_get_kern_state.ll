; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_pcb.c_machine_thread_get_kern_state.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_pcb.c_machine_thread_get_kern_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_24__ = type { i32, i32, %struct.TYPE_18__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__, %struct.TYPE_17__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.TYPE_16__ }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i8* }
%struct.TYPE_15__ = type { i32* }

@KERN_FAILURE = common dso_local global i32 0, align 4
@x86_THREAD_STATE32_COUNT = common dso_local global i8* null, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@x86_THREAD_STATE64_COUNT = common dso_local global i8* null, align 8
@x86_THREAD_STATE_COUNT = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"unknown thread state\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @machine_thread_get_kern_state(i64 %0, i32 %1, i64 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.TYPE_22__*, align 8
  %14 = alloca %struct.TYPE_24__*, align 8
  %15 = alloca %struct.TYPE_21__*, align 8
  %16 = alloca %struct.TYPE_14__*, align 8
  %17 = alloca %struct.TYPE_24__*, align 8
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i8** %3, i8*** %9, align 8
  %18 = call %struct.TYPE_15__* (...) @current_cpu_datap()
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %10, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i64 (...) @current_thread()
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %27, label %24

24:                                               ; preds = %4
  %25 = load i32*, i32** %10, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %24, %4
  %28 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %28, i32* %5, align 4
  br label %579

29:                                               ; preds = %24
  %30 = load i32, i32* %7, align 4
  switch i32 %30, label %577 [
    i32 129, label %31
    i32 128, label %134
    i32 130, label %264
  ]

31:                                               ; preds = %29
  %32 = load i32*, i32** %10, align 8
  %33 = call i32 @is_saved_state32(i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load i8**, i8*** %9, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = load i8*, i8** @x86_THREAD_STATE32_COUNT, align 8
  %39 = icmp ult i8* %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %35, %31
  %41 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %41, i32* %5, align 4
  br label %579

42:                                               ; preds = %35
  %43 = load i64, i64* %8, align 8
  %44 = inttoptr i64 %43 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %44, %struct.TYPE_23__** %11, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = call %struct.TYPE_14__* @saved_state32(i32* %45)
  store %struct.TYPE_14__* %46, %struct.TYPE_14__** %12, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 15
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 15
  store i32 %49, i32* %51, align 4
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 14
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 14
  store i32 %54, i32* %56, align 4
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 13
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 13
  store i32 %59, i32* %61, align 4
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 12
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %65, i32 0, i32 12
  store i32 %64, i32* %66, align 4
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 11
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 11
  store i32 %69, i32* %71, align 4
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 10
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %75, i32 0, i32 10
  store i32 %74, i32* %76, align 4
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 9
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 9
  store i32 %79, i32* %81, align 4
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 8
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %85, i32 0, i32 8
  store i32 %84, i32* %86, align 4
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 7
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 7
  store i32 %89, i32* %91, align 4
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 6
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 6
  store i32 %94, i32* %96, align 4
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 0, i32 5
  store i32 %99, i32* %101, align 4
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %105, i32 0, i32 4
  store i32 %104, i32* %106, align 4
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = and i32 %109, 65535
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 4
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = and i32 %115, 65535
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = and i32 %121, 65535
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 2
  store i32 %122, i32* %124, align 4
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %127, 65535
  %129 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %129, i32 0, i32 3
  store i32 %128, i32* %130, align 4
  %131 = load i8*, i8** @x86_THREAD_STATE32_COUNT, align 8
  %132 = load i8**, i8*** %9, align 8
  store i8* %131, i8** %132, align 8
  %133 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %133, i32* %5, align 4
  br label %579

134:                                              ; preds = %29
  %135 = load i32*, i32** %10, align 8
  %136 = call i32 @is_saved_state64(i32* %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %134
  %139 = load i8**, i8*** %9, align 8
  %140 = load i8*, i8** %139, align 8
  %141 = load i8*, i8** @x86_THREAD_STATE64_COUNT, align 8
  %142 = icmp ult i8* %140, %141
  br i1 %142, label %143, label %145

143:                                              ; preds = %138, %134
  %144 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %144, i32* %5, align 4
  br label %579

145:                                              ; preds = %138
  %146 = load i64, i64* %8, align 8
  %147 = inttoptr i64 %146 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %147, %struct.TYPE_22__** %13, align 8
  %148 = load i32*, i32** %10, align 8
  %149 = call %struct.TYPE_24__* @saved_state64(i32* %148)
  store %struct.TYPE_24__* %149, %struct.TYPE_24__** %14, align 8
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %151 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %150, i32 0, i32 17
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %154 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %153, i32 0, i32 20
  store i32 %152, i32* %154, align 4
  %155 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %156 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %155, i32 0, i32 16
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %159 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %158, i32 0, i32 19
  store i32 %157, i32* %159, align 4
  %160 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %161 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %160, i32 0, i32 15
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %164 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %163, i32 0, i32 18
  store i32 %162, i32* %164, align 4
  %165 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %166 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %165, i32 0, i32 14
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %169 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %168, i32 0, i32 17
  store i32 %167, i32* %169, align 4
  %170 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %171 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %170, i32 0, i32 13
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %174 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %173, i32 0, i32 16
  store i32 %172, i32* %174, align 4
  %175 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %176 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %175, i32 0, i32 12
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %179 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %178, i32 0, i32 15
  store i32 %177, i32* %179, align 4
  %180 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %181 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %180, i32 0, i32 11
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %184 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %183, i32 0, i32 14
  store i32 %182, i32* %184, align 4
  %185 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %186 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %190 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %189, i32 0, i32 13
  store i32 %188, i32* %190, align 4
  %191 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %192 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %191, i32 0, i32 10
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %195 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %194, i32 0, i32 12
  store i32 %193, i32* %195, align 4
  %196 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %197 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %196, i32 0, i32 9
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %200 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %199, i32 0, i32 11
  store i32 %198, i32* %200, align 4
  %201 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %202 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %201, i32 0, i32 8
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %205 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %204, i32 0, i32 10
  store i32 %203, i32* %205, align 4
  %206 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %207 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %206, i32 0, i32 7
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %210 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %209, i32 0, i32 9
  store i32 %208, i32* %210, align 4
  %211 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %212 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %211, i32 0, i32 6
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %215 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %214, i32 0, i32 8
  store i32 %213, i32* %215, align 4
  %216 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %217 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %216, i32 0, i32 5
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %220 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %219, i32 0, i32 7
  store i32 %218, i32* %220, align 4
  %221 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %222 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %221, i32 0, i32 4
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %225 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %224, i32 0, i32 6
  store i32 %223, i32* %225, align 4
  %226 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %227 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %230 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %229, i32 0, i32 5
  store i32 %228, i32* %230, align 4
  %231 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %232 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %231, i32 0, i32 2
  %233 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %236 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %235, i32 0, i32 4
  store i32 %234, i32* %236, align 4
  %237 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %238 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %237, i32 0, i32 2
  %239 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %242 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %241, i32 0, i32 3
  store i32 %240, i32* %242, align 4
  %243 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %244 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %243, i32 0, i32 2
  %245 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %248 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %247, i32 0, i32 2
  store i32 %246, i32* %248, align 4
  %249 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %250 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = and i32 %251, 65535
  %253 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %254 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %253, i32 0, i32 0
  store i32 %252, i32* %254, align 4
  %255 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %256 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = and i32 %257, 65535
  %259 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %260 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %259, i32 0, i32 1
  store i32 %258, i32* %260, align 4
  %261 = load i8*, i8** @x86_THREAD_STATE64_COUNT, align 8
  %262 = load i8**, i8*** %9, align 8
  store i8* %261, i8** %262, align 8
  %263 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %263, i32* %5, align 4
  br label %579

264:                                              ; preds = %29
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %15, align 8
  %265 = load i8**, i8*** %9, align 8
  %266 = load i8*, i8** %265, align 8
  %267 = load i8*, i8** @x86_THREAD_STATE_COUNT, align 8
  %268 = icmp ult i8* %266, %267
  br i1 %268, label %269, label %271

269:                                              ; preds = %264
  %270 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %270, i32* %5, align 4
  br label %579

271:                                              ; preds = %264
  %272 = load i64, i64* %8, align 8
  %273 = inttoptr i64 %272 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %273, %struct.TYPE_21__** %15, align 8
  %274 = load i32*, i32** %10, align 8
  %275 = call i32 @is_saved_state32(i32* %274)
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %403

277:                                              ; preds = %271
  %278 = load i32*, i32** %10, align 8
  %279 = call %struct.TYPE_14__* @saved_state32(i32* %278)
  store %struct.TYPE_14__* %279, %struct.TYPE_14__** %16, align 8
  %280 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %281 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %280, i32 0, i32 1
  %282 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %281, i32 0, i32 0
  store i32 129, i32* %282, align 8
  %283 = load i8*, i8** @x86_THREAD_STATE32_COUNT, align 8
  %284 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %285 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %284, i32 0, i32 1
  %286 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %285, i32 0, i32 1
  store i8* %283, i8** %286, align 8
  %287 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %288 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %287, i32 0, i32 15
  %289 = load i32, i32* %288, align 4
  %290 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %291 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %291, i32 0, i32 1
  %293 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %292, i32 0, i32 15
  store i32 %289, i32* %293, align 4
  %294 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %295 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %294, i32 0, i32 14
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %298 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %298, i32 0, i32 1
  %300 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %299, i32 0, i32 14
  store i32 %296, i32* %300, align 4
  %301 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %302 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %301, i32 0, i32 13
  %303 = load i32, i32* %302, align 4
  %304 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %305 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %305, i32 0, i32 1
  %307 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %306, i32 0, i32 13
  store i32 %303, i32* %307, align 4
  %308 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %309 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %308, i32 0, i32 12
  %310 = load i32, i32* %309, align 4
  %311 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %312 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %312, i32 0, i32 1
  %314 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %313, i32 0, i32 12
  store i32 %310, i32* %314, align 4
  %315 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %316 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %315, i32 0, i32 11
  %317 = load i32, i32* %316, align 4
  %318 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %319 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %319, i32 0, i32 1
  %321 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %320, i32 0, i32 11
  store i32 %317, i32* %321, align 4
  %322 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %323 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %322, i32 0, i32 10
  %324 = load i32, i32* %323, align 4
  %325 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %326 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %326, i32 0, i32 1
  %328 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %327, i32 0, i32 10
  store i32 %324, i32* %328, align 4
  %329 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %330 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %329, i32 0, i32 9
  %331 = load i32, i32* %330, align 4
  %332 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %333 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %333, i32 0, i32 1
  %335 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %334, i32 0, i32 9
  store i32 %331, i32* %335, align 4
  %336 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %337 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %336, i32 0, i32 8
  %338 = load i32, i32* %337, align 4
  %339 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %340 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %340, i32 0, i32 1
  %342 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %341, i32 0, i32 8
  store i32 %338, i32* %342, align 4
  %343 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %344 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %343, i32 0, i32 7
  %345 = load i32, i32* %344, align 4
  %346 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %347 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %347, i32 0, i32 1
  %349 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %348, i32 0, i32 7
  store i32 %345, i32* %349, align 4
  %350 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %351 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %350, i32 0, i32 6
  %352 = load i32, i32* %351, align 4
  %353 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %354 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %353, i32 0, i32 0
  %355 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %354, i32 0, i32 1
  %356 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %355, i32 0, i32 6
  store i32 %352, i32* %356, align 4
  %357 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %358 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %357, i32 0, i32 5
  %359 = load i32, i32* %358, align 4
  %360 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %361 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %360, i32 0, i32 0
  %362 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %361, i32 0, i32 1
  %363 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %362, i32 0, i32 5
  store i32 %359, i32* %363, align 4
  %364 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %365 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %364, i32 0, i32 4
  %366 = load i32, i32* %365, align 4
  %367 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %368 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %367, i32 0, i32 0
  %369 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %368, i32 0, i32 1
  %370 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %369, i32 0, i32 4
  store i32 %366, i32* %370, align 4
  %371 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %372 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 4
  %374 = and i32 %373, 65535
  %375 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %376 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %375, i32 0, i32 0
  %377 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %376, i32 0, i32 1
  %378 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %377, i32 0, i32 0
  store i32 %374, i32* %378, align 4
  %379 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %380 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %379, i32 0, i32 1
  %381 = load i32, i32* %380, align 4
  %382 = and i32 %381, 65535
  %383 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %384 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %383, i32 0, i32 0
  %385 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %384, i32 0, i32 1
  %386 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %385, i32 0, i32 1
  store i32 %382, i32* %386, align 4
  %387 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %388 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %387, i32 0, i32 2
  %389 = load i32, i32* %388, align 4
  %390 = and i32 %389, 65535
  %391 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %392 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %391, i32 0, i32 0
  %393 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %392, i32 0, i32 1
  %394 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %393, i32 0, i32 2
  store i32 %390, i32* %394, align 4
  %395 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %396 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %395, i32 0, i32 3
  %397 = load i32, i32* %396, align 4
  %398 = and i32 %397, 65535
  %399 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %400 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %399, i32 0, i32 0
  %401 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %400, i32 0, i32 1
  %402 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %401, i32 0, i32 3
  store i32 %398, i32* %402, align 4
  br label %573

403:                                              ; preds = %271
  %404 = load i32*, i32** %10, align 8
  %405 = call i32 @is_saved_state64(i32* %404)
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %570

407:                                              ; preds = %403
  %408 = load i32*, i32** %10, align 8
  %409 = call %struct.TYPE_24__* @saved_state64(i32* %408)
  store %struct.TYPE_24__* %409, %struct.TYPE_24__** %17, align 8
  %410 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %411 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %410, i32 0, i32 1
  %412 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %411, i32 0, i32 0
  store i32 128, i32* %412, align 8
  %413 = load i8*, i8** @x86_THREAD_STATE64_COUNT, align 8
  %414 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %415 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %414, i32 0, i32 1
  %416 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %415, i32 0, i32 1
  store i8* %413, i8** %416, align 8
  %417 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %418 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %417, i32 0, i32 17
  %419 = load i32, i32* %418, align 4
  %420 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %421 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %420, i32 0, i32 0
  %422 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %421, i32 0, i32 0
  %423 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %422, i32 0, i32 20
  store i32 %419, i32* %423, align 8
  %424 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %425 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %424, i32 0, i32 16
  %426 = load i32, i32* %425, align 4
  %427 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %428 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %427, i32 0, i32 0
  %429 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %428, i32 0, i32 0
  %430 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %429, i32 0, i32 19
  store i32 %426, i32* %430, align 4
  %431 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %432 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %431, i32 0, i32 15
  %433 = load i32, i32* %432, align 4
  %434 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %435 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %434, i32 0, i32 0
  %436 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %435, i32 0, i32 0
  %437 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %436, i32 0, i32 18
  store i32 %433, i32* %437, align 8
  %438 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %439 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %438, i32 0, i32 14
  %440 = load i32, i32* %439, align 4
  %441 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %442 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %441, i32 0, i32 0
  %443 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %442, i32 0, i32 0
  %444 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %443, i32 0, i32 17
  store i32 %440, i32* %444, align 4
  %445 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %446 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %445, i32 0, i32 13
  %447 = load i32, i32* %446, align 4
  %448 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %449 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %448, i32 0, i32 0
  %450 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %449, i32 0, i32 0
  %451 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %450, i32 0, i32 16
  store i32 %447, i32* %451, align 8
  %452 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %453 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %452, i32 0, i32 12
  %454 = load i32, i32* %453, align 4
  %455 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %456 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %455, i32 0, i32 0
  %457 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %456, i32 0, i32 0
  %458 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %457, i32 0, i32 15
  store i32 %454, i32* %458, align 4
  %459 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %460 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %459, i32 0, i32 11
  %461 = load i32, i32* %460, align 4
  %462 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %463 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %462, i32 0, i32 0
  %464 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %463, i32 0, i32 0
  %465 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %464, i32 0, i32 14
  store i32 %461, i32* %465, align 8
  %466 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %467 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %466, i32 0, i32 2
  %468 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %467, i32 0, i32 3
  %469 = load i32, i32* %468, align 4
  %470 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %471 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %470, i32 0, i32 0
  %472 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %471, i32 0, i32 0
  %473 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %472, i32 0, i32 13
  store i32 %469, i32* %473, align 4
  %474 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %475 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %474, i32 0, i32 10
  %476 = load i32, i32* %475, align 4
  %477 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %478 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %477, i32 0, i32 0
  %479 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %478, i32 0, i32 0
  %480 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %479, i32 0, i32 12
  store i32 %476, i32* %480, align 8
  %481 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %482 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %481, i32 0, i32 9
  %483 = load i32, i32* %482, align 4
  %484 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %485 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %484, i32 0, i32 0
  %486 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %485, i32 0, i32 0
  %487 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %486, i32 0, i32 11
  store i32 %483, i32* %487, align 4
  %488 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %489 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %488, i32 0, i32 8
  %490 = load i32, i32* %489, align 4
  %491 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %492 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %491, i32 0, i32 0
  %493 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %492, i32 0, i32 0
  %494 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %493, i32 0, i32 10
  store i32 %490, i32* %494, align 8
  %495 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %496 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %495, i32 0, i32 7
  %497 = load i32, i32* %496, align 4
  %498 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %499 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %498, i32 0, i32 0
  %500 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %499, i32 0, i32 0
  %501 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %500, i32 0, i32 9
  store i32 %497, i32* %501, align 4
  %502 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %503 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %502, i32 0, i32 6
  %504 = load i32, i32* %503, align 4
  %505 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %506 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %505, i32 0, i32 0
  %507 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %506, i32 0, i32 0
  %508 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %507, i32 0, i32 8
  store i32 %504, i32* %508, align 8
  %509 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %510 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %509, i32 0, i32 5
  %511 = load i32, i32* %510, align 4
  %512 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %513 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %512, i32 0, i32 0
  %514 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %513, i32 0, i32 0
  %515 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %514, i32 0, i32 7
  store i32 %511, i32* %515, align 4
  %516 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %517 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %516, i32 0, i32 4
  %518 = load i32, i32* %517, align 4
  %519 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %520 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %519, i32 0, i32 0
  %521 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %520, i32 0, i32 0
  %522 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %521, i32 0, i32 6
  store i32 %518, i32* %522, align 8
  %523 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %524 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %523, i32 0, i32 3
  %525 = load i32, i32* %524, align 4
  %526 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %527 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %526, i32 0, i32 0
  %528 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %527, i32 0, i32 0
  %529 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %528, i32 0, i32 5
  store i32 %525, i32* %529, align 4
  %530 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %531 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %530, i32 0, i32 2
  %532 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %531, i32 0, i32 2
  %533 = load i32, i32* %532, align 4
  %534 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %535 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %534, i32 0, i32 0
  %536 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %535, i32 0, i32 0
  %537 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %536, i32 0, i32 4
  store i32 %533, i32* %537, align 8
  %538 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %539 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %538, i32 0, i32 2
  %540 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %539, i32 0, i32 1
  %541 = load i32, i32* %540, align 4
  %542 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %543 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %542, i32 0, i32 0
  %544 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %543, i32 0, i32 0
  %545 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %544, i32 0, i32 3
  store i32 %541, i32* %545, align 4
  %546 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %547 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %546, i32 0, i32 2
  %548 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %547, i32 0, i32 0
  %549 = load i32, i32* %548, align 4
  %550 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %551 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %550, i32 0, i32 0
  %552 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %551, i32 0, i32 0
  %553 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %552, i32 0, i32 2
  store i32 %549, i32* %553, align 8
  %554 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %555 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %554, i32 0, i32 0
  %556 = load i32, i32* %555, align 4
  %557 = and i32 %556, 65535
  %558 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %559 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %558, i32 0, i32 0
  %560 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %559, i32 0, i32 0
  %561 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %560, i32 0, i32 0
  store i32 %557, i32* %561, align 8
  %562 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %563 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %562, i32 0, i32 1
  %564 = load i32, i32* %563, align 4
  %565 = and i32 %564, 65535
  %566 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %567 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %566, i32 0, i32 0
  %568 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %567, i32 0, i32 0
  %569 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %568, i32 0, i32 1
  store i32 %565, i32* %569, align 4
  br label %572

570:                                              ; preds = %403
  %571 = call i32 @panic(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %572

572:                                              ; preds = %570, %407
  br label %573

573:                                              ; preds = %572, %277
  %574 = load i8*, i8** @x86_THREAD_STATE_COUNT, align 8
  %575 = load i8**, i8*** %9, align 8
  store i8* %574, i8** %575, align 8
  %576 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %576, i32* %5, align 4
  br label %579

577:                                              ; preds = %29
  %578 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %578, i32* %5, align 4
  br label %579

579:                                              ; preds = %577, %573, %269, %145, %143, %42, %40, %27
  %580 = load i32, i32* %5, align 4
  ret i32 %580
}

declare dso_local %struct.TYPE_15__* @current_cpu_datap(...) #1

declare dso_local i64 @current_thread(...) #1

declare dso_local i32 @is_saved_state32(i32*) #1

declare dso_local %struct.TYPE_14__* @saved_state32(i32*) #1

declare dso_local i32 @is_saved_state64(i32*) #1

declare dso_local %struct.TYPE_24__* @saved_state64(i32*) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
