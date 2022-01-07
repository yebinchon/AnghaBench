; ModuleID = '/home/carl/AnghaBench/disque/src/extr_slowlog.c_slowlogCreateEntry.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_slowlog.c_slowlogCreateEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32, i64, i64, i32, %struct.TYPE_9__** }
%struct.TYPE_9__ = type { i64, i32 }

@SLOWLOG_ENTRY_MAX_ARGC = common dso_local global i32 0, align 4
@OBJ_STRING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"... (%d more arguments)\00", align 1
@SLOWLOG_ENTRY_MAX_STRING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"... (%lu more bytes)\00", align 1
@server = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @slowlogCreateEntry(%struct.TYPE_9__** %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_9__**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_9__** %0, %struct.TYPE_9__*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %11 = call i8* @zmalloc(i32 40)
  %12 = bitcast i8* %11 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %7, align 8
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @SLOWLOG_ENTRY_MAX_ARGC, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @SLOWLOG_ENTRY_MAX_ARGC, align 4
  store i32 %18, i32* %9, align 4
  br label %19

19:                                               ; preds = %17, %3
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 8, %24
  %26 = trunc i64 %25 to i32
  %27 = call i8* @zmalloc(i32 %26)
  %28 = bitcast i8* %27 to %struct.TYPE_9__**
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 4
  store %struct.TYPE_9__** %28, %struct.TYPE_9__*** %30, align 8
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %142, %19
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %145

35:                                               ; preds = %31
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %61

39:                                               ; preds = %35
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = sub nsw i32 %41, 1
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %61

44:                                               ; preds = %39
  %45 = load i64, i64* @OBJ_STRING, align 8
  %46 = call i32 (...) @sdsempty()
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %9, align 4
  %49 = sub nsw i32 %47, %48
  %50 = add nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = call i32 @sdscatprintf(i32 %46, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %51)
  %53 = call i8* @createObject(i64 %45, i32 %52)
  %54 = bitcast i8* %53 to %struct.TYPE_9__*
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 4
  %57 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %57, i64 %59
  store %struct.TYPE_9__* %54, %struct.TYPE_9__** %60, align 8
  br label %141

61:                                               ; preds = %39, %35
  %62 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %4, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %62, i64 %64
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @OBJ_STRING, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %122

71:                                               ; preds = %61
  %72 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %4, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %72, i64 %74
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = call i64 @sdsEncodedObject(%struct.TYPE_9__* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %122

79:                                               ; preds = %71
  %80 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %4, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %80, i64 %82
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i64 @sdslen(i32 %86)
  %88 = load i64, i64* @SLOWLOG_ENTRY_MAX_STRING, align 8
  %89 = icmp ugt i64 %87, %88
  br i1 %89, label %90, label %122

90:                                               ; preds = %79
  %91 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %4, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %91, i64 %93
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i64, i64* @SLOWLOG_ENTRY_MAX_STRING, align 8
  %99 = call i32 @sdsnewlen(i32 %97, i64 %98)
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %10, align 4
  %101 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %4, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %101, i64 %103
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i64 @sdslen(i32 %107)
  %109 = load i64, i64* @SLOWLOG_ENTRY_MAX_STRING, align 8
  %110 = sub i64 %108, %109
  %111 = call i32 @sdscatprintf(i32 %100, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %110)
  store i32 %111, i32* %10, align 4
  %112 = load i64, i64* @OBJ_STRING, align 8
  %113 = load i32, i32* %10, align 4
  %114 = call i8* @createObject(i64 %112, i32 %113)
  %115 = bitcast i8* %114 to %struct.TYPE_9__*
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 4
  %118 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %117, align 8
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %118, i64 %120
  store %struct.TYPE_9__* %115, %struct.TYPE_9__** %121, align 8
  br label %140

122:                                              ; preds = %79, %71, %61
  %123 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %4, align 8
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %123, i64 %125
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %126, align 8
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 4
  %130 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %129, align 8
  %131 = load i32, i32* %8, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %130, i64 %132
  store %struct.TYPE_9__* %127, %struct.TYPE_9__** %133, align 8
  %134 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %4, align 8
  %135 = load i32, i32* %8, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %134, i64 %136
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %137, align 8
  %139 = call i32 @incrRefCount(%struct.TYPE_9__* %138)
  br label %140

140:                                              ; preds = %122, %90
  br label %141

141:                                              ; preds = %140, %44
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %8, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %8, align 4
  br label %31

145:                                              ; preds = %31
  %146 = call i32 @time(i32* null)
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 3
  store i32 %146, i32* %148, align 8
  %149 = load i64, i64* %6, align 8
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 1
  store i64 %149, i64* %151, align 8
  %152 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @server, i32 0, i32 0), align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @server, i32 0, i32 0), align 4
  %154 = sext i32 %152 to i64
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 2
  store i64 %154, i64* %156, align 8
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  ret %struct.TYPE_8__* %157
}

declare dso_local i8* @zmalloc(i32) #1

declare dso_local i8* @createObject(i64, i32) #1

declare dso_local i32 @sdscatprintf(i32, i8*, i64) #1

declare dso_local i32 @sdsempty(...) #1

declare dso_local i64 @sdsEncodedObject(%struct.TYPE_9__*) #1

declare dso_local i64 @sdslen(i32) #1

declare dso_local i32 @sdsnewlen(i32, i64) #1

declare dso_local i32 @incrRefCount(%struct.TYPE_9__*) #1

declare dso_local i32 @time(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
