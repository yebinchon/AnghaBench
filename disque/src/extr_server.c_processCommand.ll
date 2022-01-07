; ModuleID = '/home/carl/AnghaBench/disque/src/extr_server.c_processCommand.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_server.c_processCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i64, i32, i64, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_15__*, i32, i32, %struct.TYPE_11__**, %struct.TYPE_15__*, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_15__ = type { i8*, i64, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"quit\00", align 1
@shared = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@CLIENT_CLOSE_AFTER_REPLY = common dso_local global i32 0, align 4
@C_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"unknown command '%s'\00", align 1
@C_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"wrong number of arguments for '%s' command\00", align 1
@server = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@authCommand = common dso_local global i64 0, align 8
@CMD_DENYOOM = common dso_local global i32 0, align 4
@CMD_WRITE = common dso_local global i32 0, align 4
@pingCommand = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [46 x i8] c"-MISCONF Errors writing to the AOF file: %s\0D\0A\00", align 1
@CMD_LOADING = common dso_local global i32 0, align 4
@CMD_CALL_FULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @processCommand(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %5 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 3
  %7 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %7, i64 0
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @strcasecmp(i64 %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %1
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @shared, i32 0, i32 3), align 4
  %17 = call i32 @addReply(%struct.TYPE_12__* %15, i32 %16)
  %18 = load i32, i32* @CLIENT_CLOSE_AFTER_REPLY, align 4
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 8
  %23 = load i32, i32* @C_ERR, align 4
  store i32 %23, i32* %2, align 4
  br label %187

24:                                               ; preds = %1
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 3
  %27 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %27, i64 0
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call %struct.TYPE_15__* @lookupCommand(i64 %31)
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 4
  store %struct.TYPE_15__* %32, %struct.TYPE_15__** %34, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  store %struct.TYPE_15__* %32, %struct.TYPE_15__** %36, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %38, align 8
  %40 = icmp ne %struct.TYPE_15__* %39, null
  br i1 %40, label %53, label %41

41:                                               ; preds = %24
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 3
  %45 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %45, i64 0
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i8*
  %51 = call i32 @addReplyErrorFormat(%struct.TYPE_12__* %42, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %50)
  %52 = load i32, i32* @C_OK, align 4
  store i32 %52, i32* %2, align 4
  br label %187

53:                                               ; preds = %24
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %53
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %65, %68
  br i1 %69, label %81, label %70

70:                                               ; preds = %60, %53
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = sub nsw i32 0, %78
  %80 = icmp slt i32 %73, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %70, %60
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @addReplyErrorFormat(%struct.TYPE_12__* %82, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* %87)
  %89 = load i32, i32* @C_OK, align 4
  store i32 %89, i32* %2, align 4
  br label %187

90:                                               ; preds = %70
  br label %91

91:                                               ; preds = %90
  %92 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @server, i32 0, i32 4), align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %112

94:                                               ; preds = %91
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %112, label %99

99:                                               ; preds = %94
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @authCommand, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %99
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %109 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @shared, i32 0, i32 2), align 4
  %110 = call i32 @addReply(%struct.TYPE_12__* %108, i32 %109)
  %111 = load i32, i32* @C_OK, align 4
  store i32 %111, i32* %2, align 4
  br label %187

112:                                              ; preds = %99, %94, %91
  %113 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @server, i32 0, i32 3), align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %135

115:                                              ; preds = %112
  %116 = call i32 (...) @freeMemoryIfNeeded()
  store i32 %116, i32* %4, align 4
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @CMD_DENYOOM, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %115
  %126 = load i32, i32* %4, align 4
  %127 = load i32, i32* @C_ERR, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %125
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %131 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @shared, i32 0, i32 1), align 4
  %132 = call i32 @addReply(%struct.TYPE_12__* %130, i32 %131)
  %133 = load i32, i32* @C_OK, align 4
  store i32 %133, i32* %2, align 4
  br label %187

134:                                              ; preds = %125, %115
  br label %135

135:                                              ; preds = %134, %112
  %136 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @server, i32 0, i32 0), align 8
  %137 = load i32, i32* @C_ERR, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %164

139:                                              ; preds = %135
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @CMD_WRITE, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %156, label %148

148:                                              ; preds = %139
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @pingCommand, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %164

156:                                              ; preds = %148, %139
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %158 = call i32 (...) @sdsempty()
  %159 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @server, i32 0, i32 2), align 8
  %160 = call i32 @strerror(i32 %159)
  %161 = call i32 @sdscatprintf(i32 %158, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %160)
  %162 = call i32 @addReplySds(%struct.TYPE_12__* %157, i32 %161)
  %163 = load i32, i32* @C_OK, align 4
  store i32 %163, i32* %2, align 4
  br label %187

164:                                              ; preds = %148, %135
  %165 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @server, i32 0, i32 1), align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %181

167:                                              ; preds = %164
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @CMD_LOADING, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %181, label %176

176:                                              ; preds = %167
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %178 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @shared, i32 0, i32 0), align 4
  %179 = call i32 @addReply(%struct.TYPE_12__* %177, i32 %178)
  %180 = load i32, i32* @C_OK, align 4
  store i32 %180, i32* %2, align 4
  br label %187

181:                                              ; preds = %167, %164
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %183 = load i32, i32* @CMD_CALL_FULL, align 4
  %184 = call i32 @call(%struct.TYPE_12__* %182, i32 %183)
  %185 = call i32 (...) @handleClientsBlockedOnQueues()
  %186 = load i32, i32* @C_OK, align 4
  store i32 %186, i32* %2, align 4
  br label %187

187:                                              ; preds = %181, %176, %156, %129, %107, %81, %41, %14
  %188 = load i32, i32* %2, align 4
  ret i32 %188
}

declare dso_local i32 @strcasecmp(i64, i8*) #1

declare dso_local i32 @addReply(%struct.TYPE_12__*, i32) #1

declare dso_local %struct.TYPE_15__* @lookupCommand(i64) #1

declare dso_local i32 @addReplyErrorFormat(%struct.TYPE_12__*, i8*, i8*) #1

declare dso_local i32 @freeMemoryIfNeeded(...) #1

declare dso_local i32 @addReplySds(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @sdscatprintf(i32, i8*, i32) #1

declare dso_local i32 @sdsempty(...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @call(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @handleClientsBlockedOnQueues(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
