; ModuleID = '/home/carl/AnghaBench/disque/src/extr_disque-cli.c_statMode.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_disque-cli.c_statMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i8* }

@REDIS_REPLY_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"ERROR: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [157 x i8] c"------- data ------ --------------------- load -------------------- - child -\0Akeys       mem      clients blocked requests            connections          \0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"db%d:keys\00", align 1
@LONG_MIN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%-11s\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"used_memory\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%-8s\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"connected_clients\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c" %-8s\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"blocked_clients\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"total_commands_processed\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"%ld (+%ld)\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"%-19s\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"total_connections_received\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c" %-12s\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"bgsave_in_progress\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"aof_rewrite_in_progress\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"SAVE\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"AOF\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"SAVE+AOF\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@config = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @statMode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @statMode() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca [64 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i64 0, i64* %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %0, %141
  %9 = call %struct.TYPE_5__* (...) @reconnectingInfo()
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %1, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @REDIS_REPLY_ERROR, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = call i32 @exit(i32 1) #3
  unreachable

21:                                               ; preds = %8
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %4, align 4
  %24 = srem i32 %22, 20
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([157 x i8], [157 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %21
  store i64 0, i64* %2, align 8
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %51, %28
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 20
  br i1 %31, label %32, label %54

32:                                               ; preds = %29
  %33 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i64 %35)
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %41 = call i32 @getLongInfoField(i8* %39, i8* %40)
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %7, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* @LONG_MIN, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %32
  br label %51

47:                                               ; preds = %32
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* %2, align 8
  %50 = add nsw i64 %49, %48
  store i64 %50, i64* %2, align 8
  br label %51

51:                                               ; preds = %47, %46
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %29

54:                                               ; preds = %29
  %55 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %56 = load i64, i64* %2, align 8
  %57 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i64 %56)
  %58 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %58)
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @getLongInfoField(i8* %62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %64 = sext i32 %63 to i64
  store i64 %64, i64* %2, align 8
  %65 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %66 = load i64, i64* %2, align 8
  %67 = call i32 @bytesToHuman(i8* %65, i64 %66)
  %68 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %68)
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @getLongInfoField(i8* %72, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %74 = sext i32 %73 to i64
  store i64 %74, i64* %2, align 8
  %75 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %76 = load i64, i64* %2, align 8
  %77 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i64 %76)
  %78 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* %78)
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @getLongInfoField(i8* %82, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  %84 = sext i32 %83 to i64
  store i64 %84, i64* %2, align 8
  %85 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %86 = load i64, i64* %2, align 8
  %87 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i64 %86)
  %88 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %88)
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @getLongInfoField(i8* %92, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  %94 = sext i32 %93 to i64
  store i64 %94, i64* %2, align 8
  %95 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %96 = load i64, i64* %2, align 8
  %97 = load i64, i64* %3, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %54
  br label %104

100:                                              ; preds = %54
  %101 = load i64, i64* %2, align 8
  %102 = load i64, i64* %3, align 8
  %103 = sub nsw i64 %101, %102
  br label %104

104:                                              ; preds = %100, %99
  %105 = phi i64 [ 0, %99 ], [ %103, %100 ]
  %106 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %95, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i64 %96, i64 %105)
  %107 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* %107)
  %109 = load i64, i64* %2, align 8
  store i64 %109, i64* %3, align 8
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @getLongInfoField(i8* %112, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0))
  %114 = sext i32 %113 to i64
  store i64 %114, i64* %2, align 8
  %115 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %116 = load i64, i64* %2, align 8
  %117 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %115, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i64 %116)
  %118 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8* %118)
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @getLongInfoField(i8* %122, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0))
  %124 = sext i32 %123 to i64
  store i64 %124, i64* %2, align 8
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 @getLongInfoField(i8* %127, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0))
  %129 = shl i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = load i64, i64* %2, align 8
  %132 = or i64 %131, %130
  store i64 %132, i64* %2, align 8
  %133 = load i64, i64* %2, align 8
  switch i64 %133, label %141 [
    i64 0, label %134
    i64 1, label %135
    i64 2, label %137
    i64 3, label %139
  ]

134:                                              ; preds = %104
  br label %141

135:                                              ; preds = %104
  %136 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  br label %141

137:                                              ; preds = %104
  %138 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0))
  br label %141

139:                                              ; preds = %104
  %140 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0))
  br label %141

141:                                              ; preds = %104, %139, %137, %135, %134
  %142 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0))
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %144 = call i32 @freeReplyObject(%struct.TYPE_5__* %143)
  %145 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 0), align 4
  %146 = call i32 @usleep(i32 %145)
  br label %8
}

declare dso_local %struct.TYPE_5__* @reconnectingInfo(...) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i64, ...) #1

declare dso_local i32 @getLongInfoField(i8*, i8*) #1

declare dso_local i32 @bytesToHuman(i8*, i64) #1

declare dso_local i32 @freeReplyObject(%struct.TYPE_5__*) #1

declare dso_local i32 @usleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
