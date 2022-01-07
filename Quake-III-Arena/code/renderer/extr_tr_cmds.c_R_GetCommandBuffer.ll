; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_cmds.c_R_GetCommandBuffer.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_cmds.c_R_GetCommandBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i8* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i32 (i32, i8*, i32)* }

@backEndData = common dso_local global %struct.TYPE_8__** null, align 8
@tr = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@MAX_RENDER_COMMANDS = common dso_local global i32 0, align 4
@ri = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@ERR_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"R_GetCommandBuffer: bad size %i\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @R_GetCommandBuffer(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @backEndData, align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tr, i32 0, i32 0), align 8
  %7 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %5, i64 %6
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %4, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = add nsw i32 %12, %13
  %15 = add nsw i32 %14, 4
  %16 = load i32, i32* @MAX_RENDER_COMMANDS, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @MAX_RENDER_COMMANDS, align 4
  %21 = sub nsw i32 %20, 4
  %22 = icmp sgt i32 %19, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ri, i32 0, i32 0), align 8
  %25 = load i32, i32* @ERR_FATAL, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 %24(i32 %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %23, %18
  store i8* null, i8** %2, align 8
  br label %47

29:                                               ; preds = %1
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = getelementptr i8, i8* %37, i64 %41
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = sub i64 0, %44
  %46 = getelementptr i8, i8* %42, i64 %45
  store i8* %46, i8** %2, align 8
  br label %47

47:                                               ; preds = %29, %28
  %48 = load i8*, i8** %2, align 8
  ret i8* %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
