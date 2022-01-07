; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscCache.c_taosGetConnFromCache.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscCache.c_taosGetConnFromCache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i16, i8*, %struct.TYPE_8__*, %struct.TYPE_9__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i64, i64, i32*, i32, i32, i32, %struct.TYPE_9__** }

@.str = private unnamed_addr constant [55 x i8] c"%p ip:0x%x:%d:%d:%p retrieved, connections in cache:%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @taosGetConnFromCache(i8* %0, i32 %1, i16 signext %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i16 %2, i16* %8, align 2
  store i8* %3, i8** %9, align 8
  store i8* null, i8** %13, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %12, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %18 = icmp eq %struct.TYPE_10__* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %4
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19, %4
  store i8* null, i8** %5, align 8
  br label %170

25:                                               ; preds = %19
  %26 = call i64 (...) @taosGetTimestampMs()
  store i64 %26, i64* %14, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i16, i16* %8, align 2
  %30 = load i8*, i8** %9, align 8
  %31 = call i32 @taosHashConn(%struct.TYPE_10__* %27, i32 %28, i16 signext %29, i8* %30)
  store i32 %31, i32* %10, align 4
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 3
  %34 = call i32 @pthread_mutex_lock(i32* %33)
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 6
  %37 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %37, i64 %39
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  store %struct.TYPE_9__* %41, %struct.TYPE_9__** %11, align 8
  br label %42

42:                                               ; preds = %76, %25
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %44 = icmp ne %struct.TYPE_9__* %43, null
  br i1 %44, label %45, label %80

45:                                               ; preds = %42
  %46 = load i64, i64* %14, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %49, %52
  %54 = icmp sge i64 %46, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %45
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %58 = load i32, i32* %10, align 4
  %59 = load i64, i64* %14, align 8
  %60 = call i32 @taosRemoveExpiredNodes(%struct.TYPE_10__* %56, %struct.TYPE_9__* %57, i32 %58, i64 %59)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %11, align 8
  br label %80

61:                                               ; preds = %45
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %61
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  %70 = load i16, i16* %69, align 8
  %71 = sext i16 %70 to i32
  %72 = load i16, i16* %8, align 2
  %73 = sext i16 %72 to i32
  %74 = icmp eq i32 %71, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  br label %80

76:                                               ; preds = %67, %61
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 4
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  store %struct.TYPE_9__* %79, %struct.TYPE_9__** %11, align 8
  br label %42

80:                                               ; preds = %75, %55, %42
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %82 = icmp ne %struct.TYPE_9__* %81, null
  br i1 %82, label %83, label %148

83:                                               ; preds = %80
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 4
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %86, align 8
  %88 = load i32, i32* %10, align 4
  %89 = load i64, i64* %14, align 8
  %90 = call i32 @taosRemoveExpiredNodes(%struct.TYPE_10__* %84, %struct.TYPE_9__* %87, i32 %88, i64 %89)
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 3
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = icmp ne %struct.TYPE_8__* %93, null
  br i1 %94, label %95, label %103

95:                                               ; preds = %83
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 4
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %97, align 8
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 3
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  store %struct.TYPE_9__* %98, %struct.TYPE_9__** %102, align 8
  br label %113

103:                                              ; preds = %83
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 4
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %105, align 8
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 6
  %109 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %108, align 8
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %109, i64 %111
  store %struct.TYPE_9__* %106, %struct.TYPE_9__** %112, align 8
  br label %113

113:                                              ; preds = %103, %95
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 4
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %115, align 8
  %117 = icmp ne %struct.TYPE_9__* %116, null
  br i1 %117, label %118, label %126

118:                                              ; preds = %113
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 3
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 4
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 3
  store %struct.TYPE_8__* %121, %struct.TYPE_8__** %125, align 8
  br label %126

126:                                              ; preds = %118, %113
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 2
  %129 = load i8*, i8** %128, align 8
  store i8* %129, i8** %13, align 8
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %134 = bitcast %struct.TYPE_9__* %133 to i8*
  %135 = call i32 @taosMemPoolFree(i32 %132, i8* %134)
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, -1
  store i32 %139, i32* %137, align 4
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 2
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %10, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %146, -1
  store i32 %147, i32* %145, align 4
  br label %148

148:                                              ; preds = %126, %80
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 3
  %151 = call i32 @pthread_mutex_unlock(i32* %150)
  %152 = load i8*, i8** %13, align 8
  %153 = icmp ne i8* %152, null
  br i1 %153, label %154, label %168

154:                                              ; preds = %148
  %155 = load i8*, i8** %13, align 8
  %156 = load i32, i32* %7, align 4
  %157 = load i16, i16* %8, align 2
  %158 = load i32, i32* %10, align 4
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 2
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %10, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @tscTrace(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8* %155, i32 %156, i16 signext %157, i32 %158, %struct.TYPE_9__* %159, i32 %166)
  br label %168

168:                                              ; preds = %154, %148
  %169 = load i8*, i8** %13, align 8
  store i8* %169, i8** %5, align 8
  br label %170

170:                                              ; preds = %168, %24
  %171 = load i8*, i8** %5, align 8
  ret i8* %171
}

declare dso_local i64 @taosGetTimestampMs(...) #1

declare dso_local i32 @taosHashConn(%struct.TYPE_10__*, i32, i16 signext, i8*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @taosRemoveExpiredNodes(%struct.TYPE_10__*, %struct.TYPE_9__*, i32, i64) #1

declare dso_local i32 @taosMemPoolFree(i32, i8*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @tscTrace(i8*, i8*, i32, i16 signext, i32, %struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
