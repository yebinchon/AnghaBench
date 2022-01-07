; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeStore.c_vnodeCreateVnode.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeStore.c_vnodeCreateVnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@TSDB_STATUS_CREATING = common dso_local global i32 0, align 4
@vnodeList = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"%s/vnode%d\00", align 1
@tsDirectory = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"%s/vnode%d/db\00", align 1
@TSDB_CODE_VG_INIT_FAILED = common dso_local global i32 0, align 4
@TSDB_CODE_VG_COMMITLOG_INIT_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnodeCreateVnode(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [128 x i8], align 16
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32, i32* @TSDB_STATUS_CREATING, align 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vnodeList, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store i32 %9, i32* %14, align 4
  %15 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %16 = load i8*, i8** @tsDirectory, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @sprintf(i8* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %16, i32 %17)
  %19 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %20 = call i32 @mkdir(i8* %19, i32 493)
  %21 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %22 = load i8*, i8** @tsDirectory, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @sprintf(i8* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %22, i32 %23)
  %25 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %26 = call i32 @mkdir(i8* %25, i32 493)
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vnodeList, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %28, i32* %33, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i64 @vnodeCreateMeterObjFile(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %3
  %38 = load i32, i32* @TSDB_CODE_VG_INIT_FAILED, align 4
  store i32 %38, i32* %4, align 4
  br label %56

39:                                               ; preds = %3
  %40 = load i32, i32* %5, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = call i64 @vnodeSaveVnodeCfg(i32 %40, i32* %41, i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @TSDB_CODE_VG_INIT_FAILED, align 4
  store i32 %46, i32* %4, align 4
  br label %56

47:                                               ; preds = %39
  %48 = load i32, i32* %5, align 4
  %49 = call i64 @vnodeInitStoreVnode(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, i32* @TSDB_CODE_VG_COMMITLOG_INIT_FAILED, align 4
  store i32 %52, i32* %4, align 4
  br label %56

53:                                               ; preds = %47
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @vnodeOpenVnode(i32 %54)
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %53, %51, %45, %37
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #1

declare dso_local i32 @mkdir(i8*, i32) #1

declare dso_local i64 @vnodeCreateMeterObjFile(i32) #1

declare dso_local i64 @vnodeSaveVnodeCfg(i32, i32*, i32*) #1

declare dso_local i64 @vnodeInitStoreVnode(i32) #1

declare dso_local i32 @vnodeOpenVnode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
