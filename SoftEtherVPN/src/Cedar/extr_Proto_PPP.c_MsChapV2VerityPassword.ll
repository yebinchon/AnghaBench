; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_PPP.c_MsChapV2VerityPassword.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_PPP.c_MsChapV2VerityPassword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@MD5_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MsChapV2VerityPassword(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [8 x i32], align 16
  %9 = alloca [24 x i32], align 16
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i32, i32* @MD5_SIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = icmp eq %struct.TYPE_3__* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i8*, i8** %5, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %46

21:                                               ; preds = %17
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @GenerateNtPasswordHash(i32* %14, i8* %22)
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @MsChapV2_GenerateChallenge8(i32* %24, i32 %27, i32 %30, i32 %33)
  %35 = getelementptr inbounds [24 x i32], [24 x i32]* %9, i64 0, i64 0
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %37 = call i32 @MsChapV2Client_GenerateResponse(i32* %35, i32* %36, i32* %14)
  %38 = getelementptr inbounds [24 x i32], [24 x i32]* %9, i64 0, i64 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @Cmp(i32* %38, i32 %41, i32 24)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %46

45:                                               ; preds = %21
  store i32 1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %46

46:                                               ; preds = %45, %44, %20
  %47 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %47)
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GenerateNtPasswordHash(i32*, i8*) #2

declare dso_local i32 @MsChapV2_GenerateChallenge8(i32*, i32, i32, i32) #2

declare dso_local i32 @MsChapV2Client_GenerateResponse(i32*, i32*, i32*) #2

declare dso_local i64 @Cmp(i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
