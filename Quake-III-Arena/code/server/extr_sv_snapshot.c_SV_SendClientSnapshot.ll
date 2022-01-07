; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_snapshot.c_SV_SendClientSnapshot.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_snapshot.c_SV_SendClientSnapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_20__ = type { i64, i32 }

@MAX_MSGLEN = common dso_local global i32 0, align 4
@SVF_BOT = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"WARNING: msg overflowed for %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SV_SendClientSnapshot(%struct.TYPE_21__* %0) #0 {
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_20__, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %2, align 8
  %7 = load i32, i32* @MAX_MSGLEN, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %3, align 8
  %10 = alloca i32, i64 %8, align 16
  store i64 %8, i64* %4, align 8
  %11 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %12 = call i32 @SV_BuildClientSnapshot(%struct.TYPE_21__* %11)
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %16 = icmp ne %struct.TYPE_19__* %15, null
  br i1 %16, label %17, label %28

17:                                               ; preds = %1
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SVF_BOT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  store i32 1, i32* %6, align 4
  br label %56

28:                                               ; preds = %17, %1
  %29 = mul nuw i64 4, %8
  %30 = trunc i64 %29 to i32
  %31 = call i32 @MSG_Init(%struct.TYPE_20__* %5, i32* %10, i32 %30)
  %32 = load i32, i32* @qtrue, align 4
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 1
  store i32 %32, i32* %33, align 8
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @MSG_WriteLong(%struct.TYPE_20__* %5, i32 %36)
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %39 = call i32 @SV_UpdateServerCommandsToClient(%struct.TYPE_21__* %38, %struct.TYPE_20__* %5)
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %41 = call i32 @SV_WriteSnapshotToClient(%struct.TYPE_21__* %40, %struct.TYPE_20__* %5)
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %43 = call i32 @SV_WriteDownloadToClient(%struct.TYPE_21__* %42, %struct.TYPE_20__* %5)
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %28
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @Com_Printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = call i32 @MSG_Clear(%struct.TYPE_20__* %5)
  br label %53

53:                                               ; preds = %47, %28
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %55 = call i32 @SV_SendMessageToClient(%struct.TYPE_20__* %5, %struct.TYPE_21__* %54)
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %53, %27
  %57 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %57)
  %58 = load i32, i32* %6, align 4
  switch i32 %58, label %60 [
    i32 0, label %59
    i32 1, label %59
  ]

59:                                               ; preds = %56, %56
  ret void

60:                                               ; preds = %56
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SV_BuildClientSnapshot(%struct.TYPE_21__*) #2

declare dso_local i32 @MSG_Init(%struct.TYPE_20__*, i32*, i32) #2

declare dso_local i32 @MSG_WriteLong(%struct.TYPE_20__*, i32) #2

declare dso_local i32 @SV_UpdateServerCommandsToClient(%struct.TYPE_21__*, %struct.TYPE_20__*) #2

declare dso_local i32 @SV_WriteSnapshotToClient(%struct.TYPE_21__*, %struct.TYPE_20__*) #2

declare dso_local i32 @SV_WriteDownloadToClient(%struct.TYPE_21__*, %struct.TYPE_20__*) #2

declare dso_local i32 @Com_Printf(i8*, i32) #2

declare dso_local i32 @MSG_Clear(%struct.TYPE_20__*) #2

declare dso_local i32 @SV_SendMessageToClient(%struct.TYPE_20__*, %struct.TYPE_21__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
