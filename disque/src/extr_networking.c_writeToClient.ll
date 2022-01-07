; ModuleID = '/home/carl/AnghaBench/disque/src/extr_networking.c_writeToClient.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_networking.c_writeToClient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32, i32 }
%struct.TYPE_6__ = type { i64, i64, i64, i32, i32, i32, i32, i64 }

@server = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@NET_MAX_WRITES_PER_EVENT = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@LL_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Error writing to client: %s\00", align 1
@C_ERR = common dso_local global i32 0, align 4
@AE_WRITABLE = common dso_local global i32 0, align 4
@CLIENT_CLOSE_AFTER_REPLY = common dso_local global i32 0, align 4
@C_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @writeToClient(i32 %0, %struct.TYPE_6__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %12

12:                                               ; preds = %146, %73, %3
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %14 = call i64 @clientHasPendingReplies(%struct.TYPE_6__* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %147

16:                                               ; preds = %12
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %63

21:                                               ; preds = %16
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 7
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %25, %28
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %32, %35
  %37 = call i64 @write(i32 %22, i64 %29, i64 %36)
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* %8, align 8
  %39 = icmp sle i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %21
  br label %147

41:                                               ; preds = %21
  %42 = load i64, i64* %8, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, %42
  store i64 %46, i64* %44, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* %9, align 8
  %49 = add nsw i64 %48, %47
  store i64 %49, i64* %9, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %52, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %41
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store i64 0, i64* %59, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  br label %62

62:                                               ; preds = %57, %41
  br label %129

63:                                               ; preds = %16
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @listFirst(i32 %66)
  %68 = call i64 @listNodeValue(i32 %67)
  store i64 %68, i64* %11, align 8
  %69 = load i64, i64* %11, align 8
  %70 = call i64 @sdslen(i64 %69)
  store i64 %70, i64* %10, align 8
  %71 = load i64, i64* %10, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %63
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @listFirst(i32 %79)
  %81 = call i32 @listDelNode(i32 %76, i32 %80)
  br label %12

82:                                               ; preds = %63
  %83 = load i32, i32* %5, align 4
  %84 = load i64, i64* %11, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %84, %87
  %89 = load i64, i64* %10, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = sub i64 %89, %92
  %94 = call i64 @write(i32 %83, i64 %88, i64 %93)
  store i64 %94, i64* %8, align 8
  %95 = load i64, i64* %8, align 8
  %96 = icmp sle i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %82
  br label %147

98:                                               ; preds = %82
  %99 = load i64, i64* %8, align 8
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %102, %99
  store i64 %103, i64* %101, align 8
  %104 = load i64, i64* %8, align 8
  %105 = load i64, i64* %9, align 8
  %106 = add nsw i64 %105, %104
  store i64 %106, i64* %9, align 8
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %10, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %128

112:                                              ; preds = %98
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 6
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @listFirst(i32 %118)
  %120 = call i32 @listDelNode(i32 %115, i32 %119)
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  store i64 0, i64* %122, align 8
  %123 = load i64, i64* %10, align 8
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = sub i64 %126, %123
  store i64 %127, i64* %125, align 8
  br label %128

128:                                              ; preds = %112, %98
  br label %129

129:                                              ; preds = %128, %62
  %130 = load i64, i64* %9, align 8
  %131 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 3), align 8
  %132 = sext i32 %131 to i64
  %133 = add nsw i64 %132, %130
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 3), align 8
  %135 = load i64, i64* %9, align 8
  %136 = load i64, i64* @NET_MAX_WRITES_PER_EVENT, align 8
  %137 = icmp sgt i64 %135, %136
  br i1 %137, label %138, label %146

138:                                              ; preds = %129
  %139 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 0), align 8
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %145, label %141

141:                                              ; preds = %138
  %142 = call i64 (...) @zmalloc_used_memory()
  %143 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 0), align 8
  %144 = icmp slt i64 %142, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %141, %138
  br label %147

146:                                              ; preds = %141, %129
  br label %12

147:                                              ; preds = %145, %97, %40, %12
  %148 = load i64, i64* %8, align 8
  %149 = icmp eq i64 %148, -1
  br i1 %149, label %150, label %164

150:                                              ; preds = %147
  %151 = load i64, i64* @errno, align 8
  %152 = load i64, i64* @EAGAIN, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %150
  store i64 0, i64* %8, align 8
  br label %163

155:                                              ; preds = %150
  %156 = load i32, i32* @LL_VERBOSE, align 4
  %157 = load i64, i64* @errno, align 8
  %158 = call i32 @strerror(i64 %157)
  %159 = call i32 @serverLog(i32 %156, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %158)
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %161 = call i32 @freeClient(%struct.TYPE_6__* %160)
  %162 = load i32, i32* @C_ERR, align 4
  store i32 %162, i32* %4, align 4
  br label %201

163:                                              ; preds = %154
  br label %164

164:                                              ; preds = %163, %147
  %165 = load i64, i64* %9, align 8
  %166 = icmp sgt i64 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %164
  %168 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 2), align 4
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 5
  store i32 %168, i32* %170, align 8
  br label %171

171:                                              ; preds = %167, %164
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %173 = call i64 @clientHasPendingReplies(%struct.TYPE_6__* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %199, label %175

175:                                              ; preds = %171
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 1
  store i64 0, i64* %177, align 8
  %178 = load i32, i32* %7, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %187

180:                                              ; preds = %175
  %181 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 1), align 8
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @AE_WRITABLE, align 4
  %186 = call i32 @aeDeleteFileEvent(i32 %181, i32 %184, i32 %185)
  br label %187

187:                                              ; preds = %180, %175
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @CLIENT_CLOSE_AFTER_REPLY, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %187
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %196 = call i32 @freeClient(%struct.TYPE_6__* %195)
  %197 = load i32, i32* @C_ERR, align 4
  store i32 %197, i32* %4, align 4
  br label %201

198:                                              ; preds = %187
  br label %199

199:                                              ; preds = %198, %171
  %200 = load i32, i32* @C_OK, align 4
  store i32 %200, i32* %4, align 4
  br label %201

201:                                              ; preds = %199, %194, %155
  %202 = load i32, i32* %4, align 4
  ret i32 %202
}

declare dso_local i64 @clientHasPendingReplies(%struct.TYPE_6__*) #1

declare dso_local i64 @write(i32, i64, i64) #1

declare dso_local i64 @listNodeValue(i32) #1

declare dso_local i32 @listFirst(i32) #1

declare dso_local i64 @sdslen(i64) #1

declare dso_local i32 @listDelNode(i32, i32) #1

declare dso_local i64 @zmalloc_used_memory(...) #1

declare dso_local i32 @serverLog(i32, i8*, i32) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32 @freeClient(%struct.TYPE_6__*) #1

declare dso_local i32 @aeDeleteFileEvent(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
