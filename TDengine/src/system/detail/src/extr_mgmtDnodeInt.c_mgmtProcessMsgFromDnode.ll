; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtDnodeInt.c_mgmtProcessMsgFromDnode.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtDnodeInt.c_mgmtProcessMsgFromDnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TSDB_MSG_TYPE_METER_CFG = common dso_local global i32 0, align 4
@TSDB_MSG_TYPE_VPEER_CFG = common dso_local global i32 0, align 4
@TSDB_MSG_TYPE_CREATE_RSP = common dso_local global i32 0, align 4
@TSDB_MSG_TYPE_REMOVE_RSP = common dso_local global i32 0, align 4
@TSDB_MSG_TYPE_VPEERS_RSP = common dso_local global i32 0, align 4
@TSDB_MSG_TYPE_FREE_VNODE_RSP = common dso_local global i32 0, align 4
@TSDB_MSG_TYPE_CFG_PNODE_RSP = common dso_local global i32 0, align 4
@TSDB_MSG_TYPE_ALTER_STREAM_RSP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%s from dnode is not processed\00", align 1
@taosMsg = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mgmtProcessMsgFromDnode(i8* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @TSDB_MSG_TYPE_METER_CFG, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %4
  %13 = load i8*, i8** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = sub i64 %15, 4
  %17 = trunc i64 %16 to i32
  %18 = load i32*, i32** %8, align 8
  %19 = call i32 @mgmtProcessMeterCfgMsg(i8* %13, i32 %17, i32* %18)
  br label %97

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @TSDB_MSG_TYPE_VPEER_CFG, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = sub i64 %27, 4
  %29 = trunc i64 %28 to i32
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @mgmtProcessVpeerCfgMsg(i8* %25, i32 %29, i32* %30)
  br label %96

32:                                               ; preds = %20
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @TSDB_MSG_TYPE_CREATE_RSP, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = sub i64 %39, 4
  %41 = trunc i64 %40 to i32
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @mgmtProcessCreateRsp(i8* %37, i32 %41, i32* %42)
  br label %95

44:                                               ; preds = %32
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @TSDB_MSG_TYPE_REMOVE_RSP, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %94

49:                                               ; preds = %44
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @TSDB_MSG_TYPE_VPEERS_RSP, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %49
  %54 = load i8*, i8** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = sub i64 %56, 4
  %58 = trunc i64 %57 to i32
  %59 = load i32*, i32** %8, align 8
  %60 = call i32 @mgmtProcessVPeersRsp(i8* %54, i32 %58, i32* %59)
  br label %93

61:                                               ; preds = %49
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @TSDB_MSG_TYPE_FREE_VNODE_RSP, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %61
  %66 = load i8*, i8** %5, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = sub i64 %68, 4
  %70 = trunc i64 %69 to i32
  %71 = load i32*, i32** %8, align 8
  %72 = call i32 @mgmtProcessFreeVnodeRsp(i8* %66, i32 %70, i32* %71)
  br label %92

73:                                               ; preds = %61
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @TSDB_MSG_TYPE_CFG_PNODE_RSP, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  br label %91

78:                                               ; preds = %73
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @TSDB_MSG_TYPE_ALTER_STREAM_RSP, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  br label %90

83:                                               ; preds = %78
  %84 = load i32*, i32** @taosMsg, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @mError(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %83, %82
  br label %91

91:                                               ; preds = %90, %77
  br label %92

92:                                               ; preds = %91, %65
  br label %93

93:                                               ; preds = %92, %53
  br label %94

94:                                               ; preds = %93, %48
  br label %95

95:                                               ; preds = %94, %36
  br label %96

96:                                               ; preds = %95, %24
  br label %97

97:                                               ; preds = %96, %12
  ret void
}

declare dso_local i32 @mgmtProcessMeterCfgMsg(i8*, i32, i32*) #1

declare dso_local i32 @mgmtProcessVpeerCfgMsg(i8*, i32, i32*) #1

declare dso_local i32 @mgmtProcessCreateRsp(i8*, i32, i32*) #1

declare dso_local i32 @mgmtProcessVPeersRsp(i8*, i32, i32*) #1

declare dso_local i32 @mgmtProcessFreeVnodeRsp(i8*, i32, i32*) #1

declare dso_local i32 @mError(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
