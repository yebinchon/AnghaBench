; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_NativeNatThread.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_NativeNatThread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, i32, i64, i32, i32, i32, %struct.TYPE_22__*, i64, %struct.TYPE_15__* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i64 }
%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_19__, %struct.TYPE_18__*, i32, %struct.TYPE_17__*, i32* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_22__* }

@.str = private unnamed_addr constant [27 x i8] c"NnGetNextInterface Start.\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"NnGetNextInterface Ok: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"NnMainLoop Start.\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"LH_KERNEL_MODE_START\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"NnMainLoop End.\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"NnGetNextInterface Failed.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NativeNatThread(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca [64 x i8], align 16
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %10, %struct.TYPE_21__** %5, align 8
  %11 = call i8* (...) @InitWaitUntilHostIPAddressChanged()
  store i8* %11, i8** %6, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %2
  br label %235

18:                                               ; preds = %14
  br label %19

19:                                               ; preds = %231, %18
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %232

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %67, %24
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 9
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %59, label %32

32:                                               ; preds = %25
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 9
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %36, align 8
  %38 = icmp eq %struct.TYPE_16__* %37, null
  br i1 %38, label %59, label %39

39:                                               ; preds = %32
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 9
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %39
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 9
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br label %57

57:                                               ; preds = %48, %39
  %58 = phi i1 [ false, %39 ], [ %56, %48 ]
  br label %59

59:                                               ; preds = %57, %32, %25
  %60 = phi i1 [ true, %32 ], [ true, %25 ], [ %58, %57 ]
  br i1 %60, label %61, label %72

61:                                               ; preds = %59
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %72

67:                                               ; preds = %61
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @Wait(i32 %70, i32 1234)
  br label %25

72:                                               ; preds = %66, %59
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %232

78:                                               ; preds = %72
  %79 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %81 = call i32 @NnClearQueue(%struct.TYPE_21__* %80)
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %83 = call %struct.TYPE_20__* @NnGetNextInterface(%struct.TYPE_21__* %82)
  store %struct.TYPE_20__* %83, %struct.TYPE_20__** %7, align 8
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %85 = icmp ne %struct.TYPE_20__* %84, null
  br i1 %85, label %86, label %215

86:                                               ; preds = %78
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @Lock(i32 %98)
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 6
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %124

104:                                              ; preds = %86
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 5
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %108, align 8
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 7
  store %struct.TYPE_22__* %109, %struct.TYPE_22__** %111, align 8
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 7
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %113, align 8
  %115 = icmp ne %struct.TYPE_22__* %114, null
  br i1 %115, label %116, label %123

116:                                              ; preds = %104
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 7
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @AddRef(i32 %121)
  br label %123

123:                                              ; preds = %116, %104
  br label %124

124:                                              ; preds = %123, %86
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 6
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @Unlock(i32 %127)
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %130 = call i32 @NnClearQueue(%struct.TYPE_21__* %129)
  %131 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i32 0, i32 3
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 3
  %135 = call i64 @IPToUINT(i32* %134)
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 8
  store i64 %135, i64* %137, align 8
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %138, i32 0, i32 2
  store i32 1, i32* %139, align 8
  %140 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %141 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i32 0, i32 3
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @MacToStr(i8* %141, i32 64, i32 %146)
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 9
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %149, align 8
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %154, i32 0, i32 3
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 3
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 3
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 2
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %162, i32 0, i32 3
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 1
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 3
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 0
  %170 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 1
  %176 = call i32 @NLog(%struct.TYPE_15__* %150, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %153, i32* %157, i32* %161, i32* %165, i32* %169, i8* %170, i32* %173, i32* %175)
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %178 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %179 = call i32 @NnMainLoop(%struct.TYPE_21__* %177, %struct.TYPE_20__* %178)
  %180 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %181 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %181, i32 0, i32 1
  store i32 0, i32* %182, align 4
  %183 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %183, i32 0, i32 2
  store i32 0, i32* %184, align 8
  %185 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %185, i32 0, i32 8
  store i64 0, i64* %186, align 8
  %187 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %188 = call i32 @NnClearQueue(%struct.TYPE_21__* %187)
  %189 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %189, i32 0, i32 6
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @Lock(i32 %191)
  %193 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %193, i32 0, i32 7
  %195 = load %struct.TYPE_22__*, %struct.TYPE_22__** %194, align 8
  %196 = icmp ne %struct.TYPE_22__* %195, null
  br i1 %196, label %197, label %204

197:                                              ; preds = %124
  %198 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %198, i32 0, i32 7
  %200 = load %struct.TYPE_22__*, %struct.TYPE_22__** %199, align 8
  %201 = call i32 @ReleaseTube(%struct.TYPE_22__* %200)
  %202 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %202, i32 0, i32 7
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %203, align 8
  br label %204

204:                                              ; preds = %197, %124
  %205 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %205, i32 0, i32 6
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @Unlock(i32 %207)
  %209 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %210 = call i32 @FreeNativeStack(%struct.TYPE_20__* %209)
  %211 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %211, i32 0, i32 5
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @Zero(i32 %213, i32 6)
  br label %217

215:                                              ; preds = %78
  %216 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %217

217:                                              ; preds = %215, %204
  %218 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %218, i32 0, i32 3
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %231

222:                                              ; preds = %217
  %223 = load i8*, i8** %6, align 8
  %224 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %224, i32 0, i32 4
  %226 = load i32, i32* %225, align 8
  %227 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %227, i32 0, i32 3
  %229 = load i64, i64* %228, align 8
  %230 = call i32 @WaitUntilHostIPAddressChanged(i8* %223, i32 %226, i64 %229, i32 1000)
  br label %231

231:                                              ; preds = %222, %217
  br label %19

232:                                              ; preds = %77, %19
  %233 = load i8*, i8** %6, align 8
  %234 = call i32 @FreeWaitUntilHostIPAddressChanged(i8* %233)
  br label %235

235:                                              ; preds = %232, %17
  ret void
}

declare dso_local i8* @InitWaitUntilHostIPAddressChanged(...) #1

declare dso_local i32 @Wait(i32, i32) #1

declare dso_local i32 @Debug(i8*, ...) #1

declare dso_local i32 @NnClearQueue(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_20__* @NnGetNextInterface(%struct.TYPE_21__*) #1

declare dso_local i32 @Lock(i32) #1

declare dso_local i32 @AddRef(i32) #1

declare dso_local i32 @Unlock(i32) #1

declare dso_local i64 @IPToUINT(i32*) #1

declare dso_local i32 @MacToStr(i8*, i32, i32) #1

declare dso_local i32 @NLog(%struct.TYPE_15__*, i8*, i32, i32*, i32*, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @NnMainLoop(%struct.TYPE_21__*, %struct.TYPE_20__*) #1

declare dso_local i32 @ReleaseTube(%struct.TYPE_22__*) #1

declare dso_local i32 @FreeNativeStack(%struct.TYPE_20__*) #1

declare dso_local i32 @Zero(i32, i32) #1

declare dso_local i32 @WaitUntilHostIPAddressChanged(i8*, i32, i64, i32) #1

declare dso_local i32 @FreeWaitUntilHostIPAddressChanged(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
