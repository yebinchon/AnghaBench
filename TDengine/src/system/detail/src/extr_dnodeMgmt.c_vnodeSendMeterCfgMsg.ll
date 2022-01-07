; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_dnodeMgmt.c_vnodeSendMeterCfgMsg.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_dnodeMgmt.c_vnodeSendMeterCfgMsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8* }

@mgmtObj = common dso_local global i32 0, align 4
@TSDB_MSG_TYPE_METER_CFG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnodeSendMeterCfgMsg(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_2__*, align 8
  %10 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* @mgmtObj, i32** %10, align 8
  %11 = load i32*, i32** %10, align 8
  %12 = load i32, i32* @TSDB_MSG_TYPE_METER_CFG, align 4
  %13 = call i8* @taosBuildReqMsgToMnode(i32* %11, i32 %12)
  store i8* %13, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %41

17:                                               ; preds = %2
  %18 = load i8*, i8** %7, align 8
  store i8* %18, i8** %6, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %20, %struct.TYPE_2__** %9, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i8* @htonl(i32 %21)
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i8* @htonl(i32 %25)
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 16
  store i8* %30, i8** %6, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = ptrtoint i8* %31 to i64
  %34 = ptrtoint i8* %32 to i64
  %35 = sub i64 %33, %34
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %8, align 4
  %37 = load i32*, i32** %10, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @taosSendMsgToMnode(i32* %37, i8* %38, i32 %39)
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %17, %16
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i8* @taosBuildReqMsgToMnode(i32*, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @taosSendMsgToMnode(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
