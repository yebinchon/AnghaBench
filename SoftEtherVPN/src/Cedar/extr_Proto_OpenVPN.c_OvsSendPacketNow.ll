; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_OpenVPN.c_OvsSendPacketNow.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_OpenVPN.c_OvsSendPacketNow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32*, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"Sending Opcode=%u  \00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Sending ACK Packet IDs (c=%u): \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%u \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @OvsSendPacketNow(i32* %0, i32* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %6, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %3
  %12 = load i32*, i32** %5, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %16 = icmp eq %struct.TYPE_7__* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %11, %3
  br label %66

18:                                               ; preds = %14
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sge i32 %25, 1
  br i1 %26, label %27, label %51

27:                                               ; preds = %18
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  store i64 0, i64* %8, align 8
  br label %32

32:                                               ; preds = %47, %27
  %33 = load i64, i64* %8, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = icmp ult i64 %33, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %32
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* %8, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %39
  %48 = load i64, i64* %8, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %8, align 8
  br label %32

50:                                               ; preds = %32
  br label %51

51:                                               ; preds = %50, %18
  %52 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %54 = call %struct.TYPE_8__* @OvsBuildPacket(%struct.TYPE_7__* %53)
  store %struct.TYPE_8__* %54, %struct.TYPE_8__** %7, align 8
  %55 = load i32*, i32** %4, align 8
  %56 = load i32*, i32** %5, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @OvsSendPacketRawNow(i32* %55, i32* %56, i32 %59, i32 %62)
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %65 = call i32 @Free(%struct.TYPE_8__* %64)
  br label %66

66:                                               ; preds = %51, %17
  ret void
}

declare dso_local i32 @Debug(i8*, ...) #1

declare dso_local %struct.TYPE_8__* @OvsBuildPacket(%struct.TYPE_7__*) #1

declare dso_local i32 @OvsSendPacketRawNow(i32*, i32*, i32, i32) #1

declare dso_local i32 @Free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
