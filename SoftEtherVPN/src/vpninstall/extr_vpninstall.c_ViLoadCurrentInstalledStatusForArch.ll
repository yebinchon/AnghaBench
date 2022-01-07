; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/vpninstall/extr_vpninstall.c_ViLoadCurrentInstalledStatusForArch.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/vpninstall/extr_vpninstall.c_ViLoadCurrentInstalledStatusForArch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i64 }

@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s\\%s\00", align 1
@SW_REG_KEY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"vpnclient\00", align 1
@REG_LOCAL_MACHINE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"InstalledBuild\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"InstalledDir\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ViLoadCurrentInstalledStatusForArch(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %8 = load i32, i32* @MAX_SIZE, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %3, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %4, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %13 = icmp eq %struct.TYPE_3__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 1, i32* %7, align 4
  br label %52

15:                                               ; preds = %1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 1, i32* %7, align 4
  br label %52

21:                                               ; preds = %15
  %22 = trunc i64 %9 to i32
  %23 = load i32, i32* @SW_REG_KEY, align 4
  %24 = call i32 @Format(i8* %11, i32 %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @REG_LOCAL_MACHINE, align 4
  %26 = call i64 @MsRegReadIntEx2(i32 %25, i8* %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 1)
  store i64 %26, i64* %5, align 8
  %27 = load i32, i32* @REG_LOCAL_MACHINE, align 4
  %28 = call i32* @MsRegReadStrEx2W(i32 %27, i8* %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 1)
  store i32* %28, i32** %6, align 8
  %29 = load i64, i64* %5, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %21
  %32 = load i32*, i32** %6, align 8
  %33 = call i64 @UniIsEmptyStr(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31, %21
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  store i32 0, i32* %37, align 4
  br label %49

38:                                               ; preds = %31
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  store i32 1, i32* %40, align 4
  %41 = load i64, i64* %5, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 3
  store i64 %41, i64* %43, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @UniStrCpy(i32 %46, i32 4, i32* %47)
  br label %49

49:                                               ; preds = %38, %35
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @Free(i32* %50)
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %49, %20, %14
  %53 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %53)
  %54 = load i32, i32* %7, align 4
  switch i32 %54, label %56 [
    i32 0, label %55
    i32 1, label %55
  ]

55:                                               ; preds = %52, %52
  ret void

56:                                               ; preds = %52
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Format(i8*, i32, i8*, i32, i8*) #2

declare dso_local i64 @MsRegReadIntEx2(i32, i8*, i8*, i32, i32) #2

declare dso_local i32* @MsRegReadStrEx2W(i32, i8*, i8*, i32, i32) #2

declare dso_local i64 @UniIsEmptyStr(i32*) #2

declare dso_local i32 @UniStrCpy(i32, i32, i32*) #2

declare dso_local i32 @Free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
