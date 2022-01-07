; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtShell.c_mgmtProcessAlterUserMsg.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtShell.c_mgmtProcessAlterUserMsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_11__*, i64, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i8*, i8*, i32, i32, i32 }

@TSDB_MSG_TYPE_ALTER_USER_RSP = common dso_local global i32 0, align 4
@TSDB_CODE_INVALID_USER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"monitor\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"stream\00", align 1
@TSDB_CODE_NO_RIGHTS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@TSDB_ALTER_USER_PASSWD = common dso_local global i32 0, align 4
@TSDB_ALTER_USER_PRIVILEGES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"user:%s is altered by %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mgmtProcessAlterUserMsg(i8* %0, i32 %1, %struct.TYPE_13__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %12, %struct.TYPE_14__** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %14 = load i32, i32* @TSDB_MSG_TYPE_ALTER_USER_RSP, align 4
  %15 = call i64 @mgmtCheckRedirectMsg(%struct.TYPE_13__* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %164

18:                                               ; preds = %3
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.TYPE_12__* @mgmtGetUser(i32 %21)
  store %struct.TYPE_12__* %22, %struct.TYPE_12__** %10, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %24 = icmp eq %struct.TYPE_12__* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %18
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @TSDB_MSG_TYPE_ALTER_USER_RSP, align 4
  %30 = load i32, i32* @TSDB_CODE_INVALID_USER, align 4
  %31 = call i32 @taosSendSimpleRsp(i32 %28, i32 %29, i32 %30)
  store i32 0, i32* %4, align 4
  br label %164

32:                                               ; preds = %18
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @strcmp(i8* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i64 @strcmp(i8* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38, %32
  %45 = load i32, i32* @TSDB_CODE_NO_RIGHTS, align 4
  store i32 %45, i32* %9, align 4
  br label %157

46:                                               ; preds = %38
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i64 @strcmp(i8* %49, i8* %54)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %81, label %57

57:                                               ; preds = %46
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 3
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i64 @strcmp(i8* %60, i8* %65)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %57
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %81, label %73

73:                                               ; preds = %68, %57
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = call i64 @strcmp(i8* %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %154

81:                                               ; preds = %73, %68, %46
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @TSDB_ALTER_USER_PASSWD, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %104

88:                                               ; preds = %81
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @memset(i32 %91, i32 0, i32 4)
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @strlen(i32 %98)
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @taosEncryptPass(i32 %95, i32 %99, i32 %102)
  br label %104

104:                                              ; preds = %88, %81
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @TSDB_ALTER_USER_PRIVILEGES, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %142

111:                                              ; preds = %104
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp eq i32 %114, 1
  br i1 %115, label %116, label %121

116:                                              ; preds = %111
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 2
  store i32 1, i32* %118, align 8
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 3
  store i32 1, i32* %120, align 4
  br label %121

121:                                              ; preds = %116, %111
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %124, 2
  br i1 %125, label %126, label %131

126:                                              ; preds = %121
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 2
  store i32 0, i32* %128, align 8
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 3
  store i32 0, i32* %130, align 4
  br label %131

131:                                              ; preds = %126, %121
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = icmp eq i32 %134, 3
  br i1 %135, label %136, label %141

136:                                              ; preds = %131
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 2
  store i32 0, i32* %138, align 8
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 3
  store i32 1, i32* %140, align 4
  br label %141

141:                                              ; preds = %136, %131
  br label %142

142:                                              ; preds = %141, %104
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %144 = call i32 @mgmtUpdateUser(%struct.TYPE_12__* %143)
  store i32 %144, i32* %9, align 4
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  %153 = call i32 @mLPrint(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %147, i8* %152)
  br label %156

154:                                              ; preds = %73
  %155 = load i32, i32* @TSDB_CODE_NO_RIGHTS, align 4
  store i32 %155, i32* %9, align 4
  br label %156

156:                                              ; preds = %154, %142
  br label %157

157:                                              ; preds = %156, %44
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @TSDB_MSG_TYPE_ALTER_USER_RSP, align 4
  %162 = load i32, i32* %9, align 4
  %163 = call i32 @taosSendSimpleRsp(i32 %160, i32 %161, i32 %162)
  store i32 0, i32* %4, align 4
  br label %164

164:                                              ; preds = %157, %25, %17
  %165 = load i32, i32* %4, align 4
  ret i32 %165
}

declare dso_local i64 @mgmtCheckRedirectMsg(%struct.TYPE_13__*, i32) #1

declare dso_local %struct.TYPE_12__* @mgmtGetUser(i32) #1

declare dso_local i32 @taosSendSimpleRsp(i32, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @taosEncryptPass(i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @mgmtUpdateUser(%struct.TYPE_12__*) #1

declare dso_local i32 @mLPrint(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
