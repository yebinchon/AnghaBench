; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiCallGetNatStatus.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiCallGetNatStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"HubName\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"getnatstatus\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SiCallGetNatStatus(i32* %0, i32* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %4
  %13 = load i32*, i32** %6, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  %16 = load i8*, i8** %7, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i32*, i32** %8, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %15, %12, %4
  br label %37

22:                                               ; preds = %18
  %23 = call i32* (...) @NewPack()
  store i32* %23, i32** %9, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @PackAddStr(i32* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = load i32*, i32** %6, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = call i32* @SiCallTask(i32* %27, i32* %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32* %29, i32** %9, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @Zero(i32* %30, i32 4)
  %32 = load i32*, i32** %8, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 @InRpcNatStatus(i32* %32, i32* %33)
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @FreePack(i32* %35)
  br label %37

37:                                               ; preds = %22, %21
  ret void
}

declare dso_local i32* @NewPack(...) #1

declare dso_local i32 @PackAddStr(i32*, i8*, i8*) #1

declare dso_local i32* @SiCallTask(i32*, i32*, i8*) #1

declare dso_local i32 @Zero(i32*, i32) #1

declare dso_local i32 @InRpcNatStatus(i32*, i32*) #1

declare dso_local i32 @FreePack(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
