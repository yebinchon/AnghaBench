; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_main.c_CL_LocalServers_f.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_main.c_CL_LocalServers_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32, i64 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [46 x i8] c"Scanning for servers on the local network...\0A\00", align 1
@cls = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@AS_LOCAL = common dso_local global i32 0, align 4
@MAX_OTHER_SERVERS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"\FF\FF\FF\FFgetinfo xxx\00", align 1
@NUM_SERVER_PORTS = common dso_local global i32 0, align 4
@PORT_SERVER = common dso_local global i64 0, align 8
@NA_BROADCAST = common dso_local global i32 0, align 4
@NS_CLIENT = common dso_local global i32 0, align 4
@NA_BROADCAST_IPX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_LocalServers_f() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__, align 4
  %5 = alloca i32, align 4
  %6 = alloca { i64, i32 }, align 4
  %7 = alloca { i64, i32 }, align 4
  %8 = call i32 @Com_Printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cls, i32 0, i32 2), align 8
  %9 = load i32, i32* @AS_LOCAL, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cls, i32 0, i32 1), align 8
  store i32 0, i32* %2, align 4
  br label %10

10:                                               ; preds = %32, %0
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @MAX_OTHER_SERVERS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %35

14:                                               ; preds = %10
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cls, i32 0, i32 0), align 8
  %16 = load i32, i32* %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %5, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cls, i32 0, i32 0), align 8
  %22 = load i32, i32* %2, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i64 %23
  %25 = call i32 @Com_Memset(%struct.TYPE_5__* %24, i32 0, i32 12)
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cls, i32 0, i32 0), align 8
  %28 = load i32, i32* %2, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 2
  store i32 %26, i32* %31, align 4
  br label %32

32:                                               ; preds = %14
  %33 = load i32, i32* %2, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %2, align 4
  br label %10

35:                                               ; preds = %10
  %36 = call i32 @Com_Memset(%struct.TYPE_5__* %4, i32 0, i32 12)
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8** %1, align 8
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %83, %35
  %38 = load i32, i32* %2, align 4
  %39 = icmp slt i32 %38, 2
  br i1 %39, label %40, label %86

40:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %79, %40
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @NUM_SERVER_PORTS, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %82

45:                                               ; preds = %41
  %46 = load i64, i64* @PORT_SERVER, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %46, %48
  %50 = trunc i64 %49 to i16
  %51 = call i32 @BigShort(i16 signext %50)
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* @NA_BROADCAST, align 4
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* @NS_CLIENT, align 4
  %56 = load i8*, i8** %1, align 8
  %57 = call i32 @strlen(i8* %56)
  %58 = load i8*, i8** %1, align 8
  %59 = bitcast { i64, i32 }* %6 to i8*
  %60 = bitcast %struct.TYPE_5__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %59, i8* align 4 %60, i64 12, i1 false)
  %61 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 0
  %62 = load i64, i64* %61, align 4
  %63 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @NET_SendPacket(i32 %55, i32 %57, i8* %58, i64 %62, i32 %64)
  %66 = load i32, i32* @NA_BROADCAST_IPX, align 4
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* @NS_CLIENT, align 4
  %69 = load i8*, i8** %1, align 8
  %70 = call i32 @strlen(i8* %69)
  %71 = load i8*, i8** %1, align 8
  %72 = bitcast { i64, i32 }* %7 to i8*
  %73 = bitcast %struct.TYPE_5__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %72, i8* align 4 %73, i64 12, i1 false)
  %74 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 0
  %75 = load i64, i64* %74, align 4
  %76 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @NET_SendPacket(i32 %68, i32 %70, i8* %71, i64 %75, i32 %77)
  br label %79

79:                                               ; preds = %45
  %80 = load i32, i32* %3, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %3, align 4
  br label %41

82:                                               ; preds = %41
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %2, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %2, align 4
  br label %37

86:                                               ; preds = %37
  ret void
}

declare dso_local i32 @Com_Printf(i8*) #1

declare dso_local i32 @Com_Memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @BigShort(i16 signext) #1

declare dso_local i32 @NET_SendPacket(i32, i32, i8*, i64, i32) #1

declare dso_local i32 @strlen(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
