; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_OpenVPN.c_OvsGetCipher.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_OpenVPN.c_OvsGetCipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_SIZE = common dso_local global i32 0, align 4
@OPENVPN_DEFAULT_CIPHER = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @OvsGetCipher(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  store i32* null, i32** %3, align 8
  %6 = load i32, i32* @MAX_SIZE, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %4, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %5, align 8
  %10 = trunc i64 %7 to i32
  %11 = load i8*, i8** %2, align 8
  %12 = call i32 @StrCpy(i8* %9, i32 %10, i8* %11)
  %13 = call i32 @StrLower(i8* %9)
  %14 = call i32 @IsEmptyStr(i8* %9)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = call i32* @NewCipher(i8* %9)
  store i32* %17, i32** %3, align 8
  br label %18

18:                                               ; preds = %16, %1
  %19 = load i32*, i32** %3, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i8*, i8** @OPENVPN_DEFAULT_CIPHER, align 8
  %23 = call i32* @NewCipher(i8* %22)
  store i32* %23, i32** %3, align 8
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i32*, i32** %3, align 8
  %26 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %26)
  ret i32* %25
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @StrCpy(i8*, i32, i8*) #2

declare dso_local i32 @StrLower(i8*) #2

declare dso_local i32 @IsEmptyStr(i8*) #2

declare dso_local i32* @NewCipher(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
