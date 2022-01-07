; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscUtil.c_tscGetMetricMetaCacheKey.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscUtil.c_tscGetMetricMetaCacheKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { %struct.TYPE_29__, %struct.TYPE_30__ }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_30__ = type { i32, %struct.TYPE_28__, %struct.TYPE_25__ }
%struct.TYPE_28__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i64, i8* }
%struct.TYPE_25__ = type { %struct.TYPE_24__, %struct.TYPE_23__, i64 }
%struct.TYPE_24__ = type { i8* }
%struct.TYPE_23__ = type { i8* }
%struct.TYPE_20__ = type { i64, i32*, i8* }
%struct.TYPE_21__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i8* }
%struct.TYPE_22__ = type { i8* }

@.str = private unnamed_addr constant [4 x i8] c"%d,\00", align 1
@TSDB_MAX_TAGS_LEN = common dso_local global i64 0, align 8
@TSDB_MAX_SQL_LEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"%s,%s\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"%s,%s,%s,%d,%s,[%s],%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tscGetMetricMetaCacheKey(%struct.TYPE_31__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_31__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [128 x i8], align 16
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_30__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_21__*, align 8
  %16 = alloca [512 x i8], align 16
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_22__, align 8
  %19 = alloca i8*, align 8
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 -1, i64* %7, align 8
  %20 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call %struct.TYPE_20__* @tscGetMeterMetaInfoByUid(%struct.TYPE_31__* %20, i32 %21, i64* %7)
  store %struct.TYPE_20__* %22, %struct.TYPE_20__** %8, align 8
  store i64 0, i64* %9, align 8
  %23 = bitcast [128 x i8]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %23, i8 0, i64 128, i1 false)
  store i64 0, i64* %11, align 8
  br label %24

24:                                               ; preds = %42, %3
  %25 = load i64, i64* %11, align 8
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ult i64 %25, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %24
  %31 = load i64, i64* %9, align 8
  %32 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 %31
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* %11, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i64 (i8*, i8*, ...) @sprintf(i8* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i64, i64* %9, align 8
  %41 = add i64 %40, %39
  store i64 %41, i64* %9, align 8
  br label %42

42:                                               ; preds = %30
  %43 = load i64, i64* %11, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %11, align 8
  br label %24

45:                                               ; preds = %24
  %46 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %46, i32 0, i32 1
  store %struct.TYPE_30__* %47, %struct.TYPE_30__** %12, align 8
  %48 = load i64, i64* %9, align 8
  %49 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %50 = call i64 @tListLen(i8* %49)
  %51 = icmp ult i64 %48, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load i64, i64* @TSDB_MAX_TAGS_LEN, align 8
  store i64 %54, i64* %13, align 8
  %55 = load i64, i64* @TSDB_MAX_SQL_LEN, align 8
  %56 = call i8* @calloc(i32 1, i64 %55)
  store i8* %56, i8** %14, align 8
  %57 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call %struct.TYPE_21__* @tsGetMetricQueryCondPos(%struct.TYPE_30__* %57, i32 %58)
  store %struct.TYPE_21__* %59, %struct.TYPE_21__** %15, align 8
  %60 = bitcast [512 x i8]* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %60, i8 0, i64 512, i1 false)
  %61 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %45
  %67 = getelementptr inbounds [512 x i8], [512 x i8]* %16, i64 0, i64 0
  %68 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i64 (i8*, i8*, ...) @sprintf(i8* %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %72, i8* %77)
  br label %79

79:                                               ; preds = %66, %45
  %80 = load i8*, i8** %14, align 8
  %81 = load i64, i64* @TSDB_MAX_SQL_LEN, align 8
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 2
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %86 = icmp ne %struct.TYPE_21__* %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %79
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  br label %93

92:                                               ; preds = %79
  br label %93

93:                                               ; preds = %92, %87
  %94 = phi i8* [ %91, %87 ], [ null, %92 ]
  %95 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp sgt i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %93
  %102 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %104, i32 0, i32 1
  %106 = load i8*, i8** %105, align 8
  br label %108

107:                                              ; preds = %93
  br label %108

108:                                              ; preds = %107, %101
  %109 = phi i8* [ %106, %101 ], [ null, %107 ]
  %110 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = getelementptr inbounds [512 x i8], [512 x i8]* %16, i64 0, i64 0
  %114 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %115 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i64 @snprintf(i8* %80, i64 %81, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %84, i8* %94, i8* %109, i32 %112, i8* %113, i8* %114, i32 %118)
  store i64 %119, i64* %17, align 8
  %120 = load i64, i64* %17, align 8
  %121 = load i64, i64* @TSDB_MAX_SQL_LEN, align 8
  %122 = icmp ule i64 %120, %121
  %123 = zext i1 %122 to i32
  %124 = call i32 @assert(i32 %123)
  %125 = load i64, i64* %17, align 8
  %126 = load i64, i64* %13, align 8
  %127 = icmp ult i64 %125, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %108
  %129 = load i8*, i8** %5, align 8
  %130 = load i8*, i8** %14, align 8
  %131 = call i32 @strcpy(i8* %129, i8* %130)
  br label %147

132:                                              ; preds = %108
  %133 = call i32 @MD5Init(%struct.TYPE_22__* %18)
  %134 = load i8*, i8** %14, align 8
  %135 = bitcast i8* %134 to i32*
  %136 = load i64, i64* %17, align 8
  %137 = call i32 @MD5Update(%struct.TYPE_22__* %18, i32* %135, i64 %136)
  %138 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = call i64 @tListLen(i8* %141)
  %143 = call i8* @base64_encode(i8* %139, i64 %142)
  store i8* %143, i8** %19, align 8
  %144 = load i8*, i8** %5, align 8
  %145 = load i8*, i8** %19, align 8
  %146 = call i32 @strcpy(i8* %144, i8* %145)
  br label %147

147:                                              ; preds = %132, %128
  %148 = load i8*, i8** %14, align 8
  %149 = call i32 @free(i8* %148)
  ret void
}

declare dso_local %struct.TYPE_20__* @tscGetMeterMetaInfoByUid(%struct.TYPE_31__*, i32, i64*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @tListLen(i8*) #1

declare dso_local i8* @calloc(i32, i64) #1

declare dso_local %struct.TYPE_21__* @tsGetMetricQueryCondPos(%struct.TYPE_30__*, i32) #1

declare dso_local i64 @snprintf(i8*, i64, i8*, i8*, i8*, i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @MD5Init(%struct.TYPE_22__*) #1

declare dso_local i32 @MD5Update(%struct.TYPE_22__*, i32*, i64) #1

declare dso_local i8* @base64_encode(i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
