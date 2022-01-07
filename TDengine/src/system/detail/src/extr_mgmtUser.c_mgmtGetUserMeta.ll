; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtUser.c_mgmtGetUserMeta.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtUser.c_mgmtGetUserMeta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i8* }
%struct.TYPE_14__ = type { i32*, i32, i32*, i32, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { i8*, i32, i8* }

@TSDB_USER_LEN = common dso_local global i32 0, align 4
@TSDB_DATA_TYPE_BINARY = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"privilege\00", align 1
@TSDB_DATA_TYPE_TIMESTAMP = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"created time\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mgmtGetUserMeta(%struct.TYPE_16__* %0, %struct.TYPE_14__* %1, %struct.TYPE_17__* %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %11 = call %struct.TYPE_15__* @tsGetSchema(%struct.TYPE_16__* %10)
  store %struct.TYPE_15__* %11, %struct.TYPE_15__** %8, align 8
  %12 = load i32, i32* @TSDB_USER_LEN, align 4
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  store i32 %12, i32* %18, align 4
  %19 = load i8*, i8** @TSDB_DATA_TYPE_BINARY, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 2
  store i8* %19, i8** %24, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @strcpy(i32 %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @htons(i32 %38)
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  store i8* %39, i8** %44, align 8
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 6, i32* %52, align 4
  %53 = load i8*, i8** @TSDB_DATA_TYPE_BINARY, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 2
  store i8* %53, i8** %58, align 8
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @strcpy(i32 %64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @htons(i32 %72)
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  store i8* %73, i8** %78, align 8
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %7, align 4
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32 8, i32* %86, align 4
  %87 = load i8*, i8** @TSDB_DATA_TYPE_TIMESTAMP, align 8
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 2
  store i8* %87, i8** %92, align 8
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @strcpy(i32 %98, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = call i8* @htons(i32 %106)
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 0
  store i8* %107, i8** %112, align 8
  %113 = load i32, i32* %7, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %7, align 4
  %115 = load i32, i32* %7, align 4
  %116 = call i8* @htons(i32 %115)
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 0
  store i8* %116, i8** %118, align 8
  %119 = load i32, i32* %7, align 4
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 8
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  store i32 0, i32* %125, align 4
  store i32 1, i32* %9, align 4
  br label %126

126:                                              ; preds = %154, %3
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* %7, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %157

130:                                              ; preds = %126
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %9, align 4
  %135 = sub nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %133, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %9, align 4
  %143 = sub nsw i32 %142, 1
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %141, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %138, %146
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 2
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %9, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  store i32 %147, i32* %153, align 4
  br label %154

154:                                              ; preds = %130
  %155 = load i32, i32* %9, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %9, align 4
  br label %126

157:                                              ; preds = %126
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 5
  store i32 %163, i32* %165, align 8
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 4
  store i32 %170, i32* %172, align 4
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 2
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* %7, align 4
  %177 = sub nsw i32 %176, 1
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %175, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* %7, align 4
  %185 = sub nsw i32 %184, 1
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %183, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = add nsw i32 %180, %188
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 3
  store i32 %189, i32* %191, align 8
  ret i32 0
}

declare dso_local %struct.TYPE_15__* @tsGetSchema(%struct.TYPE_16__*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i8* @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
