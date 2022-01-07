; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_NativeStack.c_NsGenMacAddress.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_NativeStack.c_NsGenMacAddress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_SIZE = common dso_local global i32 0, align 4
@SHA1_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"@\00", align 1
@NS_MAC_ADDRESS_BYTE_1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NsGenMacAddress(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [6 x i32], align 16
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i32, i32* @MAX_SIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  %15 = load i32, i32* @SHA1_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %10, align 8
  %18 = trunc i64 %12 to i32
  %19 = call i32 @Zero(i8* %14, i32 %18)
  %20 = trunc i64 %12 to i32
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @StrCat(i8* %14, i32 %20, i8* %21)
  %23 = trunc i64 %12 to i32
  %24 = call i32 @StrCat(i8* %14, i32 %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %25 = trunc i64 %12 to i32
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @StrCat(i8* %14, i32 %25, i8* %26)
  %28 = call i32 @Trim(i8* %14)
  %29 = call i32 @StrLower(i8* %14)
  %30 = call i32 @StrLen(i8* %14)
  %31 = call i32 @Sha1(i32* %17, i8* %14, i32 %30)
  %32 = load i32, i32* @NS_MAC_ADDRESS_BYTE_1, align 4
  %33 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  store i32 %32, i32* %33, align 16
  %34 = getelementptr inbounds i32, i32* %17, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 1
  store i32 %35, i32* %36, align 4
  %37 = getelementptr inbounds i32, i32* %17, i64 2
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 2
  store i32 %38, i32* %39, align 8
  %40 = getelementptr inbounds i32, i32* %17, i64 3
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 3
  store i32 %41, i32* %42, align 4
  %43 = getelementptr inbounds i32, i32* %17, i64 4
  %44 = load i32, i32* %43, align 16
  %45 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 4
  store i32 %44, i32* %45, align 16
  %46 = getelementptr inbounds i32, i32* %17, i64 5
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 5
  store i32 %47, i32* %48, align 4
  %49 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %50 = getelementptr inbounds i32, i32* %49, i64 4
  %51 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %52 = call i32 @NsGenMacAddressSignatureForMachine(i32* %50, i32* %51)
  %53 = load i8*, i8** %4, align 8
  %54 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %55 = call i32 @Copy(i8* %53, i32* %54, i32 6)
  %56 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %56)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Zero(i8*, i32) #2

declare dso_local i32 @StrCat(i8*, i32, i8*) #2

declare dso_local i32 @Trim(i8*) #2

declare dso_local i32 @StrLower(i8*) #2

declare dso_local i32 @Sha1(i32*, i8*, i32) #2

declare dso_local i32 @StrLen(i8*) #2

declare dso_local i32 @NsGenMacAddressSignatureForMachine(i32*, i32*) #2

declare dso_local i32 @Copy(i8*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
