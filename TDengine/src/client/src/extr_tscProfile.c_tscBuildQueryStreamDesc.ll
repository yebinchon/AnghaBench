; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscProfile.c_tscBuildQueryStreamDesc.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscProfile.c_tscBuildQueryStreamDesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__*, %struct.TYPE_15__* }
%struct.TYPE_14__ = type { %struct.TYPE_14__*, i64, i32, i32, i64, i32, i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_15__ = type { %struct.TYPE_15__*, %struct.TYPE_11__, i32, i32, i32* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_18__ = type { i64, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i32, i32, i64* }
%struct.TYPE_16__ = type { i64, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, i32, i32, i64, i32, i32, i32, i64* }

@TSDB_PAYLOAD_SIZE = common dso_local global i32 0, align 4
@TSDB_SHOW_SQL_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @tscBuildQueryStreamDesc(i8* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %13, %struct.TYPE_18__** %5, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = load i32, i32* @TSDB_PAYLOAD_SIZE, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  %18 = getelementptr inbounds i8, i8* %17, i64 -256
  store i8* %18, i8** %6, align 8
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  store %struct.TYPE_19__* %21, %struct.TYPE_19__** %7, align 8
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 16
  store i8* %25, i8** %3, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  store %struct.TYPE_15__* %28, %struct.TYPE_15__** %8, align 8
  br label %29

29:                                               ; preds = %89, %37, %2
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %31 = icmp ne %struct.TYPE_15__* %30, null
  br i1 %31, label %32, label %90

32:                                               ; preds = %29
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 4
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %39, align 8
  store %struct.TYPE_15__* %40, %struct.TYPE_15__** %8, align 8
  br label %29

41:                                               ; preds = %32
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 3
  %44 = load i64*, i64** %43, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 4
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* @TSDB_SHOW_SQL_LEN, align 4
  %49 = sub nsw i32 %48, 1
  %50 = call i32 @strncpy(i64* %44, i32* %47, i32 %49)
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 3
  %53 = load i64*, i64** %52, align 8
  %54 = load i32, i32* @TSDB_SHOW_SQL_LEN, align 4
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %53, i64 %56
  store i64 0, i64* %57, align 8
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* %75, align 8
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 1
  store %struct.TYPE_19__* %79, %struct.TYPE_19__** %7, align 8
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %81, align 8
  store %struct.TYPE_15__* %82, %struct.TYPE_15__** %8, align 8
  %83 = load i8*, i8** %3, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 24
  store i8* %84, i8** %3, align 8
  %85 = load i8*, i8** %3, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = icmp ugt i8* %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %41
  br label %90

89:                                               ; preds = %41
  br label %29

90:                                               ; preds = %88, %29
  %91 = load i8*, i8** %3, align 8
  %92 = bitcast i8* %91 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %92, %struct.TYPE_16__** %9, align 8
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %94, align 8
  store %struct.TYPE_17__* %95, %struct.TYPE_17__** %10, align 8
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  store i64 0, i64* %97, align 8
  %98 = load i8*, i8** %3, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 16
  store i8* %99, i8** %3, align 8
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %101, align 8
  store %struct.TYPE_14__* %102, %struct.TYPE_14__** %11, align 8
  br label %103

103:                                              ; preds = %179, %90
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %105 = icmp ne %struct.TYPE_14__* %104, null
  br i1 %105, label %106, label %180

106:                                              ; preds = %103
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 7
  %109 = load i64*, i64** %108, align 8
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 8
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* @TSDB_SHOW_SQL_LEN, align 4
  %116 = sub nsw i32 %115, 1
  %117 = call i32 @strncpy(i64* %109, i32* %114, i32 %116)
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 7
  %120 = load i64*, i64** %119, align 8
  %121 = load i32, i32* @TSDB_SHOW_SQL_LEN, align 4
  %122 = sub nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i64, i64* %120, i64 %123
  store i64 0, i64* %124, align 8
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 7
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 6
  store i32 %127, i32* %129, align 8
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 6
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 5
  store i32 %132, i32* %134, align 4
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 4
  store i32 %137, i32* %139, align 8
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 4
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = sub nsw i64 %142, %145
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 3
  store i64 %146, i64* %148, align 8
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 2
  store i32 %151, i32* %153, align 4
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 1
  store i32 %156, i32* %158, align 8
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 0
  store i64 %161, i64* %163, align 8
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = add nsw i64 %166, 1
  store i64 %167, i64* %165, align 8
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 1
  store %struct.TYPE_17__* %169, %struct.TYPE_17__** %10, align 8
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %171, align 8
  store %struct.TYPE_14__* %172, %struct.TYPE_14__** %11, align 8
  %173 = load i8*, i8** %3, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 48
  store i8* %174, i8** %3, align 8
  %175 = load i8*, i8** %3, align 8
  %176 = load i8*, i8** %6, align 8
  %177 = icmp ugt i8* %175, %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %106
  br label %180

179:                                              ; preds = %106
  br label %103

180:                                              ; preds = %178, %103
  %181 = load i8*, i8** %3, align 8
  ret i8* %181
}

declare dso_local i32 @strncpy(i64*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
