; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtShell.c_mgmtProcessCreateDbMsg.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtShell.c_mgmtProcessCreateDbMsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@TSDB_MSG_TYPE_CREATE_DB_RSP = common dso_local global i32 0, align 4
@TSDB_CODE_GRANT_EXPIRED = common dso_local global i32 0, align 4
@TSDB_CODE_NO_RIGHTS = common dso_local global i32 0, align 4
@TSDB_CODE_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"DB:%s is created by %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mgmtProcessCreateDbMsg(i8* %0, i32 %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %13 = load i32, i32* @TSDB_MSG_TYPE_CREATE_DB_RSP, align 4
  %14 = call i64 @mgmtCheckRedirectMsg(%struct.TYPE_9__* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %111

17:                                               ; preds = %3
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 9
  %20 = load i8*, i8** %19, align 8
  %21 = call i8* @htonl(i8* %20)
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 9
  store i8* %21, i8** %23, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 8
  %26 = load i8*, i8** %25, align 8
  %27 = call i8* @htonl(i8* %26)
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 8
  store i8* %27, i8** %29, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 7
  %32 = load i8*, i8** %31, align 8
  %33 = call i8* @htonl(i8* %32)
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 7
  store i8* %33, i8** %35, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 6
  %38 = load i8*, i8** %37, align 8
  %39 = call i8* @htonl(i8* %38)
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 6
  store i8* %39, i8** %41, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 5
  %44 = load i8*, i8** %43, align 8
  %45 = call i8* @htonl(i8* %44)
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 5
  store i8* %45, i8** %47, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 4
  %50 = load i8*, i8** %49, align 8
  %51 = call i8* @htonl(i8* %50)
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 4
  store i8* %51, i8** %53, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 3
  %56 = load i8*, i8** %55, align 8
  %57 = call i8* @htonl(i8* %56)
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 3
  store i8* %57, i8** %59, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @htons(i32 %62)
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = call i8* @htonl(i8* %68)
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  %72 = call i64 (...) @grantCheckExpired()
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %17
  %75 = load i32, i32* @TSDB_CODE_GRANT_EXPIRED, align 4
  store i32 %75, i32* %9, align 4
  br label %104

76:                                               ; preds = %17
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %76
  %82 = load i32, i32* @TSDB_CODE_NO_RIGHTS, align 4
  store i32 %82, i32* %9, align 4
  br label %103

83:                                               ; preds = %76
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %88 = call i32 @mgmtCreateDb(i32 %86, %struct.TYPE_8__* %87)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %102

92:                                               ; preds = %83
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @mLPrint(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %95, i32 %100)
  br label %102

102:                                              ; preds = %92, %83
  br label %103

103:                                              ; preds = %102, %81
  br label %104

104:                                              ; preds = %103, %74
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @TSDB_MSG_TYPE_CREATE_DB_RSP, align 4
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @taosSendSimpleRsp(i32 %107, i32 %108, i32 %109)
  store i32 0, i32* %4, align 4
  br label %111

111:                                              ; preds = %104, %16
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i64 @mgmtCheckRedirectMsg(%struct.TYPE_9__*, i32) #1

declare dso_local i8* @htonl(i8*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @grantCheckExpired(...) #1

declare dso_local i32 @mgmtCreateDb(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @mLPrint(i8*, i32, i32) #1

declare dso_local i32 @taosSendSimpleRsp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
