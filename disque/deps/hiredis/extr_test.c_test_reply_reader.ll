; ModuleID = '/home/carl/AnghaBench/disque/deps/hiredis/extr_test.c_test_reply_reader.c'
source_filename = "/home/carl/AnghaBench/disque/deps/hiredis/extr_test.c_test_reply_reader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, i32 }
%struct.TYPE_7__ = type { i64, i64 }

@.str = private unnamed_addr constant [33 x i8] c"Error handling in reply parser: \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"@foo\0D\0A\00", align 1
@REDIS_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Protocol error, got \22@\22 as reply type byte\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Memory cleanup in reply parser: \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"*2\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"$5\0D\0Ahello\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"Set error on nested multi bulks with depth > 7: \00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"*1\0D\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"No support for\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"Works with NULL functions for reply: \00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"+OK\0D\0A\00", align 1
@REDIS_OK = common dso_local global i32 0, align 4
@REDIS_REPLY_STATUS = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [62 x i8] c"Works when a single newline (\\r\\n) covers two calls to feed: \00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"+OK\0D\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"Don't reset state after protocol error: \00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.16 = private unnamed_addr constant [49 x i8] c"Don't do empty allocation for empty multi bulk: \00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"*0\0D\0A\00", align 1
@REDIS_REPLY_ARRAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_reply_reader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_reply_reader() #0 {
  %1 = alloca %struct.TYPE_8__*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 @test(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %6 = call %struct.TYPE_8__* (...) @redisReaderCreate()
  store %struct.TYPE_8__* %6, %struct.TYPE_8__** %1, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %8 = call i32 @redisReaderFeed(%struct.TYPE_8__* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %10 = call i32 @redisReaderGetReply(%struct.TYPE_8__* %9, i8** null)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @REDIS_ERR, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %0
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @strcasecmp(i32 %17, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  br label %20

20:                                               ; preds = %14, %0
  %21 = phi i1 [ false, %0 ], [ %19, %14 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @test_cond(i32 %22)
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %25 = call i32 @redisReaderFree(%struct.TYPE_8__* %24)
  %26 = call i32 @test(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %27 = call %struct.TYPE_8__* (...) @redisReaderCreate()
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %1, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %29 = call i32 @redisReaderFeed(%struct.TYPE_8__* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %31 = call i32 @redisReaderFeed(%struct.TYPE_8__* %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 11)
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %33 = call i32 @redisReaderFeed(%struct.TYPE_8__* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %35 = call i32 @redisReaderGetReply(%struct.TYPE_8__* %34, i8** null)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @REDIS_ERR, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %20
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @strcasecmp(i32 %42, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br label %45

45:                                               ; preds = %39, %20
  %46 = phi i1 [ false, %20 ], [ %44, %39 ]
  %47 = zext i1 %46 to i32
  %48 = call i32 @test_cond(i32 %47)
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %50 = call i32 @redisReaderFree(%struct.TYPE_8__* %49)
  %51 = call i32 @test(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0))
  %52 = call %struct.TYPE_8__* (...) @redisReaderCreate()
  store %struct.TYPE_8__* %52, %struct.TYPE_8__** %1, align 8
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %59, %45
  %54 = load i32, i32* %4, align 4
  %55 = icmp slt i32 %54, 9
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %58 = call i32 @redisReaderFeed(%struct.TYPE_8__* %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 4)
  br label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %4, align 4
  br label %53

62:                                               ; preds = %53
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %64 = call i32 @redisReaderGetReply(%struct.TYPE_8__* %63, i8** null)
  store i32 %64, i32* %3, align 4
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @REDIS_ERR, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %62
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @strncasecmp(i32 %71, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 14)
  %73 = icmp eq i64 %72, 0
  br label %74

74:                                               ; preds = %68, %62
  %75 = phi i1 [ false, %62 ], [ %73, %68 ]
  %76 = zext i1 %75 to i32
  %77 = call i32 @test_cond(i32 %76)
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %79 = call i32 @redisReaderFree(%struct.TYPE_8__* %78)
  %80 = call i32 @test(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0))
  %81 = call %struct.TYPE_8__* (...) @redisReaderCreate()
  store %struct.TYPE_8__* %81, %struct.TYPE_8__** %1, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  store i32* null, i32** %83, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %85 = call i32 @redisReaderFeed(%struct.TYPE_8__* %84, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 5)
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %87 = call i32 @redisReaderGetReply(%struct.TYPE_8__* %86, i8** %2)
  store i32 %87, i32* %3, align 4
  %88 = load i32, i32* %3, align 4
  %89 = load i32, i32* @REDIS_OK, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %74
  %92 = load i8*, i8** %2, align 8
  %93 = load i64, i64* @REDIS_REPLY_STATUS, align 8
  %94 = inttoptr i64 %93 to i8*
  %95 = icmp eq i8* %92, %94
  br label %96

96:                                               ; preds = %91, %74
  %97 = phi i1 [ false, %74 ], [ %95, %91 ]
  %98 = zext i1 %97 to i32
  %99 = call i32 @test_cond(i32 %98)
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %101 = call i32 @redisReaderFree(%struct.TYPE_8__* %100)
  %102 = call i32 @test(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.11, i64 0, i64 0))
  %103 = call %struct.TYPE_8__* (...) @redisReaderCreate()
  store %struct.TYPE_8__* %103, %struct.TYPE_8__** %1, align 8
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  store i32* null, i32** %105, align 8
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %107 = call i32 @redisReaderFeed(%struct.TYPE_8__* %106, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i32 4)
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %109 = call i32 @redisReaderGetReply(%struct.TYPE_8__* %108, i8** %2)
  store i32 %109, i32* %3, align 4
  %110 = load i32, i32* %3, align 4
  %111 = load i32, i32* @REDIS_OK, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %96
  %114 = load i8*, i8** %2, align 8
  %115 = icmp eq i8* %114, null
  br label %116

116:                                              ; preds = %113, %96
  %117 = phi i1 [ false, %96 ], [ %115, %113 ]
  %118 = zext i1 %117 to i32
  %119 = call i32 @assert(i32 %118)
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %121 = call i32 @redisReaderFeed(%struct.TYPE_8__* %120, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i32 1)
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %123 = call i32 @redisReaderGetReply(%struct.TYPE_8__* %122, i8** %2)
  store i32 %123, i32* %3, align 4
  %124 = load i32, i32* %3, align 4
  %125 = load i32, i32* @REDIS_OK, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %132

127:                                              ; preds = %116
  %128 = load i8*, i8** %2, align 8
  %129 = load i64, i64* @REDIS_REPLY_STATUS, align 8
  %130 = inttoptr i64 %129 to i8*
  %131 = icmp eq i8* %128, %130
  br label %132

132:                                              ; preds = %127, %116
  %133 = phi i1 [ false, %116 ], [ %131, %127 ]
  %134 = zext i1 %133 to i32
  %135 = call i32 @test_cond(i32 %134)
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %137 = call i32 @redisReaderFree(%struct.TYPE_8__* %136)
  %138 = call i32 @test(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i64 0, i64 0))
  %139 = call %struct.TYPE_8__* (...) @redisReaderCreate()
  store %struct.TYPE_8__* %139, %struct.TYPE_8__** %1, align 8
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  store i32* null, i32** %141, align 8
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %143 = call i32 @redisReaderFeed(%struct.TYPE_8__* %142, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i32 1)
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %145 = call i32 @redisReaderGetReply(%struct.TYPE_8__* %144, i8** %2)
  store i32 %145, i32* %3, align 4
  %146 = load i32, i32* %3, align 4
  %147 = load i32, i32* @REDIS_ERR, align 4
  %148 = icmp eq i32 %146, %147
  %149 = zext i1 %148 to i32
  %150 = call i32 @assert(i32 %149)
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %152 = call i32 @redisReaderGetReply(%struct.TYPE_8__* %151, i8** %2)
  store i32 %152, i32* %3, align 4
  %153 = load i32, i32* %3, align 4
  %154 = load i32, i32* @REDIS_ERR, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %132
  %157 = load i8*, i8** %2, align 8
  %158 = icmp eq i8* %157, null
  br label %159

159:                                              ; preds = %156, %132
  %160 = phi i1 [ false, %132 ], [ %158, %156 ]
  %161 = zext i1 %160 to i32
  %162 = call i32 @test_cond(i32 %161)
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %164 = call i32 @redisReaderFree(%struct.TYPE_8__* %163)
  %165 = call i32 @test(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.16, i64 0, i64 0))
  %166 = call %struct.TYPE_8__* (...) @redisReaderCreate()
  store %struct.TYPE_8__* %166, %struct.TYPE_8__** %1, align 8
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %168 = call i32 @redisReaderFeed(%struct.TYPE_8__* %167, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i32 4)
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %170 = call i32 @redisReaderGetReply(%struct.TYPE_8__* %169, i8** %2)
  store i32 %170, i32* %3, align 4
  %171 = load i32, i32* %3, align 4
  %172 = load i32, i32* @REDIS_OK, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %187

174:                                              ; preds = %159
  %175 = load i8*, i8** %2, align 8
  %176 = bitcast i8* %175 to %struct.TYPE_7__*
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @REDIS_REPLY_ARRAY, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %187

181:                                              ; preds = %174
  %182 = load i8*, i8** %2, align 8
  %183 = bitcast i8* %182 to %struct.TYPE_7__*
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = icmp eq i64 %185, 0
  br label %187

187:                                              ; preds = %181, %174, %159
  %188 = phi i1 [ false, %174 ], [ false, %159 ], [ %186, %181 ]
  %189 = zext i1 %188 to i32
  %190 = call i32 @test_cond(i32 %189)
  %191 = load i8*, i8** %2, align 8
  %192 = call i32 @freeReplyObject(i8* %191)
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %194 = call i32 @redisReaderFree(%struct.TYPE_8__* %193)
  ret void
}

declare dso_local i32 @test(i8*) #1

declare dso_local %struct.TYPE_8__* @redisReaderCreate(...) #1

declare dso_local i32 @redisReaderFeed(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @redisReaderGetReply(%struct.TYPE_8__*, i8**) #1

declare dso_local i32 @test_cond(i32) #1

declare dso_local i64 @strcasecmp(i32, i8*) #1

declare dso_local i32 @redisReaderFree(%struct.TYPE_8__*) #1

declare dso_local i64 @strncasecmp(i32, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @freeReplyObject(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
