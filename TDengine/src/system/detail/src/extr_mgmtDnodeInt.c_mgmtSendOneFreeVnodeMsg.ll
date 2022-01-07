; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtDnodeInt.c_mgmtSendOneFreeVnodeMsg.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtDnodeInt.c_mgmtSendOneFreeVnodeMsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32* }

@.str = private unnamed_addr constant [19 x i8] c"dnode:%s not there\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"dnode:%s offline, failed to send Vpeer msg\00", align 1
@TSDB_MSG_TYPE_FREE_VNODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mgmtSendOneFreeVnodeMsg(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.TYPE_10__* @mgmtGetDnode(i32 %11)
  store %struct.TYPE_10__* %12, %struct.TYPE_10__** %8, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %14 = icmp eq %struct.TYPE_10__* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @taosIpStr(i32 %18)
  %20 = call i32 @mError(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %19)
  store i32 -1, i32* %2, align 4
  br label %61

21:                                               ; preds = %1
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @taosIpStr(i32 %29)
  %31 = call i32 @mTrace(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  store i32 -1, i32* %2, align 4
  br label %61

32:                                               ; preds = %21
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %34 = load i32, i32* @TSDB_MSG_TYPE_FREE_VNODE, align 4
  %35 = call i8* @taosBuildReqMsgToDnode(%struct.TYPE_10__* %33, i32 %34)
  store i8* %35, i8** %6, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 -1, i32* %2, align 4
  br label %61

39:                                               ; preds = %32
  %40 = load i8*, i8** %6, align 8
  store i8* %40, i8** %5, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = bitcast i8* %41 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %42, %struct.TYPE_9__** %4, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @htons(i32 %45)
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load i8*, i8** %5, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 4
  store i8* %50, i8** %5, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = ptrtoint i8* %51 to i64
  %54 = ptrtoint i8* %52 to i64
  %55 = sub i64 %53, %54
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %7, align 4
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @taosSendMsgToDnode(%struct.TYPE_10__* %57, i8* %58, i32 %59)
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %39, %38, %26, %15
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.TYPE_10__* @mgmtGetDnode(i32) #1

declare dso_local i32 @mError(i8*, i32) #1

declare dso_local i32 @taosIpStr(i32) #1

declare dso_local i32 @mTrace(i8*, i32) #1

declare dso_local i8* @taosBuildReqMsgToDnode(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @taosSendMsgToDnode(%struct.TYPE_10__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
