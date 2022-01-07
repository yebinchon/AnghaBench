; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/worker/extr_worker_data_fetch_protocol.c_ReceiveRegularFile.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/worker/extr_worker_data_fetch_protocol.c_ReceiveRegularFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }

@MAXPGPATH = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@PG_BINARY = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@CLIENT_INVALID_QUERY = common dso_local global i64 0, align 8
@INVALID_CONNECTION_ID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"could not open file \22%s\22: %m\00", align 1
@CLIENT_RESULT_READY = common dso_local global i64 0, align 8
@CLIENT_RESULT_BUSY = common dso_local global i64 0, align 8
@RemoteTaskCheckInterval = common dso_local global i64 0, align 8
@CLIENT_QUERY_COPY = common dso_local global i64 0, align 8
@CLIENT_COPY_DONE = common dso_local global i64 0, align 8
@CLIENT_COPY_MORE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"could not close file \22%s\22: %m\00", align 1
@DEBUG2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"received remote file \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, %struct.TYPE_4__*, %struct.TYPE_4__*)* @ReceiveRegularFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ReceiveRegularFile(i8* %0, i32 %1, i8* %2, %struct.TYPE_4__* %3, %struct.TYPE_4__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %10, align 8
  store %struct.TYPE_4__* %4, %struct.TYPE_4__** %11, align 8
  store i64 -1, i64* %12, align 8
  %28 = load i32, i32* @MAXPGPATH, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %13, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %14, align 8
  store i32 -1, i32* %15, align 4
  %32 = load i32, i32* @O_APPEND, align 4
  %33 = load i32, i32* @O_CREAT, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @O_RDWR, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @O_TRUNC, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @PG_BINARY, align 4
  %40 = or i32 %38, %39
  store i32 %40, i32* %16, align 4
  %41 = load i32, i32* @S_IRUSR, align 4
  %42 = load i32, i32* @S_IWUSR, align 4
  %43 = or i32 %41, %42
  store i32 %43, i32* %17, align 4
  %44 = load i64, i64* @CLIENT_INVALID_QUERY, align 8
  store i64 %44, i64* %18, align 8
  %45 = load i64, i64* @INVALID_CONNECTION_ID, align 8
  store i64 %45, i64* %19, align 8
  store i8* null, i8** %20, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %46 = load i32, i32* @MAXPGPATH, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @snprintf(i8* %31, i32 %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %49)
  %51 = load i32, i32* %16, align 4
  %52 = load i32, i32* %17, align 4
  %53 = call i64 @BasicOpenFilePerm(i8* %31, i32 %51, i32 %52)
  store i64 %53, i64* %12, align 8
  %54 = load i64, i64* %12, align 8
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %5
  %57 = load i32, i32* @WARNING, align 4
  %58 = call i32 (...) @errcode_for_file_access()
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %61)
  %63 = call i32 @ereport(i32 %57, i32 %62)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %24, align 4
  br label %168

64:                                               ; preds = %5
  %65 = call i8* (...) @CurrentDatabaseName()
  store i8* %65, i8** %20, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load i8*, i8** %20, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = call i64 @MultiClientConnect(i8* %66, i32 %67, i8* %68, i8* %69)
  store i64 %70, i64* %19, align 8
  %71 = load i64, i64* %19, align 8
  %72 = load i64, i64* @INVALID_CONNECTION_ID, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %64
  %75 = load i64, i64* %19, align 8
  %76 = load i64, i64* %12, align 8
  %77 = call i32 @ReceiveResourceCleanup(i64 %75, i8* %31, i64 %76)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %24, align 4
  br label %168

78:                                               ; preds = %64
  %79 = load i64, i64* %19, align 8
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @MultiClientSendQuery(i64 %79, i8* %82)
  store i32 %83, i32* %21, align 4
  %84 = load i32, i32* %21, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %78
  %87 = load i64, i64* %19, align 8
  %88 = load i64, i64* %12, align 8
  %89 = call i32 @ReceiveResourceCleanup(i64 %87, i8* %31, i64 %88)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %24, align 4
  br label %168

90:                                               ; preds = %78
  br label %91

91:                                               ; preds = %116, %90
  %92 = load i32, i32* %22, align 4
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  br i1 %94, label %95, label %117

95:                                               ; preds = %91
  %96 = load i64, i64* %19, align 8
  %97 = call i64 @MultiClientResultStatus(i64 %96)
  store i64 %97, i64* %25, align 8
  %98 = load i64, i64* %25, align 8
  %99 = load i64, i64* @CLIENT_RESULT_READY, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  store i32 1, i32* %22, align 4
  br label %116

