; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/vpninstall/extr_vpninstall.c_ViEulaDlgProc.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/vpninstall/extr_vpninstall.c_ViEulaDlgProc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IDS_DLG_TITLE = common dso_local global i64 0, align 8
@skip = common dso_local global i64 0, align 8
@S_EULA_NOTICE1 = common dso_local global i32 0, align 4
@IDS_EULA_NOTICE1 = common dso_local global i64 0, align 8
@S_BOLD = common dso_local global i32 0, align 4
@IDS_EULA_NOTICE2 = common dso_local global i64 0, align 8
@S_EULA_NOTICE3 = common dso_local global i32 0, align 4
@IDS_EULA_NOTICE3 = common dso_local global i64 0, align 8
@IDS_EULA_AGREE = common dso_local global i64 0, align 8
@IDS_EULA_DISAGREE = common dso_local global i64 0, align 8
@E_EULA = common dso_local global i32 0, align 4
@EM_SETSEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ViEulaDlgProc(i32* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %13 = load i8*, i8** %11, align 8
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %12, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %89

18:                                               ; preds = %5
  %19 = load i32, i32* %8, align 4
  switch i32 %19, label %88 [
    i32 128, label %20
    i32 129, label %76
    i32 130, label %85
  ]

20:                                               ; preds = %18
  %21 = load i32*, i32** %7, align 8
  %22 = load i64, i64* @IDS_DLG_TITLE, align 8
  %23 = load i64, i64* @skip, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32* @_U(i64 %24)
  %26 = call i32 @SetText(i32* %21, i32 0, i32* %25)
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* @S_EULA_NOTICE1, align 4
  %29 = load i64, i64* @IDS_EULA_NOTICE1, align 8
  %30 = load i64, i64* @skip, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32* @_U(i64 %31)
  %33 = call i32 @SetText(i32* %27, i32 %28, i32* %32)
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* @S_BOLD, align 4
  %36 = load i64, i64* @IDS_EULA_NOTICE2, align 8
  %37 = load i64, i64* @skip, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32* @_U(i64 %38)
  %40 = call i32 @SetText(i32* %34, i32 %35, i32* %39)
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* @S_EULA_NOTICE3, align 4
  %43 = load i64, i64* @IDS_EULA_NOTICE3, align 8
  %44 = load i64, i64* @skip, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32* @_U(i64 %45)
  %47 = call i32 @SetText(i32* %41, i32 %42, i32* %46)
  %48 = load i32*, i32** %7, align 8
  %49 = load i64, i64* @IDS_EULA_AGREE, align 8
  %50 = load i64, i64* @skip, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32* @_U(i64 %51)
  %53 = call i32 @SetText(i32* %48, i32 131, i32* %52)
  %54 = load i32*, i32** %7, align 8
  %55 = load i64, i64* @IDS_EULA_DISAGREE, align 8
  %56 = load i64, i64* @skip, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32* @_U(i64 %57)
  %59 = call i32 @SetText(i32* %54, i32 132, i32* %58)
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* @S_BOLD, align 4
  %62 = call i32 @DlgFont(i32* %60, i32 %61, i32 0, i32 1)
  %63 = load i32*, i32** %7, align 8
  %64 = load i32, i32* @E_EULA, align 4
  %65 = load i32*, i32** %12, align 8
  %66 = call i32 @SetText(i32* %63, i32 %64, i32* %65)
  %67 = load i32*, i32** %7, align 8
  %68 = load i32, i32* @E_EULA, align 4
  %69 = call i32 @Focus(i32* %67, i32 %68)
  %70 = load i32*, i32** %7, align 8
  %71 = load i32, i32* @E_EULA, align 4
  %72 = load i32, i32* @EM_SETSEL, align 4
  %73 = call i32 @SendMsg(i32* %70, i32 %71, i32 %72, i32 0, i32 0)
  %74 = load i32*, i32** %7, align 8
  %75 = call i32 @Center(i32* %74)
  br label %88

76:                                               ; preds = %18
  %77 = load i32, i32* %9, align 4
  switch i32 %77, label %84 [
    i32 131, label %78
    i32 132, label %81
  ]

78:                                               ; preds = %76
  %79 = load i32*, i32** %7, align 8
  %80 = call i32 @EndDialog(i32* %79, i32 1)
  br label %84

81:                                               ; preds = %76
  %82 = load i32*, i32** %7, align 8
  %83 = call i32 @Close(i32* %82)
  br label %84

84:                                               ; preds = %76, %81, %78
  br label %88

85:                                               ; preds = %18
  %86 = load i32*, i32** %7, align 8
  %87 = call i32 @EndDialog(i32* %86, i32 0)
  br label %88

88:                                               ; preds = %18, %85, %84, %20
  store i32 0, i32* %6, align 4
  br label %89

89:                                               ; preds = %88, %17
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i32 @SetText(i32*, i32, i32*) #1

declare dso_local i32* @_U(i64) #1

declare dso_local i32 @DlgFont(i32*, i32, i32, i32) #1

declare dso_local i32 @Focus(i32*, i32) #1

declare dso_local i32 @SendMsg(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @Center(i32*) #1

declare dso_local i32 @EndDialog(i32*, i32) #1

declare dso_local i32 @Close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
