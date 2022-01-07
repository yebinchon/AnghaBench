; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Cfg.c_CfgAddIp.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Cfg.c_CfgAddIp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IP = type { i32 }

@MAX_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @CfgAddIp(i32* %0, i8* %1, %struct.IP* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.IP*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.IP* %2, %struct.IP** %7, align 8
  %11 = load i32, i32* @MAX_SIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load %struct.IP*, %struct.IP** %7, align 8
  %22 = icmp eq %struct.IP* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %17, %3
  store i32* null, i32** %4, align 8
  store i32 1, i32* %10, align 4
  br label %31

24:                                               ; preds = %20
  %25 = trunc i64 %12 to i32
  %26 = load %struct.IP*, %struct.IP** %7, align 8
  %27 = call i32 @IPToStr(i8* %14, i32 %25, %struct.IP* %26)
  %28 = load i32*, i32** %5, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = call i32* @CfgAddStr(i32* %28, i8* %29, i8* %14)
  store i32* %30, i32** %4, align 8
  store i32 1, i32* %10, align 4
  br label %31

31:                                               ; preds = %24, %23
  %32 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %32)
  %33 = load i32*, i32** %4, align 8
  ret i32* %33
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @IPToStr(i8*, i32, %struct.IP*) #2

declare dso_local i32* @CfgAddStr(i32*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
