; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_client.c_SV_NextDownload_f.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_client.c_SV_NextDownload_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i64*, i32, i32 }

@.str = private unnamed_addr constant [53 x i8] c"clientDownload: %d : client acknowledge of block %d\0A\00", align 1
@svs = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@MAX_DOWNLOAD_WINDOW = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"clientDownload: %d : file \22%s\22 completed\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"broken download\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SV_NextDownload_f(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %4 = call i32 @Cmd_Argv(i32 1)
  %5 = call i32 @atoi(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %6, %9
  br i1 %10, label %11, label %51

11:                                               ; preds = %1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @svs, i32 0, i32 0), align 4
  %14 = sext i32 %13 to i64
  %15 = sub i64 0, %14
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i64 %15
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), %struct.TYPE_8__* %16, i32 %17)
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* @MAX_DOWNLOAD_WINDOW, align 8
  %27 = urem i64 %25, %26
  %28 = getelementptr inbounds i64, i64* %21, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %11
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @svs, i32 0, i32 0), align 4
  %34 = sext i32 %33 to i64
  %35 = sub i64 0, %34
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i64 %35
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @Com_Printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_8__* %36, i32 %39)
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %42 = call i32 @SV_CloseDownload(%struct.TYPE_8__* %41)
  br label %54

43:                                               ; preds = %11
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @svs, i32 0, i32 1), align 4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 8
  br label %54

51:                                               ; preds = %1
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %53 = call i32 @SV_DropClient(%struct.TYPE_8__* %52, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %43, %31
  ret void
}

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @Cmd_Argv(i32) #1

declare dso_local i32 @Com_DPrintf(i8*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @Com_Printf(i8*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @SV_CloseDownload(%struct.TYPE_8__*) #1

declare dso_local i32 @SV_DropClient(%struct.TYPE_8__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
