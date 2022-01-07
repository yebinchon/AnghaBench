; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CiGetVpnClientExeFileName.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CiGetVpnClientExeFileName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLIENT_WIN32_EXE_FILENAME = common dso_local global i8* null, align 8
@CLIENT_WIN32_EXE_FILENAME_X64 = common dso_local global i8* null, align 8
@CLIENT_WIN32_EXE_FILENAME_IA64 = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @CiGetVpnClientExeFileName() #0 {
  %1 = alloca i8*, align 8
  %2 = call i32 (...) @Is64()
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = load i8*, i8** @CLIENT_WIN32_EXE_FILENAME, align 8
  store i8* %5, i8** %1, align 8
  br label %13

6:                                                ; preds = %0
  %7 = call i64 (...) @IsX64()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = load i8*, i8** @CLIENT_WIN32_EXE_FILENAME_X64, align 8
  store i8* %10, i8** %1, align 8
  br label %13

11:                                               ; preds = %6
  %12 = load i8*, i8** @CLIENT_WIN32_EXE_FILENAME_IA64, align 8
  store i8* %12, i8** %1, align 8
  br label %13

13:                                               ; preds = %11, %9, %4
  %14 = load i8*, i8** %1, align 8
  ret i8* %14
}

declare dso_local i32 @Is64(...) #1

declare dso_local i64 @IsX64(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
