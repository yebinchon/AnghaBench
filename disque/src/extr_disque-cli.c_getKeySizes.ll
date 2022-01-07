; ModuleID = '/home/carl/AnghaBench/disque/src/extr_disque-cli.c_getKeySizes.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_disque-cli.c_getKeySizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i8* }
%struct.TYPE_9__ = type { i32, i64, i64, %struct.TYPE_8__** }
%struct.TYPE_8__ = type { i8* }

@.str = private unnamed_addr constant [7 x i8] c"STRLEN\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"LLEN\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"SCARD\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"HLEN\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"ZCARD\00", align 1
@TYPE_NONE = common dso_local global i32 0, align 4
@context = common dso_local global %struct.TYPE_10__* null, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@REDIS_OK = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [42 x i8] c"Error getting size for key '%s' (%d: %s)\0A\00", align 1
@REDIS_REPLY_INTEGER = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [53 x i8] c"Warning:  %s on '%s' failed (may have changed type)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32*, i64*)* @getKeySizes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getKeySizes(%struct.TYPE_9__* %0, i32* %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca [5 x i8*], align 16
  %9 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64* %2, i64** %6, align 8
  %10 = bitcast [5 x i8*]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 40, i1 false)
  %11 = bitcast i8* %10 to [5 x i8*]*
  %12 = getelementptr inbounds [5 x i8*], [5 x i8*]* %11, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8** %12, align 16
  %13 = getelementptr inbounds [5 x i8*], [5 x i8*]* %11, i32 0, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8** %13, align 8
  %14 = getelementptr inbounds [5 x i8*], [5 x i8*]* %11, i32 0, i32 2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8** %14, align 16
  %15 = getelementptr inbounds [5 x i8*], [5 x i8*]* %11, i32 0, i32 3
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8** %15, align 8
  %16 = getelementptr inbounds [5 x i8*], [5 x i8*]* %11, i32 0, i32 4
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8** %16, align 16
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %52, %3
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ult i32 %18, %21
  br i1 %22, label %23, label %55

23:                                               ; preds = %17
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %9, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @TYPE_NONE, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %52

32:                                               ; preds = %23
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** @context, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %9, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [5 x i8*], [5 x i8*]* %8, i64 0, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 3
  %44 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %44, i64 %46
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @redisAppendCommand(%struct.TYPE_10__* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %41, i8* %50)
  br label %52

52:                                               ; preds = %32, %31
  %53 = load i32, i32* %9, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %17

55:                                               ; preds = %17
  store i32 0, i32* %9, align 4
  br label %56

56:                                               ; preds = %142, %55
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ult i32 %57, %60
  br i1 %61, label %62, label %145

62:                                               ; preds = %56
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* %9, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @TYPE_NONE, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %62
  %71 = load i64*, i64** %6, align 8
  %72 = load i32, i32* %9, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  store i64 0, i64* %74, align 8
  br label %142

75:                                               ; preds = %62
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** @context, align 8
  %77 = bitcast %struct.TYPE_9__** %7 to i8**
  %78 = call i64 @redisGetReply(%struct.TYPE_10__* %76, i8** %77)
  %79 = load i64, i64* @REDIS_OK, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %100

81:                                               ; preds = %75
  %82 = load i32, i32* @stderr, align 4
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 3
  %85 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %85, i64 %87
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** @context, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** @context, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %82, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i8* %91, i32 %94, i8* %97)
  %99 = call i32 @exit(i32 1) #4
  unreachable

100:                                              ; preds = %75
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @REDIS_REPLY_INTEGER, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %130

106:                                              ; preds = %100
  %107 = load i32, i32* @stderr, align 4
  %108 = load i32*, i32** %5, align 8
  %109 = load i32, i32* %9, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [5 x i8*], [5 x i8*]* %8, i64 0, i64 %113
  %115 = load i8*, i8** %114, align 8
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 3
  %118 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %117, align 8
  %119 = load i32, i32* %9, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %118, i64 %120
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %107, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i8* %115, i8* %124)
  %126 = load i64*, i64** %6, align 8
  %127 = load i32, i32* %9, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %126, i64 %128
  store i64 0, i64* %129, align 8
  br label %138

130:                                              ; preds = %100
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = load i64*, i64** %6, align 8
  %135 = load i32, i32* %9, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds i64, i64* %134, i64 %136
  store i64 %133, i64* %137, align 8
  br label %138

138:                                              ; preds = %130, %106
  br label %139

139:                                              ; preds = %138
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %141 = call i32 @freeReplyObject(%struct.TYPE_9__* %140)
  br label %142

142:                                              ; preds = %139, %70
  %143 = load i32, i32* %9, align 4
  %144 = add i32 %143, 1
  store i32 %144, i32* %9, align 4
  br label %56

145:                                              ; preds = %56
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @redisAppendCommand(%struct.TYPE_10__*, i8*, i8*, i8*) #2

declare dso_local i64 @redisGetReply(%struct.TYPE_10__*, i8**) #2

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @freeReplyObject(%struct.TYPE_9__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
