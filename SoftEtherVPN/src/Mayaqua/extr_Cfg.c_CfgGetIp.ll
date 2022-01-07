; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Cfg.c_CfgGetIp.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Cfg.c_CfgGetIp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IP = type { i32 }

@MAX_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CfgGetIp(i32* %0, i8* %1, %struct.IP* %2) #0 {
  %4 = alloca i32, align 4
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
  store i32 0, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %39

24:                                               ; preds = %20
  %25 = load %struct.IP*, %struct.IP** %7, align 8
  %26 = call i32 @Zero(%struct.IP* %25, i32 4)
  %27 = load i32*, i32** %5, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = trunc i64 %12 to i32
  %30 = call i32 @CfgGetStr(i32* %27, i8* %28, i8* %14, i32 %29)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %39

33:                                               ; preds = %24
  %34 = load %struct.IP*, %struct.IP** %7, align 8
  %35 = call i32 @StrToIP(%struct.IP* %34, i8* %14)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %39

38:                                               ; preds = %33
  store i32 1, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %39

39:                                               ; preds = %38, %37, %32, %23
  %40 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %40)
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Zero(%struct.IP*, i32) #2

declare dso_local i32 @CfgGetStr(i32*, i8*, i8*, i32) #2

declare dso_local i32 @StrToIP(%struct.IP*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
