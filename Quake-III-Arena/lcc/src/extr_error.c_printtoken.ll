; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_error.c_printtoken.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_error.c_printtoken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__*, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_10__ = type { i32 }

@t = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c" `%s'\00", align 1
@token = common dso_local global i32 0, align 4
@tsym = common dso_local global %struct.TYPE_13__* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c" \22\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"\\%o\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@widechar = common dso_local global %struct.TYPE_10__* null, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c" L\22\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"\\x%x\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c" ...\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c" `%S'\00", align 1
@cp = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [6 x i8] c" \22%k\22\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c" `%k'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @printtoken to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @printtoken() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = load i32, i32* @t, align 4
  switch i32 %5, label %183 [
    i32 129, label %6
    i32 130, label %10
    i32 128, label %23
    i32 131, label %169
    i32 96, label %179
    i32 39, label %179
  ]

6:                                                ; preds = %0
  %7 = load i32, i32* @stderr, align 4
  %8 = load i32, i32* @token, align 4
  %9 = call i32 (i32, i8*, ...) @fprint(i32 %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %8)
  br label %187

10:                                               ; preds = %0
  %11 = load i32, i32* @stderr, align 4
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** @tsym, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** @tsym, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @vtoa(%struct.TYPE_11__* %14, i8* %20)
  %22 = call i32 (i32, i8*, ...) @fprint(i32 %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %187

23:                                               ; preds = %0
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** @tsym, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %29 = call i32 @ischar(%struct.TYPE_14__* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %88

31:                                               ; preds = %23
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** @tsym, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %3, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** @tsym, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %2, align 4
  %43 = load i32, i32* @stderr, align 4
  %44 = call i32 (i32, i8*, ...) @fprint(i32 %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %45

45:                                               ; preds = %82, %31
  %46 = load i32, i32* %1, align 4
  %47 = icmp slt i32 %46, 20
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  %49 = load i32, i32* %1, align 4
  %50 = load i32, i32* %2, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load i8*, i8** %3, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 0
  br label %57

57:                                               ; preds = %52, %48, %45
  %58 = phi i1 [ false, %48 ], [ false, %45 ], [ %56, %52 ]
  br i1 %58, label %59, label %87

59:                                               ; preds = %57
  %60 = load i8*, i8** %3, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp slt i32 %62, 32
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = load i8*, i8** %3, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp sge i32 %67, 127
  br i1 %68, label %69, label %75

69:                                               ; preds = %64, %59
  %70 = load i32, i32* @stderr, align 4
  %71 = load i8*, i8** %3, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = call i32 (i32, i8*, ...) @fprint(i32 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  br label %81

75:                                               ; preds = %64
  %76 = load i32, i32* @stderr, align 4
  %77 = load i8*, i8** %3, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = call i32 (i32, i8*, ...) @fprint(i32 %76, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %75, %69
  br label %82

82:                                               ; preds = %81
  %83 = load i8*, i8** %3, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %3, align 8
  %85 = load i32, i32* %1, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %1, align 4
  br label %45

87:                                               ; preds = %57
  br label %158

88:                                               ; preds = %23
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** @tsym, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = bitcast i8* %94 to i32*
  store i32* %95, i32** %4, align 8
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** @tsym, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** @widechar, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %102, %105
  %107 = zext i1 %106 to i32
  %108 = call i32 @assert(i32 %107)
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** @tsym, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** @widechar, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = sdiv i32 %113, %116
  store i32 %117, i32* %2, align 4
  %118 = load i32, i32* @stderr, align 4
  %119 = call i32 (i32, i8*, ...) @fprint(i32 %118, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %120

120:                                              ; preds = %152, %88
  %121 = load i32, i32* %1, align 4
  %122 = icmp slt i32 %121, 20
  br i1 %122, label %123, label %131

123:                                              ; preds = %120
  %124 = load i32, i32* %1, align 4
  %125 = load i32, i32* %2, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %123
  %128 = load i32*, i32** %4, align 8
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br label %131

131:                                              ; preds = %127, %123, %120
  %132 = phi i1 [ false, %123 ], [ false, %120 ], [ %130, %127 ]
  br i1 %132, label %133, label %157

133:                                              ; preds = %131
  %134 = load i32*, i32** %4, align 8
  %135 = load i32, i32* %134, align 4
  %136 = icmp ult i32 %135, 32
  br i1 %136, label %141, label %137

137:                                              ; preds = %133
  %138 = load i32*, i32** %4, align 8
  %139 = load i32, i32* %138, align 4
  %140 = icmp uge i32 %139, 127
  br i1 %140, label %141, label %146

141:                                              ; preds = %137, %133
  %142 = load i32, i32* @stderr, align 4
  %143 = load i32*, i32** %4, align 8
  %144 = load i32, i32* %143, align 4
  %145 = call i32 (i32, i8*, ...) @fprint(i32 %142, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %144)
  br label %151

146:                                              ; preds = %137
  %147 = load i32, i32* @stderr, align 4
  %148 = load i32*, i32** %4, align 8
  %149 = load i32, i32* %148, align 4
  %150 = call i32 (i32, i8*, ...) @fprint(i32 %147, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %149)
  br label %151

151:                                              ; preds = %146, %141
  br label %152

152:                                              ; preds = %151
  %153 = load i32*, i32** %4, align 8
  %154 = getelementptr inbounds i32, i32* %153, i32 1
  store i32* %154, i32** %4, align 8
  %155 = load i32, i32* %1, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %1, align 4
  br label %120

157:                                              ; preds = %131
  br label %158

158:                                              ; preds = %157, %87
  %159 = load i32, i32* %1, align 4
  %160 = load i32, i32* %2, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %165

162:                                              ; preds = %158
  %163 = load i32, i32* @stderr, align 4
  %164 = call i32 (i32, i8*, ...) @fprint(i32 %163, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %168

165:                                              ; preds = %158
  %166 = load i32, i32* @stderr, align 4
  %167 = call i32 (i32, i8*, ...) @fprint(i32 %166, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %168

168:                                              ; preds = %165, %162
  br label %187

169:                                              ; preds = %0
  %170 = load i32, i32* @stderr, align 4
  %171 = load i32, i32* @token, align 4
  %172 = load i64, i64* @cp, align 8
  %173 = inttoptr i64 %172 to i8*
  %174 = load i32, i32* @token, align 4
  %175 = sext i32 %174 to i64
  %176 = sub i64 0, %175
  %177 = getelementptr inbounds i8, i8* %173, i64 %176
  %178 = call i32 (i32, i8*, ...) @fprint(i32 %170, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %171, i8* %177)
  br label %187

179:                                              ; preds = %0, %0
  %180 = load i32, i32* @stderr, align 4
  %181 = load i32, i32* @t, align 4
  %182 = call i32 (i32, i8*, ...) @fprint(i32 %180, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %181)
  br label %187

183:                                              ; preds = %0
  %184 = load i32, i32* @stderr, align 4
  %185 = load i32, i32* @t, align 4
  %186 = call i32 (i32, i8*, ...) @fprint(i32 %184, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %185)
  br label %187

187:                                              ; preds = %183, %179, %169, %168, %10, %6
  ret void
}

declare dso_local i32 @fprint(i32, i8*, ...) #1

declare dso_local i32 @vtoa(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @ischar(%struct.TYPE_14__*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
