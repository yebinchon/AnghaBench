; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/vpndrvinst/extr_vpndrvinst.c_instvlan.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/vpndrvinst/extr_vpndrvinst.c_instvlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i32] [i32 86, i32 80, i32 78, i32 0], align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"DEFAULT_FONT\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"DEFAULT_FONT_SIZE\00", align 1
@VLAN_ADAPTER_NAME_TAG = common dso_local global i32 0, align 4
@VLAN_CONNECTION_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @instvlan(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32* null, i32** %5, align 8
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  ret void

11:                                               ; preds = %2
  %12 = call i32 @_SS(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %13 = call i32 @_II(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %14 = call i32 @InitWinUi(i8* bitcast ([4 x i32]* @.str to i8*), i32 %12, i32 %13)
  %15 = call i64 (...) @MsIsNt()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = call i32* (...) @InitKakushi()
  store i32* %18, i32** %5, align 8
  br label %19

19:                                               ; preds = %17, %11
  %20 = call i32 @CiInitDriverVerStruct(i32* %6)
  %21 = load i32, i32* @VLAN_ADAPTER_NAME_TAG, align 4
  %22 = load i32, i32* @VLAN_CONNECTION_NAME, align 4
  %23 = load i8**, i8*** %4, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @MsInstallVLan(i32 %21, i32 %22, i8* %25, i32* %6)
  store i32 %26, i32* %7, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @FreeKakushi(i32* %27)
  %29 = call i32 (...) @FreeWinUi()
  %30 = load i32, i32* %7, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %19
  %33 = call i32 @_exit(i32 1) #3
  unreachable

34:                                               ; preds = %19
  %35 = call i32 @_exit(i32 0) #3
  unreachable
}

declare dso_local i32 @InitWinUi(i8*, i32, i32) #1

declare dso_local i32 @_SS(i8*) #1

declare dso_local i32 @_II(i8*) #1

declare dso_local i64 @MsIsNt(...) #1

declare dso_local i32* @InitKakushi(...) #1

declare dso_local i32 @CiInitDriverVerStruct(i32*) #1

declare dso_local i32 @MsInstallVLan(i32, i32, i8*, i32*) #1

declare dso_local i32 @FreeKakushi(i32*) #1

declare dso_local i32 @FreeWinUi(...) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
