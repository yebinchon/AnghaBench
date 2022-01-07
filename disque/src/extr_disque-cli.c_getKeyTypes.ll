; ModuleID = '/home/carl/AnghaBench/disque/src/extr_disque-cli.c_getKeyTypes.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_disque-cli.c_getKeyTypes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i8* }
%struct.TYPE_9__ = type { i32, i64, i32, %struct.TYPE_8__** }
%struct.TYPE_8__ = type { i8* }

@context = common dso_local global %struct.TYPE_10__* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"TYPE %s\00", align 1
@REDIS_OK = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Error getting type for key '%s' (%d: %s)\0A\00", align 1
@REDIS_REPLY_STATUS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [47 x i8] c"Invalid reply type (%d) for TYPE on key '%s'!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32*)* @getKeyTypes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getKeyTypes(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %25, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ult i32 %8, %11
  br i1 %12, label %13, label %28

13:                                               ; preds = %7
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** @context, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %17, i64 %19
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @redisAppendCommand(%struct.TYPE_10__* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %23)
  br label %25

25:                                               ; preds = %13
  %26 = load i32, i32* %6, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %7

28:                                               ; preds = %7
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %104, %28
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ult i32 %30, %33
  br i1 %34, label %35, label %107

35:                                               ; preds = %29
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** @context, align 8
  %37 = bitcast %struct.TYPE_9__** %5 to i8**
  %38 = call i64 @redisGetReply(%struct.TYPE_10__* %36, i8** %37)
  %39 = load i64, i64* @REDIS_OK, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %35
  %42 = load i32, i32* @stderr, align 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 3
  %45 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %45, i64 %47
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = ptrtoint i8* %51 to i64
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** @context, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** @context, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 (i32, i8*, i64, ...) @fprintf(i32 %42, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %52, i32 %55, i8* %58)
  %60 = call i32 @exit(i32 1) #3
  unreachable

61:                                               ; preds = %35
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @REDIS_REPLY_STATUS, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %83

67:                                               ; preds = %61
  %68 = load i32, i32* @stderr, align 4
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 3
  %74 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %74, i64 %76
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 (i32, i8*, i64, ...) @fprintf(i32 %68, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i64 %71, i8* %80)
  %82 = call i32 @exit(i32 1) #3
  unreachable

83:                                               ; preds = %61
  br label %84

84:                                               ; preds = %83
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 3
  %87 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %87, i64 %89
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @toIntType(i8* %93, i32 %96)
  %98 = load i32*, i32** %4, align 8
  %99 = load i32, i32* %6, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  store i32 %97, i32* %101, align 4
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %103 = call i32 @freeReplyObject(%struct.TYPE_9__* %102)
  br label %104

104:                                              ; preds = %84
  %105 = load i32, i32* %6, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %6, align 4
  br label %29

107:                                              ; preds = %29
  ret void
}

declare dso_local i32 @redisAppendCommand(%struct.TYPE_10__*, i8*, i8*) #1

declare dso_local i64 @redisGetReply(%struct.TYPE_10__*, i8**) #1

declare dso_local i32 @fprintf(i32, i8*, i64, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @toIntType(i8*, i32) #1

declare dso_local i32 @freeReplyObject(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
