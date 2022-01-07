; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_netlink.c_NetlinkExec.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_netlink.c_NetlinkExec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i8* }

@NetlinkArea = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [58 x i8] c"Detected escape sequence, switching back to command mode\0A\00", align 1
@NL_MODEMSTATE_COMMAND = common dso_local global i8* null, align 8
@NL_CONNECTSTATUS_LOGIN1 = common dso_local global i32 0, align 4
@NL_MODEMSTATE_DATA = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NetlinkExec(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @NetlinkArea, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = sext i32 %6 to i64
  %8 = add nsw i64 %7, %3
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %5, align 8
  %10 = load i64, i64* %2, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @NetlinkArea, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %14, %10
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %12, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @NetlinkArea, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %29

21:                                               ; preds = %1
  %22 = load i64, i64* %2, align 8
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @NetlinkArea, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %22
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %24, align 4
  br label %29

29:                                               ; preds = %21, %1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @NetlinkArea, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sge i32 %32, 20000
  br i1 %33, label %34, label %62

34:                                               ; preds = %29
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @NetlinkArea, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sub nsw i32 %37, 20000
  store i32 %38, i32* %36, align 8
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @NetlinkArea, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 3
  br i1 %42, label %43, label %53

43:                                               ; preds = %34
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @NetlinkArea, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp sge i32 %46, 1000000
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = call i32 @NETLINK_LOG(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %50 = load i8*, i8** @NL_MODEMSTATE_COMMAND, align 8
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @NetlinkArea, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 8
  store i8* %50, i8** %52, align 8
  br label %53

53:                                               ; preds = %48, %43, %34
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @NetlinkArea, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  switch i32 %56, label %60 [
    i32 128, label %57
    i32 130, label %58
    i32 129, label %59
  ]

57:                                               ; preds = %53
  br label %61

58:                                               ; preds = %53
  br label %61

59:                                               ; preds = %53
  br label %61

60:                                               ; preds = %53
  br label %61

61:                                               ; preds = %60, %59, %58, %57
  br label %62

62:                                               ; preds = %61, %29
  ret void
}

declare dso_local i32 @NETLINK_LOG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
