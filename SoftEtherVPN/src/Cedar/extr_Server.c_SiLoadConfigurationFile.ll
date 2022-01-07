; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiLoadConfigurationFile.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiLoadConfigurationFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }

@SERVER_CONFIG_FILE_NAME = common dso_local global i8* null, align 8
@BRIDGE_CONFIG_FILE_NAME = common dso_local global i8* null, align 8
@SERVER_CONFIG_TEMPLATE_NAME = common dso_local global i32 0, align 4
@BRIDGE_CONFIG_TEMPLATE_NAME = common dso_local global i32 0, align 4
@server_reset_setting = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SiLoadConfigurationFile(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load i8*, i8** @SERVER_CONFIG_FILE_NAME, align 8
  store i8* %7, i8** %6, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = icmp eq %struct.TYPE_6__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %55

11:                                               ; preds = %1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = load i8*, i8** %6, align 8
  br label %22

20:                                               ; preds = %11
  %21 = load i8*, i8** @BRIDGE_CONFIG_FILE_NAME, align 8
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i8* [ %19, %18 ], [ %21, %20 ]
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* @SERVER_CONFIG_TEMPLATE_NAME, align 4
  br label %34

32:                                               ; preds = %22
  %33 = load i32, i32* @BRIDGE_CONFIG_TEMPLATE_NAME, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  %36 = call i32 @NewCfgRwEx2A(i32** %5, i8* %23, i32 0, i32 %35)
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @server_reset_setting, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @CfgDeleteFolder(i32* %42)
  store i32* null, i32** %5, align 8
  store i32 0, i32* @server_reset_setting, align 4
  br label %44

44:                                               ; preds = %41, %34
  %45 = load i32*, i32** %5, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %55

48:                                               ; preds = %44
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @SiLoadConfigurationFileMain(%struct.TYPE_6__* %49, i32* %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @CfgDeleteFolder(i32* %52)
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %48, %47, %10
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @NewCfgRwEx2A(i32**, i8*, i32, i32) #1

declare dso_local i32 @CfgDeleteFolder(i32*) #1

declare dso_local i32 @SiLoadConfigurationFileMain(%struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
