; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Account.c_GetUserMacAddressFromUserNote.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Account.c_GetUserMacAddressFromUserNote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32** }

@USER_MAC_STR_PREFIX = common dso_local global i32 0, align 4
@INFINITE = common dso_local global i64 0, align 8
@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i32] [i32 32, i32 44, i32 47, i32 40, i32 41, i32 91, i32 93, i32 46, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetUserMacAddressFromUserNote(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @Zero(i32* %15, i32 6)
  %17 = load i32*, i32** %4, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32*, i32** %5, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %2
  store i32 0, i32* %3, align 4
  br label %82

23:                                               ; preds = %19
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* @USER_MAC_STR_PREFIX, align 4
  %26 = call i64 @UniSearchStrEx(i32* %24, i32 %25, i32 0, i32 0)
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @INFINITE, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %80

30:                                               ; preds = %23
  %31 = load i32*, i32** %5, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i32, i32* @USER_MAC_STR_PREFIX, align 4
  %34 = call i64 @UniStrLen(i32 %33)
  %35 = add i64 %32, %34
  %36 = getelementptr inbounds i32, i32* %31, i64 %35
  store i32* %36, i32** %8, align 8
  %37 = load i32, i32* @MAX_SIZE, align 4
  %38 = zext i32 %37 to i64
  %39 = call i8* @llvm.stacksave()
  store i8* %39, i8** %9, align 8
  %40 = alloca i32, i64 %38, align 16
  store i64 %38, i64* %10, align 8
  %41 = mul nuw i64 4, %38
  %42 = trunc i64 %41 to i32
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @UniStrCpy(i32* %40, i32 %42, i32* %43)
  %45 = call i32 @UniTrim(i32* %40)
  %46 = call %struct.TYPE_4__* @UniParseToken(i32* %40, i8* bitcast ([9 x i32]* @.str to i8*))
  store %struct.TYPE_4__* %46, %struct.TYPE_4__** %11, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %48 = icmp ne %struct.TYPE_4__* %47, null
  br i1 %48, label %49, label %78

49:                                               ; preds = %30
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp sge i32 %52, 1
  br i1 %53, label %54, label %75

54:                                               ; preds = %49
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32**, i32*** %56, align 8
  %58 = getelementptr inbounds i32*, i32** %57, i64 0
  %59 = load i32*, i32** %58, align 8
  store i32* %59, i32** %12, align 8
  %60 = load i32*, i32** %12, align 8
  %61 = call i32 @UniIsEmptyStr(i32* %60)
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %54
  %64 = load i32, i32* @MAX_SIZE, align 4
  %65 = zext i32 %64 to i64
  %66 = call i8* @llvm.stacksave()
  store i8* %66, i8** %13, align 8
  %67 = alloca i8, i64 %65, align 16
  store i64 %65, i64* %14, align 8
  %68 = trunc i64 %65 to i32
  %69 = load i32*, i32** %12, align 8
  %70 = call i32 @UniToStr(i8* %67, i32 %68, i32* %69)
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @StrToMac(i32* %71, i8* %67)
  store i32 %72, i32* %6, align 4
  %73 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %73)
  br label %74

74:                                               ; preds = %63, %54
  br label %75

75:                                               ; preds = %74, %49
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %77 = call i32 @UniFreeToken(%struct.TYPE_4__* %76)
  br label %78

78:                                               ; preds = %75, %30
  %79 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %79)
  br label %80

80:                                               ; preds = %78, %23
  %81 = load i32, i32* %6, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %80, %22
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @Zero(i32*, i32) #1

declare dso_local i64 @UniSearchStrEx(i32*, i32, i32, i32) #1

declare dso_local i64 @UniStrLen(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @UniStrCpy(i32*, i32, i32*) #1

declare dso_local i32 @UniTrim(i32*) #1

declare dso_local %struct.TYPE_4__* @UniParseToken(i32*, i8*) #1

declare dso_local i32 @UniIsEmptyStr(i32*) #1

declare dso_local i32 @UniToStr(i8*, i32, i32*) #1

declare dso_local i32 @StrToMac(i32*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @UniFreeToken(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
