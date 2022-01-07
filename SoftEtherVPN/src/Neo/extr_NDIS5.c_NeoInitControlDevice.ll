; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Neo/extr_NDIS5.c_NeoInitControlDevice.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Neo/extr_NDIS5.c_NeoInitControlDevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i64, i64, i32, i32*, i32*, i32, i32 }

@MAX_SIZE = common dso_local global i32 0, align 4
@ctx = common dso_local global %struct.TYPE_2__* null, align 8
@IRP_MJ_MAXIMUM_FUNCTION = common dso_local global i32 0, align 4
@NeoNdisDispatch = common dso_local global i32 0, align 4
@IRP_MJ_DEVICE_CONTROL = common dso_local global i64 0, align 8
@IRP_MJ_WRITE = common dso_local global i64 0, align 8
@IRP_MJ_READ = common dso_local global i64 0, align 8
@IRP_MJ_CLOSE = common dso_local global i64 0, align 8
@IRP_MJ_CREATE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@NDIS_NEO_DEVICE_NAME = common dso_local global i8* null, align 8
@NDIS_NEO_DEVICE_NAME_WIN32 = common dso_local global i8* null, align 8
@NDIS_NEO_HARDWARE_ID = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NeoInitControlDevice() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = load i32, i32* @MAX_SIZE, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %1, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %2, align 8
  %13 = load i32, i32* @MAX_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %3, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %17 = icmp eq %struct.TYPE_2__* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %0
  store i32 1, i32* %8, align 4
  br label %111

19:                                               ; preds = %0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 5
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* @IRP_MJ_MAXIMUM_FUNCTION, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 4, %24
  %26 = trunc i64 %25 to i32
  %27 = call i32 @NeoZero(i32* %22, i32 %26)
  %28 = load i32, i32* @NeoNdisDispatch, align 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 5
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* @IRP_MJ_DEVICE_CONTROL, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  store i32 %28, i32* %33, align 4
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 5
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* @IRP_MJ_WRITE, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  store i32 %28, i32* %38, align 4
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 5
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* @IRP_MJ_READ, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  store i32 %28, i32* %43, align 4
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 5
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* @IRP_MJ_CLOSE, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  store i32 %28, i32* %48, align 4
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 5
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* @IRP_MJ_CREATE, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  store i32 %28, i32* %53, align 4
  %54 = load i32, i32* @FALSE, align 4
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 7
  store i32 %54, i32* %56, align 4
  %57 = load i8*, i8** @NDIS_NEO_DEVICE_NAME, align 8
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @sprintf(i8* %12, i8* %57, i64 %60)
  %62 = call i32* @NewUnicode(i8* %12)
  store i32* %62, i32** %4, align 8
  %63 = load i8*, i8** @NDIS_NEO_DEVICE_NAME_WIN32, align 8
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @sprintf(i8* %15, i8* %63, i64 %66)
  %68 = call i32* @NewUnicode(i8* %15)
  store i32* %68, i32** %5, align 8
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 8
  %72 = load i32*, i32** %4, align 8
  %73 = call i32 @GetUnicode(i32* %72)
  %74 = load i32*, i32** %5, align 8
  %75 = call i32 @GetUnicode(i32* %74)
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 5
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @NdisMRegisterDevice(i32 %71, i32 %73, i32 %75, i32* %78, i32** %6, i32* %7)
  %80 = load i32*, i32** %6, align 8
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 4
  store i32* %80, i32** %82, align 8
  %83 = load i32, i32* %7, align 4
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 8
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @strlen(i64 %88)
  %90 = icmp sgt i32 %89, 11
  br i1 %90, label %91, label %101

91:                                               ; preds = %19
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = load i8*, i8** @NDIS_NEO_HARDWARE_ID, align 8
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %98, 11
  %100 = call i32 @sprintf(i8* %94, i8* %95, i64 %99)
  br label %110

101:                                              ; preds = %19
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = load i8*, i8** @NDIS_NEO_HARDWARE_ID, align 8
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @sprintf(i8* %104, i8* %105, i64 %108)
  br label %110

110:                                              ; preds = %101, %91
  store i32 0, i32* %8, align 4
  br label %111

111:                                              ; preds = %110, %18
  %112 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %112)
  %113 = load i32, i32* %8, align 4
  switch i32 %113, label %115 [
    i32 0, label %114
    i32 1, label %114
  ]

114:                                              ; preds = %111, %111
  ret void

115:                                              ; preds = %111
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @NeoZero(i32*, i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i64) #2

declare dso_local i32* @NewUnicode(i8*) #2

declare dso_local i32 @NdisMRegisterDevice(i32, i32, i32, i32*, i32**, i32*) #2

declare dso_local i32 @GetUnicode(i32*) #2

declare dso_local i32 @strlen(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
