; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/vpninstall/extr_vpninstall.c_ViInstallDlgOnInit.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/vpninstall/extr_vpninstall.c_ViInstallDlgOnInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@IDI_MAIN = common dso_local global i32 0, align 4
@IDS_DLG_TITLE = common dso_local global i64 0, align 8
@skip = common dso_local global i64 0, align 8
@S_TITLE = common dso_local global i64 0, align 8
@S_STATUS = common dso_local global i64 0, align 8
@IDS_INSTALL_DLG__STATUS_INIT = common dso_local global i64 0, align 8
@IDCANCEL = common dso_local global i64 0, align 8
@IDS_INSTALL_CANCEL = common dso_local global i64 0, align 8
@P_PROGRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ViInstallDlgOnInit(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = icmp eq %struct.TYPE_3__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %2
  br label %58

11:                                               ; preds = %7
  %12 = load i32*, i32** %3, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i32* %12, i32** %14, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* @IDI_MAIN, align 4
  %17 = call i32 @SetIcon(i32* %15, i32 0, i32 %16)
  %18 = load i32*, i32** %3, align 8
  %19 = load i64, i64* @IDS_DLG_TITLE, align 8
  %20 = load i64, i64* @skip, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @_U(i64 %21)
  %23 = call i32 @SetText(i32* %18, i64 0, i32 %22)
  %24 = load i32*, i32** %3, align 8
  %25 = load i64, i64* @S_TITLE, align 8
  %26 = load i64, i64* @IDS_DLG_TITLE, align 8
  %27 = load i64, i64* @skip, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @_U(i64 %28)
  %30 = call i32 @SetText(i32* %24, i64 %25, i32 %29)
  %31 = load i32*, i32** %3, align 8
  %32 = load i64, i64* @S_STATUS, align 8
  %33 = load i64, i64* @IDS_INSTALL_DLG__STATUS_INIT, align 8
  %34 = load i64, i64* @skip, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @_U(i64 %35)
  %37 = call i32 @SetText(i32* %31, i64 %32, i32 %36)
  %38 = load i32*, i32** %3, align 8
  %39 = load i64, i64* @IDCANCEL, align 8
  %40 = load i64, i64* @IDS_INSTALL_CANCEL, align 8
  %41 = load i64, i64* @skip, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @_U(i64 %42)
  %44 = call i32 @SetText(i32* %38, i64 %39, i32 %43)
  %45 = load i32*, i32** %3, align 8
  %46 = load i64, i64* @S_TITLE, align 8
  %47 = load i64, i64* @skip, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @DlgFont(i32* %45, i64 %48, i32 12, i32 1)
  %50 = load i32*, i32** %3, align 8
  %51 = load i32, i32* @P_PROGRESS, align 4
  %52 = call i32 @SetRange(i32* %50, i32 %51, i32 0, i32 100)
  %53 = load i32*, i32** %3, align 8
  %54 = load i32, i32* @P_PROGRESS, align 4
  %55 = call i32 @SetPos(i32* %53, i32 %54, i32 0)
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 @SetTimer(i32* %56, i32 1, i32 22, i32* null)
  br label %58

58:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @SetIcon(i32*, i32, i32) #1

declare dso_local i32 @SetText(i32*, i64, i32) #1

declare dso_local i32 @_U(i64) #1

declare dso_local i32 @DlgFont(i32*, i64, i32, i32) #1

declare dso_local i32 @SetRange(i32*, i32, i32, i32) #1

declare dso_local i32 @SetPos(i32*, i32, i32) #1

declare dso_local i32 @SetTimer(i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