102:                                              ; preds = %95
  %103 = load i64, i64* %25, align 8
  %104 = load i64, i64* @CLIENT_RESULT_BUSY, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %102
  %107 = load i64, i64* @RemoteTaskCheckInterval, align 8
  %108 = mul nsw i64 %107, 1000
  store i64 %108, i64* %26, align 8
  %109 = load i64, i64* %26, align 8
  %110 = call i32 @pg_usleep(i64 %109)
  br label %115

111:                                              ; preds = %102
  %112 = load i64, i64* %19, align 8
  %113 = load i64, i64* %12, align 8
  %114 = call i32 @ReceiveResourceCleanup(i64 %112, i8* %31, i64 %113)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %24, align 4
  br label %168

115:                                              ; preds = %106
  br label %116

116:                                              ; preds = %115, %101
  br label %91

117:                                              ; preds = %91
  %118 = load i64, i64* %19, align 8
  %119 = call i64 @MultiClientQueryStatus(i64 %118)
  store i64 %119, i64* %18, align 8
  %120 = load i64, i64* %18, align 8
  %121 = load i64, i64* @CLIENT_QUERY_COPY, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %117
  %124 = load i64, i64* %19, align 8
  %125 = load i64, i64* %12, align 8
  %126 = call i32 @ReceiveResourceCleanup(i64 %124, i8* %31, i64 %125)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %24, align 4
  br label %168

127:                                              ; preds = %117
  br label %128

128:                                              ; preds = %150, %127
  %129 = load i32, i32* %23, align 4
  %130 = icmp ne i32 %129, 0
  %131 = xor i1 %130, true
  br i1 %131, label %132, label %151

132:                                              ; preds = %128
  %133 = load i64, i64* %19, align 8
  %134 = load i64, i64* %12, align 8
  %135 = call i64 @MultiClientCopyData(i64 %133, i64 %134, i32* null)
  store i64 %135, i64* %27, align 8
  %136 = load i64, i64* %27, align 8
  %137 = load i64, i64* @CLIENT_COPY_DONE, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %132
  store i32 1, i32* %23, align 4
  br label %150

140:                                              ; preds = %132
  %141 = load i64, i64* %27, align 8
  %142 = load i64, i64* @CLIENT_COPY_MORE, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  br label %149

145:                                              ; preds = %140
  %146 = load i64, i64* %19, align 8
  %147 = load i64, i64* %12, align 8
  %148 = call i32 @ReceiveResourceCleanup(i64 %146, i8* %31, i64 %147)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %24, align 4
  br label %168

149:                                              ; preds = %144
  br label %150

150:                                              ; preds = %149, %139
  br label %128

151:                                              ; preds = %128
  %152 = load i64, i64* %19, align 8
  %153 = call i32 @MultiClientDisconnect(i64 %152)
  %154 = load i64, i64* %12, align 8
  %155 = call i32 @close(i64 %154)
  store i32 %155, i32* %15, align 4
  %156 = load i32, i32* %15, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %151
  %159 = load i32, i32* @WARNING, align 4
  %160 = call i32 (...) @errcode_for_file_access()
  %161 = call i32 @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %31)
  %162 = call i32 @ereport(i32 %159, i32 %161)
  %163 = call i32 @CitusDeleteFile(i8* %31)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %24, align 4
  br label %168

164:                                              ; preds = %151
  %165 = load i32, i32* @DEBUG2, align 4
  %166 = call i32 @errmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %31)
  %167 = call i32 @ereport(i32 %165, i32 %166)
  store i32 1, i32* %6, align 4
  store i32 1, i32* %24, align 4
  br label %168

168:                                              ; preds = %164, %158, %145, %123, %111, %86, %74, %56
  %169 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %169)
  %170 = load i32, i32* %6, align 4
  ret i32 %170
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i64 @BasicOpenFilePerm(i8*, i32, i32) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode_for_file_access(...) #2

declare dso_local i32 @errmsg(i8*, i8*) #2

declare dso_local i8* @CurrentDatabaseName(...) #2

declare dso_local i64 @MultiClientConnect(i8*, i32, i8*, i8*) #2

declare dso_local i32 @ReceiveResourceCleanup(i64, i8*, i64) #2

declare dso_local i32 @MultiClientSendQuery(i64, i8*) #2

declare dso_local i64 @MultiClientResultStatus(i64) #2

declare dso_local i32 @pg_usleep(i64) #2

declare dso_local i64 @MultiClientQueryStatus(i64) #2

declare dso_local i64 @MultiClientCopyData(i64, i64, i32*) #2

declare dso_local i32 @MultiClientDisconnect(i64) #2

declare dso_local i32 @close(i64) #2

declare dso_local i32 @CitusDeleteFile(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
