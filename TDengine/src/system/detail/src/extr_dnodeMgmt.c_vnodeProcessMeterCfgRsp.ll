; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_dnodeMgmt.c_vnodeProcessMeterCfgRsp.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_dnodeMgmt.c_vnodeProcessMeterCfgRsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [60 x i8] c"vid:%d, sid:%d, code:%d, meter is not configured, remove it\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"vid:%d, sid:%d, meter delete ret:%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnodeProcessMeterCfgRsp(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load i8*, i8** %4, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  %21 = load i32, i32* %5, align 4
  %22 = sub nsw i32 %21, 1
  %23 = call i32 @vnodeProcessCreateMeterMsg(i8* %20, i32 %22)
  br label %49

24:                                               ; preds = %3
  %25 = load i8*, i8** %4, align 8
  %26 = bitcast i8* %25 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %26, %struct.TYPE_2__** %8, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i32*
  store i32* %30, i32** %9, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @htonl(i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32*, i32** %9, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @htonl(i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @dError(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39, i32 %40)
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @vnodeRemoveMeterObj(i32 %42, i32 %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @dTrace(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %24, %18
  ret i32 0
}

declare dso_local i32 @vnodeProcessCreateMeterMsg(i8*, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @dError(i8*, i32, i32, i32) #1

declare dso_local i32 @vnodeRemoveMeterObj(i32, i32) #1

declare dso_local i32 @dTrace(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
