; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscServer.c_tscBuildCreateTableMsg.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscServer.c_tscBuildCreateTableMsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i16, i8*, i16, i16, i32, i32, i32, i64 }
%struct.TYPE_22__ = type { i32, i8*, %struct.TYPE_19__*, i8*, i8*, i32 }
%struct.TYPE_19__ = type { i8*, i32, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_16__ = type { i16, i32, i32 }

@TSDB_CODE_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"%p failed to malloc for create table msg\00", align 1
@tsRpcHeadSize = common dso_local global i32 0, align 4
@TSDB_MSG_TYPE_CREATE_TABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tscBuildCreateTableMsg(%struct.TYPE_17__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca i16, align 2
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  %20 = load i16, i16* %19, align 8
  %21 = call i8* @calloc(i32 1, i16 signext %20)
  store i8* %21, i8** %10, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 0
  %30 = load i16, i16* %29, align 8
  %31 = call i32 @memcpy(i8* %22, i8* %26, i16 signext %30)
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  store %struct.TYPE_18__* %33, %struct.TYPE_18__** %11, align 8
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %35 = call %struct.TYPE_21__* @tscGetMeterMetaInfo(%struct.TYPE_18__* %34, i32 0)
  store %struct.TYPE_21__* %35, %struct.TYPE_21__** %12, align 8
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %37 = call i32 @tscEstimateCreateTableMsgLength(%struct.TYPE_17__* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i64 @tscAllocPayload(%struct.TYPE_18__* %39, i32 %40)
  %42 = icmp ne i64 %38, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %1
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %45 = call i32 @tscError(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), %struct.TYPE_17__* %44)
  store i32 -1, i32* %2, align 4
  br label %217

46:                                               ; preds = %1
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = load i32, i32* @tsRpcHeadSize, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  store i8* %52, i8** %5, align 8
  %53 = load i8*, i8** %5, align 8
  store i8* %53, i8** %6, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = bitcast i8* %54 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %55, %struct.TYPE_20__** %13, align 8
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @tscGetDBInfoFromMeterId(i32 %58, i32 %61)
  %63 = load i8*, i8** %5, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 4
  store i8* %64, i8** %5, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = bitcast i8* %65 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %66, %struct.TYPE_22__** %4, align 8
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @strcpy(i32 %69, i32 %72)
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 7
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 1, i32 0
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 2
  %84 = load i16, i16* %83, align 8
  %85 = call i8* @htons(i16 signext %84)
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 4
  store i8* %85, i8** %87, align 8
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 3
  %90 = load i16, i16* %89, align 2
  %91 = call i8* @htons(i16 signext %90)
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 3
  store i8* %91, i8** %93, align 8
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 2
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %95, align 8
  %97 = bitcast %struct.TYPE_19__* %96 to i8*
  store i8* %97, i8** %5, align 8
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 1
  store i8* null, i8** %99, align 8
  %100 = load i8*, i8** %10, align 8
  %101 = call i64 @strlen(i8* %100)
  %102 = add nsw i64 %101, 1
  %103 = trunc i64 %102 to i16
  store i16 %103, i16* %14, align 2
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 2
  %106 = load i16, i16* %105, align 8
  %107 = sext i16 %106 to i32
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %121

109:                                              ; preds = %46
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 3
  %112 = load i16, i16* %111, align 2
  %113 = sext i16 %112 to i32
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %109
  %116 = load i8*, i8** %5, align 8
  %117 = load i8*, i8** %10, align 8
  %118 = call i32 @memcpy(i8* %116, i8* %117, i16 signext 4)
  %119 = load i8*, i8** %5, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 4
  store i8* %120, i8** %5, align 8
  br label %191

121:                                              ; preds = %109, %46
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %122, i32 0, i32 2
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %123, align 8
  store %struct.TYPE_19__* %124, %struct.TYPE_19__** %8, align 8
  store i32 0, i32* %15, align 4
  br label %125

125:                                              ; preds = %161, %121
  %126 = load i32, i32* %15, align 4
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 2
  %129 = load i16, i16* %128, align 8
  %130 = sext i16 %129 to i32
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 3
  %133 = load i16, i16* %132, align 2
  %134 = sext i16 %133 to i32
  %135 = add nsw i32 %130, %134
  %136 = icmp slt i32 %126, %135
  br i1 %136, label %137, label %164

137:                                              ; preds = %125
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %139 = load i32, i32* %15, align 4
  %140 = call %struct.TYPE_16__* @tscFieldInfoGetField(%struct.TYPE_18__* %138, i32 %139)
  store %struct.TYPE_16__* %140, %struct.TYPE_16__** %16, align 8
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 2
  store i32 %143, i32* %145, align 4
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @strcpy(i32 %148, i32 %151)
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 0
  %155 = load i16, i16* %154, align 4
  %156 = call i8* @htons(i16 signext %155)
  %157 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %157, i32 0, i32 0
  store i8* %156, i8** %158, align 8
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 1
  store %struct.TYPE_19__* %160, %struct.TYPE_19__** %8, align 8
  br label %161

161:                                              ; preds = %137
  %162 = load i32, i32* %15, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %15, align 4
  br label %125

164:                                              ; preds = %125
  %165 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %166 = bitcast %struct.TYPE_19__* %165 to i8*
  store i8* %166, i8** %5, align 8
  %167 = load i16, i16* %14, align 2
  %168 = sext i16 %167 to i32
  %169 = icmp sgt i32 %168, 1
  br i1 %169, label %170, label %190

170:                                              ; preds = %164
  %171 = load i8*, i8** %5, align 8
  %172 = load i8*, i8** %10, align 8
  %173 = load i16, i16* %14, align 2
  %174 = call i32 @memcpy(i8* %171, i8* %172, i16 signext %173)
  %175 = load i8*, i8** %5, align 8
  %176 = load i16, i16* %14, align 2
  %177 = sext i16 %176 to i32
  %178 = sub nsw i32 %177, 1
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8, i8* %175, i64 %179
  store i8 0, i8* %180, align 1
  %181 = load i16, i16* %14, align 2
  %182 = call i8* @htons(i16 signext %181)
  %183 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %183, i32 0, i32 1
  store i8* %182, i8** %184, align 8
  %185 = load i16, i16* %14, align 2
  %186 = sext i16 %185 to i32
  %187 = load i8*, i8** %5, align 8
  %188 = sext i32 %186 to i64
  %189 = getelementptr inbounds i8, i8* %187, i64 %188
  store i8* %189, i8** %5, align 8
  br label %190

190:                                              ; preds = %170, %164
  br label %191

191:                                              ; preds = %190, %115
  %192 = load i8*, i8** %10, align 8
  %193 = call i32 @tfree(i8* %192)
  %194 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %194, i32 0, i32 6
  %196 = call i32 @tscClearFieldInfo(i32* %195)
  %197 = load i8*, i8** %5, align 8
  %198 = load i8*, i8** %6, align 8
  %199 = ptrtoint i8* %197 to i64
  %200 = ptrtoint i8* %198 to i64
  %201 = sub i64 %199, %200
  %202 = trunc i64 %201 to i32
  store i32 %202, i32* %7, align 4
  %203 = load i32, i32* %7, align 4
  %204 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %205 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %204, i32 0, i32 4
  store i32 %203, i32* %205, align 4
  %206 = load i32, i32* @TSDB_MSG_TYPE_CREATE_TABLE, align 4
  %207 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %208 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i32 0, i32 5
  store i32 %206, i32* %208, align 8
  %209 = load i32, i32* %7, align 4
  %210 = call i32 (...) @minMsgSize()
  %211 = add nsw i32 %209, %210
  %212 = load i32, i32* %9, align 4
  %213 = icmp sle i32 %211, %212
  %214 = zext i1 %213 to i32
  %215 = call i32 @assert(i32 %214)
  %216 = load i32, i32* %7, align 4
  store i32 %216, i32* %2, align 4
  br label %217

217:                                              ; preds = %191, %43
  %218 = load i32, i32* %2, align 4
  ret i32 %218
}

declare dso_local i8* @calloc(i32, i16 signext) #1

declare dso_local i32 @memcpy(i8*, i8*, i16 signext) #1

declare dso_local %struct.TYPE_21__* @tscGetMeterMetaInfo(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @tscEstimateCreateTableMsgLength(%struct.TYPE_17__*) #1

declare dso_local i64 @tscAllocPayload(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @tscError(i8*, %struct.TYPE_17__*) #1

declare dso_local i32 @tscGetDBInfoFromMeterId(i32, i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i8* @htons(i16 signext) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.TYPE_16__* @tscFieldInfoGetField(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @tfree(i8*) #1

declare dso_local i32 @tscClearFieldInfo(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @minMsgSize(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
