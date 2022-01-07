; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_RUDPGetRegisterHostNameByIP.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_RUDPGetRegisterHostNameByIP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@SHA1_SIZE = common dso_local global i32 0, align 4
@UDP_NAT_T_SERVER_TAG_ALT = common dso_local global i32 0, align 4
@UDP_NAT_T_SERVER_TAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RUDPGetRegisterHostNameByIP(i8* %0, i32 %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca [16 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [2 x i32], align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %6, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %57

14:                                               ; preds = %3
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %16 = icmp ne %struct.TYPE_5__* %15, null
  br i1 %16, label %17, label %33

17:                                               ; preds = %14
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %19 = call i64 @IsIP4(%struct.TYPE_5__* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %17
  %22 = load i32, i32* @SHA1_SIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %8, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %9, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @Sha1(i32* %25, i32 %28, i32 4)
  %30 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %31 = call i32 @BinToStr(i8* %30, i32 16, i32* %25, i32 2)
  %32 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %32)
  br label %39

33:                                               ; preds = %17, %14
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %35 = call i32 @Rand(i32* %34, i32 2)
  %36 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %38 = call i32 @BinToStr(i8* %36, i32 16, i32* %37, i32 2)
  br label %39

39:                                               ; preds = %33, %21
  %40 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %41 = call i32 @StrLower(i8* %40)
  %42 = load i8*, i8** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i64 (...) @IsUseAlternativeHostname()
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* @UDP_NAT_T_SERVER_TAG_ALT, align 4
  br label %50

48:                                               ; preds = %39
  %49 = load i32, i32* @UDP_NAT_T_SERVER_TAG, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  %52 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 2
  %53 = load i8, i8* %52, align 2
  %54 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 3
  %55 = load i8, i8* %54, align 1
  %56 = call i32 @Format(i8* %42, i32 %43, i32 %51, i8 signext %53, i8 signext %55)
  br label %57

57:                                               ; preds = %50, %13
  ret void
}

declare dso_local i64 @IsIP4(%struct.TYPE_5__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @Sha1(i32*, i32, i32) #1

declare dso_local i32 @BinToStr(i8*, i32, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @Rand(i32*, i32) #1

declare dso_local i32 @StrLower(i8*) #1

declare dso_local i32 @Format(i8*, i32, i32, i8 signext, i8 signext) #1

declare dso_local i64 @IsUseAlternativeHostname(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
