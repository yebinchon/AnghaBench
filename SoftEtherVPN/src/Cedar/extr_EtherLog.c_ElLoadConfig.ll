; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_EtherLog.c_ElLoadConfig.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_EtherLog.c_ElLoadConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@EL_ADMIN_PORT = common dso_local global i32 0, align 4
@EL_CONFIG_FILENAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@DISK_FREE_SPACE_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ElLoadConfig(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = icmp eq %struct.TYPE_4__* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %39

10:                                               ; preds = %1
  %11 = load i32, i32* @EL_ADMIN_PORT, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @EL_CONFIG_FILENAME, align 4
  %15 = call i32 @NewCfgRw(i32** %4, i32 %14)
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %10
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @ElLoadConfigFromFolder(%struct.TYPE_4__* %21, i32* %22)
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @CfgDeleteFolder(i32* %24)
  br label %37

26:                                               ; preds = %10
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %6, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @StrLen(i8* %31)
  %33 = call i32 @Sha0(i32 %29, i8* %30, i32 %32)
  %34 = load i32, i32* @DISK_FREE_SPACE_DEFAULT, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %26, %20
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %37, %9
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @NewCfgRw(i32**, i32) #1

declare dso_local i32 @ElLoadConfigFromFolder(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @CfgDeleteFolder(i32*) #1

declare dso_local i32 @Sha0(i32, i8*, i32) #1

declare dso_local i32 @StrLen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
