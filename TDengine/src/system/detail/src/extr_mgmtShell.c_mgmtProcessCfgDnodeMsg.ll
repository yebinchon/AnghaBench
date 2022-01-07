; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtShell.c_mgmtProcessCfgDnodeMsg.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtShell.c_mgmtProcessCfgDnodeMsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__*, i32, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@TSDB_MSG_TYPE_CFG_MNODE_RSP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"root\00", align 1
@TSDB_CODE_NO_RIGHTS = common dso_local global i32 0, align 4
@TSDB_MSG_TYPE_CFG_PNODE_RSP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"dnode:%s is configured by %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mgmtProcessCfgDnodeMsg(i8* %0, i32 %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %9, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %13 = load i32, i32* @TSDB_MSG_TYPE_CFG_MNODE_RSP, align 4
  %14 = call i64 @mgmtCheckRedirectMsg(%struct.TYPE_9__* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %50

17:                                               ; preds = %3
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @strcmp(i32 %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* @TSDB_CODE_NO_RIGHTS, align 4
  store i32 %26, i32* %8, align 4
  br label %30

27:                                               ; preds = %17
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @mgmtSendCfgDnodeMsg(i8* %28)
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %27, %25
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @TSDB_MSG_TYPE_CFG_PNODE_RSP, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @taosSendSimpleRsp(i32 %33, i32 %34, i32 %35)
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %30
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @mTrace(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %47)
  br label %49

49:                                               ; preds = %39, %30
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %16
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i64 @mgmtCheckRedirectMsg(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @mgmtSendCfgDnodeMsg(i8*) #1

declare dso_local i32 @taosSendSimpleRsp(i32, i32, i32) #1

declare dso_local i32 @mTrace(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
