; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_init.c_SV_Startup.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_init.c_SV_Startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@svs = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@ERR_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"SV_Startup: svs.initialized\00", align 1
@sv_maxclients = common dso_local global %struct.TYPE_5__* null, align 8
@com_dedicated = common dso_local global %struct.TYPE_6__* null, align 8
@PACKET_BACKUP = common dso_local global i32 0, align 4
@qtrue = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"sv_running\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SV_Startup() #0 {
  %1 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @svs, i32 0, i32 1), align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i32, i32* @ERR_FATAL, align 4
  %5 = call i32 @Com_Error(i32 %4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %6

6:                                                ; preds = %3, %0
  %7 = call i32 @SV_BoundMaxClients(i32 1)
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sv_maxclients, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 4, %11
  %13 = trunc i64 %12 to i32
  %14 = call i32 @Z_Malloc(i32 %13)
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @svs, i32 0, i32 2), align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @com_dedicated, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %6
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sv_maxclients, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @PACKET_BACKUP, align 4
  %24 = mul nsw i32 %22, %23
  %25 = mul nsw i32 %24, 64
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @svs, i32 0, i32 0), align 8
  br label %32

26:                                               ; preds = %6
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sv_maxclients, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %29, 4
  %31 = mul nsw i32 %30, 64
  store i32 %31, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @svs, i32 0, i32 0), align 8
  br label %32

32:                                               ; preds = %26, %19
  %33 = load i64, i64* @qtrue, align 8
  store i64 %33, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @svs, i32 0, i32 1), align 8
  %34 = call i32 @Cvar_Set(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @Com_Error(i32, i8*) #1

declare dso_local i32 @SV_BoundMaxClients(i32) #1

declare dso_local i32 @Z_Malloc(i32) #1

declare dso_local i32 @Cvar_Set(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
