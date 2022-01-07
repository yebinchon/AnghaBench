; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/vpn16/extr_vpn16.c_Test.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/vpn16/extr_vpn16.c_Test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c"c:\\windows\\inf\\other\\Neo_TEST.inf\00", align 1
@OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"DiInstallClass Ok.\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"Net\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"NeoAdapter_TEST\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"InstallNDIDevice Ok.\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"InstallNDIDevice Failed.\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"DiInstallClass Failed. \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test() #0 {
  %1 = alloca i8*, align 8
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  %2 = load i8*, i8** %1, align 8
  %3 = call i64 @DiInstallClass(i8* %2, i32 0)
  %4 = load i64, i64* @OK, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %16

6:                                                ; preds = %0
  %7 = call i32 @Print(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %8 = call i64 @InstallNDIDevice(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32* null, i32* null)
  %9 = load i64, i64* @OK, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = call i32 @Print(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %15

13:                                               ; preds = %6
  %14 = call i32 @Print(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %11
  br label %18

16:                                               ; preds = %0
  %17 = call i32 @Print(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %15
  ret void
}

declare dso_local i64 @DiInstallClass(i8*, i32) #1

declare dso_local i32 @Print(i8*) #1

declare dso_local i64 @InstallNDIDevice(i8*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
