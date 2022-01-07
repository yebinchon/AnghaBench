; ModuleID = '/home/carl/AnghaBench/disque/src/extr_networking.c_catClientInfoString.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_networking.c_catClientInfoString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__*, i32, i64, i32, i64, i64, %struct.TYPE_8__*, i64 }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_8__ = type { i64 }

@CLIENT_MONITOR = common dso_local global i32 0, align 4
@CLIENT_BLOCKED = common dso_local global i32 0, align 4
@CLIENT_CLOSE_AFTER_REPLY = common dso_local global i32 0, align 4
@CLIENT_UNBLOCKED = common dso_local global i32 0, align 4
@CLIENT_CLOSE_ASAP = common dso_local global i32 0, align 4
@CLIENT_UNIX_SOCKET = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@AE_READABLE = common dso_local global i32 0, align 4
@AE_WRITABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [112 x i8] c"id=%U addr=%s fd=%i name=%s age=%I idle=%I flags=%s qbuf=%U qbuf-free=%U obl=%U oll=%U omem=%U events=%s cmd=%s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @catClientInfoString(i32 %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca [16 x i8], align 16
  %6 = alloca [3 x i8], align 1
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %9 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  store i8* %9, i8** %7, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @CLIENT_MONITOR, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i8*, i8** %7, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %7, align 8
  store i8 79, i8* %17, align 1
  br label %19

19:                                               ; preds = %16, %2
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @CLIENT_BLOCKED, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i8*, i8** %7, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %7, align 8
  store i8 98, i8* %27, align 1
  br label %29

29:                                               ; preds = %26, %19
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @CLIENT_CLOSE_AFTER_REPLY, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i8*, i8** %7, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %7, align 8
  store i8 99, i8* %37, align 1
  br label %39

39:                                               ; preds = %36, %29
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @CLIENT_UNBLOCKED, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load i8*, i8** %7, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %7, align 8
  store i8 117, i8* %47, align 1
  br label %49

49:                                               ; preds = %46, %39
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @CLIENT_CLOSE_ASAP, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load i8*, i8** %7, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %7, align 8
  store i8 65, i8* %57, align 1
  br label %59

59:                                               ; preds = %56, %49
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @CLIENT_UNIX_SOCKET, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load i8*, i8** %7, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %7, align 8
  store i8 85, i8* %67, align 1
  br label %69

69:                                               ; preds = %66, %59
  %70 = load i8*, i8** %7, align 8
  %71 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %72 = icmp eq i8* %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load i8*, i8** %7, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %7, align 8
  store i8 78, i8* %74, align 1
  br label %76

76:                                               ; preds = %73, %69
  %77 = load i8*, i8** %7, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %7, align 8
  store i8 0, i8* %77, align 1
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  br label %90

84:                                               ; preds = %76
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @server, i32 0, i32 1), align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @aeGetFileEvents(i32 %85, i32 %88)
  br label %90

90:                                               ; preds = %84, %83
  %91 = phi i32 [ 0, %83 ], [ %89, %84 ]
  store i32 %91, i32* %8, align 4
  %92 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  store i8* %92, i8** %7, align 8
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* @AE_READABLE, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %90
  %98 = load i8*, i8** %7, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %7, align 8
  store i8 114, i8* %98, align 1
  br label %100

100:                                              ; preds = %97, %90
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* @AE_WRITABLE, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load i8*, i8** %7, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %7, align 8
  store i8 119, i8* %106, align 1
  br label %108

108:                                              ; preds = %105, %100
  %109 = load i8*, i8** %7, align 8
  store i8 0, i8* %109, align 1
  %110 = load i32, i32* %3, align 4
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 9
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %115 = call i32 @getClientPeerId(%struct.TYPE_10__* %114)
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 8
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = icmp ne %struct.TYPE_8__* %121, null
  br i1 %122, label %123, label %130

123:                                              ; preds = %108
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 8
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = inttoptr i64 %128 to i8*
  br label %131

130:                                              ; preds = %108
  br label %131

131:                                              ; preds = %130, %123
  %132 = phi i8* [ %129, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %130 ]
  %133 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @server, i32 0, i32 0), align 8
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 7
  %136 = load i64, i64* %135, align 8
  %137 = sub nsw i64 %133, %136
  %138 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @server, i32 0, i32 0), align 8
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 6
  %141 = load i64, i64* %140, align 8
  %142 = sub nsw i64 %138, %141
  %143 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 8
  %147 = call i64 @sdslen(i32 %146)
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 5
  %150 = load i32, i32* %149, align 8
  %151 = call i64 @sdsavail(i32 %150)
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 4
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  %158 = call i64 @listLength(i32 %157)
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %160 = call i64 @getClientOutputBufferMemoryUsage(%struct.TYPE_10__* %159)
  %161 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 2
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %163, align 8
  %165 = icmp ne %struct.TYPE_9__* %164, null
  br i1 %165, label %166, label %172

166:                                              ; preds = %131
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 2
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 0
  %171 = load i8*, i8** %170, align 8
  br label %173

172:                                              ; preds = %131
  br label %173

173:                                              ; preds = %172, %166
  %174 = phi i8* [ %171, %166 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %172 ]
  %175 = call i32 @sdscatfmt(i32 %110, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str, i64 0, i64 0), i64 %113, i32 %115, i32 %118, i8* %132, i64 %137, i64 %142, i8* %143, i64 %147, i64 %151, i64 %154, i64 %158, i64 %160, i8* %161, i8* %174)
  ret i32 %175
}

declare dso_local i32 @aeGetFileEvents(i32, i32) #1

declare dso_local i32 @sdscatfmt(i32, i8*, i64, i32, i32, i8*, i64, i64, i8*, i64, i64, i64, i64, i64, i8*, i8*) #1

declare dso_local i32 @getClientPeerId(%struct.TYPE_10__*) #1

declare dso_local i64 @sdslen(i32) #1

declare dso_local i64 @sdsavail(i32) #1

declare dso_local i64 @listLength(i32) #1

declare dso_local i64 @getClientOutputBufferMemoryUsage(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
