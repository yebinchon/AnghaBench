; ModuleID = '/home/carl/AnghaBench/disque/deps/hiredis/extr_hiredis.c_processBulkItem.c'
source_filename = "/home/carl/AnghaBench/disque/deps/hiredis/extr_hiredis.c_processBulkItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i8*, i32, i32, i8*, %struct.TYPE_6__*, i32* }
%struct.TYPE_6__ = type { i8* (i32*, i8*, i64)*, i8* (i32*)* }

@REDIS_REPLY_NIL = common dso_local global i64 0, align 8
@REDIS_REPLY_STRING = common dso_local global i64 0, align 8
@REDIS_ERR = common dso_local global i32 0, align 4
@REDIS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @processBulkItem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @processBulkItem(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 6
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  store i32* %17, i32** %4, align 8
  store i8* null, i8** %5, align 8
  store i32 0, i32* %10, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %20, i64 %24
  store i8* %25, i8** %6, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 %29, %32
  %34 = call i8* @seekNewline(i8* %26, i32 %33)
  store i8* %34, i8** %7, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %162

37:                                               ; preds = %1
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %40, i64 %44
  store i8* %45, i8** %6, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %49, i64 %53
  %55 = ptrtoint i8* %46 to i64
  %56 = ptrtoint i8* %54 to i64
  %57 = sub i64 %55, %56
  %58 = add nsw i64 %57, 2
  store i64 %58, i64* %9, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = call i64 @readLongLong(i8* %59)
  store i64 %60, i64* %8, align 8
  %61 = load i64, i64* %8, align 8
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %87

63:                                               ; preds = %37
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 5
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = icmp ne %struct.TYPE_6__* %66, null
  br i1 %67, label %68, label %83

68:                                               ; preds = %63
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 5
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i8* (i32*)*, i8* (i32*)** %72, align 8
  %74 = icmp ne i8* (i32*)* %73, null
  br i1 %74, label %75, label %83

75:                                               ; preds = %68
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 5
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i8* (i32*)*, i8* (i32*)** %79, align 8
  %81 = load i32*, i32** %4, align 8
  %82 = call i8* %80(i32* %81)
  store i8* %82, i8** %5, align 8
  br label %86

83:                                               ; preds = %68, %63
  %84 = load i64, i64* @REDIS_REPLY_NIL, align 8
  %85 = inttoptr i64 %84 to i8*
  store i8* %85, i8** %5, align 8
  br label %86

86:                                               ; preds = %83, %75
  store i32 1, i32* %10, align 4
  br label %131

87:                                               ; preds = %37
  %88 = load i64, i64* %8, align 8
  %89 = add nsw i64 %88, 2
  %90 = load i64, i64* %9, align 8
  %91 = add i64 %90, %89
  store i64 %91, i64* %9, align 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = load i64, i64* %9, align 8
  %97 = add i64 %95, %96
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = icmp ule i64 %97, %101
  br i1 %102, label %103, label %130

103:                                              ; preds = %87
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 5
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = icmp ne %struct.TYPE_6__* %106, null
  br i1 %107, label %108, label %126

108:                                              ; preds = %103
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 5
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i8* (i32*, i8*, i64)*, i8* (i32*, i8*, i64)** %112, align 8
  %114 = icmp ne i8* (i32*, i8*, i64)* %113, null
  br i1 %114, label %115, label %126

115:                                              ; preds = %108
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 5
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i8* (i32*, i8*, i64)*, i8* (i32*, i8*, i64)** %119, align 8
  %121 = load i32*, i32** %4, align 8
  %122 = load i8*, i8** %7, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 2
  %124 = load i64, i64* %8, align 8
  %125 = call i8* %120(i32* %121, i8* %123, i64 %124)
  store i8* %125, i8** %5, align 8
  br label %129

126:                                              ; preds = %108, %103
  %127 = load i64, i64* @REDIS_REPLY_STRING, align 8
  %128 = inttoptr i64 %127 to i8*
  store i8* %128, i8** %5, align 8
  br label %129

129:                                              ; preds = %126, %115
  store i32 1, i32* %10, align 4
  br label %130

130:                                              ; preds = %129, %87
  br label %131

131:                                              ; preds = %130, %86
  %132 = load i32, i32* %10, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %161

134:                                              ; preds = %131
  %135 = load i8*, i8** %5, align 8
  %136 = icmp eq i8* %135, null
  br i1 %136, label %137, label %141

137:                                              ; preds = %134
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %139 = call i32 @__redisReaderSetErrorOOM(%struct.TYPE_7__* %138)
  %140 = load i32, i32* @REDIS_ERR, align 4
  store i32 %140, i32* %2, align 4
  br label %164

141:                                              ; preds = %134
  %142 = load i64, i64* %9, align 8
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = sext i32 %145 to i64
  %147 = add i64 %146, %142
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %144, align 8
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %141
  %154 = load i8*, i8** %5, align 8
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 4
  store i8* %154, i8** %156, align 8
  br label %157

157:                                              ; preds = %153, %141
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %159 = call i32 @moveToNextTask(%struct.TYPE_7__* %158)
  %160 = load i32, i32* @REDIS_OK, align 4
  store i32 %160, i32* %2, align 4
  br label %164

161:                                              ; preds = %131
  br label %162

162:                                              ; preds = %161, %1
  %163 = load i32, i32* @REDIS_ERR, align 4
  store i32 %163, i32* %2, align 4
  br label %164

164:                                              ; preds = %162, %157, %137
  %165 = load i32, i32* %2, align 4
  ret i32 %165
}

declare dso_local i8* @seekNewline(i8*, i32) #1

declare dso_local i64 @readLongLong(i8*) #1

declare dso_local i32 @__redisReaderSetErrorOOM(%struct.TYPE_7__*) #1

declare dso_local i32 @moveToNextTask(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
