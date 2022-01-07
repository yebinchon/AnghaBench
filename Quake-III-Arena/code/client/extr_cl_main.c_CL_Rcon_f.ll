; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_main.c_CL_Rcon_f.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_main.c_CL_Rcon_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_12__ = type { i8* }

@rcon_client_password = common dso_local global %struct.TYPE_11__* null, align 8
@.str = private unnamed_addr constant [61 x i8] c"You must set 'rconpassword' before\0Aissuing an rcon command.\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"rcon \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@cls = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@CA_CONNECTED = common dso_local global i64 0, align 8
@clc = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@rconAddress = common dso_local global %struct.TYPE_12__* null, align 8
@.str.3 = private unnamed_addr constant [84 x i8] c"You must either be connected,\0Aor set the 'rconAddress' cvar\0Ato issue rcon commands\0A\00", align 1
@PORT_SERVER = common dso_local global i32 0, align 4
@NS_CLIENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_Rcon_f() #0 {
  %1 = alloca [1024 x i8], align 16
  %2 = alloca %struct.TYPE_10__, align 8
  %3 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rcon_client_password, align 8
  %4 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %0
  %8 = call i32 @Com_Printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  br label %63

9:                                                ; preds = %0
  %10 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  store i8 -1, i8* %10, align 16
  %11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 1
  store i8 -1, i8* %11, align 1
  %12 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 2
  store i8 -1, i8* %12, align 2
  %13 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 3
  store i8 -1, i8* %13, align 1
  %14 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 4
  store i8 0, i8* %14, align 4
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %16 = call i32 @strcat(i8* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %17 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rcon_client_password, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @strcat(i8* %17, i8* %20)
  %22 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %23 = call i32 @strcat(i8* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %24 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %25 = call i8* (...) @Cmd_Cmd()
  %26 = getelementptr inbounds i8, i8* %25, i64 5
  %27 = call i32 @strcat(i8* %24, i8* %26)
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cls, i32 0, i32 0), align 8
  %29 = load i64, i64* @CA_CONNECTED, align 8
  %30 = icmp sge i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %9
  %32 = bitcast %struct.TYPE_10__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 bitcast (%struct.TYPE_14__* @clc to i8*), i64 8, i1 false)
  br label %54

33:                                               ; preds = %9
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** @rconAddress, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @strlen(i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %33
  %40 = call i32 @Com_Printf(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.3, i64 0, i64 0))
  br label %63

41:                                               ; preds = %33
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** @rconAddress, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @NET_StringToAdr(i8* %44, %struct.TYPE_10__* %2)
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = load i32, i32* @PORT_SERVER, align 4
  %51 = call i64 @BigShort(i32 %50)
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  store i64 %51, i64* %52, align 8
  br label %53

53:                                               ; preds = %49, %41
  br label %54

54:                                               ; preds = %53, %31
  %55 = load i32, i32* @NS_CLIENT, align 4
  %56 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %57 = call i64 @strlen(i8* %56)
  %58 = add nsw i64 %57, 1
  %59 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @NET_SendPacket(i32 %55, i64 %58, i8* %59, i64 %61)
  br label %63

63:                                               ; preds = %54, %39, %7
  ret void
}

declare dso_local i32 @Com_Printf(i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i8* @Cmd_Cmd(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @NET_StringToAdr(i8*, %struct.TYPE_10__*) #1

declare dso_local i64 @BigShort(i32) #1

declare dso_local i32 @NET_SendPacket(i32, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
