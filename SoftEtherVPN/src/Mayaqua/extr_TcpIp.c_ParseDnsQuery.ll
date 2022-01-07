; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_TcpIp.c_ParseDnsQuery.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_TcpIp.c_ParseDnsQuery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ParseDnsQuery(i8* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca [257 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 1, i32* %12, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %4
  %18 = load i8*, i8** %8, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i64, i64* %9, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %17, %4
  store i32 0, i32* %5, align 4
  br label %107

24:                                               ; preds = %20
  %25 = load i8*, i8** %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @StrCpy(i8* %25, i64 %26, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %28 = call i32* (...) @NewBuf()
  store i32* %28, i32** %10, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = load i64, i64* %9, align 8
  %32 = call i32 @WriteBuf(i32* %29, i8* %30, i64 %31)
  %33 = load i32*, i32** %10, align 8
  %34 = call i32 @SeekBuf(i32* %33, i32 0, i32 0)
  br label %35

35:                                               ; preds = %24, %67
  %36 = load i32*, i32** %10, align 8
  %37 = call i32 @GetNextByte(i32* %36)
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %14, align 8
  %39 = load i64, i64* %14, align 8
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %66

41:                                               ; preds = %35
  %42 = getelementptr inbounds [257 x i8], [257 x i8]* %11, i64 0, i64 0
  %43 = call i32 @Zero(i8* %42, i32 257)
  %44 = load i32*, i32** %10, align 8
  %45 = getelementptr inbounds [257 x i8], [257 x i8]* %11, i64 0, i64 0
  %46 = load i64, i64* %14, align 8
  %47 = trunc i64 %46 to i32
  %48 = call i32 @ReadBuf(i32* %44, i8* %45, i32 %47)
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* %14, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %41
  store i32 0, i32* %12, align 4
  br label %68

53:                                               ; preds = %41
  %54 = load i8*, i8** %6, align 8
  %55 = call i64 @StrLen(i8* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i8*, i8** %6, align 8
  %59 = load i64, i64* %7, align 8
  %60 = call i32 @StrCat(i8* %58, i64 %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %61

61:                                               ; preds = %57, %53
  %62 = load i8*, i8** %6, align 8
  %63 = load i64, i64* %7, align 8
  %64 = getelementptr inbounds [257 x i8], [257 x i8]* %11, i64 0, i64 0
  %65 = call i32 @StrCat(i8* %62, i64 %63, i8* %64)
  br label %67

66:                                               ; preds = %35
  br label %68

67:                                               ; preds = %61
  br label %35

68:                                               ; preds = %66, %52
  %69 = load i32*, i32** %10, align 8
  %70 = call i32 @ReadBuf(i32* %69, i8* %13, i32 1)
  %71 = sext i32 %70 to i64
  %72 = icmp ne i64 %71, 1
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  store i32 0, i32* %12, align 4
  br label %84

74:                                               ; preds = %68
  %75 = load i8, i8* %13, align 1
  %76 = call i32 @Endian16(i8 signext %75)
  %77 = icmp ne i32 %76, 1
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = load i8, i8* %13, align 1
  %80 = call i32 @Endian16(i8 signext %79)
  %81 = icmp ne i32 %80, 12
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  store i32 0, i32* %12, align 4
  br label %83

83:                                               ; preds = %82, %78, %74
  br label %84

84:                                               ; preds = %83, %73
  %85 = load i32*, i32** %10, align 8
  %86 = call i32 @ReadBuf(i32* %85, i8* %13, i32 1)
  %87 = sext i32 %86 to i64
  %88 = icmp ne i64 %87, 1
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  store i32 0, i32* %12, align 4
  br label %96

90:                                               ; preds = %84
  %91 = load i8, i8* %13, align 1
  %92 = call i32 @Endian16(i8 signext %91)
  %93 = icmp ne i32 %92, 1
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  store i32 0, i32* %12, align 4
  br label %95

95:                                               ; preds = %94, %90
  br label %96

96:                                               ; preds = %95, %89
  %97 = load i32*, i32** %10, align 8
  %98 = call i32 @FreeBuf(i32* %97)
  %99 = load i32, i32* %12, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %96
  %102 = load i8*, i8** %6, align 8
  %103 = call i64 @StrLen(i8* %102)
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %101, %96
  store i32 0, i32* %5, align 4
  br label %107

106:                                              ; preds = %101
  store i32 1, i32* %5, align 4
  br label %107

107:                                              ; preds = %106, %105, %23
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local i32 @StrCpy(i8*, i64, i8*) #1

declare dso_local i32* @NewBuf(...) #1

declare dso_local i32 @WriteBuf(i32*, i8*, i64) #1

declare dso_local i32 @SeekBuf(i32*, i32, i32) #1

declare dso_local i32 @GetNextByte(i32*) #1

declare dso_local i32 @Zero(i8*, i32) #1

declare dso_local i32 @ReadBuf(i32*, i8*, i32) #1

declare dso_local i64 @StrLen(i8*) #1

declare dso_local i32 @StrCat(i8*, i64, i8*) #1

declare dso_local i32 @Endian16(i8 signext) #1

declare dso_local i32 @FreeBuf(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
