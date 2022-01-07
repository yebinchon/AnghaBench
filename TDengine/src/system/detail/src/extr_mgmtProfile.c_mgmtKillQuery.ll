; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtProfile.c_mgmtKillQuery.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtProfile.c_mgmtKillQuery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i16, %struct.TYPE_6__*, i64, %struct.TYPE_8__*, %struct.TYPE_9__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }

@.str = private unnamed_addr constant [27 x i8] c"query:%s is there, kill it\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"query:%s is not there\00", align 1
@TSDB_CODE_INVALID_QUERY_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mgmtKillQuery(i8* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [64 x i8], align 16
  %9 = alloca i64, align 8
  %10 = alloca i16, align 2
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_7__*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %15 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @strcpy(i8* %15, i8* %16)
  %18 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  store i8* %18, i8** %6, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i8* @strchr(i8* %19, i8 signext 58)
  store i8* %20, i8** %7, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %145

24:                                               ; preds = %2
  %25 = load i8*, i8** %7, align 8
  store i8 0, i8* %25, align 1
  %26 = load i8*, i8** %6, align 8
  %27 = call i64 @inet_addr(i8* %26)
  store i64 %27, i64* %9, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  store i8* %29, i8** %6, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = call i8* @strchr(i8* %30, i8 signext 58)
  store i8* %31, i8** %7, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  br label %145

35:                                               ; preds = %24
  %36 = load i8*, i8** %7, align 8
  store i8 0, i8* %36, align 1
  %37 = load i8*, i8** %6, align 8
  %38 = call i64 @atoi(i8* %37)
  %39 = call signext i16 @htons(i64 %38)
  store i16 %39, i16* %10, align 2
  %40 = load i8*, i8** %7, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  store i8* %41, i8** %6, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = call i64 @atoi(i8* %42)
  store i64 %43, i64* %11, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 5
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  store %struct.TYPE_9__* %46, %struct.TYPE_9__** %12, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = call i32 @pthread_mutex_lock(i32* %48)
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  store %struct.TYPE_8__* %52, %struct.TYPE_8__** %5, align 8
  br label %53

53:                                               ; preds = %112, %35
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %55 = icmp ne %struct.TYPE_8__* %54, null
  br i1 %55, label %56, label %116

56:                                               ; preds = %53
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %9, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %112

62:                                               ; preds = %56
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load i16, i16* %64, align 8
  %66 = sext i16 %65 to i32
  %67 = load i16, i16* %10, align 2
  %68 = sext i16 %67 to i32
  %69 = icmp eq i32 %66, %68
  br i1 %69, label %70, label %112

70:                                               ; preds = %62
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = icmp ne %struct.TYPE_6__* %73, null
  br i1 %74, label %75, label %112

75:                                               ; preds = %70
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  store %struct.TYPE_7__* %80, %struct.TYPE_7__** %14, align 8
  store i32 0, i32* %13, align 4
  br label %81

81:                                               ; preds = %97, %75
  %82 = load i32, i32* %13, align 4
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp slt i32 %82, %87
  br i1 %88, label %89, label %102

89:                                               ; preds = %81
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %11, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  br label %102

96:                                               ; preds = %89
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %13, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %13, align 4
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 1
  store %struct.TYPE_7__* %101, %struct.TYPE_7__** %14, align 8
  br label %81

102:                                              ; preds = %95, %81
  %103 = load i32, i32* %13, align 4
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 2
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp slt i32 %103, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %102
  br label %116

111:                                              ; preds = %102
  br label %112

112:                                              ; preds = %111, %70, %62, %56
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 4
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %114, align 8
  store %struct.TYPE_8__* %115, %struct.TYPE_8__** %5, align 8
  br label %53

116:                                              ; preds = %110, %53
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %118 = icmp ne %struct.TYPE_8__* %117, null
  br i1 %118, label %119, label %123

119:                                              ; preds = %116
  %120 = load i64, i64* %11, align 8
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 3
  store i64 %120, i64* %122, align 8
  br label %123

123:                                              ; preds = %119, %116
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = call i32 @pthread_mutex_unlock(i32* %125)
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %128 = icmp eq %struct.TYPE_8__* %127, null
  br i1 %128, label %141, label %129

129:                                              ; preds = %123
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 2
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = icmp eq %struct.TYPE_6__* %132, null
  br i1 %133, label %141, label %134

134:                                              ; preds = %129
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 2
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %134, %129, %123
  br label %145

142:                                              ; preds = %134
  %143 = load i8*, i8** %4, align 8
  %144 = call i32 @mTrace(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %143)
  store i32 0, i32* %3, align 4
  br label %149

145:                                              ; preds = %141, %34, %23
  %146 = load i8*, i8** %4, align 8
  %147 = call i32 @mTrace(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %146)
  %148 = load i32, i32* @TSDB_CODE_INVALID_QUERY_ID, align 4
  store i32 %148, i32* %3, align 4
  br label %149

149:                                              ; preds = %145, %142
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @inet_addr(i8*) #1

declare dso_local signext i16 @htons(i64) #1

declare dso_local i64 @atoi(i8*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @mTrace(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
