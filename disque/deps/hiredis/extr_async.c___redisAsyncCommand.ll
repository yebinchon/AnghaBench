; ModuleID = '/home/carl/AnghaBench/disque/deps/hiredis/extr_async.c___redisAsyncCommand.c'
source_filename = "/home/carl/AnghaBench/disque/deps/hiredis/extr_async.c___redisAsyncCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_10__, %struct.TYPE_11__ }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i8*, i32* }

@REDIS_DISCONNECTING = common dso_local global i32 0, align 4
@REDIS_FREEING = common dso_local global i32 0, align 4
@REDIS_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"subscribe\0D\0A\00", align 1
@REDIS_SUBSCRIBED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"unsubscribe\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"monitor\0D\0A\00", align 1
@REDIS_MONITORING = common dso_local global i32 0, align 4
@REDIS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32*, i8*, i8*, i64)* @__redisAsyncCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__redisAsyncCommand(%struct.TYPE_13__* %0, i32* %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca %struct.TYPE_12__, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 2
  store %struct.TYPE_11__* %23, %struct.TYPE_11__** %12, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @REDIS_DISCONNECTING, align 4
  %28 = load i32, i32* @REDIS_FREEING, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %26, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %5
  %33 = load i32, i32* @REDIS_ERR, align 4
  store i32 %33, i32* %6, align 4
  br label %159

34:                                               ; preds = %5
  %35 = load i32*, i32** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  store i32* %35, i32** %36, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  store i8* %37, i8** %38, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = call i8* @nextArgument(i8* %39, i8** %16, i64* %18)
  store i8* %40, i8** %20, align 8
  %41 = load i8*, i8** %20, align 8
  %42 = icmp ne i8* %41, null
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load i8*, i8** %20, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 36
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %15, align 4
  %51 = load i8*, i8** %16, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  %53 = load i8, i8* %52, align 1
  %54 = call signext i8 @tolower(i8 signext %53)
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 112
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 1, i32 0
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %14, align 4
  %60 = load i8*, i8** %16, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  store i8* %62, i8** %16, align 8
  %63 = load i32, i32* %14, align 4
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* %18, align 8
  %66 = sub i64 %65, %64
  store i64 %66, i64* %18, align 8
  %67 = load i32, i32* %15, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %105

69:                                               ; preds = %34
  %70 = load i8*, i8** %16, align 8
  %71 = call i64 @strncasecmp(i8* %70, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 11)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %105

73:                                               ; preds = %69
  %74 = load i32, i32* @REDIS_SUBSCRIBED, align 4
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %103, %73
  %80 = load i8*, i8** %20, align 8
  %81 = call i8* @nextArgument(i8* %80, i8** %17, i64* %19)
  store i8* %81, i8** %20, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %104

83:                                               ; preds = %79
  %84 = load i8*, i8** %17, align 8
  %85 = load i64, i64* %19, align 8
  %86 = call i32 @sdsnewlen(i8* %84, i64 %85)
  store i32 %86, i32* %21, align 4
  %87 = load i32, i32* %14, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %83
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %21, align 4
  %95 = call i32 @dictReplace(i32 %93, i32 %94, %struct.TYPE_12__* %13)
  br label %103

96:                                               ; preds = %83
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %21, align 4
  %102 = call i32 @dictReplace(i32 %100, i32 %101, %struct.TYPE_12__* %13)
  br label %103

103:                                              ; preds = %96, %89
  br label %79

104:                                              ; preds = %79
  br label %151

105:                                              ; preds = %69, %34
  %106 = load i8*, i8** %16, align 8
  %107 = call i64 @strncasecmp(i8* %106, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 13)
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %105
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @REDIS_SUBSCRIBED, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %109
  %117 = load i32, i32* @REDIS_ERR, align 4
  store i32 %117, i32* %6, align 4
  br label %159

118:                                              ; preds = %109
  br label %150

119:                                              ; preds = %105
  %120 = load i8*, i8** %16, align 8
  %121 = call i64 @strncasecmp(i8* %120, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 9)
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %119
  %124 = load i32, i32* @REDIS_MONITORING, align 4
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 4
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 0
  %131 = call i32 @__redisPushCallback(i32* %130, %struct.TYPE_12__* %13)
  br label %149

132:                                              ; preds = %119
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @REDIS_SUBSCRIBED, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %132
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  %143 = call i32 @__redisPushCallback(i32* %142, %struct.TYPE_12__* %13)
  br label %148

144:                                              ; preds = %132
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 0
  %147 = call i32 @__redisPushCallback(i32* %146, %struct.TYPE_12__* %13)
  br label %148

148:                                              ; preds = %144, %139
  br label %149

149:                                              ; preds = %148, %123
  br label %150

150:                                              ; preds = %149, %118
  br label %151

151:                                              ; preds = %150, %104
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %153 = load i8*, i8** %10, align 8
  %154 = load i64, i64* %11, align 8
  %155 = call i32 @__redisAppendCommand(%struct.TYPE_11__* %152, i8* %153, i64 %154)
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %157 = call i32 @_EL_ADD_WRITE(%struct.TYPE_13__* %156)
  %158 = load i32, i32* @REDIS_OK, align 4
  store i32 %158, i32* %6, align 4
  br label %159

159:                                              ; preds = %151, %116, %32
  %160 = load i32, i32* %6, align 4
  ret i32 %160
}

declare dso_local i8* @nextArgument(i8*, i8**, i64*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local signext i8 @tolower(i8 signext) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @sdsnewlen(i8*, i64) #1

declare dso_local i32 @dictReplace(i32, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @__redisPushCallback(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @__redisAppendCommand(%struct.TYPE_11__*, i8*, i64) #1

declare dso_local i32 @_EL_ADD_WRITE(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
