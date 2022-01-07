; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_OpenVPN.c_OvsDetectObfuscation.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_OpenVPN.c_OvsDetectObfuscation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INFINITE = common dso_local global i64 0, align 8
@OPENVPN_SCRAMBLE_MODE_DISABLED = common dso_local global i64 0, align 8
@OPENVPN_SCRAMBLE_MODE_XORMASK = common dso_local global i64 0, align 8
@OPENVPN_SCRAMBLE_MODE_XORPTRPOS = common dso_local global i64 0, align 8
@OPENVPN_SCRAMBLE_MODE_REVERSE = common dso_local global i64 0, align 8
@OPENVPN_SCRAMBLE_MODE_OBFUSCATE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @OvsDetectObfuscation(i8* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i64, i64* %6, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13, %3
  %17 = load i64, i64* @INFINITE, align 8
  store i64 %17, i64* %4, align 8
  br label %111

18:                                               ; preds = %13
  %19 = load i64, i64* @INFINITE, align 8
  store i64 %19, i64* %8, align 8
  store i8* null, i8** %9, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i32* @OvsParsePacket(i8* %20, i64 %21)
  store i32* %22, i32** %10, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i64, i64* @OPENVPN_SCRAMBLE_MODE_DISABLED, align 8
  store i64 %26, i64* %8, align 8
  br label %105

27:                                               ; preds = %18
  %28 = load i8*, i8** %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i8* @Clone(i8* %28, i64 %29)
  store i8* %30, i8** %9, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @StrLen(i8* %34)
  %36 = call i32 @OvsDataXorMask(i8* %31, i64 %32, i8* %33, i32 %35)
  %37 = load i8*, i8** %9, align 8
  %38 = load i64, i64* %6, align 8
  %39 = call i32* @OvsParsePacket(i8* %37, i64 %38)
  store i32* %39, i32** %10, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %27
  %43 = load i64, i64* @OPENVPN_SCRAMBLE_MODE_XORMASK, align 8
  store i64 %43, i64* %8, align 8
  br label %105

44:                                               ; preds = %27
  %45 = load i8*, i8** %9, align 8
  %46 = call i32 @Free(i8* %45)
  %47 = load i8*, i8** %5, align 8
  %48 = load i64, i64* %6, align 8
  %49 = call i8* @Clone(i8* %47, i64 %48)
  store i8* %49, i8** %9, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @OvsDataXorPtrPos(i8* %50, i64 %51)
  %53 = load i8*, i8** %9, align 8
  %54 = load i64, i64* %6, align 8
  %55 = call i32* @OvsParsePacket(i8* %53, i64 %54)
  store i32* %55, i32** %10, align 8
  %56 = load i32*, i32** %10, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %44
  %59 = load i64, i64* @OPENVPN_SCRAMBLE_MODE_XORPTRPOS, align 8
  store i64 %59, i64* %8, align 8
  br label %105

60:                                               ; preds = %44
  %61 = load i8*, i8** %9, align 8
  %62 = call i32 @Free(i8* %61)
  %63 = load i8*, i8** %5, align 8
  %64 = load i64, i64* %6, align 8
  %65 = call i8* @Clone(i8* %63, i64 %64)
  store i8* %65, i8** %9, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = load i64, i64* %6, align 8
  %68 = call i32 @OvsDataReverse(i8* %66, i64 %67)
  %69 = load i8*, i8** %9, align 8
  %70 = load i64, i64* %6, align 8
  %71 = call i32* @OvsParsePacket(i8* %69, i64 %70)
  store i32* %71, i32** %10, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %60
  %75 = load i64, i64* @OPENVPN_SCRAMBLE_MODE_REVERSE, align 8
  store i64 %75, i64* %8, align 8
  br label %105

76:                                               ; preds = %60
  %77 = load i8*, i8** %9, align 8
  %78 = call i32 @Free(i8* %77)
  %79 = load i8*, i8** %5, align 8
  %80 = load i64, i64* %6, align 8
  %81 = call i8* @Clone(i8* %79, i64 %80)
  store i8* %81, i8** %9, align 8
  %82 = load i8*, i8** %9, align 8
  %83 = load i64, i64* %6, align 8
  %84 = load i8*, i8** %7, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = call i32 @StrLen(i8* %85)
  %87 = call i32 @OvsDataXorMask(i8* %82, i64 %83, i8* %84, i32 %86)
  %88 = load i8*, i8** %9, align 8
  %89 = load i64, i64* %6, align 8
  %90 = call i32 @OvsDataXorPtrPos(i8* %88, i64 %89)
  %91 = load i8*, i8** %9, align 8
  %92 = load i64, i64* %6, align 8
  %93 = call i32 @OvsDataReverse(i8* %91, i64 %92)
  %94 = load i8*, i8** %9, align 8
  %95 = load i64, i64* %6, align 8
  %96 = call i32 @OvsDataXorPtrPos(i8* %94, i64 %95)
  %97 = load i8*, i8** %9, align 8
  %98 = load i64, i64* %6, align 8
  %99 = call i32* @OvsParsePacket(i8* %97, i64 %98)
  store i32* %99, i32** %10, align 8
  %100 = load i32*, i32** %10, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %104

102:                                              ; preds = %76
  %103 = load i64, i64* @OPENVPN_SCRAMBLE_MODE_OBFUSCATE, align 8
  store i64 %103, i64* %8, align 8
  br label %105

104:                                              ; preds = %76
  br label %105

105:                                              ; preds = %104, %102, %74, %58, %42, %25
  %106 = load i32*, i32** %10, align 8
  %107 = call i32 @OvsFreePacket(i32* %106)
  %108 = load i8*, i8** %9, align 8
  %109 = call i32 @Free(i8* %108)
  %110 = load i64, i64* %8, align 8
  store i64 %110, i64* %4, align 8
  br label %111

111:                                              ; preds = %105, %16
  %112 = load i64, i64* %4, align 8
  ret i64 %112
}

declare dso_local i32* @OvsParsePacket(i8*, i64) #1

declare dso_local i8* @Clone(i8*, i64) #1

declare dso_local i32 @OvsDataXorMask(i8*, i64, i8*, i32) #1

declare dso_local i32 @StrLen(i8*) #1

declare dso_local i32 @Free(i8*) #1

declare dso_local i32 @OvsDataXorPtrPos(i8*, i64) #1

declare dso_local i32 @OvsDataReverse(i8*, i64) #1

declare dso_local i32 @OvsFreePacket(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
