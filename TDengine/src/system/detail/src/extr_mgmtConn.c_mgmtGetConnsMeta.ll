; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtConn.c_mgmtGetConnsMeta.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtConn.c_mgmtGetConnsMeta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8* }
%struct.TYPE_9__ = type { i32*, i32, i32*, i32, i32, i32* }
%struct.TYPE_10__ = type { i8*, i32, i8* }

@TSDB_METER_NAME_LEN = common dso_local global i32 0, align 4
@TSDB_DATA_TYPE_BINARY = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"user\00", align 1
@TSDB_IPv4ADDR_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"ip:port\00", align 1
@TSDB_DATA_TYPE_TIMESTAMP = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"login time\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mgmtGetConnsMeta(%struct.TYPE_11__* %0, %struct.TYPE_9__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* @TSDB_METER_NAME_LEN, align 4
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  store i32 %10, i32* %16, align 4
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %18 = call %struct.TYPE_10__* @tsGetSchema(%struct.TYPE_11__* %17)
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %8, align 8
  %19 = load i8*, i8** @TSDB_DATA_TYPE_BINARY, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 2
  store i8* %19, i8** %24, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @strcpy(i32 %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @htons(i32 %38)
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  store i8* %39, i8** %44, align 8
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* @TSDB_IPv4ADDR_LEN, align 4
  %48 = add nsw i32 %47, 6
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 %48, i32* %54, align 4
  %55 = load i8*, i8** @TSDB_DATA_TYPE_BINARY, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 2
  store i8* %55, i8** %60, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @strcpy(i32 %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i8* @htons(i32 %74)
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  store i8* %75, i8** %80, align 8
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %7, align 4
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  store i32 8, i32* %88, align 4
  %89 = load i8*, i8** @TSDB_DATA_TYPE_TIMESTAMP, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 2
  store i8* %89, i8** %94, align 8
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @strcpy(i32 %100, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i8* @htons(i32 %108)
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  store i8* %109, i8** %114, align 8
  %115 = load i32, i32* %7, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* %7, align 4
  %118 = call i8* @htons(i32 %117)
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  store i8* %118, i8** %120, align 8
  %121 = load i32, i32* %7, align 4
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 8
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  store i32 0, i32* %127, align 4
  store i32 1, i32* %9, align 4
  br label %128

128:                                              ; preds = %156, %3
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* %7, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %159

132:                                              ; preds = %128
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 2
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %9, align 4
  %137 = sub nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %135, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %9, align 4
  %145 = sub nsw i32 %144, 1
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %143, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %140, %148
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 2
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %9, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  store i32 %149, i32* %155, align 4
  br label %156

156:                                              ; preds = %132
  %157 = load i32, i32* %9, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %9, align 4
  br label %128

159:                                              ; preds = %128
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 3
  store i32 1000000, i32* %161, align 8
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 5
  store i32* null, i32** %163, align 8
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 2
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %7, align 4
  %168 = sub nsw i32 %167, 1
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %166, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = load i32, i32* %7, align 4
  %176 = sub nsw i32 %175, 1
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %174, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = add nsw i32 %171, %179
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 4
  store i32 %180, i32* %182, align 4
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %184 = load i32*, i32** %6, align 8
  %185 = call i32 @mgmtGetConns(%struct.TYPE_9__* %183, i32* %184)
  ret i32 0
}

declare dso_local %struct.TYPE_10__* @tsGetSchema(%struct.TYPE_11__*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @mgmtGetConns(%struct.TYPE_9__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
