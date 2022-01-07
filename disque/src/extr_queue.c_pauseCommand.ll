; ModuleID = '/home/carl/AnghaBench/disque/src/extr_queue.c_pauseCommand.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_queue.c_pauseCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_16__** }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@QUEUE_FLAG_PAUSED_IN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@QUEUE_FLAG_PAUSED_OUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@QUEUE_FLAG_PAUSED_ALL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"bcast\00", align 1
@shared = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pauseCommand(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %12, i64 1
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %15 = call %struct.TYPE_13__* @lookupQueue(%struct.TYPE_16__* %14)
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %8, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %17 = icmp ne %struct.TYPE_13__* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %18, %1
  store i32 2, i32* %3, align 4
  br label %23

23:                                               ; preds = %126, %22
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %129

29:                                               ; preds = %23
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %32, i64 %34
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @strcasecmp(i32 %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %29
  store i32 0, i32* %7, align 4
  store i32 1, i32* %5, align 4
  br label %125

42:                                               ; preds = %29
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %45, i64 %47
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @strcasecmp(i32 %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %42
  %55 = load i32, i32* @QUEUE_FLAG_PAUSED_IN, align 4
  %56 = load i32, i32* %7, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %7, align 4
  store i32 1, i32* %5, align 4
  br label %124

58:                                               ; preds = %42
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %60, align 8
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %61, i64 %63
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @strcasecmp(i32 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %58
  %71 = load i32, i32* @QUEUE_FLAG_PAUSED_OUT, align 4
  %72 = load i32, i32* %7, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %7, align 4
  store i32 1, i32* %5, align 4
  br label %123

74:                                               ; preds = %58
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %76, align 8
  %78 = load i32, i32* %3, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %77, i64 %79
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @strcasecmp(i32 %83, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %74
  %87 = load i32, i32* @QUEUE_FLAG_PAUSED_ALL, align 4
  %88 = load i32, i32* %7, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %7, align 4
  store i32 1, i32* %5, align 4
  br label %122

90:                                               ; preds = %74
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %92, align 8
  %94 = load i32, i32* %3, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %93, i64 %95
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @strcasecmp(i32 %99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %90
  br label %121

103:                                              ; preds = %90
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %105, align 8
  %107 = load i32, i32* %3, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %106, i64 %108
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @strcasecmp(i32 %112, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %103
  store i32 1, i32* %4, align 4
  br label %120

116:                                              ; preds = %103
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %118 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @shared, i32 0, i32 0), align 4
  %119 = call i32 @addReply(%struct.TYPE_14__* %117, i32 %118)
  br label %203

120:                                              ; preds = %115
  br label %121

121:                                              ; preds = %120, %102
  br label %122

122:                                              ; preds = %121, %86
  br label %123

123:                                              ; preds = %122, %70
  br label %124

124:                                              ; preds = %123, %54
  br label %125

125:                                              ; preds = %124, %41
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %3, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %3, align 4
  br label %23

129:                                              ; preds = %23
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %131 = icmp ne %struct.TYPE_13__* %130, null
  br i1 %131, label %146, label %132

132:                                              ; preds = %129
  %133 = load i32, i32* %5, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %146

135:                                              ; preds = %132
  %136 = load i32, i32* %6, align 4
  %137 = load i32, i32* %7, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %146

139:                                              ; preds = %135
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %142, i64 1
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %143, align 8
  %145 = call %struct.TYPE_13__* @createQueue(%struct.TYPE_16__* %144)
  store %struct.TYPE_13__* %145, %struct.TYPE_13__** %8, align 8
  br label %146

146:                                              ; preds = %139, %135, %132, %129
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %148 = icmp ne %struct.TYPE_13__* %147, null
  br i1 %148, label %149, label %169

149:                                              ; preds = %146
  %150 = load i32, i32* %5, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %169

152:                                              ; preds = %149
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %154 = load i32, i32* @QUEUE_FLAG_PAUSED_IN, align 4
  %155 = load i32, i32* %7, align 4
  %156 = load i32, i32* @QUEUE_FLAG_PAUSED_IN, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  %159 = zext i1 %158 to i32
  %160 = call i32 @queueChangePausedState(%struct.TYPE_13__* %153, i32 %154, i32 %159)
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %162 = load i32, i32* @QUEUE_FLAG_PAUSED_OUT, align 4
  %163 = load i32, i32* %7, align 4
  %164 = load i32, i32* @QUEUE_FLAG_PAUSED_OUT, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  %167 = zext i1 %166 to i32
  %168 = call i32 @queueChangePausedState(%struct.TYPE_13__* %161, i32 %162, i32 %167)
  br label %169

169:                                              ; preds = %152, %149, %146
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %171 = icmp ne %struct.TYPE_13__* %170, null
  br i1 %171, label %172, label %176

172:                                              ; preds = %169
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  br label %177

176:                                              ; preds = %169
  br label %177

177:                                              ; preds = %176, %172
  %178 = phi i32 [ %175, %172 ], [ 0, %176 ]
  store i32 %178, i32* %7, align 4
  %179 = load i32, i32* @QUEUE_FLAG_PAUSED_ALL, align 4
  %180 = load i32, i32* %7, align 4
  %181 = and i32 %180, %179
  store i32 %181, i32* %7, align 4
  %182 = load i32, i32* %4, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %192

184:                                              ; preds = %177
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 1
  %187 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %187, i64 1
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %188, align 8
  %190 = load i32, i32* %7, align 4
  %191 = call i32 @clusterBroadcastPause(%struct.TYPE_16__* %189, i32 %190)
  br label %192

192:                                              ; preds = %184, %177
  %193 = call i32 @sdsnewlen(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 1)
  store i32 %193, i32* %9, align 4
  %194 = load i32, i32* %9, align 4
  %195 = load i32, i32* %7, align 4
  %196 = call i32 @queueGetPausedStateString(i32 %195)
  %197 = call i32 @sdscat(i32 %194, i32 %196)
  store i32 %197, i32* %9, align 4
  %198 = load i32, i32* %9, align 4
  %199 = call i32 @sdscatlen(i32 %198, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 2)
  store i32 %199, i32* %9, align 4
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %201 = load i32, i32* %9, align 4
  %202 = call i32 @addReplySds(%struct.TYPE_14__* %200, i32 %201)
  br label %203

203:                                              ; preds = %192, %116
  ret void
}

declare dso_local %struct.TYPE_13__* @lookupQueue(%struct.TYPE_16__*) #1

declare dso_local i32 @strcasecmp(i32, i8*) #1

declare dso_local i32 @addReply(%struct.TYPE_14__*, i32) #1

declare dso_local %struct.TYPE_13__* @createQueue(%struct.TYPE_16__*) #1

declare dso_local i32 @queueChangePausedState(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @clusterBroadcastPause(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @sdsnewlen(i8*, i32) #1

declare dso_local i32 @sdscat(i32, i32) #1

declare dso_local i32 @queueGetPausedStateString(i32) #1

declare dso_local i32 @sdscatlen(i32, i8*, i32) #1

declare dso_local i32 @addReplySds(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
