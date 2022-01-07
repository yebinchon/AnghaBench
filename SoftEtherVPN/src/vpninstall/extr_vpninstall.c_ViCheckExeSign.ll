; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/vpninstall/extr_vpninstall.c_ViCheckExeSign.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/vpninstall/extr_vpninstall.c_ViCheckExeSign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IDS_SIGN_WARNING = common dso_local global i64 0, align 8
@skip = common dso_local global i64 0, align 8
@IDS_SIGN_WARNING_TITLE = common dso_local global i64 0, align 8
@MAX_PATH = common dso_local global i32 0, align 4
@MB_OKCANCEL = common dso_local global i32 0, align 4
@MB_DEFBUTTON2 = common dso_local global i32 0, align 4
@MB_ICONEXCLAMATION = common dso_local global i32 0, align 4
@IDOK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ViCheckExeSign(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [2048 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 1, i32* %7, align 4
  %13 = load i64, i64* @IDS_SIGN_WARNING, align 8
  %14 = load i64, i64* @skip, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i8* @_U(i64 %15)
  store i8* %16, i8** %8, align 8
  %17 = load i64, i64* @IDS_SIGN_WARNING_TITLE, align 8
  %18 = load i64, i64* @skip, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i8* @_U(i64 %19)
  store i8* %20, i8** %9, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i8*, i8** %5, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %2
  store i32 0, i32* %3, align 4
  br label %63

27:                                               ; preds = %23
  %28 = load i32*, i32** %4, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = call i64 @MsCheckFileDigitalSignatureW(i32* %28, i8* %29, i32* %7)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %62

32:                                               ; preds = %27
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 1, i32* %3, align 4
  br label %63

36:                                               ; preds = %32
  %37 = load i32, i32* @MAX_PATH, align 4
  %38 = zext i32 %37 to i64
  %39 = call i8* @llvm.stacksave()
  store i8* %39, i8** %10, align 8
  %40 = alloca i8, i64 %38, align 16
  store i64 %38, i64* %11, align 8
  %41 = trunc i64 %38 to i32
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @GetFileNameFromFilePathW(i8* %40, i32 %41, i8* %42)
  %44 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @swprintf(i8* %44, i32 1024, i8* %45, i8* %40, i8* %40, i8* %40)
  %47 = load i32*, i32** %4, align 8
  %48 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  %49 = load i8*, i8** %9, align 8
  %50 = load i32, i32* @MB_OKCANCEL, align 4
  %51 = load i32, i32* @MB_DEFBUTTON2, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @MB_ICONEXCLAMATION, align 4
  %54 = or i32 %52, %53
  %55 = call i64 @MessageBoxW(i32* %47, i8* %48, i8* %49, i32 %54)
  %56 = load i64, i64* @IDOK, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %36
  store i32 1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %60

59:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %60

60:                                               ; preds = %59, %58
  %61 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %61)
  br label %63

62:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %60, %35, %26
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i8* @_U(i64) #1

declare dso_local i64 @MsCheckFileDigitalSignatureW(i32*, i8*, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @GetFileNameFromFilePathW(i8*, i32, i8*) #1

declare dso_local i32 @swprintf(i8*, i32, i8*, i8*, i8*, i8*) #1

declare dso_local i64 @MessageBoxW(i32*, i8*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
