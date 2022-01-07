; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_TcpIp.c_ParseHttpsAccessLog.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_TcpIp.c_ParseHttpsAccessLog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"SSL_Connect\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @ParseHttpsAccessLog(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %8 = load i32, i32* @MAX_PATH, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %13 = icmp eq %struct.TYPE_12__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %2, align 8
  store i32 1, i32* %7, align 4
  br label %47

15:                                               ; preds = %1
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = trunc i64 %9 to i32
  %23 = call i32 @GetSniNameFromSslPacket(i32 %18, i32 %21, i8* %11, i32 %22)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %2, align 8
  store i32 1, i32* %7, align 4
  br label %47

26:                                               ; preds = %15
  %27 = call i32 @Zero(%struct.TYPE_13__* %4, i32 20)
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @StrCpy(i32 %29, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @StrCpy(i32 %32, i32 4, i8* %11)
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @Endian16(i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 2
  store i32 %40, i32* %41, align 4
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @StrCpy(i32 %43, i32 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  store i32 1, i32* %45, align 4
  %46 = call %struct.TYPE_13__* @Clone(%struct.TYPE_13__* %4, i32 20)
  store %struct.TYPE_13__* %46, %struct.TYPE_13__** %2, align 8
  store i32 1, i32* %7, align 4
  br label %47

47:                                               ; preds = %26, %25, %14
  %48 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %48)
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  ret %struct.TYPE_13__* %49
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetSniNameFromSslPacket(i32, i32, i8*, i32) #2

declare dso_local i32 @Zero(%struct.TYPE_13__*, i32) #2

declare dso_local i32 @StrCpy(i32, i32, i8*) #2

declare dso_local i32 @Endian16(i32) #2

declare dso_local %struct.TYPE_13__* @Clone(%struct.TYPE_13__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
