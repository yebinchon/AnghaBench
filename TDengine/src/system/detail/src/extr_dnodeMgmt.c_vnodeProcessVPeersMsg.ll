; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_dnodeMgmt.c_vnodeProcessVPeersMsg.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_dnodeMgmt.c_vnodeProcessVPeersMsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@TSDB_MSG_TYPE_VPEERS_RSP = common dso_local global i32 0, align 4
@TSDB_DB_NAME_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnodeProcessVPeersMsg(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = call i32 @vnodeProcessVPeerCfg(i8* %12, i32 %13, i32* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %11, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* @TSDB_MSG_TYPE_VPEERS_RSP, align 4
  %20 = call i8* @taosBuildRspMsgToMnode(i32* %18, i32 %19)
  store i8* %20, i8** %9, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %48

24:                                               ; preds = %3
  %25 = load i8*, i8** %9, align 8
  %26 = bitcast i8* %25 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %10, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @TSDB_DB_NAME_LEN, align 4
  %38 = call i32 @memcpy(i32 %32, i32 %36, i32 %37)
  %39 = load i32, i32* @TSDB_DB_NAME_LEN, align 4
  %40 = sext i32 %39 to i64
  %41 = add i64 8, %40
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %6, align 4
  %43 = load i32*, i32** %7, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @taosSendMsgToMnode(i32* %43, i8* %44, i32 %45)
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %24, %23
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @vnodeProcessVPeerCfg(i8*, i32, i32*) #1

declare dso_local i8* @taosBuildRspMsgToMnode(i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @taosSendMsgToMnode(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
