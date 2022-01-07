; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtDnodeInt.c_mgmtSendCreateMsgToVgroup.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtDnodeInt.c_mgmtSendCreateMsgToVgroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@TSDB_MSG_TYPE_CREATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mgmtSendCreateMsgToVgroup(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  store i32 0, i32* %8, align 4
  %11 = call i32 (...) @taosGetTimestampMs()
  store i32 %11, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %60, %2
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %63

18:                                               ; preds = %12
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32* @mgmtGetDnode(i32 %26)
  store i32* %27, i32** %9, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  br label %60

31:                                               ; preds = %18
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* @TSDB_MSG_TYPE_CREATE, align 4
  %34 = call i8* @taosBuildReqMsgToDnodeWithSize(i32* %32, i32 %33, i32 64000)
  store i8* %34, i8** %6, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %60

38:                                               ; preds = %31
  %39 = load i32*, i32** %3, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @mgmtBuildCreateMeterIe(i32* %39, i8* %40, i32 %48)
  store i8* %49, i8** %5, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = ptrtoint i8* %50 to i64
  %53 = ptrtoint i8* %51 to i64
  %54 = sub i64 %52, %53
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %8, align 4
  %56 = load i32*, i32** %9, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @taosSendMsgToDnode(i32* %56, i8* %57, i32 %58)
  br label %60

60:                                               ; preds = %38, %37, %30
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %12

63:                                               ; preds = %12
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  ret i32 0
}

declare dso_local i32 @taosGetTimestampMs(...) #1

declare dso_local i32* @mgmtGetDnode(i32) #1

declare dso_local i8* @taosBuildReqMsgToDnodeWithSize(i32*, i32, i32) #1

declare dso_local i8* @mgmtBuildCreateMeterIe(i32*, i8*, i32) #1

declare dso_local i32 @taosSendMsgToDnode(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
