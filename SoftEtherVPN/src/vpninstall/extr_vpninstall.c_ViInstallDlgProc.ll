; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/vpninstall/extr_vpninstall.c_ViInstallDlgProc.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/vpninstall/extr_vpninstall.c_ViInstallDlgProc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@P_PROGRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ViInstallDlgProc(i32* %0, i32 %1, i32 %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  %15 = load i8*, i8** %11, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %12, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %70

20:                                               ; preds = %5
  %21 = load i32, i32* %8, align 4
  switch i32 %21, label %69 [
    i32 134, label %22
    i32 132, label %26
    i32 129, label %35
    i32 128, label %43
    i32 131, label %50
    i32 130, label %54
    i32 135, label %58
    i32 133, label %65
    i32 136, label %68
  ]

22:                                               ; preds = %20
  %23 = load i32*, i32** %7, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = call i32 @ViInstallDlgOnInit(i32* %23, i8* %24)
  br label %69

26:                                               ; preds = %20
  %27 = load i32, i32* %9, align 4
  switch i32 %27, label %34 [
    i32 1, label %28
  ]

28:                                               ; preds = %26
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @KillTimer(i32* %29, i32 1)
  %31 = load i32*, i32** %7, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %33 = call i32 @ViInstallDlgOnStart(i32* %31, %struct.TYPE_5__* %32)
  br label %34

34:                                               ; preds = %26, %28
  br label %69

35:                                               ; preds = %20
  %36 = load i64, i64* %10, align 8
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %13, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* @P_PROGRESS, align 4
  %40 = load i32, i32* %13, align 4
  %41 = call i32 @MAKESURE(i32 %40, i32 0, i32 100)
  %42 = call i32 @SetPos(i32* %38, i32 %39, i32 %41)
  br label %69

43:                                               ; preds = %20
  %44 = load i64, i64* %10, align 8
  %45 = inttoptr i64 %44 to i32*
  store i32* %45, i32** %14, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i32*, i32** %14, align 8
  %49 = call i32 @SetText(i32* %46, i32 %47, i32* %48)
  br label %69

50:                                               ; preds = %20
  %51 = load i32*, i32** %7, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %53 = call i32 @ViInstallDlgOnClose(i32* %51, %struct.TYPE_5__* %52)
  br label %69

54:                                               ; preds = %20
  %55 = load i32*, i32** %7, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %57 = call i32 @ViInstallProcessStart(i32* %55, %struct.TYPE_5__* %56)
  br label %69

58:                                               ; preds = %20
  %59 = load i32, i32* %9, align 4
  switch i32 %59, label %64 [
    i32 137, label %60
  ]

60:                                               ; preds = %58
  %61 = load i32*, i32** %7, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %63 = call i32 @ViInstallDlgOnClose(i32* %61, %struct.TYPE_5__* %62)
  br label %64

64:                                               ; preds = %58, %60
  br label %69

65:                                               ; preds = %20
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  store i32 1, i32* %67, align 4
  br label %69

68:                                               ; preds = %20
  br label %69

69:                                               ; preds = %20, %68, %65, %64, %54, %50, %43, %35, %34, %22
  store i32 0, i32* %6, align 4
  br label %70

70:                                               ; preds = %69, %19
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local i32 @ViInstallDlgOnInit(i32*, i8*) #1

declare dso_local i32 @KillTimer(i32*, i32) #1

declare dso_local i32 @ViInstallDlgOnStart(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @SetPos(i32*, i32, i32) #1

declare dso_local i32 @MAKESURE(i32, i32, i32) #1

declare dso_local i32 @SetText(i32*, i32, i32*) #1

declare dso_local i32 @ViInstallDlgOnClose(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @ViInstallProcessStart(i32*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
